// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/domain/core/api_endpoints.dart';
import 'package:zinea/domain/utils/user/user_utils.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class PaymentGateway extends StatefulWidget {
  final bool isSubScribe;
  final String? movieId;
  final String? planId;
  final bool isBuy;
  @override
  const PaymentGateway({
    this.isSubScribe = false,
    this.movieId,
    this.planId,
    this.isBuy = false,
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _PaymentGatewayState();
  }
}

class _PaymentGatewayState extends State<PaymentGateway> {
  String _paymentUrl = '';
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _paymentUrl = widget.isSubScribe
        ? '${ApiEndpoints.subscribe}?planid=${widget.planId}&app_userId=${UserUtils.instance.userId}&app_name=${UserUtils.instance.userModel.name}&app_email=${UserUtils.instance.userModel.email}&app_mobile=${UserUtils.instance.userModel.phone}'
        : '${ApiEndpoints.subscribeMovie}?movieId=${widget.movieId}&purchaseType=${widget.isBuy ? '1' : '2'}&app_userId=${UserUtils.instance.userId}&app_name=${UserUtils.instance.userModel.name}&app_email=${UserUtils.instance.userModel.email}&app_mobile=${UserUtils.instance.userModel.phone}';
    _paymentUrl = _paymentUrl.replaceAll(" ", "%20");
    log('Payment URL = $_paymentUrl');
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }
    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: kBlack,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0.0,
        centerTitle: true,
        title: const Text('Payment',
            style: TextStyle(
              color: kWhite,
              fontSize: 20.0,
              fontFamily: 'Mukta',
              fontWeight: FontWeight.w500,
            )),
      ),
      body: WebViewWidget(
        controller: WebViewController()
          ..loadRequest(Uri.parse(_paymentUrl))
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setNavigationDelegate(
              NavigationDelegate(onNavigationRequest: (action) {
            if (action.url.contains('/home.php') ||
                action.url.contains('/movie.php')) {
              Navigator.pop(context);
            }
            return NavigationDecision.navigate;
          })),
      ),
    );
  }
}
