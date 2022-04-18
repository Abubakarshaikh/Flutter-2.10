import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Widget cardChild;
  final Function()? onPress;
  final Color? color;
  const ReuseableCard(
      {Key? key, required this.cardChild, this.onPress, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color ?? kActiveCardColour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
