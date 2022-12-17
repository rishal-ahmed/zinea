import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:zinea/domain/core/api_endpoints.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/utils/failures/main_failures.dart';
import 'package:zinea/domain/utils/user/user_utils.dart';

class InfoRepository {
  final Dio dio =
      Dio(BaseOptions(headers: {"Content-Type": "application/json"}));

  //==================== Info ====================
  Future<Either<MainFailures, VideoModel>> info(
      {required String videoId}) async {
    try {
      final String form = json.encode(
        {
          "sessionToken":
              '4bb52c85cb51237d8c57d894201a0c2d765dcb93c3acf126368fe7cc472a68251c3e5b9a69dbed96cd2154999ec10330',
          "userId": UserUtils.instance.userId,
          "movieId": videoId,
        },
      );

      final Response response = await dio.post(ApiEndpoints.info, data: form);

      log('response == ${response.data.toString()}', name: 'Info');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map result = json.decode(response.data) as Map;

        if (result['status'] == true) {
          final VideoModel info = VideoModel.fromJson((result['body']));
          return Right(info);
        } else {
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

  //==================== Add Rating ====================
  Future<Either<MainFailures, bool>> addRating(
      {required String videoId, required String rating}) async {
    try {
      final String form = json.encode({
        "sessionToken": UserUtils.instance.userToken,
        "email": UserUtils.instance.userModel.email,
        "phone": UserUtils.instance.userModel.phone,
        "userId": UserUtils.instance.userId,
        "contentId": videoId,
        "ratingValue": rating,
      });

      final Response response =
          await dio.post(ApiEndpoints.addRating, data: form);

      log('response == ${response.data.toString()}', name: 'Add Rating');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map result = json.decode(response.data) as Map;

        if (result['status'] == true) {
          return right(true);
        } else {
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

  //==================== User Rating ====================
  Future<Either<MainFailures, double>> userRating(
      {required String videoId, required String rating}) async {
    try {
      final String form = json.encode({
        "sessionToken": UserUtils.instance.userToken,
        "email": UserUtils.instance.userModel.email,
        "phone": UserUtils.instance.userModel.phone,
        "userId": UserUtils.instance.userId,
        "contentId": videoId
      });

      final Response response =
          await dio.post(ApiEndpoints.userRating, data: form);

      log('response == ${response.data.toString()}', name: 'User Rating');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map result = json.decode(response.data) as Map;

        if (result['status'] == true && result['body']['ratedByUser'] == true) {
          final double rating = result['body']['rating'];
          return Right(rating);
        } else {
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
