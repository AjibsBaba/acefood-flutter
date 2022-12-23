import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailAddress = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  void validateForm() {
    final FormState? form = _formKey.currentState;
    String? email = _emailAddress.text;
    String? password = _pass.text;

    if (form!.validate()) {

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Image.asset('assets/images/AcefoodLogo.png'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
            Padding(
                padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, top: 32.0),
                child: Column(children: <Widget>[
                  ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _emailAddress,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black)),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                                  hintText: 'Email Address',
                                  fillColor: Colors.white,
                                  focusColor: Colors.black),
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Field must not be empty';
                                }
                                if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$')
                                    .hasMatch(value)) {
                                  return 'Enter a valid email address';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _firstName,
                              keyboardType: TextInputType.name,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black)),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                                  hintText: 'Firstname',
                                  fillColor: Colors.white,
                                  focusColor: Colors.black),
                              onSaved: (String? value) {},
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Field must not be empty';
                                }
                                if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                                  return 'Field must only contain letters';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _lastName,
                              keyboardType: TextInputType.name,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black)),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                                  hintText: 'Lastname',
                                  fillColor: Colors.white,
                                  focusColor: Colors.black),
                              onSaved: (String? value) {},
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Field must not be empty';
                                }
                                if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                                  return 'Field must only contain letters';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _pass,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black)),
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                                hintText: 'Password',
                              ),
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Field must not be empty';
                                }
                                if (value.length < 7) {
                                  return 'Password must not be less than 8 characters';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _confirmPassword,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black)),
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                                hintText: 'Confirm Password',
                              ),
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Field must not be empty';
                                }
                                if (value != _pass.text) {
                                  return 'Enter Password again';
                                }
                                return null;
                              },
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0, top: 32.0),
                                child: Column(
                                  children: <Widget>[
                                    MaterialButton(
                                      onPressed: () {
                                        validateForm();
                                      },
                                      minWidth: double.infinity,
                                      height: 50,
                                      color: Colors.red[800],
                                      textColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(24)),
                                      child: const Text('Register',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: <Widget>[
                                        const Text('Already have an account?'),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacementNamed('/login');
                                          },
                                          child: const Text('Login',
                                              style:
                                              TextStyle(color: Colors.red)),
                                        )
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      )
                    ],
                  )
                ])),
          ],
        ));
  }
}
