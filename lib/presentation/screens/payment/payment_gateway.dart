// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:zinea/core/constants/base_url.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/domain/utils/user/user_utils.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class PaymentGateway extends StatefulWidget {
  final bool _isSubScription;
  final String _movieId;
  final String _planId;
  final bool _isBuy;
  @override
  const PaymentGateway(
      this._isSubScription, this._movieId, this._planId, this._isBuy,
      {super.key});

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
    _paymentUrl = widget._isSubScription
        ? '${baseUrl}checkoutsubscriptionapp.php?planid=${widget._planId}&app_userId=${UserUtils.instance.userId}&app_name=${UserUtils.instance.userModel.name}&app_email=${UserUtils.instance.userModel.email}&app_mobile=${UserUtils.instance.userModel.phone}'
        : '${baseUrl}checkoutmovieapp.php?movieId=${widget._movieId}&purchaseType=${widget._isBuy ? '1' : '2'}&app_userId=${UserUtils.instance.userId}&app_name=${UserUtils.instance.userModel.name}&app_email=${UserUtils.instance.userModel.email}&app_mobile=${UserUtils.instance.userModel.phone}';
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
