import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:zinea/domain/core/api_endpoints.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/utils/failures/main_failures.dart';
import 'package:zinea/domain/utils/user/user_utils.dart';

class WatchlistRepository {
  final Dio dio =
      Dio(BaseOptions(headers: {"Content-Type": "application/json"}));

  //==================== Watchlist ====================
  Future<Either<MainFailures, VideoModel>> watchlists(
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

      final Response response =
          await dio.post(ApiEndpoints.watchlists, data: form);

      log('response == ${response.data.toString()}', name: 'Watchlists');

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

  //==================== Modify Watchlist ====================
  Future<Either<MainFailures, bool>> modifyWatchlist(
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

      final Response response =
          await dio.post(ApiEndpoints.watchlistModify, data: form);

      log('response == ${response.data.toString()}', name: 'Modify Watchlist');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map result = json.decode(response.data) as Map;

        if (result['status'] == true) {
          final String action = result['body'] as String;
          final bool status = action == 'added';
          return Right(status);
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
