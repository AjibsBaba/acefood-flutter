import 'package:flutter/material.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({Key? key}) : super(key: key);
  static const routeName = 'app-info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'App Info',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Acefood',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          ),
          const Text(
            'Version 1.1',
            style: TextStyle(fontSize: 12),
          ),
          Image.asset(
            'assets/images/AcefoodLogo.png',
            width: 184,
          )
        ],
      ),
    );
  }
}
