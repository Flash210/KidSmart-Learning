import 'package:flutter/material.dart';
import 'package:kid_smart_learning/constants/image_string.dart';
import 'package:kid_smart_learning/constants/text_string.dart';
import 'package:kid_smart_learning/screens/home_screen/home_screen.dart';

import '../../componet/custom_button.dart';
import '../../constants/constants.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = '/login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

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
                  Text(kSignInToContinue,
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
                    kDefaultSizedBox,
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            buildEmailfield(),
                            kDefaultSizedBox,
                            buildPasswordField(),
                            kDefaultSizedBox,
                            DefaultButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // if all the fields are valid then go to the home screen
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      HomeScreen.routeName, (route) => false);
                                }
                              },
                              title: kSignIn,
                              iconData: Icons.arrow_forward_outlined,
                            ),
                            kDefaultSizedBox,
                            const Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Forget Password?",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 15.0,
                                ),
                              ),
                            )
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

  TextFormField buildEmailfield() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
        color: kTextBlackColor,
        fontSize: 17,
        fontWeight: FontWeight.w300,
      ),
      decoration: const InputDecoration(
        labelText: kEmail,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      validator: (value) {
        RegExp regex = RegExp(emailPattern);

        if (value == null || value.isEmpty) {
          return kEmailError;
          // if it is not matche with the regex pattern
          // then it will return the error message
          // for example if the user enter the email without @
          // then it will return the error message
        } else if (!regex.hasMatch(value)) {
          return kEmailError2;
        }
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: const TextStyle(
        color: kTextBlackColor,
        fontSize: 17,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        labelText: kPassword,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(
            _passwordVisible
                ? Icons.visibility_off_outlined
                : Icons.visibility_off_outlined,
          ),
          iconSize: kDefaultPadding,
        ),
      ),
      /* validator: (value) {
       RegExp regex = RegExp(passwordPattern);
          if (value.isEmpty) {
            return kPasswordError;
          } else if (!regex.hasMatch(value)) {
            return kPasswordError2;
          }
        }*/
    );
  }
}
