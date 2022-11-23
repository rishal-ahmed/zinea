import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/presentation/widgets/buttons/custom_material_button.dart';

class ScreenIntroduction extends StatelessWidget {
  const ScreenIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(),
          Expanded(
            child: ImageSlideshow(
              isLoop: false,
              indicatorRadius: 5,
              indicatorColor: kWhite,
              children: [
                Image.network(
                  'https://images.pexels.com/photos/265144/pexels-photo-265144.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://images.pexels.com/photos/3183132/pexels-photo-3183132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://images.pexels.com/photos/265144/pexels-photo-265144.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 2.h),
            child: Column(
              children: [
                CustomMaterialBtton(
                  onPressed: () {},
                  buttonText: 'SIGN UP',
                  textColor: kBlack,
                ),
                dHeight1,
                CustomMaterialBtton(
                  buttonText: 'SIGN IN',
                  color: kTransparentColor,
                  borderColor: primaryColor,
                  textColor: primaryColor,
                  borderRadius: BorderRadius.circular(5),
                  onPressed: () {
                    Navigator.pushNamed(context, routeLogin);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
