import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
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
  String image =
      'https://firebasestorage.googleapis.com/v0/b/graduationproject-59b11.appspot.com/o/user%2FIMG-20230419-WA0012.jpg?alt=media&token=f2066043-4bab-49a8-8f98-8b538628e301';

  File? profileImage;
  late String url;

  final ImagePicker picker = ImagePicker();

  // Future<void> getProfileImage() async {
  //   final pickedFile = await picker.pickImage(source: ImageSource.gallery);
  //
  //   if (pickedFile != null) {
  //     profileImage = File(pickedFile.path);
  //     getImage.state = true;
  //     isLocalImage.state = true;
  //   } else {
  //     log('No image selected.');
  //     getImage.state = false;
  //   }
  // }
  Future<void> getProfileImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      profileImage = File(pickedFile.path);
      getImage.state = true;
      isLocalImage.state = true;
      fileToUrl(profileImage!);
      log(profileImage.toString(), name: 'file image');
    } else {
      log('No image selected.');
      getImage.state = false;
    }
  }

  String fileToUrl(File file) {
    // Use the file's path to create a URL
    final fileUri = Uri.file(file.path);

    // Convert the file URI to a string
    url = fileUri.toString();
    log(url, name: 'image url');

    return url;
  }

  getProfileData() async {
    try {
      isLoading.state = true;

      final userModel = await profileService.profileServices();
      nameController.text = userModel.name;
      emailController.text = userModel.email;
      phoneController.text = userModel.phone;
      image = userModel.image;
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
        //  profileImage ,
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

  // editProfileData() async {
  //   try {
  //     isLoading.state = true;
  //
  //     if (profileImage != null) { // Check if profileImage is not null
  //       final userModel = await profileService.editProfile(
  //         nameController.text,
  //         emailController.text,
  //         phoneController.text,
  //         profileImage!,
  //       );
  //       nameController.text = userModel.name;
  //       emailController.text = userModel.email;
  //       phoneController.text = userModel.phone;
  //
  //       getProfileData();
  //
  //       log(userModel.name, name: 'edit profile');
  //       isSuccess.state = true;
  //     } else {
  //       // Handle the case when profileImage is null
  //       // You can log an error or show a message to the user
  //       log('Profile image is null');
  //       isSuccess.state = false;
  //     }
  //   } catch (e, s) {
  //     isError.state = e.toString();
  //     log(isError.state, stackTrace: s, name: 'nana');
  //   } finally {
  //     isLoading.state = false;
  //   }
  // }

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
  final CustomState<bool> isLocalImage;
  final CustomState<bool> getImage;

  _ProfileStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, ''),
        getImage = CustomState<bool>(ref, false),
        isLocalImage = CustomState<bool>(ref, false),
        isSuccess = CustomState<bool>(ref, false);
}
