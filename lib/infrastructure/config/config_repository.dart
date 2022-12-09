import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:zinea/domain/core/api_endpoints.dart';
import 'package:zinea/domain/models/config/config_model.dart';
import 'package:zinea/domain/utils/config/config_utils.dart';
import 'package:zinea/domain/utils/failures/main_failures.dart';

class ConfigRepository {
  final Dio dio =
      Dio(BaseOptions(headers: {"Content-Type": "application/json"}));

  //==================== Home ====================
  Future<Either<MainFailures, ConfigModel>> get configs async {
    try {
      // final String form = json.encode(
      //   {
      //     "sessionToken":
      //         '4bb52c85cb51237d8c57d894201a0c2d765dcb93c3acf126368fe7cc472a68251c3e5b9a69dbed96cd2154999ec10330',
      //     "userId": UserUtils.instance.userId,
      //   },
      // );

      final Response response = await dio.get(ApiEndpoints.config);

      // log('response == ${response.data.toString()}', name: 'Config');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map result = json.decode(response.data) as Map;
        final ConfigModel configs = ConfigModel.fromJson(result['configs']);

        ConfigUtils.instance.config = configs;

        return Right(configs);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e, s) {
      log('Exception : $e', stackTrace: s);
      return const Left(MainFailures.clientFailure());
    }
  }
}
