import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/domain/models/user/user_model.dart';
import 'package:zinea/domain/provider/main/main_provider.dart';
import 'package:zinea/presentation/widgets/dialogs/alert_dialog_custom.dart';
import 'package:zinea/presentation/widgets/snackbars/snackbar.dart';

class UserUtils {
  //========== Singleton Instance ==========
  UserUtils._();
  static final UserUtils instance = UserUtils._();
  factory UserUtils() {
    return instance;
  }

  //========== Variables ==========
  late String userId;
  late String userToken;
  late bool subscriptionStatus;

  //========== Model Classes ==========
  late UserModel userModel;

  //========== Save User on Startup ==========
  void saveUserFromString({required String userString}) {
    final UserModel user = UserModel.fromJson(jsonDecode(userString));
    userModel = user;
    userId = user.id;
    userToken = user.token;
    subscriptionStatus = user.subscriptionStatus;
  }

  //========== Save User on Login ==========
  void saveUserOnLogin({required Map<String, dynamic> userJson}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('user', jsonEncode(userJson));

    // Adding Subscription-Status
    final bool subscriptionStatus = getSubscriptionStatus(
        subscriptionDate: userJson['subscriptionPeriod'],
        subscriptionPeriod: userJson['subscritpionTimeStamp']);
    userJson.addAll({'subscription_status': subscriptionStatus});

    final UserModel user = UserModel.fromJson(userJson);
    userModel = user;
    userId = user.id;
    userToken = user.token;
    this.subscriptionStatus = subscriptionStatus;
  }

  //========== Save User on Register ==========
  void saveUserOnRegister({required UserModel userModel}) async {
    // Adding Subscription-Status
    final bool subscriptionStatus = getSubscriptionStatus(
        subscriptionDate: userModel.subscriptionPeriod,
        subscriptionPeriod: userModel.subscriptionTimeStamp);

    userModel = userModel.copyWith(subscriptionStatus: subscriptionStatus);

    this.userModel = userModel;
    this.subscriptionStatus = subscriptionStatus;

    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('user', jsonEncode(userModel.toJson()));
  }

  //========== Update Token ==========
  void updateToken({required String token}) async {
    userModel = userModel.copyWith(token: token);
    userToken = token;

    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('user', jsonEncode(userModel.toJson()));
  }

  //========== Get Subscription Status ==========
  bool getSubscriptionStatus({
    required String? subscriptionDate,
    required String? subscriptionPeriod,
  }) {
    if (subscriptionDate != null && subscriptionPeriod != null) {
      final DateTime expiryDate = DateTime.parse(subscriptionDate);
      if (expiryDate.isAfter(DateTime.now())) {
        return true;
      }
      return false;
    } else {
      return false;
    }
  }

  //========== Logout User Dialog ==========
  Future<void> logoutUserDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (ctx) {
        return Consumer(
          builder: (context, ref, child) {
            return KAlertDialog(
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: kWhite,
                ),
              ),
              content: Text(
                'Are you sure you want to logout?',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: kWhite,
                ),
              ),
              submitText: 'Logout',
              submitAction: () async {
                ref.invalidate(MainProvider.navigateProvider);

                Navigator.pushNamedAndRemoveUntil(
                    context, routeLogin, ModalRoute.withName(routeRoot));
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                prefs.remove('user');

                kSnackBar(
                  context: context,
                  content: 'Logged out successfully',
                  success: true,
                );
              },
            );
          },
        );
      },
    );
  }

  //========== Logout User ==========
  Future<void> logoutUser(BuildContext context, WidgetRef ref) async {
    ref.invalidate(MainProvider.navigateProvider);

    Navigator.pushNamedAndRemoveUntil(
        context, routeLogin, ModalRoute.withName(routeRoot));
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('user');

    kSnackBar(
      context: context,
      content: 'Logged out successfully',
      success: true,
    );
  }
}
