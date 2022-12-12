import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:zinea/domain/core/api_endpoints.dart';
import 'package:zinea/domain/utils/failures/main_failures.dart';
import 'package:zinea/domain/utils/user/user_utils.dart';

class LoginRepository {
  final Dio dio =
      Dio(BaseOptions(headers: {"Content-Type": "application/json"}));

  //==================== Login ====================
  Future<Either<MainFailures, bool>> login(
      {required String username, required String password}) async {
    try {
      final String form = json.encode(
        {
          'username': username,
          'password': password,
        },
      );

      final Response response = await dio.post(ApiEndpoints.login, data: form);

      log('response == ${response.data.toString()}', name: 'Login');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map result = json.decode(response.data) as Map;

        if (result['status'] == true) {
          final Map<String, dynamic> userJson = result['body'];

          UserUtils.instance.saveUserOnLogin(userJson: userJson);

          return const Right(true);
        } else {
          final String? error = result['errorMsg'] == 'Incorrect Credentials.'
              ? 'Incorrect username or password'
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
