import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:zinea/domain/core/api_endpoints.dart';
import 'package:zinea/domain/models/subscription/subscription_model.dart';
import 'package:zinea/domain/utils/failures/main_failures.dart';
import 'package:zinea/domain/utils/user/user_utils.dart';

class SubscriptionRepository {
  final Dio dio =
      Dio(BaseOptions(headers: {"Content-Type": "application/json"}));

  //==================== Subscriptions ====================
  Future<Either<MainFailures, List<SubscriptionModel>>>
      get subscriptions async {
    try {
      final String form = json.encode(
        {
          "sessionToken": UserUtils.instance.userToken,
          "email": UserUtils.instance.userModel.email,
          "phone": UserUtils.instance.userModel.phone,
          "userId": UserUtils.instance.userId,
        },
      );

      final Response response =
          await dio.post(ApiEndpoints.subscriptionPlans, data: form);

      log('response == ${response.data.toString()}', name: 'Subscription');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map result = json.decode(response.data) as Map;

        if (result['status']) {
          final List<SubscriptionModel> subscriptions = (result['body'] as List)
              .map((e) => SubscriptionModel.fromJson(e))
              .toList();
          return Right(subscriptions);
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
