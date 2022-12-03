import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/application/auth/register/register_event.dart';
import 'package:zinea/application/auth/register/register_state.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/domain/provider/auth/register/register_provider.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/domain/utils/validators/validators.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';
import 'package:zinea/presentation/widgets/buttons/custom_material_button.dart';
import 'package:zinea/presentation/widgets/snackbars/snackbar.dart';
import 'package:zinea/presentation/widgets/text_fields/text_field_widget.dart';

class ScreenRegister extends StatelessWidget {
  ScreenRegister({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(title: 'Sign up'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFeildWidget(
                    labelText: 'Name',
                    controller: nameController,
                    inputBorder: const OutlineInputBorder(),
                    validator: (value) => Validators.nullValidator(value),
                  ),
                  dHeight1n5,
                  TextFeildWidget(
                    controller: mobileController,
                    labelText: 'Mobile',
                    inputBorder: const OutlineInputBorder(),
                    validator: (value) => Validators.phoneValidator(value),
                  ),
                  dHeight1n5,
                  TextFeildWidget(
                    labelText: 'Email',
                    controller: emailController,
                    inputBorder: const OutlineInputBorder(),
                    validator: (value) => Validators.emailValidator(value),
                  ),
                  dHeight1n5,

                  Consumer(
                    builder: (context, ref, child) {
                      return TextFeildWidget(
                        labelText: 'Password',
                        controller: passwordController,
                        inputBorder: const OutlineInputBorder(),
                        validator: (value) =>
                            Validators.passwordValidator(value),
                        obscureText:
                            ref.watch(RegisterProvider.obscureProvider),
                        suffixIcon: IconButton(
                          onPressed: () {
                            ref
                                .read(RegisterProvider.obscureProvider.notifier)
                                .update((state) => !state);
                          },
                          icon: Icon(
                            ref.read(RegisterProvider.obscureProvider)
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: kColorMaterialLight,
                          ),
                        ),
                      );
                    },
                  ),
                  dHeight1n5,
                  Consumer(
                    builder: (context, ref, child) {
                      return TextFeildWidget(
                        labelText: 'Confirm Password',
                        inputBorder: const OutlineInputBorder(),
                        validator: (value) => Validators.confirmValidator(
                            value1: value, value2: passwordController.text),
                        obscureText:
                            ref.watch(RegisterProvider.obscureConfirmProvider),
                        suffixIcon: IconButton(
                          onPressed: () {
                            ref
                                .read(RegisterProvider
                                    .obscureConfirmProvider.notifier)
                                .update((state) => !state);
                          },
                          icon: Icon(
                            ref.read(RegisterProvider.obscureConfirmProvider)
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: kColorMaterialLight,
                          ),
                        ),
                      );
                    },
                  ),
                  dHeight2,
                  //==================== SIGN UP - BUTTON ====================
                  Consumer(
                    builder: (context, ref, _) {
                      final RegisterState state =
                          ref.watch(RegisterProvider.registerProvider);

                      ref.listen(
                        RegisterProvider.registerProvider,
                        (previous, next) async {
                          if (next.isError) {
                            return kSnackBar(
                              context: context,
                              content: next.errorMessage,
                              error: true,
                            );
                          }
                          if (next.status) {
                            kSnackBar(
                              context: context,
                              content: 'Registered successfully',
                              success: true,
                            );

                            Navigator.pushNamedAndRemoveUntil(context,
                                routeMain, ModalRoute.withName(routeRoot));
                          }
                        },
                      );

                      return CustomMaterialBtton(
                        buttonText: 'SIGN UP',
                        color: kTransparentColor,
                        borderColor: primaryColor,
                        textColor: primaryColor,
                        borderRadius: BorderRadius.circular(5),
                        isLoading: state.isLoading,
                        onPressed: () {
                          final FormState? formState = formKey.currentState;
                          if (formState!.validate()) {
                            final String name = nameController.text;
                            final String phone = mobileController.text;
                            final String email = emailController.text;
                            final String password = passwordController.text;

                            ref
                                .read(
                                    RegisterProvider.registerProvider.notifier)
                                .emit(
                                  RegisterEvent.register(
                                    name: name,
                                    phone: phone,
                                    email: email,
                                    password: password,
                                  ),
                                );
                          }
                        },
                      );
                    },
                  ),
                  dHeight4,
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: FittedBox(
                      child: Text.rich(
                        TextSpan(
                          text: "Have an account?  ",
                          style: TextUtils.theme(context).bodyText1,
                          children: [
                            TextSpan(
                              text: 'Sign in',
                              style: TextUtils.theme(context)
                                  .bodyText1
                                  ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: primaryTextColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacementNamed(
                                      context, routeLogin);
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
