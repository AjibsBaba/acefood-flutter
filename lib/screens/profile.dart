import 'package:acefood/screens/account_info.dart';
import 'package:acefood/screens/app_info.dart';
import 'package:acefood/screens/home.dart';
import 'package:acefood/screens/model_info.dart';
import 'package:acefood/widgets/copyright.dart';
import 'package:acefood/widgets/profile_section.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileHomeScreen extends StatelessWidget {
  const ProfileHomeScreen({super.key});

  static const routeName = '/profile';

  void showConfirmationModal(BuildContext ctx) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(children: <Widget>[
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load'),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${FirebaseAuth.instance.currentUser?.displayName}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          '${FirebaseAuth.instance.currentUser?.email}',
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ]),
                  const SizedBox(
                    height: 16,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey[200],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const ProfileSection('Account Info',
                      'Your Personal Information', AccountInfo.routeName),
                  const ProfileSection('Model Info',
                      'Model Info, Accuracy, Type', ModelInfo.routeName),
                  const ProfileSection('App Info',
                      'Developer Information & App Build', AppInfo.routeName),
                  const ProfileSection(
                      'Suggestions', 'Suggest Features, Improve app', ''),
                  const ProfileSection(
                      'Delete Account', 'Delete Account Information', ''),
                ],
              )),
          const Copyright()
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          if (index == 0) {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
          } else {}
        },
        selectedIndex: 1,
        backgroundColor: Colors.red[50],
        surfaceTintColor: Colors.red,
        destinations: const <NavigationDestination>[
          NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_filled),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.person_2_outlined),
              selectedIcon: Icon(
                Icons.person_2,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
