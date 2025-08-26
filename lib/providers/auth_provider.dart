import 'package:flutter/foundation.dart';

class AuthProvider extends ChangeNotifier {
  bool _authenticated = false;
  bool get isAuthenticated => _authenticated;

  void setAuthenticated(bool value) {
    _authenticated = value;
    notifyListeners();
  }
}


