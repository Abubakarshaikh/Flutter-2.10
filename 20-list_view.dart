import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);
  FixedExtentScrollController fixedExtentScrollController =
      new FixedExtentScrollController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: fixedExtentScrollController,
      physics: FixedExtentScrollPhysics(),
      reverse: true,
      children: [
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
        Icon(Icons.favorite, size: 200, color: Colors.green),
      ],
    );
  }
}
