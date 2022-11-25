import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/presentation/widgets/buttons/custom_material_button.dart';
import 'package:zinea/presentation/widgets/text_fields/text_field_widget.dart';

class ScreenRegister extends StatelessWidget {
  const ScreenRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextFeildWidget(
              labelText: 'Name',
              inputBorder: OutlineInputBorder(),
            ),
            dHeight1n5,
            const TextFeildWidget(
              labelText: 'Mobile',
              inputBorder: OutlineInputBorder(),
            ),
            dHeight1n5,
            const TextFeildWidget(
              labelText: 'Email',
              inputBorder: OutlineInputBorder(),
            ),
            dHeight1n5,
            const TextFeildWidget(
              labelText: 'Password',
              inputBorder: OutlineInputBorder(),
            ),
            dHeight2,
            CustomMaterialBtton(
              buttonText: 'SIGN UP',
              color: kTransparentColor,
              borderColor: primaryColor,
              textColor: primaryColor,
              borderRadius: BorderRadius.circular(5),
              onPressed: () {},
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
                        style: TextUtils.theme(context).bodyText1?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: primaryTextColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, routeLogin);
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
