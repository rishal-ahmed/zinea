import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/routes/routes.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    afterSplash(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Icon(
                Icons.wifi,
                color: Colors.yellow,
                size: 40.sp,
              ),
            )
          ],
        ),
      ),
    );
  }

  //==================== After Splash ====================
  Future<void> afterSplash(context) async {
    await Future.delayed(const Duration(seconds: 2));

    Navigator.pushReplacementNamed(context, routeIntroduction);
  }
}
