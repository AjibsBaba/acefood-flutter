import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class UserNotifier with ChangeNotifier {
  User? _user;

  User? get user => _user;

  void login(User? user) {
    _user = user;
    notifyListeners();
  }

  void logout() {
    _user = null;
    notifyListeners();
  }
}
