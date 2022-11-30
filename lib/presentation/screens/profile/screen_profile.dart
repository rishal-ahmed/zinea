import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zinea/core/constants/base_url.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';

const List<String> _titles = [
  'Manage Profile',
  'Change Password',
  'Privacy Policy',
  'Terms and Conditions',
  'Contact Us',
];

const List<IconData> _icons = [
  Icons.manage_accounts,
  Icons.security,
  Icons.flag,
  Icons.receipt_long,
  Icons.call,
];

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        title: 'Profile',
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0),
          child: SingleChildScrollView(
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
                      color: kColorMaterialLight,
                    ),
                    dWidth1,
                    Text(
                      'Zinea Premium',
                      style: TextUtils.theme(context)
                          .bodyMedium
                          ?.copyWith(color: kColorMaterialLight),
                    ),
                    dWidth2,
                  ],
                ),
                dHeight8,

                //==================== Options ====================
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final String title = _titles[index];
                    final IconData icon = _icons[index];

                    //========== Option Item ==========
                    return ListTile(
                      onTap: () async => await onTap(context, index),
                      horizontalTitleGap: 0,
                      tileColor: secondaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      leading: Icon(icon),
                      title: Text(
                        title,
                        style: TextUtils.theme(context).titleMedium,
                      ),
                      trailing: FittedBox(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: kColorMaterialLight,
                          size: 16.sp,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => dHeight2,
                  itemCount: _titles.length,
                ),

                dHeight2,

                // dHeight4,
                // //========== Sign Out ==========
                // TextButton(
                //   onPressed: () {},
                //   child: Text(
                //     'Sign Out',
                //     style: TextUtils.theme(context)
                //         .titleMedium
                //         ?.copyWith(fontSize: 17.sp),
                //   ),
                // ),
                // dHeight3,
              ],
            ),
          ),
        ),
      ),
    );
  }

  //========== Option OnTap ==========
  Future<void> onTap(BuildContext context, int index) async {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, routeProfileManage);
        break;
      case 1:
        Navigator.pushNamed(context, routePassword);
        break;
      case 2:
        await launchUrl(Uri.parse(kPrivacyPolicyUrl));
        break;
      case 3:
        await launchUrl(Uri.parse(kTermsAndConditionsUrl));
        break;
      case 4:
        Navigator.pushNamed(context, routeContactUs);
        break;
      default:
    }
  }
}
