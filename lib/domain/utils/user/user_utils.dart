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

  //========== Model Classes ==========
  late UserModel userModel;

  //========== Save User on Startup ==========
  void saveUserFromString({required String userString}) {
    final UserModel user = UserModel.fromJson(jsonDecode(userString));
    userModel = user;
    userId = user.id;
    userToken = user.token;
  }

  //========== Save User on Login ==========
  void saveUserOnLogin({required Map<String, dynamic> userJson}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('user', jsonEncode(userJson));

    final UserModel user = UserModel.fromJson(userJson);
    userModel = user;
    userId = user.id;
    userToken = user.token;
  }

  //========== Save User on Register ==========
  void saveUserOnRegister({required String id, required String token}) async {
    userModel = userModel.copyWith(id: id, token: token);

    userId = id;
    userToken = token;

    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('user', jsonEncode(userModel.toJson()));
  }

  //========== Save User on Register ==========
  void updateToken({required String token}) async {
    userModel = userModel.copyWith(token: token);
    userToken = token;

    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('user', jsonEncode(userModel.toJson()));
  }

  //========== Logout User ==========
  Future<void> logoutUser(BuildContext context) async {
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
                Navigator.pushNamedAndRemoveUntil(
                    context, routeLogin, ModalRoute.withName(routeRoot));
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                prefs.remove('user');

                ref.invalidate(MainProvider.navigateProvider);

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
}
