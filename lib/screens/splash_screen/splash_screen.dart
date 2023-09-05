import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kid_smart_learning/constants/constants.dart';
import 'package:kid_smart_learning/constants/text_string.dart';
import 'package:kid_smart_learning/screens/home_screen/home_screen.dart';

import '../../constants/image_string.dart';
import '../login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = '/splash_screen';

  @override
  Widget build(BuildContext context) {
    // we use duration to navigate to the login screen after 3 seconds
    // route > false refer to no return when the user press the back button
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, HomeScreen.routeName, (route) => false);
    });

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                kSplashScreenText1,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: kTextWhiteColor,
                      fontStyle: FontStyle.italic,
                      fontSize: 44.0,
                      letterSpacing: 2.0,
                    ),
              ),
              Text(
                kSplashScreenText2,
                style: GoogleFonts.pattaya(
                  color: kTextWhiteColor,
                  fontSize: 40.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Image.asset(
            kSplashScreenImage,
            height: 200,
            width: 160,
          ),
        ],
      ),
    );
  }
}
