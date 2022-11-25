import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';
import 'package:zinea/presentation/widgets/buttons/custom_material_button.dart';
import 'package:zinea/presentation/widgets/text_fields/text_field_widget.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(title: 'Sign in'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextFeildWidget(
              labelText: 'Email or Mobile',
              inputBorder: OutlineInputBorder(),
            ),
            dHeight1n5,
            const TextFeildWidget(
              labelText: 'Password',
              inputBorder: OutlineInputBorder(),
            ),
            dHeight2,
            CustomMaterialBtton(
              buttonText: 'SIGN IN',
              color: kTransparentColor,
              borderColor: primaryColor,
              textColor: primaryColor,
              borderRadius: BorderRadius.circular(5),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, routeMain, ModalRoute.withName(routeRoot));
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
                            Navigator.pushNamed(context, routeRegister);
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
    );
  }
}
