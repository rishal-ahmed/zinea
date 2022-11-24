import 'package:flutter/material.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/presentation/screens/auth/login/screen_login.dart';
import 'package:zinea/presentation/screens/auth/register/screen_register.dart';
import 'package:zinea/presentation/screens/home/screen_home.dart';
import 'package:zinea/presentation/screens/introduction/screen_introduction.dart';
import 'package:zinea/presentation/screens/main/screen_main.dart';
import 'package:zinea/presentation/screens/splash/screen_splash.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    // final Object? args = routeSettings.arguments;

    switch (routeSettings.name) {
      //=-=-=-=-=-=-=-=-=-=- Root -=-=-=-=-=-=-=-=-=-=
      case routeRoot:
        return MaterialPageRoute(builder: (_) => const ScreenSplash());

      //=-=-=-=-=-=-=-=-=-=- Introduction -=-=-=-=-=-=-=-=-=-=
      case routeIntroduction:
        return MaterialPageRoute(builder: (_) => const ScreenIntroduction());

      //=-=-=-=-=-=-=-=-=-=- Authentication -=-=-=-=-=-=-=-=-=-=
      case routeLogin:
        return MaterialPageRoute(builder: (_) => const ScreenLogin());
      case routeRegister:
        return MaterialPageRoute(builder: (_) => const ScreenRegister());

      //=-=-=-=-=-=-=-=-=-=- Main -=-=-=-=-=-=-=-=-=-=
      case routeMain:
        return MaterialPageRoute(builder: (_) => const ScreenMain());

      //=-=-=-=-=-=-=-=-=-=- Home -=-=-=-=-=-=-=-=-=-=
      case routeHome:
        return MaterialPageRoute(builder: (_) => const ScreenHome());

      default:
        return _errorRoute();
    }
  }

  //========== Error Page if Navigation goes wrong ==========
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text(
            'Error',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
