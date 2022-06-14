import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton(
      {Key? key,
      required this.size,
      this.color,
      this.splashColor,
      required this.action,
      this.backgroundColor,
      required this.icon})
      : super(key: key);
  final VoidCallback action;
  final double size;
  final Color? color;
  final Color? backgroundColor;
  final Color? splashColor;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(size, size),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          splashColor: splashColor,
          onTap: action,
          child: Center(child: icon),
        ),
      ),
    );
  }
}
