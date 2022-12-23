import 'package:flutter/material.dart';

class ProfileHomeScreen extends StatelessWidget {
  const ProfileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
                          backgroundColor: Colors.black,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Samuel Ajibade',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'hello@ajibsbaba.com',
                          style: TextStyle(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/account');
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Account Info',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w800),
                              ),
                              Text(
                                'Your Personal Information',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/model');
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Model Info',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w800),
                              ),
                              Text(
                                'Model Info, Accuracy, Type',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/info');
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'App Info',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w800),
                              ),
                              Text(
                                'Developer Information & App Build',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Suggestions',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w800),
                              ),
                              Text(
                                'Suggest Features, Improve app',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Delete Account',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w800),
                              ),
                              Text(
                                'Delete Account Information',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              )),
          Column(
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
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          if (index == 0) {
            Navigator.of(context).pushReplacementNamed('/');
          } else {
            Navigator.of(context).pushReplacementNamed('/profile');
          }
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
