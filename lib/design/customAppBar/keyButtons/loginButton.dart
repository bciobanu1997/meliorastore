import 'package:flutter/material.dart';
import 'package:meliorabag/design/utils/constant.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.buttonColor,
  }) : super(key: key);

  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.person_outline_rounded),
      iconSize: Constant.medium,
      color: buttonColor,
      splashRadius: Constant.medium,
    );
  }
}
