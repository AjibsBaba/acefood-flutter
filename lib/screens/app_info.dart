import 'package:flutter/material.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'App Info',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/profile');
            },
          ),
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Acefood',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                  ),
                  Text(
                    'Version 1.1',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              Image.asset(
                'assets/images/AcefoodLogo.png',
                width: 184,
              )
            ],
          ),
        ));
  }
}
