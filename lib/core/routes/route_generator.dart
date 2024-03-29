import 'package:flutter/material.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/domain/models/content/content_model.dart';
import 'package:zinea/presentation/screens/auth/login/screen_login.dart';
import 'package:zinea/presentation/screens/auth/register/screen_register.dart';
import 'package:zinea/presentation/screens/contact/screen_contact_us.dart';
import 'package:zinea/presentation/screens/filter/screen_filter.dart';
import 'package:zinea/presentation/screens/home/screen_home.dart';
import 'package:zinea/presentation/screens/introduction/screen_introduction.dart';
import 'package:zinea/presentation/screens/main/screen_main.dart';
import 'package:zinea/presentation/screens/profile/manage/screen_manage_profile.dart';
import 'package:zinea/presentation/screens/profile/password/screen_password.dart';
import 'package:zinea/presentation/screens/profile/screen_profile.dart';
import 'package:zinea/presentation/screens/search/screen_search.dart';
import 'package:zinea/presentation/screens/splash/screen_splash.dart';
import 'package:zinea/presentation/screens/info/screen_info.dart';
import 'package:zinea/presentation/screens/watch/screen_watch.dart';
import 'package:zinea/presentation/screens/watchlist/screen_watchlist.dart';
import 'package:zinea/presentation/widgets/errors/connection.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final Object? args = routeSettings.arguments;

    switch (routeSettings.name) {
      //=-=-=-=-=-=-=-=-=-=- Root -=-=-=-=-=-=-=-=-=-=
      case routeRoot:
        return MaterialPageRoute(builder: (_) => const ScreenSplash());

      //=-=-=-=-=-=-=-=-=-=- Introduction -=-=-=-=-=-=-=-=-=-=
      case routeIntroduction:
        return MaterialPageRoute(builder: (_) => const ScreenIntroduction());

      //=-=-=-=-=-=-=-=-=-=- Authentication -=-=-=-=-=-=-=-=-=-=
      case routeLogin:
        return MaterialPageRoute(
            builder: (_) => ConnectionWidget(child: ScreenLogin()));
      case routeRegister:
        return MaterialPageRoute(
            builder: (_) => ConnectionWidget(child: ScreenRegister()));

      //=-=-=-=-=-=-=-=-=-=- Main -=-=-=-=-=-=-=-=-=-=
      case routeMain:
        return MaterialPageRoute(
            builder: (_) => const ConnectionWidget(child: ScreenMain()));

      //=-=-=-=-=-=-=-=-=-=- Home -=-=-=-=-=-=-=-=-=-=
      case routeHome:
        return MaterialPageRoute(builder: (_) => const ScreenHome());

      //=-=-=-=-=-=-=-=-=-=- Search -=-=-=-=-=-=-=-=-=-=
      case routeSearch:
        return MaterialPageRoute(builder: (_) => const ScreenSearch());

      //=-=-=-=-=-=-=-=-=-=- My Contents -=-=-=-=-=-=-=-=-=-=
      case routeMyContents:
        return MaterialPageRoute(builder: (_) => const ScreenWatchlist());

      //=-=-=-=-=-=-=-=-=-=- Watchlist -=-=-=-=-=-=-=-=-=-=
      case routeWatchlist:
        return MaterialPageRoute(builder: (_) => const ScreenWatchlist());

      //=-=-=-=-=-=-=-=-=-=- Profile -=-=-=-=-=-=-=-=-=-=
      case routeProfile:
        return MaterialPageRoute(builder: (_) => const ScreenProfile());
      case routeProfileManage:
        return MaterialPageRoute(builder: (_) => const ScreenManageProfile());

      //=-=-=-=-=-=-=-=-=-=- Password -=-=-=-=-=-=-=-=-=-=
      case routePassword:
        return MaterialPageRoute(builder: (_) => const ScreenPassword());

      //=-=-=-=-=-=-=-=-=-=- Contact -=-=-=-=-=-=-=-=-=-=
      case routeContactUs:
        return MaterialPageRoute(builder: (_) => const ScreenContactUs());

      //=-=-=-=-=-=-=-=-=-=- Filter -=-=-=-=-=-=-=-=-=-=
      case routeFilter:
        if (args is ContentModel) {
          return MaterialPageRoute(builder: (_) => ScreenFilter(content: args));
        }
        return _errorRoute();

      //=-=-=-=-=-=-=-=-=-=- Info -=-=-=-=-=-=-=-=-=-=
      case routeInfo:
        if (args is String) {
          return MaterialPageRoute(builder: (_) => ScreenInfo(videoId: args));
        }
        return _errorRoute();

      //=-=-=-=-=-=-=-=-=-=- Watch -=-=-=-=-=-=-=-=-=-=
      case routeWatch:
        if (args is String) {
          return MaterialPageRoute(builder: (_) => ScreenWatch(videoId: args));
        }
        return _errorRoute();

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
