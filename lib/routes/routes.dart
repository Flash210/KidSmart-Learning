import 'package:flutter/cupertino.dart';
import 'package:kid_smart_learning/screens/login_screen/login_screen.dart';

import '../screens/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
};
