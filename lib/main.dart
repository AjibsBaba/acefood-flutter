import 'package:acefood/screens/account_info.dart';
import 'package:acefood/screens/app_info.dart';
import 'package:acefood/screens/model_info.dart';
import 'package:acefood/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:acefood/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Acefood',
        theme: ThemeData(
            primarySwatch: Colors.red,
            primaryColor: Colors.red,
            primaryColorDark: Colors.red[800],
            fontFamily: 'Axiforma',
            textButtonTheme: TextButtonThemeData(
                style: ButtonStyle(
              foregroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.black),
            )),
            useMaterial3: true),
        routes: {
          '/': (context) => HomeScreen(),
          '/profile': (context) => const ProfileHomeScreen(),
          '/account': (context) => const AccountInfo(),
          '/model': (context) => const ModelInfo(),
          '/info': (context) => const AppInfo()
        });
  }
}
