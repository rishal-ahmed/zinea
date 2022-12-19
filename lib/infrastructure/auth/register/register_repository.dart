import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:zinea/application/auth/register/register_event.dart';
import 'package:zinea/domain/core/api_endpoints.dart';
import 'package:zinea/domain/models/user/user_model.dart';
import 'package:zinea/domain/utils/failures/main_failures.dart';
import 'package:zinea/domain/utils/user/user_utils.dart';

class RegisterRepository {
  final Dio dio =
      Dio(BaseOptions(headers: {"Content-Type": "application/json"}));

  //==================== Register ====================
  Future<Either<MainFailures, bool>> register(
      {required RegisterEvent registerEvent}) async {
    try {
      final String form = json.encode({
        "name": registerEvent.name,
        "phone": registerEvent.phone,
        "countryCode": '91',
        "email": registerEvent.email,
        "password": registerEvent.password,
      });

      final Response response =
          await dio.post(ApiEndpoints.register, data: form);

      log('response == ${response.data.toString()}', name: 'Register');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map result = json.decode(response.data) as Map;

        if (result['status'] == true) {
          final Map<String, dynamic> body = result['body'];

          final UserModel userModel = UserModel(
              id: body['userId'].toString(),
              name: registerEvent.name,
              phone: registerEvent.phone,
              email: registerEvent.email,
              token: body['token']);

          UserUtils.instance.saveUserOnRegister(userModel: userModel);

          return const Right(true);
        } else {
          final String? error = result['errorMsg'] != 'Some error occured'
              ? result['errorMsg']
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
