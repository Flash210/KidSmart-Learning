import 'package:flutter/material.dart';
import 'package:kid_smart_learning/constants/image_string.dart';
import 'package:kid_smart_learning/constants/text_string.dart';

import '../../constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String routeName = '/login_screen';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // when the user tap anywhere on the screen the keyboard will be closed
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.8,
              // using media query to fit all screen sizezs in same manner
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(kSplashScreenImage, height: 150, width: 150),
                  const SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        kLoginScreenText1,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w200,
                            ),
                      ),
                      Text(kLoginScreenText2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith()),
                    ],
                  ),
                  const SizedBox(
                    height: kDefaultPadding / 6,
                  ),
                  Text("Sign in to continue ",
                      style: Theme.of(context).textTheme.titleSmall),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    Form(
                        child: Column(
                      children: [
                        TextFormField(
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                              color: kTextBlackColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                            ),
                            decoration: const InputDecoration(
                              labelText: "Mobile Number/Email",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              isDense: true,
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
                      ],
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
