import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      iconTheme: const IconThemeData(
        size: 80,
        color: Colors.black54,
      ),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 30,
        ),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        actionsIconTheme: IconThemeData(
          color: Colors.black,
          size: 40,
        ),
      ),
    ),
    home: const HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        actions: [
          const Icon(Icons.more_vert),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            const Icon(Icons.airport_shuttle),
            const SizedBox(height: 12),
            const Icon(Icons.airport_shuttle_outlined),
            const Icon(Icons.airport_shuttle),
            const SizedBox(height: 12),
            const Icon(Icons.airport_shuttle_outlined),
            const Icon(Icons.airport_shuttle),
            const SizedBox(height: 12),
            const Icon(Icons.airport_shuttle_outlined),
            const Icon(Icons.airport_shuttle),
            const SizedBox(height: 12),
            const Icon(Icons.airport_shuttle_outlined),
            const Icon(Icons.airport_shuttle),
            const SizedBox(height: 12),
            const Icon(Icons.airport_shuttle_outlined),
            const Icon(Icons.airport_shuttle),
            const SizedBox(height: 12),
            const Icon(Icons.airport_shuttle_outlined),
          ],
        ),
      ),
    );
  }
}
