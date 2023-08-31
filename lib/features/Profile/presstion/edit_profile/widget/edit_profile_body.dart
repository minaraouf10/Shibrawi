import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/enums/snack_bar.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/default_button.dart';
import 'package:shibrawi/core/config/widgets/primary_widget/text_form_field.dart';
import 'package:shibrawi/features/Profile/presstion/controller/profile_provider_screen.dart';
import 'package:shibrawi/generated/translations.g.dart';

class EditProfileBody extends ConsumerWidget {
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final editProfileBodyProvider = ref.read(profileProviderScreen);
    //Future.delayed(const Duration(milliseconds: 2000),() =>  ,);

    ref.listen(editProfileBodyProvider.isError.provider, (previous, state) {
      context.showCustomSnackBar(
      message: state,
      snackBarStatus: SnackBarStatus.error
      );
  });
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        //mainAxisSize: MainAxisSize.max,
        children: [
          TextForm(
            controller: editProfileBodyProvider.nameController,
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
            controller: editProfileBodyProvider.emailController,
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
            controller: editProfileBodyProvider.phoneController,
            labelText: tr.mobile,
            validate: (String? value) {
              if (value!.isEmpty) {
                return tr.email_not_empty;
              }
              return null;
            },
          ),
        const Height(40.0),
          Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                return DefaultButton(
                  isLoading: ref.watch(editProfileBodyProvider.isLoading.provider),
                  function: () {
  editProfileBodyProvider.editProfileData();
                  },
                  text: 'Save',
                  fontSize: 16.0,
                  isUpperCase: false,
                );
              }),
        ],
      ),
    );
  }
}
