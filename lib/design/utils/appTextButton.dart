import 'package:flutter/material.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({Key? key, required this.action, required this.textStyle})
      : super(key: key);
  final VoidCallback action;
  final AppTextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action,
      child: textStyle,
    );
  }
}
