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
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Settings"),
        leading: Icon(Icons.arrow_back_rounded),
      ),
      body: Column(
        children: [
          ListTile(
            minLeadingWidth: 80,
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("images/katz.jpeg"),
            ),
            title: Text("Abubakar Shykh"),
            subtitle: Text("Mobile App Developer"),
            trailing: Icon(Icons.qr_code, color: Colors.green.shade600),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.keyboard),
            title: Text("Account"),
            subtitle: Text("Privacy, security, change number"),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("Chats"),
            subtitle: Text("Theme, wallapers, chat history"),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            subtitle: Text("Message, group & call tones"),
          ),
          ListTile(
            leading: Icon(Icons.storage),
            title: Text("Storage and data"),
            subtitle: Text("Network usage, auto-download"),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help"),
            subtitle: Text("Help center, contact us privacy policy"),
          ),
          SizedBox(height: 36),
          Text("from"),
          Icon(Icons.ac_unit),
        ],
      ),
    );
  }
}
