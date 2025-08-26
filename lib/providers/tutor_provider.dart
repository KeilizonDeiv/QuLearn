import 'package:flutter/foundation.dart';

class TutorProvider extends ChangeNotifier {
  String _lastAnswer = '';
  String get lastAnswer => _lastAnswer;

  void setAnswer(String answer) {
    _lastAnswer = answer;
    notifyListeners();
  }
}


