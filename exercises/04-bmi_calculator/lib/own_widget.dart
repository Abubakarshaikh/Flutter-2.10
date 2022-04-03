import 'package:flutter/material.dart';

class OwnWidget extends StatelessWidget {
  final Widget? child;
  const OwnWidget({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
