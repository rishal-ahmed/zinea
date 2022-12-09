import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:zinea/application/filter/filter_event.dart';
import 'package:zinea/domain/core/api_endpoints.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/utils/failures/main_failures.dart';

class FilterRepository {
  final Dio dio =
      Dio(BaseOptions(headers: {"Content-Type": "application/json"}));

  //==================== Home ====================
  Future<Either<MainFailures, List<VideoModel>>> filter(
      {required FilterEvent filterEvent}) async {
    try {
      log('events == ${filterEvent.toString()}');
      final String form = json.encode(
        {
          "sessionToken":
              "c782779b77215248bb2372c545132ae18400799981269392b01f19b903b2b8be66351ac4b20b7557aa4689ee7d8a2aca",
          "catalog": filterEvent.genre,
          "startingPoint": "0",
          "limit": "100",
          "ratingStart": "1.0",
          "ratingEnd": filterEvent.rating,
          "releaseYearStart": filterEvent.releaseYearStart,
          "releaseYearEnd": filterEvent.releaseYearEnd,
          "language": "All",
          "contentTypeId": filterEvent.contentId,
        },
      );

      final Response response = await dio.post(ApiEndpoints.filter, data: form);

      // log('response == ${response.data.toString()}', name: 'Filter');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map result = json.decode(response.data) as Map;

        if (result['status'] == true) {
          final List<VideoModel> videos = (result['body'] as List)
              .map((json) => VideoModel.fromJson(json))
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
