import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kid_smart_learning/constants/constants.dart';
import 'package:kid_smart_learning/constants/text_string.dart';
import 'package:kid_smart_learning/routes/routes.dart';
import 'package:kid_smart_learning/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        textTheme: GoogleFonts.sourceCodeProTextTheme(
          Theme.of(context).textTheme.apply().copyWith(
                bodyLarge: const TextStyle(
                  color: kTextWhiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                ),
              ),
        ),
      ),
      initialRoute: SplashScreen.routeName,

      // define the routes file to acces the routes in the app
      routes: routes,
    );
  }
}
