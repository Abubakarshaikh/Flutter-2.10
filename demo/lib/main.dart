import 'package:flutter/material.dart';

void main() {
  runApp(
    Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.up,
        children: [
          Container(
            width: 100,
            height: 50,
            color: Colors.red,
          ),
          SizedBox(height: 12),
          ImageContainer(),
          SizedBox(height: 12),
          Container(
            width: 100,
            height: 50,
            color: Colors.teal,
          ),
        ],
      ),
    ),
  );
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Container(
        width: 100,
        height: 50,
        color: Colors.yellow,
        child: Column(
          children: [
            Image.asset("images/logo.png"),
            ElevatedButton(onPressed: () {}, child: )
          ],
        ),
      ),
    );
  }
}
