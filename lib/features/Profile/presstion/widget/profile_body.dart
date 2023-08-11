import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_button.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/text_form_field.dart';
import 'package:shibrawi/features/Profile/presstion/controller/profile_provider_screen.dart';
import 'package:shibrawi/generated/translations.g.dart';

class ProfileBody extends ConsumerWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final profileBodyProvider = ref.read(profileProviderScreen);
    log('enter function 0');

    //Future.delayed(const Duration(milliseconds: 2000),() =>  ,);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextForm(
            controller: profileBodyProvider.nameController,
            labelText: tr.name,
            validate: (String? value) {
              if (value!.isEmpty) {
                return tr.name_not_empty;
              }
              return null;
            },
          ),
          const Height(20.0),
          TextForm(
            controller: profileBodyProvider.emailController,
            labelText: tr.email,
            validate: (String? value) {
              if (value!.isEmpty) {
                return tr.email_not_empty;
              }
              return null;
            },
          ),
          const Height(20.0),
          TextForm(
            controller: profileBodyProvider.phoneController,
            labelText: tr.mobile,
            validate: (String? value) {
              if (value!.isEmpty) {
                return tr.email_not_empty;
              }
              return null;
            },
          ),
          // TextForm(
          //   controller: profileBodyProvider.addressController,
          //   labelText: tr.address,
          //   validate: (String? value) {
          //     if (value!.isEmpty) {
          //       return tr.address_not_empty;
          //     }
          //     return null;
          //   },
          // ),
          // const SizedBox(
          //   height: 20.0,
          // ),
          // TextForm(
          //   controller: passwordController,
          //   labelText: tr.password,
          //   validate: (String? value) {
          //     if (value!.isEmpty) {
          //       return tr.email_not_empty;
          //     }
          //     return null;
          //   },
          // ),
          // const SizedBox(
          //   height: 20.0,
          // ),
          // TextForm(
          //   controller: confirmPasswordController,
          //   labelText: tr.confirm_password,
          //   validate: (String? value) {
          //     if (value!.isEmpty) {
          //       return tr.confirm_password_not_empty;
          //     }
          //     return null;
          //   },
          // ),
           const Height(60.0),
          Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
            return DefaultButton(
               //isLoading: ref.watch(profileBodyProvider.isLoading.provider),
              function: () {
               // profileBodyProvider.getProfileData();
              },
              text: 'Save',
              fontSize: 16.0,
              isUpperCase: false,
            );
          }),
          const SizedBox(
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
