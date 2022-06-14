import 'package:flutter/material.dart';
import 'package:meliorabag/design/screens/mainscreen/mainscreen.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class NavBarDrawerButton extends StatelessWidget {
  const NavBarDrawerButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        drawerKey.currentState!.openDrawer();
      },
      icon: const Icon(Icons.list),
      iconSize: Constant.medium,
      color: AppColors.shuttleGrey,
      splashRadius: Constant.medium,
    );
  }
}
