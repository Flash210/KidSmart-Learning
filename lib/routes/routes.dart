import 'package:flutter/cupertino.dart';
import 'package:kid_smart_learning/screens/datasheet_screen/datasheet_screen.dart';
import 'package:kid_smart_learning/screens/home_screen/home_screen.dart';
import 'package:kid_smart_learning/screens/login_screen/login_screen.dart';
import 'package:kid_smart_learning/screens/profile_screen/profile_screen.dart';

import '../screens/assigment_screen/assignment_screen.dart';
import '../screens/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  AssignmentScreen.routeName: (context) => const AssignmentScreen(),
  DataSheetScreen.routeName: (context) => const DataSheetScreen(),
};
