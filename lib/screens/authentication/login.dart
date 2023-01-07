import 'package:acefood/screens/authentication/reset_password.dart';
import 'package:acefood/screens/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../service/user_notifier.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const routeName = '/login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailAddress = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void validateForm(BuildContext context) {
    final FormState? form = _formKey.currentState;
    String? userEmail = _emailAddress.text;
    String? userPassword = _password.text;

    Future<String?> loginUser(String email, String password) async {
      final userNotifier = Provider.of<UserNotifier>(context, listen: false);
      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        User? user = FirebaseAuth.instance.currentUser;
        userNotifier.login(user);
        if (kDebugMode) {
          print(userNotifier.user);
        }
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
            (route) => false);
      } on FirebaseAuthException catch (ex) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Error'),
                content: Text('${ex.code}: ${ex.message}'),
                actions: [
                  TextButton(
                    child: const Text('Ok'),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              );
            });
      }
    }

    if (form!.validate()) {
      loginUser(userEmail, userPassword);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
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
                    'Login',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
            Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 32.0),
                child: Column(children: <Widget>[
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
                              labelText: 'Email Address',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Colors.white,
                              focusColor: Colors.black),
                          onSaved: (String? value) {},
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          controller: _password,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            labelText: 'Password',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 32.0),
                            child: Column(
                              children: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    FocusScope.of(context).unfocus();
                                    validateForm(context);
                                  },
                                  minWidth: double.infinity,
                                  height: 50,
                                  color: Colors.red[800],
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24)),
                                  child: const Text('Login',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800)),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text('Did you forget your password?'),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pushNamed(
                                            PasswordResetScreen.routeName);
                                      },
                                      child: const Text('Reset',
                                          style: TextStyle(color: Colors.red)),
                                    )
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  )
                ])),
          ],
        ));
  }
}
