import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;
  const RoundIconButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(56.0, 56.0),
        shape: const CircleBorder(),
        primary: const Color(0xFF4C4F5E),
      ),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
