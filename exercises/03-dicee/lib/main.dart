import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;

  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Dicee"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                Expanded(
                    child: TextButton(
                        onPressed: rollingLeftDice,
                        child: Image.asset('images/dice$leftDice.png',
                            color: Colors.deepOrange))),
                const SizedBox(width: 12),
                Expanded(
                    child: TextButton(
                        onPressed: rollingRightDice,
                        child: Image.asset('images/dice$rightDice.png',
                            color: Colors.deepOrange))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void rollingLeftDice() {
    leftDice++;
    print('left: -----$leftDice-----------');
  }

  void rollingRightDice() {
    rightDice++;
    setState(() {});
    print('right: -------$rightDice----------');
  }
}

// class DicePage {}
// 1. build
// 2. rollingLeftDice
// 3. rollingRightDice

// Solution: call the build method
// SetState(({}));
