import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meliorabag/design/utils/constant.dart';

class ShoppingCartButton extends StatelessWidget {
  const ShoppingCartButton({
    Key? key,
    required this.buttonColor,
  }) : super(key: key);

  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.shopping_bag_outlined),
      iconSize: Constant.medium,
      color: buttonColor,
      splashRadius: Constant.medium,
    );
  }
}
