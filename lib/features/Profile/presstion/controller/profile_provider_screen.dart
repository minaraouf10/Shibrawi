import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/Profile/data/service/profile_service.dart';
import 'package:shibrawi/features/auth/data/model/user_model.dart';

final profileProviderScreen = Provider<ProfileLogic>(
      (ref) => ProfileLogic(
          ref: ref,
          ref.watch(profileServiceProvider)),
);

class ProfileLogic extends _ProfileStates {
  final ProfileService profileService;

  ProfileLogic(this.profileService, {required super.ref});


  final addressController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();




  getProfileData() async {
    try {
      isLoading.state = true;

      await profileService.profileServices();

      isSuccess.state = true;

    }catch(e,s)
    {
      isError.state = e.toString();
      log(isError.state, stackTrace: s);
    }finally
    {
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
      :isLoading = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, ''),
        isSuccess = CustomState<bool>(ref, false);
}