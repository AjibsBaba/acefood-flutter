import 'package:acefood/screens/onboarding_second.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  static const routeName = '/onboarding-one';

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
                      'Our Mission',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 32, right: 32),
                      child: Text(
                        'An app built for farmers to detect diseases in tomatoes directly from their smartphones',
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
                            .pushReplacementNamed(OnboardingScreen2.routeName);
                      },
                      minWidth: 300,
                      height: 50,
                      color: Colors.red[800],
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: const Text(
                        'Proceed',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
