import 'dart:html';

import 'package:flutter/material.dart';
import 'package:guess_number/guess_brain.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GuessNumber(),
    );
  }
}

class GuessNumber extends StatefulWidget {
  const GuessNumber({Key? key}) : super(key: key);

  @override
  State<GuessNumber> createState() => _GuessNumberState();
}

class _GuessNumberState extends State<GuessNumber> {
  final GuessBrain guessBrain = GuessBrain();
  String message = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Guess Number")),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello boss. I am your laptop. Please, think of a number between 0 and 100. I will try to guess it and blow your mind.",
            ),
            const SizedBox(height: 24),
            const Text(
                "If my guess is too low, Tap 'Low'. If I am too high, Tap 'High'. If I guess your number correctly, Tap 'Yes' "),
            const SizedBox(height: 24),
            Text(message),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: high, child: const Text("High")),
                const SizedBox(width: 24),
                ElevatedButton(onPressed: high, child: const Text("Low")),
                const SizedBox(width: 24),
                ElevatedButton(onPressed: high, child: const Text("Yes"))
              ],
            ),
          ],
        ),
      ),
    );
  }

  void high() {
    message = guessBrain.compGuess('high');
    setState(() {});
  }

  void low() {
    message = guessBrain.compGuess('low');
    setState(() {});
  }

  void correct() {
    message = guessBrain.compGuess('yes');
    setState(() {});
  }
}
