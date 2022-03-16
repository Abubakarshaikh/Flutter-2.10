import 'package:flutter/material.dart';
import 'package:quizzler/quiz_brain.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizzlerPage(),
    );
  }
}

class QuizzlerPage extends StatefulWidget {
  QuizzlerPage({Key? key}) : super(key: key);

  @override
  State<QuizzlerPage> createState() => _QuizzlerPageState();
}

class _QuizzlerPageState extends State<QuizzlerPage> {
  QuizBrain obj = QuizBrain();

  List<Icon> icons = [];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(obj.getAll()[index].question),
            ElevatedButton(
              onPressed: isTrue,
              child: const Text("True"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  fixedSize: const Size(double.infinity, 45)),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: isTrue,
              child: const Text("False"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  fixedSize: const Size(double.infinity, 45)),
            ),
            Row(
              children: icons,
            ),
          ],
        ),
      ),
    );
  }

  void isTrue() {
    icons.add(const Icon(Icons.check));
    setState(() {});
  }

  void isFalse() {}
}
