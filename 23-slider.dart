import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Slider(
          activeColor: Colors.green,
          inactiveColor: Colors.black,
          thumbColor: Colors.red,
          label: "sLIDER",
          max: 220,
          min: 0,
          value: 60,
          onChanged: (newValue) {},
        ),
      ),
    ),
  ));
}
