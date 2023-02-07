import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:zinea/domain/core/api_endpoints.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/utils/failures/main_failures.dart';
import 'package:zinea/domain/utils/user/user_utils.dart';

class HomeRepository {
  final Dio dio =
      Dio(BaseOptions(headers: {"Content-Type": "application/json"}));

  //==================== Home ====================
  Future<Either<MainFailures, List<List<VideoModel>>>> get home async {
    try {
      final String form = json.encode({
        "sessionToken": UserUtils.instance.userToken,
        "email": UserUtils.instance.userModel.email,
        "phone": UserUtils.instance.userModel.phone,
        "userId": UserUtils.instance.userId
      });

      final Response response = await dio.post(ApiEndpoints.home, data: form);

      // log('response == ${response.data.toString()}', name: 'Home');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map result = json.decode(response.data) as Map;

        if (result['status'] == true) {
          final List videos = result['body'] as List;

          final Set homeTitles =
              videos.map((element) => element['name']).toSet();

          // log('homeTitle == $homeTitles');

          final List<List<VideoModel>> homeContents = [];

          for (String title in homeTitles) {
            final List<VideoModel> homeContent = [];

            videos.map((video) {
              if (video['name'] == title) {
                homeContent.add(VideoModel.fromJson(video));
              }
            }).toList();

            homeContents.add(homeContent);
          }

          return Right(
            homeContents,
          );
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
