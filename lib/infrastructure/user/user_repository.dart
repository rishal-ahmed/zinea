import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:zinea/domain/core/api_endpoints.dart';
import 'package:zinea/domain/utils/failures/main_failures.dart';
import 'package:zinea/domain/utils/user/user_utils.dart';

class UserRepository {
  final Dio dio =
      Dio(BaseOptions(headers: {"Content-Type": "application/json"}));

  //==================== Change Password ====================
  Future<Either<MainFailures, bool>> changePassword(
      {required String oldPassword, required String newPassword}) async {
    try {
      final String form = json.encode(
        {
          "sessionToken": UserUtils.instance.userToken,
          "email": UserUtils.instance.userModel.email,
          "phone": UserUtils.instance.userModel.phone,
          "userId": UserUtils.instance.userId,
          "oldPassword": oldPassword,
          "newPassword": newPassword,
        },
      );

      final Response response =
          await dio.post(ApiEndpoints.changePassword, data: form);

      log('response == ${response.data.toString()}', name: 'Change Password');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map result = json.decode(response.data) as Map;

        if (result['status'] == true) {
          final String token = result['body']['token'];

          UserUtils.instance.updateToken(token: token);

          return const Right(true);
        } else {
          final String? error = result['errorMsg'] ==
                  'Password change failed. Please try again with correct old password'
              ? 'Old password is incorrect'
              : null;
          if (error != null) {
            return Left(MainFailures.clientFailure(error: error));
          }

          return const Left(MainFailures.clientFailure());
        }
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e, s) {
      log('Exception : $e', stackTrace: s);
      return const Left(MainFailures.clientFailure());
    }
  }
}
