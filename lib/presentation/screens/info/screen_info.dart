import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';

class ScreenInfo extends StatelessWidget {
  const ScreenInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(title: 'Stranger Things', centerTitle: true),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //==================== Video Field ====================
          SizedBox(
            height: 35.h,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 35.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.themoviedb.org/t/p/original/nvMoOlC7HHZ9U4WknwwGOVefvnI.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: kToolbarHeight),
                    child: CircleAvatar(
                      radius: 22.sp,
                      backgroundColor: const Color(0XB3000000),
                      child: Icon(
                        Icons.play_arrow,
                        size: 23.sp,
                        color: kWhite,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          dHeight1n5,
          //==================== Options Field ====================
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  color: primaryColor,
                  iconSize: 22.sp,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.playlist_add),
                  color: kWhite,
                  iconSize: 24.sp,
                ),
                CircleAvatar(
                  radius: 16.sp,
                  backgroundColor: kWhite,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: CircleAvatar(
                      backgroundColor: kBlack,
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: CircleAvatar(
                          backgroundColor: kWhite,
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: FittedBox(
                              child: Row(
                                children: [
                                  Text(
                                    '4.3',
                                    style: TextUtils.theme(context)
                                        .bodyLarge
                                        ?.copyWith(color: kBlack),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 16.sp,
                                    color: kBlack,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                  color: kWhite,
                  iconSize: 22.sp,
                ),
              ],
            ),
          ),

          dHeight2,

          //==================== Details Field ====================
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: DefaultTextStyle(
              style: TextUtils.theme(context)
                  .titleMedium!
                  .copyWith(color: kColorMaterialLight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Stranger Things',
                    style: TextUtils.theme(context).headlineSmall?.copyWith(
                          color: kColorMaterialLight,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                        ),
                  ),
                  dHeight03,
                  const Text(
                      'When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces and one strange little girl.'),
                  dHeight1n5,
                  const Text('Written & Director : Matt Duffer, Ross Duffer'),
                  const Text('Producer : Matt Duffer'),
                  const Text('Banner : Netflix'),
                  const Text('DOP : Kyle Dixon'),
                  const Text('Editor : Lena Glikson'),
                  const Text(
                      'Music and Original Background Score : Kyle Dixon'),
                  const Text('Production Controller : Netflix'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
