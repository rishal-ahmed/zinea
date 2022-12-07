import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';

//========== Show SnackBar ==========
void kSnackBar({
  required BuildContext context,
  required String content,
  double? height,
  Color color = kWhite30,
  IconData? icon,
  int? duration,
  bool error = false,
  bool success = false,
  bool delete = false,
  bool update = false,
  bool floating = false,
  SnackBarAction? action,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: SizedBox(
        height: height,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: kSnackBarIconColor,
                size: 18.sp,
              )
            else
              error == true
                  ? Icon(
                      Icons.error_outline,
                      color: kSnackBarIconColor,
                      size: 18.sp,
                    )
                  : success == true
                      ? Icon(
                          Icons.done,
                          color: kSnackBarIconColor,
                          size: 18.sp,
                        )
                      : delete == true
                          ? Icon(
                              Icons.delete,
                              color: kSnackBarIconColor,
                              size: 18.sp,
                            )
                          : update == true
                              ? Icon(
                                  Icons.update,
                                  color: kSnackBarIconColor,
                                  size: 18.sp,
                                )
                              : kNone,
            kWidth5,
            Flexible(
              child: Text(
                content,
                softWrap: false,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextUtils.theme(context).labelLarge,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: error == true
          ? kSnackBarErrorColor
          : success == true
              ? kSnackBarSuccessColor
              : delete == true
                  ? kSnackBarDeleteColor
                  : update == true
                      ? kSnackBarUpdateColor
                      : color,
      duration: Duration(seconds: duration ?? 3),
      behavior: floating ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
      action: action,
    ),
  );
}
