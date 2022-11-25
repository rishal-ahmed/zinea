import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/app/app_theme.dart';
import 'package:zinea/core/routes/route_generator.dart';
import 'package:zinea/core/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return MaterialApp(
            title: 'Zinea',
            debugShowCheckedModeBanner: false,
            darkTheme: AppTheme.theme(context),
            onGenerateRoute: RouteGenerator.generateRoute,
            initialRoute: routeRoot,
          );
        },
      ),
    );
  }
}
