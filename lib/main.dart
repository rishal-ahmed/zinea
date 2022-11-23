import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/routes/route_generator.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/domain/utils/text_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Zinea',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: kBlack,
            appBarTheme: const AppBarTheme(color: kBlack),
            primaryColor: Colors.yellow,
            colorScheme: const ColorScheme.dark(),
            fontFamily: GoogleFonts.roboto().fontFamily,
            textTheme: TextTheme(
              bodyText1: TextUtils.bodytext1,
              bodyText2: TextUtils.bodytext2,
            ),
          ),
          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: routeRoot,
        );
      },
    );
  }
}
