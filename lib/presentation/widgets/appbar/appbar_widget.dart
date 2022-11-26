import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/images.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/provider/appbar/appbar_provider.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({
    super.key,
    this.title,
    this.home = false,
  });

  final String? title;
  final bool home;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: home ? SvgPicture.asset(kIconLogo) : null,
      leadingWidth: kToolbarHeight,
      title: title != null ? Text(title!) : null,
      bottom: home
          ? PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight / 2),
              child: Consumer(
                builder: (context, ref, _) {
                  final bool isVisible =
                      ref.watch(AppbarProvider.appBarHideProvider);
                  return Column(
                    children: [
                      // if (!isVisible)
                      //   const SizedBox(height: kToolbarHeight / 2),
                      AnimatedContainer(
                        height: !isVisible ? 0.0 : kToolbarHeight / 2,
                        duration: const Duration(milliseconds: 300),
                        // curve: Curves.decelerate,
                        child: SingleChildScrollView(
                          physics: const NeverScrollableScrollPhysics(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              kHeight10,
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: DefaultTextStyle(
                                    style: TextUtils.theme(context)
                                        .titleMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.w500,
                                        ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const FittedBox(child: Text('Movies')),
                                        dWidth10,
                                        const FittedBox(
                                            child: Text('Tv Shows')),
                                        dWidth10,
                                        const FittedBox(
                                            child: Text('Web Series')),
                                        dWidth10,
                                        const FittedBox(
                                            child: Text('Short Films')),
                                        dWidth10,
                                        const FittedBox(child: Text('Albums')),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 5);
}
