import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/Profile/data/service/profile_service.dart';

final profileProviderScreen = Provider<ProfileLogic>(
  (ref) => ProfileLogic(ref: ref, ref.watch(profileServiceProvider)),
);

class ProfileLogic extends _ProfileStates {
  final ProfileService profileService;

  ProfileLogic(this.profileService,
      {required super.ref, Function()? getProfileData});

  final addressController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  getProfileData() async {
    try {
      isLoading.state = true;

      final userModel = await profileService.profileServices();
      nameController.text = userModel.name;
      emailController.text = userModel.email;
      phoneController.text = userModel.phone;

      isSuccess.state = true;
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s, name: 'nana');
    } finally {
      isLoading.state = false;
    }
  }

  editProfileData() async {
    try {
      isLoading.state = true;

      final userModel = await profileService.editProfile(
        nameController.text,
        emailController.text,
        phoneController.text,
      );
      nameController.text = userModel.name;
      emailController.text = userModel.email;
      phoneController.text = userModel.phone;
      getProfileData();
      log(userModel.name, name: 'edit profile');
      isSuccess.state = true;
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s, name: 'nana');
    } finally {
      isLoading.state = false;
    }
  }

  logOut() async {
    try {
      isLoading.state = true;
      profileService.logOutService();
      isSuccess.state = true;
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s, name: 'logOut');
    } finally {
      isLoading.state = false;
    }
  }
}

class _ProfileStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<String> isError;
  final CustomState<bool> isSuccess;

  _ProfileStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, ''),
        isSuccess = CustomState<bool>(ref, false);
}
