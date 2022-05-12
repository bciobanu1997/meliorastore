import 'package:flutter/material.dart';
import 'package:meliorabag/design/utils/constant.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({
    Key? key,
    required this.buttonColor,
  }) : super(key: key);

  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.favorite_border),
      iconSize: Constant.medium,
      color: buttonColor,
      splashRadius: Constant.medium,
    );
  }
}
