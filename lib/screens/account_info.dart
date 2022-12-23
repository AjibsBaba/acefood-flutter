import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Account Info',
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 80,
              ),
              const SizedBox(
                height: 48,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        'Samuel Ajibade',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey[200],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Email Address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        'samuelajibade22@gmail.com',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey[200],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Verification Status',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        'Verified',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey[200],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Farm Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        'Ajebo Farms',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey[200],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Phone Number',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        '+2348071181007',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey[200],
                  ),
                ],
              ),
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
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
