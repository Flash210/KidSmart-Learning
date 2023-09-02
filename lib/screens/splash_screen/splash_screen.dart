import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kid_smart_learning/constants/constants.dart';
import 'package:kid_smart_learning/constants/text_string.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = '/splash_screen';

  @override
  Widget build(BuildContext context) {
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
            "assets/images/studentt.png",
            height: 200,
            width: 160,
          ),
        ],
      ),
    );
  }
}
