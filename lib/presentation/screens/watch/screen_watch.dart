import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vimeoplayer/vimeoplayer.dart';

class ScreenWatch extends ConsumerWidget {
  const ScreenWatch({required this.videoId, super.key});

  final String videoId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   SystemChrome.setPreferredOrientations(
    //       [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    // });
    return WillPopScope(
      onWillPop: () async {
        {
          SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
          return true;
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: <Widget>[
            VimeoPlayer(id: videoId, autoPlay: true, position: 10),
          ],
        ),
      ),
    );
  }
}
