import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const AppbarWidget(title: 'Profile'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(radius: 45),
              dHeight2,
              Text(
                'Rishal Ahmed',
                style: TextUtils.theme(context).titleLarge,
              ),
              dHeight1n5,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.workspace_premium,
                    size: 15.sp,
                    color: kColorTile,
                  ),
                  dWidth1,
                  Text(
                    'Zinea Premium',
                    style: TextUtils.theme(context)
                        .bodyMedium
                        ?.copyWith(color: kColorTile),
                  ),
                  dWidth2,
                ],
              ),
              dHeight10,
              //========== Manage Profile ==========
              ListTile(
                horizontalTitleGap: 0,
                tileColor: secondaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // dense: true,
                leading: const Icon(Icons.manage_accounts),
                title: Text(
                  'Manage Profile',
                  style: TextUtils.theme(context).titleMedium,
                ),
                trailing: FittedBox(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: kColorTile,
                    size: 16.sp,
                  ),
                ),
              ),
              dHeight2,
              //========== Privacy Policy ==========
              ListTile(
                horizontalTitleGap: 0,
                tileColor: secondaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // dense: true,
                leading: const Icon(Icons.flag),
                title: Text(
                  'Privacy Policy',
                  style: TextUtils.theme(context).titleMedium,
                ),
                trailing: FittedBox(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: kColorTile,
                    size: 16.sp,
                  ),
                ),
              ),
              dHeight2,

              //========== Terms and Conditions ==========
              ListTile(
                horizontalTitleGap: 0,
                tileColor: secondaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // dense: true,
                leading: const Icon(Icons.receipt_long),
                title: Text(
                  'Terms and Conditions',
                  style: TextUtils.theme(context).titleMedium,
                ),
                trailing: FittedBox(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: kColorTile,
                    size: 16.sp,
                  ),
                ),
              ),
              dHeight2,

              //========== Contact Us ==========
              ListTile(
                horizontalTitleGap: 0,
                tileColor: secondaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // dense: true,
                leading: const Icon(Icons.call),
                title: Text(
                  'Contact Us',
                  style: TextUtils.theme(context).titleMedium,
                ),
                trailing: FittedBox(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: kColorTile,
                    size: 16.sp,
                  ),
                ),
              ),

              dHeight5,
              //========== Sign Out ==========
              TextButton(
                onPressed: () {},
                child: Text(
                  'Sign Out',
                  style: TextUtils.theme(context)
                      .titleMedium
                      ?.copyWith(fontSize: 17.sp),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
