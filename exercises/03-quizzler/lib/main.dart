import 'package:flutter/material.dart';
import 'package:quizzler/quiz_brain.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizzlerPage(),
    );
  }
}

class QuizzlerPage extends StatefulWidget {
  const QuizzlerPage({Key? key}) : super(key: key);

  @override
  State<QuizzlerPage> createState() => _QuizzlerPageState();
}

class _QuizzlerPageState extends State<QuizzlerPage> {
  final List<Widget> scoorKeeper = [];
  final QuizBrain obj = QuizBrain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // const SizedBox(height: 0),
          Text("SCORE OUT OF 13/",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
          Text(obj.questionGetByIndex,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () => checkAnswer(true),
                  child: const Text("True"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      fixedSize: const Size(double.infinity, 45)),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () => checkAnswer(false),
                  child: const Text("False"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      fixedSize: const Size(double.infinity, 45)),
                ),
                Row(
                  children: scoorKeeper,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void checkAnswer(bool answer) {
    if (obj.index >= obj.question.length - 1) {
      obj.reset();
      scoorKeeper.clear();
    } else {
      if (answer == obj.answerGetByIndex) {
        scoorKeeper.add(const Icon(Icons.check, color: Colors.green));
      } else {
        scoorKeeper.add(const Icon(Icons.close, color: Colors.red));
      }
      obj.nextQuestion();
    }

    setState(() {});
  }
}
