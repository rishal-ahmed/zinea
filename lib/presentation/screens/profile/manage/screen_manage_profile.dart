import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';
import 'package:zinea/presentation/widgets/buttons/custom_material_button.dart';
import 'package:zinea/presentation/widgets/text_fields/text_field_widget.dart';

class ScreenManageProfile extends StatelessWidget {
  const ScreenManageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(title: 'Manage Profile'),
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
            dHeight2,
            CustomMaterialBtton(
              buttonText: 'CONFIRM',
              color: kTransparentColor,
              borderColor: primaryColor,
              textColor: primaryColor,
              borderRadius: BorderRadius.circular(5),
              onPressed: () {},
            ),
            dHeight4,
          ],
        ),
      ),
    );
  }
}
