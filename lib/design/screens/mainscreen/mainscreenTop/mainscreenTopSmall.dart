import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/screens/cartscreen/cart_screen.dart';
import 'package:meliorabag/design/utils/appTextButton.dart';
import 'package:meliorabag/design/utils/app_icon_button.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

import '../mainscreen.dart';

class MainScreenTopSmall extends StatelessWidget {
  const MainScreenTopSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(flex: 1, child: SizedBox()),
        Expanded(flex: 2, child: SizedBox()),
        AppTextButton(
            action: () => '',
            textStyle: AppTextStyle(
                alignment: Alignment.center,
                text: 'meliorastore'.tr,
                color: AppColors.black,
                fontSize: Constant.mediumBig)),
        Expanded(flex: 3, child: SizedBox()),
        AppIconButton(
            action: () => '',
            icon: Icon(Icons.person_outline),
            size: Constant.medium,
            color: AppColors.black),
        AppIconButton(
            action: () => '',
            icon: Icon(Icons.favorite_border_outlined),
            size: Constant.medium,
            color: AppColors.black),
        AppIconButton(
          action: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartScreen()),
            );
          },
          icon: Icon(Icons.shopping_bag_outlined),
          color: AppColors.black,
          size: Constant.medium,
        ),
        AppIconButton(
            action: () {
              drawerKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.list_rounded),
            size: Constant.medium,
            color: AppColors.black),
        Expanded(flex: 1, child: SizedBox()),
      ],
    );
  }
}
