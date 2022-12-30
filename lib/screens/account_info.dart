import 'package:acefood/widgets/copyright.dart';
import 'package:flutter/material.dart';

import '../widgets/section_content.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({Key? key}) : super(key: key);
  static const routeName = '/info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Account Info',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load'),
              ),
              const SizedBox(
                height: 48,
              ),
              Column(
                children: [
                  SectionContent('Name', 'Samuel Ajibade'),
                  SectionContent('Email Address', 'samuelajibade22@gmail.com'),
                  SectionContent('Verification Status', 'Verified'),
                  SectionContent('Farm Name', 'Ajebo Farms'),
                  SectionContent('Phone Number', '+2348071181007')
                ],
              ),
              Copyright()
            ],
          ),
        ));
  }
}
