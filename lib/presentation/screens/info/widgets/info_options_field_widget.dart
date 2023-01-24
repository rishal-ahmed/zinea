import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/application/info/info_event.dart';
import 'package:zinea/application/info/info_state.dart';
import 'package:zinea/application/subscription/subscription_event.dart';
import 'package:zinea/application/subscription/subscription_state.dart';
import 'package:zinea/application/watchlist/watchlist_event.dart';
import 'package:zinea/application/watchlist/watchlist_state.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/domain/models/subscription/subscription_model.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/provider/info/info_provider.dart';
import 'package:zinea/domain/provider/subscription/subscription_provider.dart';
import 'package:zinea/domain/provider/watchlist/watchlist_provider.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/domain/utils/user/user_utils.dart';
import 'package:zinea/presentation/screens/info/widgets/subscription_plan_card_widget.dart';
import 'package:zinea/presentation/screens/payment/payment_gateway.dart';
import 'package:zinea/presentation/widgets/buttons/custom_material_button.dart';
import 'package:zinea/presentation/widgets/shimmer/shimmer_widget.dart';
import 'package:zinea/presentation/widgets/snackbars/snackbar.dart';

class InfoOptionsFieldWidget extends ConsumerWidget {
  const InfoOptionsFieldWidget({
    Key? key,
    required this.info,
    required this.videoId,
  }) : super(key: key);

  final VideoModel info;
  final String videoId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //==--==--==--==--==-- Play Button --==--==--==--==--==
          Consumer(
            builder: (context, ref, child) {
              final SubscriptionState subscriptionState = ref
                  .watch(SubscriptionProvider.videoSubscriptionStatus(videoId));

              return IconButton(
                onPressed: subscriptionState.isLoading
                    ? null
                    : () {
                        if (UserUtils.instance.subscriptionStatus ||
                            subscriptionState.subscriptionStatus !=
                                    'Negative' &&
                                subscriptionState.status) {
                          Navigator.pushNamed(context, routeWatch,
                              arguments: info.vimeoId);
                        } else {
                          showDialog(
                            context: context,
                            builder: (ctx) {
                              //===== Subscription Dialog =====
                              return _subscriptionDialog(ctx);
                            },
                          );
                        }
                      },
                icon: const Icon(Icons.play_arrow),
                color: kWhite30,
                iconSize: 23.sp,
              );
            },
          ),
          //==--==--==--==--==-- Watchlist Button --==--==--==--==--==
          Consumer(
            builder: (context, ref, child) {
              final WatchlistState watchlistState =
                  ref.watch(WatchlistProvider.modifyWatchlistProvider);

              bool? isWatchlist =
                  watchlistState.status ?? info.watchlistStatus == '1';

              ref.listen(
                WatchlistProvider.modifyWatchlistProvider,
                (previous, next) {
                  if (next.status != null && next.status == true) {
                    kSnackBar(
                      context: context,
                      content: 'Added to watchlist',
                      icon: Icons.playlist_add_check,
                      success: true,
                    );
                  }
                  if (next.status != null && next.status == false) {
                    kSnackBar(
                      context: context,
                      content: 'Removed from watchlist',
                      icon: Icons.playlist_remove,
                    );
                  }
                  ref.invalidate(WatchlistProvider.watchlistProvider);
                },
              );

              return IconButton(
                onPressed: () {
                  ref
                      .read(WatchlistProvider.modifyWatchlistProvider.notifier)
                      .emit(WatchlistEvent.modifyWatchlist(videoId: videoId));
                },
                icon: Icon(
                  isWatchlist ? Icons.playlist_add_check : Icons.playlist_add,
                ),
                color: isWatchlist ? primaryColor : kWhite30,
                iconSize: 23.sp,
              );
            },
          ),
          //==--==--==--==--==-- Rating Button --==--==--==--==--==
          Consumer(
            builder: (context, ref, child) {
              ref.watch(InfoProvider.addRatingProvider);

              final double rateValue = ref.watch(InfoProvider.rateProvider);

              final InfoState ratingState =
                  ref.watch(InfoProvider.getRatingProvider(videoId));
              // log('rating = ${ratingState.rating}');

              ref.listen(
                InfoProvider.addRatingProvider,
                (previous, next) {
                  if (!next.isLoading && next.status) {
                    kSnackBar(
                      context: context,
                      content: 'Rating added successfully',
                      success: true,
                    );
                  }

                  if (!next.isLoading && next.isError) {
                    kSnackBar(
                      context: context,
                      content: next.message,
                      error: true,
                    );
                  }
                },
              );

              return InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RatingBar.builder(
                              itemSize: 22.sp,
                              unratedColor: kWhite12,
                              glowColor: primaryColor,
                              initialRating: (ratingState.rating / 2),
                              itemBuilder: (context, index) {
                                return const Icon(
                                  Icons.star,
                                  color: primaryColor,
                                );
                              },
                              allowHalfRating: true,
                              onRatingUpdate: (value) {
                                ref
                                    .read(InfoProvider.rateProvider.notifier)
                                    .update((state) => (value * 2));
                              },
                            ),
                            dHeight2,
                            CustomMaterialBtton(
                              borderRadius: BorderRadius.circular(20),
                              height: 35,
                              fontSize: 16.sp,
                              onPressed: () {
                                ref
                                    .read(
                                        InfoProvider.addRatingProvider.notifier)
                                    .emit(InfoEvent.addRating(
                                      videoId: videoId,
                                      rating: rateValue.toString(),
                                    ));

                                Navigator.pop(context);
                              },
                              buttonText: 'Submit',
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                child: CircleAvatar(
                  radius: 15.sp,
                  backgroundColor: primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: CircleAvatar(
                      backgroundColor: kBlack,
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: CircleAvatar(
                          backgroundColor: kWhite30,
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: FittedBox(
                              child: Row(
                                children: [
                                  Text(
                                    double.parse(info.rating)
                                        .toStringAsFixed(1),
                                    style: TextUtils.theme(context)
                                        .bodyLarge
                                        ?.copyWith(color: primaryColor),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 16.sp,
                                    color: primaryColor,
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
              );
            },
          ),
          //==--==--==--==--==-- Share Button --==--==--==--==--==
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
            color: kWhite30,
            iconSize: 20.sp,
          ),
        ],
      ),
    );
  }

  //==--==--==--==--==-- Subscription Dialog --==--==--==--==--==
  AlertDialog _subscriptionDialog(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          FittedBox(
            child: Text(
              'Choose an option',
              style: TextUtils.theme(context).titleMedium,
            ),
          ),

          dHeight2,

          //==-==-==-==-==-- Get Premium -==-==-==-==-==
          CustomMaterialBtton(
            height: 40,
            borderRadius: BorderRadius.circular(5),
            onPressed: () {
              //==-==-==-==-==-- Subscription Plans -==-==-==-==-==
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    content: Consumer(
                      builder: (context, ref, child) {
                        final SubscriptionState subscriptionState = ref
                            .watch(SubscriptionProvider.subscriptionsProvider);
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Subscription Plans',
                              style: TextUtils.theme(context)
                                  .titleLarge
                                  ?.copyWith(
                                    color: primaryTextColor,
                                    decorationStyle: TextDecorationStyle.solid,
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                            dHeight2,
                            SizedBox(
                              height: 70.h,
                              width: 100.w,
                              child: ListView.separated(
                                itemBuilder: (context, index) {
                                  if (subscriptionState.isLoading) {
                                    return ShimmerWidget(height: 8.h);
                                  }

                                  final SubscriptionModel subscription =
                                      subscriptionState.subscriptions[index];

                                  return SubscriptionPlanCardWidget(
                                      subscription: subscription, info: info);
                                },
                                separatorBuilder: (context, index) {
                                  return dHeight2;
                                },
                                itemCount:
                                    subscriptionState.subscriptions.length,
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  );
                },
              );
            },
            buttonText: 'Get Zinea Premium',
            fontSize: 15.5.sp,
            fontWeight: FontWeight.w700,
          ),
          dHeight1n5,
          //==-==-==-==-==-- Buy -==-==-==-==-==
          Consumer(
            builder: (context, ref, child) {
              return CustomMaterialBtton(
                height: 40,
                borderRadius: BorderRadius.circular(5),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PaymentGateway(movieId: info.id, isBuy: true),
                    ),
                  );
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    ref
                        .read(SubscriptionProvider.checkPaymentStatus.notifier)
                        .emit(SubscriptionEvent.checkPaymentStatus(
                            videoId: info.id, mode: 2));
                  });

                  ref.listenManual(
                    SubscriptionProvider.checkPaymentStatus,
                    (previous, next) {
                      Navigator.pop(context);
                      if (next.isError) {
                        return kSnackBar(
                            context: context,
                            content: next.message,
                            error: true);
                      }

                      if (next.status) {
                        return kSnackBar(
                            context: context,
                            content: 'Payment successfull',
                            success: true);
                      }
                    },
                  );
                },
                buttonText: 'Buy at ₹${info.buyPrice}',
                fontSize: 15.5.sp,
                fontWeight: FontWeight.w600,
                color: kTransparentColor,
                textColor: primaryTextColor,
              );
            },
          ),
          dHeight02,
          //==-==-==-==-==-- Rent -==-==-==-==-==
          Consumer(
            builder: (context, ref, child) {
              return CustomMaterialBtton(
                height: 40,
                borderRadius: BorderRadius.circular(5),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PaymentGateway(movieId: info.id, isBuy: false),
                    ),
                  );

                  ref
                      .read(SubscriptionProvider.checkPaymentStatus.notifier)
                      .emit(SubscriptionEvent.checkPaymentStatus(
                          videoId: info.id, mode: 3));

                  ref.listenManual(
                    SubscriptionProvider.checkPaymentStatus,
                    (previous, next) {
                      Navigator.pop(context);
                      if (next.isError) {
                        return kSnackBar(
                            context: context,
                            content: next.message,
                            error: true);
                      }

                      if (next.status) {
                        return kSnackBar(
                            context: context,
                            content: 'Payment successfull',
                            success: true);
                      }
                    },
                  );
                },
                buttonText: 'Rent at  ₹${info.rentPrice}',
                fontSize: 15.5.sp,
                fontWeight: FontWeight.w600,
                color: kTransparentColor,
                textColor: primaryTextColor,
              );
            },
          ),
        ],
      ),
    );
  }
}
