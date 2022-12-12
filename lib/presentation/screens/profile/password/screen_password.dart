import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/application/password/password_event.dart';
import 'package:zinea/application/password/password_state.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/provider/password/password_provider.dart';
import 'package:zinea/domain/utils/validators/validators.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';
import 'package:zinea/presentation/widgets/buttons/custom_material_button.dart';
import 'package:zinea/presentation/widgets/snackbars/snackbar.dart';
import 'package:zinea/presentation/widgets/text_fields/text_field_widget.dart';

class ScreenPassword extends ConsumerWidget {
  const ScreenPassword({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const AppbarWidget(title: 'Change Password'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
        child: Form(
          key: ref.watch(PasswordProvider.formKeyProvider),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFeildWidget(
                    labelText: 'Old Password',
                    controller:
                        ref.watch(PasswordProvider.oldPasswordController),
                    inputBorder: const OutlineInputBorder(),
                    validator: (value) => Validators.nullValidator(value),
                  ),
                  dHeight1n5,
                  TextFeildWidget(
                    labelText: 'New Password',
                    controller:
                        ref.watch(PasswordProvider.newPasswordController),
                    inputBorder: const OutlineInputBorder(),
                    validator: (value) => Validators.changePassword(
                      newPassword: value,
                      oldPassword:
                          ref.read(PasswordProvider.oldPasswordController).text,
                    ),
                  ),
                  dHeight1n5,
                  TextFeildWidget(
                    labelText: 'Confirm Password',
                    inputBorder: const OutlineInputBorder(),
                    validator: (value) => Validators.confirmPasswordValidator(
                      value: value,
                      password:
                          ref.read(PasswordProvider.newPasswordController).text,
                    ),
                  ),
                  dHeight2,
                  Consumer(
                    builder: (context, ref, _) {
                      final PasswordState passwordState =
                          ref.watch(PasswordProvider.passwordProvider);

                      ref.listen(
                        PasswordProvider.passwordProvider,
                        (previous, next) {
                          if (!next.isLoading && next.status) {
                            kSnackBar(
                              context: context,
                              content: 'Password changed successfully',
                              success: true,
                            );
                            return Navigator.pop(context);
                          }

                          if (!next.isLoading && !next.status) {
                            return kSnackBar(
                              context: context,
                              content: next.message,
                              error: true,
                            );
                          }
                        },
                      );

                      return CustomMaterialBtton(
                        buttonText: 'CONFIRM',
                        color: kTransparentColor,
                        borderColor: primaryColor,
                        textColor: primaryColor,
                        borderRadius: BorderRadius.circular(5),
                        isLoading: passwordState.isLoading,
                        onPressed: () {
                          final FormState? formState = ref
                              .read(PasswordProvider.formKeyProvider)
                              .currentState;

                          if (formState!.validate()) {
                            ref
                                .read(
                                    PasswordProvider.passwordProvider.notifier)
                                .emit(
                                  PasswordEvent.changePassword(
                                    oldPassword: ref
                                        .read(PasswordProvider
                                            .oldPasswordController)
                                        .text,
                                    newpassword: ref
                                        .read(PasswordProvider
                                            .newPasswordController)
                                        .text,
                                  ),
                                );
                          }
                        },
                      );
                    },
                  ),
                  dHeight4,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
