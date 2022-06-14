import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final Color borderColor;
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, right: 5),
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: borderColor)),
      height: 10,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
