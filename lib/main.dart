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
          appBarTheme: const AppBarTheme(
            elevation: 0.0,
            color: kPrimaryColor,
            centerTitle: true,
          ),
          primaryColor: kPrimaryColor,
          textTheme:
              GoogleFonts.sourceCodeProTextTheme(Theme.of(context).textTheme)
                  .apply()
                  .copyWith(
                    bodyLarge: const TextStyle(
                        color: kTextWhiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0),
                    titleSmall: const TextStyle(
                      color: kTextWhiteColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 20.0,
                    ),
                    titleMedium: const TextStyle(
                      color: kTextWhiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
          inputDecorationTheme: const InputDecorationTheme(
            labelStyle: TextStyle(
              color: kTextLightColor,
              fontSize: 15.0,
              height: 0.5,
            ),
            hintStyle: TextStyle(
              color: kTextBlackColor,
              fontSize: 15.0,
              height: 0.5,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
                width: 0.7,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kErrorBorderColor,
              ),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kErrorBorderColor,
              ),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
              ),
            ),
          )),
      initialRoute: SplashScreen.routeName,

      // define the routes file to acces the routes in the app
      routes: routes,
    );
  }
}
