class QuizService {
  Future<List<String>> generateQuiz(String topic) async {
    return List<String>.generate(5, (int i) => 'Question ${i + 1} about $topic');
  }
}


