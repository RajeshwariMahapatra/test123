
import 'package:brain_school/screens/homePage.dart';
import 'package:brain_school/screens/login_screen/login_screen.dart';
import 'package:brain_school/screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'screens/assignment_screen/assignment_screen.dart';
import 'screens/datesheet_screen/datesheet_screen.dart';
import 'screens/fee_screen/fee_screen.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/my_profile/my_profile.dart';
import 'screens/onboarding.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  homePage.routeName: (context) => homePage(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  FeeScreen.routeName: (context) => FeeScreen(),
  AssignmentScreen.routeName: (context) => AssignmentScreen(),
  DateSheetScreen.routeName: (context) => DateSheetScreen(),
};
