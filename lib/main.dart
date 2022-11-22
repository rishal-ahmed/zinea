import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/routes/route_generator.dart';
import 'package:zinea/core/routes/routes.dart';

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
            primaryColor: Colors.yellow,
            colorScheme: const ColorScheme.dark(),
            fontFamily: GoogleFonts.roboto().fontFamily,
          ),
          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: routeRoot,
        );
      },
    );
  }
}
