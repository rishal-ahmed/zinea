import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/subscription/subscription_event.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/models/subscription/subscription_model.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/provider/subscription/subscription_provider.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/presentation/screens/payment/payment_gateway.dart';
import 'package:zinea/presentation/widgets/snackbars/snackbar.dart';

class SubscriptionPlanCardWidget extends ConsumerWidget {
  const SubscriptionPlanCardWidget({
    Key? key,
    required this.subscription,
    required this.info,
  }) : super(key: key);

  final SubscriptionModel subscription;
  final VideoModel info;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      child: InkWell(
        onTap: () async {
          Navigator.pop(context);

          //==--==--==--==-- Subscribe --==--==--==--==
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PaymentGateway(
                isSubScribe: true,
                planId: subscription.id,
              ),
            ),
          );

          ref.read(SubscriptionProvider.checkPaymentStatus.notifier).emit(
              SubscriptionEvent.checkPaymentStatus(videoId: info.id, mode: 1));

          ref.listenManual(
            SubscriptionProvider.checkPaymentStatus,
            (previous, next) {
              Navigator.pop(context);
              if (next.isError) {
                return kSnackBar(
                    context: context, content: next.message, error: true);
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
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: primaryColor),
            color: kTransparentColor,
          ),
          child: Column(
            children: [
              Text(
                subscription.name,
                style: TextUtils.theme(context)
                    .titleLarge
                    ?.copyWith(color: primaryTextColor),
              ),
              dHeight1,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: '₹${subscription.price} ',
                      style: TextUtils.theme(context).bodyLarge,
                      children: [
                        TextSpan(
                          text:
                              '/ ${subscription.period} ${subscription.period == '1' ? 'month' : 'months'}',
                          style: TextUtils.theme(context).bodyMedium?.copyWith(
                                color: kWhite70,
                              ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    '${subscription.tax}% Tax',
                    style: TextUtils.theme(context).bodyMedium,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
