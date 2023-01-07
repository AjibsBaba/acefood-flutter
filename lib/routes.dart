import 'package:acefood/screens/account_info.dart';
import 'package:acefood/screens/app_info.dart';
import 'package:acefood/screens/authentication/login.dart';
import 'package:acefood/screens/authentication/register.dart';
import 'package:acefood/screens/authentication/reset_password.dart';
import 'package:acefood/screens/home.dart';
import 'package:acefood/screens/model_info.dart';
import 'package:acefood/screens/onboarding_first.dart';
import 'package:acefood/screens/onboarding_second.dart';
import 'package:acefood/screens/profile.dart';
import 'package:acefood/service/user_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(
      BuildContext context, RouteSettings settings) {
    final userNotifier = Provider.of<UserNotifier>(context, listen: false);
    final user = userNotifier.user;

    Future<bool> checkOnboardingCompleted() async {
      final preferences = await SharedPreferences.getInstance();
      return preferences.getBool('onboarding_completed') ?? false;
    }

    switch (settings.name) {
      case HomeScreen.routeName:
        if (user == null) {
          return MaterialPageRoute(
              builder: (context) => FutureBuilder<bool>(
                    future: checkOnboardingCompleted(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        if (snapshot.data ?? false) {
                          return LoginScreen();
                        } else {
                          return OnboardingScreen();
                        }
                      } else if (snapshot.hasError) {
                        return Scaffold(
                          body: Center(
                            child: Text('Error: ${snapshot.error}'),
                          ),
                        );
                      } else {
                        return const Scaffold(
                          body: Center(child: CircularProgressIndicator()),
                        );
                      }
                    },
                  ));
        } else {
          return MaterialPageRoute(
            builder: (context) => HomeScreen(),
          );
        }
        break;
      case RegistrationScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => RegistrationScreen(),
        );
        break;
      case PasswordResetScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => PasswordResetScreen(),
        );
        break;
      case LoginScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case OnboardingScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        );
      case OnboardingScreen2.routeName:
        return MaterialPageRoute(
          builder: (context) => OnboardingScreen2(),
        );
      case ProfileHomeScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => ProfileHomeScreen(),
        );
      case AccountInfo.routeName:
        return MaterialPageRoute(
          builder: (context) => AccountInfo(),
        );
      case ModelInfo.routeName:
        return MaterialPageRoute(
          builder: (context) => ModelInfo(),
        );
      case AppInfo.routeName:
        return MaterialPageRoute(
          builder: (context) => AppInfo(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
