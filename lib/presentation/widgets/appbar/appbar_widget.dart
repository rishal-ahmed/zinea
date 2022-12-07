import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/application/config/config_state.dart';
import 'package:zinea/core/constants/images.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/domain/models/content/content_model.dart';
import 'package:zinea/domain/provider/appbar/appbar_provider.dart';
import 'package:zinea/domain/provider/config/config_provider.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({
    super.key,
    this.title,
    this.home = false,
    this.centerTitle = false,
    this.actions = const [],
  });

  final String? title;
  final bool home, centerTitle;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: home
          ? Transform.scale(
              scale: .8,
              child: SvgPicture.asset(kIconLogo),
            )
          : null,
      leadingWidth: kToolbarHeight,
      title: title != null
          ? Text(title!)
          : home
              ? homeCategories(context)
              : null,
      centerTitle: centerTitle,
      actions: actions,
      // bottom: home
      //     ? bottomHomeCategories()
      //     : null,
    );
  }

  //==================== Home Categories ====================
  Widget homeCategories(BuildContext context) {
    // final List<String> categories = [
    //   'Movies',
    //   'Tv Shows',
    //   'Web Series',
    //   'Short Films',
    //   'Albums'
    // ];
    return Consumer(
      builder: (context, ref, child) {
        final ConfigState configState =
            ref.watch(ConfigProvider.configProvider);

        if (configState.isLoading ||
            configState.isError ||
            configState.contents.isEmpty) {
          return kNone;
        }

        final List<ContentModel> contents = configState.contents;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  contents.length,
                  (index) {
                    final ContentModel content = contents[index];
                    //========== Categories ==========
                    return InkWell(
                      onTap: () => Navigator.pushNamed(context, routeFilter,
                          arguments: content),
                      child: Row(
                        children: [
                          FittedBox(
                            child: Text(
                              content.name,
                              style: TextUtils.theme(context)
                                  .titleMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w900,
                                  ),
                            ),
                          ),
                          if (index != contents.length) dWidth5,
                        ],
                      ),
                    );
                  },
                )),
          ),
        );
      },
    );
  }

  //==================== Home Categories Bottom ====================
  PreferredSize bottomHomeCategories() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight / 2),
      child: Consumer(
        builder: (context, ref, _) {
          final bool isVisible = ref.watch(AppbarProvider.appBarHideProvider);
          final List<String> categories = [
            'Movies',
            'Tv Shows',
            'Web Series',
            'Short Films',
            'Albums'
          ];
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
                            style: TextUtils.theme(context).titleMedium!,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                  categories.length,
                                  (index) {
                                    final String category = categories[index];
                                    //========== Categories ==========
                                    return InkWell(
                                      onTap: () => Navigator.pushNamed(
                                          context, routeFilter,
                                          arguments: category),
                                      child: Row(
                                        children: [
                                          FittedBox(child: Text(category)),
                                          if (index != categories.length)
                                            dWidth10,
                                        ],
                                      ),
                                    );
                                  },
                                )),
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight - 10);
}
