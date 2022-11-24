import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/images.dart';
import 'package:zinea/core/constants/sizes.dart';
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
      title: title != null ? Text(title!) : null,
      bottom: home
          ? PreferredSize(
              preferredSize: const Size.fromHeight(10),
              child: Column(
                children: [
                  kHeight10,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DefaultTextStyle(
                        style: TextUtils.bodytext1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text('Movies'),
                            dWidth10,
                            const Text('Tv Shows'),
                            dWidth10,
                            const Text('Web Series'),
                            dWidth10,
                            const Text('Short Films'),
                            dWidth10,
                            const Text('Albums'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 5);
}
