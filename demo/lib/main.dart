import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextField(
          decoration: InputDecoration(
            // prefixIcon: Icon(Icons.phone),
            // icon: Icon(Icons.phone),
            // suffixIcon: Icon(Icons.phone),
            labelText: 'Please Enter',
            // contentPadding: Ed,
            focusedBorder: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
// 1. ask
// 2. border
// 3. color fill box
