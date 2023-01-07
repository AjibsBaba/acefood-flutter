import 'package:acefood/firebase_options.dart';
import 'package:acefood/routes.dart';
import 'package:acefood/screens/authentication/login.dart';
import 'package:acefood/screens/home.dart';
import 'package:acefood/service/user_notifier.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ChangeNotifierProvider(
    create: (context) => UserNotifier(),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _checkIfLoggedIn();
  }

  _checkIfLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider.value(value: UserNotifier())],
        child: Consumer<UserNotifier>(
          builder: (context, auth, _) => MaterialApp(
            title: 'Acefood',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.red,
                primaryColor: Colors.red,
                primaryColorDark: Colors.red[800],
                fontFamily: 'Axiforma',
                appBarTheme: const AppBarTheme(
                    elevation: 0, backgroundColor: Colors.white),
                textButtonTheme: TextButtonThemeData(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black),
                  ),
                ),
                useMaterial3: true),
            initialRoute: auth.user != null
                ? HomeScreen.routeName
                : LoginScreen.routeName,
            onGenerateRoute: (settings) =>
                RouterGenerator.generateRoute(context, settings),
          ),
        ));
  }
}
