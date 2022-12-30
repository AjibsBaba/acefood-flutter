import 'package:acefood/screens/account_info.dart';
import 'package:acefood/screens/app_info.dart';
import 'package:acefood/screens/home.dart';
import 'package:acefood/screens/model_info.dart';
import 'package:acefood/screens/profile.dart';
import 'package:acefood/screens/scan.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static final routes = <String, WidgetBuilder>{
    HomeScreen.routeName: (BuildContext context) => HomeScreen(),
    ProfileHomeScreen.routeName: (BuildContext context) =>
        const ProfileHomeScreen(),
    AccountInfo.routeName: (BuildContext context) => const AccountInfo(),
    ModelInfo.routeName: (BuildContext context) => const ModelInfo(),
    AppInfo.routeName: (BuildContext context) => const AppInfo(),
    DiseaseScan.routeName: (BuildContext context) => const DiseaseScan()
  };
}
