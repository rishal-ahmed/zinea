import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/application/auth/login/login_event.dart';
import 'package:zinea/application/auth/login/login_state.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/domain/provider/auth/login/login_provider.dart';
import 'package:zinea/domain/provider/home/home_provider.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/domain/utils/validators/validators.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';
import 'package:zinea/presentation/widgets/buttons/custom_material_button.dart';
import 'package:zinea/presentation/widgets/snackbars/snackbar.dart';
import 'package:zinea/presentation/widgets/text_fields/text_field_widget.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(title: 'Sign in'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFeildWidget(
                labelText: 'Email or Mobile',
                controller: usernameController,
                inputBorder: const OutlineInputBorder(),
                validator: (value) => Validators.nullValidator(value),
              ),
              dHeight1n5,

              Consumer(
                builder: (context, ref, child) {
                  return TextFeildWidget(
                    labelText: 'Password',
                    controller: passwordController,
                    inputBorder: const OutlineInputBorder(),
                    validator: (value) => Validators.passwordValidator(value),
                    obscureText: ref.watch(LoginProvider.obscureProvider),
                    suffixIcon: IconButton(
                        onPressed: () {
                          ref
                              .read(LoginProvider.obscureProvider.notifier)
                              .update((state) => !state);
                        },
                        icon: Icon(
                          ref.read(LoginProvider.obscureProvider)
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: kColorMaterialLight,
                        )),
                  );
                },
              ),

              dHeight2,

              //==================== SIGN IN - BUTTON ====================
              Consumer(
                builder: (context, ref, _) {
                  final LoginState state =
                      ref.watch(LoginProvider.loginProvider);

                  ref.listen(
                    LoginProvider.loginProvider,
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
                          content: 'Logged in successfully',
                          success: true,
                        );

                        ref.invalidate(HomeProvider.homeProvider);
                        Navigator.pushNamedAndRemoveUntil(
                            context, routeMain, ModalRoute.withName(routeRoot));
                      }
                    },
                  );

                  return CustomMaterialBtton(
                    buttonText: 'SIGN IN',
                    color: kTransparentColor,
                    borderColor: primaryColor,
                    textColor: primaryColor,
                    borderRadius: BorderRadius.circular(5),
                    isLoading: state.isLoading,
                    onPressed: () {
                      final FormState? formState = formKey.currentState;
                      if (formState!.validate()) {
                        final String username = usernameController.text;
                        final String password = passwordController.text;

                        ref.read(LoginProvider.loginProvider.notifier).emit(
                              LoginEvent.login(
                                  username: username, password: password),
                            );
                      }
                    },
                  );
                },
              ),
              dHeight1n5,
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot password?',
                  style: TextUtils.theme(context)
                      .bodyMedium
                      ?.copyWith(color: primaryTextColor),
                ),
              ),
              dHeight4,
              Align(
                alignment: Alignment.bottomCenter,
                child: FittedBox(
                  child: Text.rich(
                    TextSpan(
                      text: "Don't have an account?  ",
                      style: TextUtils.theme(context).bodyMedium?.copyWith(),
                      children: [
                        TextSpan(
                          text: 'Sign up',
                          style: TextUtils.theme(context).labelLarge?.copyWith(
                                color: primaryTextColor,
                                fontWeight: FontWeight.w600,
                              ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacementNamed(
                                  context, routeRegister);
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
    );
  }
}
