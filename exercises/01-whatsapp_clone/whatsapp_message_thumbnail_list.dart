import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          MessageThumbnail(),
          MessageThumbnail(),
          MessageThumbnail(),
          MessageThumbnail(),
          MessageThumbnail(),
          MessageThumbnail(),
          MessageThumbnail(),
          MessageThumbnail(),
          MessageThumbnail(),
          MessageThumbnail(),
          MessageThumbnail(),
          MessageThumbnail(),
        ],
      ),
    );
  }
}

class MessageThumbnail extends StatelessWidget {
  const MessageThumbnail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("images/katz.jpeg"),
      ),
      title: Text("Zaviyar Joyo"),
      trailing: Text("12:01 PM"),
      subtitle: Text("Ok, let's do it."),
    );
  }
}
