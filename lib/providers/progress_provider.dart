import 'package:flutter/foundation.dart';

class ProgressProvider extends ChangeNotifier {
  Map<String, double> _weekly = const <String, double>{};
  Map<String, double> get weekly => _weekly;

  void setWeekly(Map<String, double> data) {
    _weekly = data;
    notifyListeners();
  }
}


