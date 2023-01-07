import 'package:acefood/screens/authentication/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PasswordResetScreen extends StatefulWidget {
  const PasswordResetScreen({super.key});

  static const routeName = '/password-reset';

  @override
  _PasswordResetState createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordResetScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailAddress = TextEditingController();

  void validateForm() {
    final FormState? form = _formKey.currentState;
    String? userEmail = _emailAddress.text;
    var status = const SnackBar(
        content: Text('A password reset email has been sent successfully'));

    Future<String?> resetPassword(String email) async {
      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
        return null;
      } on FirebaseAuthException catch (ex) {
        return '${ex.code}: ${ex.message}';
      }
    }

    if (form!.validate()) {
      resetPassword(userEmail);
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
                  'Reset Password',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 32.0),
            child: Column(
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
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            labelText: 'Email Address',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelStyle: TextStyle(color: Colors.black),
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
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 32.0),
                        child: Column(children: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              validateForm();
                            },
                            minWidth: double.infinity,
                            height: 50,
                            color: Colors.red[800],
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                            child: const Text(
                              'Send Email',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w800),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text('Don’t have an account?'),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacementNamed(
                                        RegistrationScreen.routeName);
                                  },
                                  child: const Text(
                                    'Register',
                                    style: TextStyle(color: Colors.red),
                                  ))
                            ],
                          )
                        ]),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
