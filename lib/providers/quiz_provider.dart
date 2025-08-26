import 'package:flutter/foundation.dart';

class QuizProvider extends ChangeNotifier {
  final List<String> _questions = <String>[];
  List<String> get questions => List<String>.unmodifiable(_questions);

  void setQuestions(List<String> value) {
    _questions
      ..clear()
      ..addAll(value);
    notifyListeners();
  }
}


