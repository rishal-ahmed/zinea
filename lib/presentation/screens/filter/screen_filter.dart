import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/provider/filter/filter_provider.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';
import 'package:zinea/presentation/widgets/buttons/custom_material_button.dart';
import 'package:zinea/presentation/widgets/dropdown/dropdown_widget.dart';

class ScreenFilter extends ConsumerWidget {
  const ScreenFilter({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppbarWidget(
        title: category,
        centerTitle: true,
        actions: [
          Consumer(
            builder: (context, ref, _) {
              final bool visible = ref.watch(FilterProvider.visibleProvider);
              return IconButton(
                onPressed: () {
                  //---------- Show and Hide Filter Options ----------
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
                                items: const [
                                  'All',
                                  'Action',
                                  'Drama',
                                  'Fatasy',
                                  'Love',
                                ],
                                onChanged: (value) {},
                              )
                            ],
                          ),
                          dHeight2,

                          //========== Rating ==========
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Rating'),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: primaryColor,
                                    size: 20.sp,
                                  ),
                                  dWidth1,
                                  Icon(
                                    Icons.star,
                                    color: primaryColor,
                                    size: 20.sp,
                                  ),
                                  dWidth1,
                                  Icon(
                                    Icons.star,
                                    color: primaryColor,
                                    size: 20.sp,
                                  ),
                                  dWidth1,
                                  Icon(
                                    Icons.star_outline,
                                    color: primaryColor,
                                    size: 20.sp,
                                  ),
                                  dWidth1,
                                  Icon(
                                    Icons.star_outline,
                                    color: primaryColor,
                                    size: 20.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          dHeight1n5,

                          //========== Rating ==========
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Release Year'),
                              DropDownWidget(
                                width: 25.w,
                                value: 'All',
                                items: const [
                                  'All',
                                  '2022',
                                  '2021',
                                  '2020',
                                  '2019',
                                ],
                                onChanged: (value) {},
                              )
                            ],
                          ),
                          dHeight1n5,

                          //========== Rating ==========
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Language'),
                              DropDownWidget(
                                width: 25.w,
                                value: 'All',
                                items: const [
                                  'All',
                                  'English ',
                                  'Malayalam',
                                  'Hindi',
                                  'Tamil',
                                  'Telugu',
                                ],
                                onChanged: (value) {},
                              )
                            ],
                          ),
                          dHeight2,

                          //========== Rating ==========
                          SizedBox(
                            width: 50.w,
                            child: CustomMaterialBtton(
                              height: 35,
                              onPressed: () {},
                              buttonText: 'Apply Filter',
                              borderColor: primaryColor,
                              textColor: primaryColor,
                              color: kBlack,
                              borderRadius: BorderRadius.circular(5),
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
                return GridView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    // final String? moviePoster =
                    //     state.searchResultList[index].posterImageUrl;
                    return kNone;
                    // return const PosterCard(
                    //   imageUrl:
                    //       'https://www.themoviedb.org/t/p/w1280/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg',
                    // );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 2.w,
                    crossAxisSpacing: 2.w,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemCount: 20,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
