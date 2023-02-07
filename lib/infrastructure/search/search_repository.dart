import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:zinea/domain/core/api_endpoints.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/utils/failures/main_failures.dart';
import 'package:zinea/domain/utils/user/user_utils.dart';

class SearchRepository {
  final Dio dio =
      Dio(BaseOptions(headers: {"Content-Type": "application/json"}));

  //==================== Home ====================
  Future<Either<MainFailures, List<VideoModel>>> search(
      {required String query}) async {
    try {
      final String form = json.encode(
        {
          "sessionToken": UserUtils.instance.userToken,
          "email": UserUtils.instance.userModel.email,
          "phone": UserUtils.instance.userModel.phone,
          "userId": UserUtils.instance.userId,
          "keyword": query,
          "limit": "30"
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
