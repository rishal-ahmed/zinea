import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/application/filter/filter_state.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/models/content/content_model.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/provider/filter/filter_provider.dart';
import 'package:zinea/domain/utils/config/config_utils.dart';
import 'package:zinea/domain/utils/date/date_utils.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';
import 'package:zinea/presentation/widgets/buttons/custom_material_button.dart';
import 'package:zinea/presentation/widgets/card/poster_card.dart';
import 'package:zinea/presentation/widgets/dropdown/dropdown_widget.dart';
import 'package:zinea/presentation/widgets/text_fields/text_field_widget.dart';

class ScreenFilter extends ConsumerWidget {
  const ScreenFilter({super.key, required this.content});

  final ContentModel content;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> genres = content.genres.map((e) => e.name).toList();
    final List<String> languages = ConfigUtils.instance.config.languages;

    return Scaffold(
      appBar: AppbarWidget(
        title: content.name,
        centerTitle: true,
        actions: [
          Consumer(
            builder: (context, ref, _) {
              final bool visible = ref.watch(FilterProvider.visibleProvider);
              return IconButton(
                onPressed: () {
                  //=-=-=-=-=- Show and Hide Filter Options -=-=-=-=-=
                  ref
                      .read(FilterProvider.visibleProvider.notifier)
                      .update((state) => !state);
                },
                icon: Icon(
                  visible ? Icons.filter_alt_off : Icons.filter_alt,
                  color: kWhite,
                ),
              );
            },
          )
        ],
      ),
      body: Column(
        children: [
          //==================== Filter Options ====================
          Consumer(
            builder: (context, ref, _) {
              final bool visibility = ref.watch(FilterProvider.visibleProvider);
              return AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                height: visibility ? 33.h : 0.0,
                // curve: Curves.decelerate,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: DefaultTextStyle(
                    style: TextUtils.theme(context)
                        .titleMedium!
                        .copyWith(color: primaryColor),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          dHeight05,

                          //========== Genre ==========
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Genre'),
                              DropDownWidget(
                                width: 35.w,
                                value: 'All',
                                items: [
                                  'All',
                                  ...genres,
                                ],
                                onChanged: (value) {
                                  if (value == 'All') {
                                    ref
                                        .read(FilterProvider
                                            .genreProvider.notifier)
                                        .state = '';
                                  } else {
                                    ref
                                        .read(FilterProvider
                                            .genreProvider.notifier)
                                        .state = value;
                                  }
                                },
                              )
                            ],
                          ),
                          dHeight2,

                          //========== Rating ==========
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Rating'),
                              RatingBar.builder(
                                itemSize: 22.sp,
                                unratedColor: kWhite12,
                                glowColor: primaryColor,
                                itemBuilder: (context, index) {
                                  return const Icon(
                                    Icons.star,
                                    color: primaryColor,
                                  );
                                },
                                allowHalfRating: true,
                                onRatingUpdate: (value) {
                                  // log('rating = ${value * 2}');
                                  ref
                                      .read(FilterProvider
                                          .ratingProvider.notifier)
                                      .state = (value * 2).toString();
                                },
                              )
                            ],
                          ),
                          dHeight1n5,

                          //========== Release Year ==========
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(child: Text('Release Year')),
                              Expanded(
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: TextFeildWidget(
                                        controller: ref.watch(
                                            FilterProvider.startDateProvider),
                                        hintText: 'Start Year',
                                        textAlign: TextAlign.center,
                                        fontColor: primaryTextColor,
                                        readOnly: true,
                                        inputBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: primaryColor)),
                                        contentPadding: const EdgeInsets.all(8),
                                        isDense: true,
                                        fontSize: 14.sp,
                                        hintSize: 13.sp,
                                        onTap: () async {
                                          final int? selectedYear =
                                              await DateTimeUtils.instance
                                                  .yearPicker(context);
                                          log('Start year = $selectedYear');

                                          if (selectedYear != null) {
                                            ref
                                                .read(FilterProvider
                                                    .startDateProvider)
                                                .text = selectedYear.toString();

                                            ref
                                                    .read(
                                                        FilterProvider
                                                            .startYearProvider
                                                            .notifier)
                                                    .state =
                                                selectedYear.toString();
                                          }
                                        },
                                      ),
                                    ),
                                    kWidth5,
                                    Flexible(
                                      child: TextFeildWidget(
                                        controller: ref.watch(
                                            FilterProvider.endDateProvider),
                                        hintText: 'End Year',
                                        textAlign: TextAlign.center,
                                        fontColor: primaryTextColor,
                                        readOnly: true,
                                        inputBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: primaryColor)),
                                        contentPadding: const EdgeInsets.all(8),
                                        isDense: true,
                                        fontSize: 14.sp,
                                        hintSize: 13.sp,
                                        onTap: () async {
                                          final int? startYear = int.tryParse(
                                              ref
                                                  .read(FilterProvider
                                                      .startDateProvider)
                                                  .text);

                                          final int? selectedYear =
                                              await DateTimeUtils.instance
                                                  .yearPicker(context,
                                                      startYear: startYear);
                                          log('End year = $selectedYear');

                                          if (selectedYear != null) {
                                            ref
                                                .read(FilterProvider
                                                    .endDateProvider)
                                                .text = selectedYear.toString();

                                            ref
                                                    .read(
                                                        FilterProvider
                                                            .endYearProvider
                                                            .notifier)
                                                    .state =
                                                selectedYear.toString();
                                          }
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          dHeight1n5,

                          //========== Language ==========
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Language'),
                              DropDownWidget(
                                width: 25.w,
                                value: 'All',
                                items: languages,
                                onChanged: (value) {
                                  ref
                                      .read(FilterProvider
                                          .languageProvider.notifier)
                                      .state = value.toString();
                                },
                              )
                            ],
                          ),
                          dHeight2,

                          //========== Apply Filter ==========
                          SizedBox(
                            width: 50.w,
                            child: Consumer(
                              builder: (context, ref, child) {
                                ref.watch(FilterProvider.genreProvider);
                                ref.watch(FilterProvider.ratingProvider);
                                ref.watch(FilterProvider.startYearProvider);
                                ref.watch(FilterProvider.endYearProvider);
                                ref.watch(FilterProvider.languageProvider);
                                return CustomMaterialBtton(
                                  height: 35,
                                  onPressed: () {
                                    ref.invalidate(
                                      FilterProvider.filterProvider(content.id),
                                    );
                                  },
                                  buttonText: 'Apply Filter',
                                  borderColor: primaryColor,
                                  textColor: primaryColor,
                                  color: kBlack,
                                  borderRadius: BorderRadius.circular(5),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          dHeight1,
          //==================== Results ====================
          Expanded(
            child: Consumer(
              builder: (context, ref, _) {
                final FilterState state =
                    ref.watch(FilterProvider.filterProvider(content.id));

                final List<VideoModel> videos =
                    state.isLoading ? [] : state.videos;

                return GridView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    final VideoModel? video =
                        state.isLoading ? null : videos[index];
                    return PosterCard(
                      shimmer: state.isLoading,
                      video: video,
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 2.w,
                    crossAxisSpacing: 2.w,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemCount: state.isLoading ? 20 : videos.length,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
