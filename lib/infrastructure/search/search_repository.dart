import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:zinea/domain/core/api_endpoints.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/utils/failures/main_failures.dart';

class SearchRepository {
  final Dio dio =
      Dio(BaseOptions(headers: {"Content-Type": "application/json"}));

  //==================== Home ====================
  Future<Either<MainFailures, List<VideoModel>>> search(
      {required String query}) async {
    try {
      final String form = json.encode(
        {
          "sessionToken":
              '4bb52c85cb51237d8c57d894201a0c2d765dcb93c3acf126368fe7cc472a68251c3e5b9a69dbed96cd2154999ec10330',
          "keyword": query
        },
      );

      final Response response = await dio.post(ApiEndpoints.search, data: form);

      // log('response == ${response.data.toString()}', name: 'Search');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map result = json.decode(response.data) as Map;

        if (result['status'] == true) {
          final List<VideoModel> videos = (result['body'] as List)
              .map((video) => VideoModel.fromJson(video))
              .toList();

          return Right(videos);
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
