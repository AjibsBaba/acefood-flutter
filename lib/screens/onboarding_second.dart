import 'package:flutter/material.dart';

import 'authentication/login.dart';
import 'authentication/register.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  static const routeName = '/onboarding-two';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/onboarding_vector.png'),
            Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Scan & Detect',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 32, right: 32),
                      child: Text(
                        'With a modern android architecture and Artificial intelligence detect diseases in tomato plants',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(RegistrationScreen.routeName);
                      },
                      minWidth: 300,
                      height: 50,
                      color: Colors.red[800],
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text('Already have an account?'),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(LoginScreen.routeName);
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(color: Colors.red),
                            ))
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
