import 'package:quizzler/question.dart';

class QuizBrain {
  final questions = const [
    Question(question: "Independence of pakistan is 1947", answer: true),
  ];
  List<Question> getAll() {
    return questions;
  }
}

