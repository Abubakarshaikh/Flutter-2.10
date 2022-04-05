import 'package:flutter/material.dart';

import 'own_widget.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BmiCalculator(),
    );
  }
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OwnWidget(
          child: Column(
            children: [
              Text("1"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
