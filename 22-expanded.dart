import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}