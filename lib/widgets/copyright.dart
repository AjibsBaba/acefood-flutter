import 'package:flutter/material.dart';

class Copyright extends StatelessWidget {
  const Copyright({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 72),
          child: Column(
            children: const <Widget>[
              Text(
                'built by',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                'AjibsBaba',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              )
            ],
          ),
        )
      ],
    );
  }
}
