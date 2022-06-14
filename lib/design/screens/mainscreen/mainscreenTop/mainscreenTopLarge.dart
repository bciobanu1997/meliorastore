import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/screens/cartscreen/cart_screen.dart';
import 'package:meliorabag/design/screens/comingSoon/comingSoonMainScreen.dart';
import 'package:meliorabag/design/screens/shopscreen/shopscreen.dart';
import 'package:meliorabag/design/utils/appTextButton.dart';
import 'package:meliorabag/design/utils/app_icon_button.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class MainScreenTopLarge extends StatelessWidget {
  const MainScreenTopLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(flex: 1, child: SizedBox()),
        AppTextButton(
            action: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShopScreen()),
              );
            },
            textStyle: AppTextStyle(
                text: 'shop'.tr,
                color: AppColors.black,
                fontSize: Constant.mediumSmall)),
        AppTextButton(
            action: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComingSoonMainScreen()),
              );
            },
            textStyle: AppTextStyle(
                text: 'comingSoon'.tr,
                color: AppColors.black,
                fontSize: Constant.mediumSmall)),
        AppTextButton(
            action: () => '',
            textStyle: AppTextStyle(
                text: 'about'.tr,
                color: AppColors.black,
                fontSize: Constant.mediumSmall)),
        AppTextButton(
            action: () => '',
            textStyle: AppTextStyle(
                text: 'faq'.tr,
                color: AppColors.black,
                fontSize: Constant.mediumSmall)),
        AppTextButton(
            action: () => '',
            textStyle: AppTextStyle(
                text: 'brexit'.tr,
                color: AppColors.black,
                fontSize: Constant.mediumSmall)),
        Expanded(flex: 2, child: SizedBox()),
        AppTextButton(
            action: () => '',
            textStyle: AppTextStyle(
                alignment: Alignment.center,
                text: 'meliorastore'.tr,
                color: AppColors.black,
                fontSize: Constant.extraBig)),
        Expanded(flex: 3, child: SizedBox()),
        AppIconButton(
            action: () => '',
            icon: Icon(Icons.person_outline),
            size: Constant.mediumBig,
            color: AppColors.black),
        AppIconButton(
            action: () => '',
            icon: Icon(Icons.favorite_border_outlined),
            size: Constant.mediumBig,
            color: AppColors.black),
        AppIconButton(
            action: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
            icon: Icon(Icons.shopping_bag_outlined),
            size: Constant.mediumBig,
            color: AppColors.black),
        Expanded(flex: 1, child: SizedBox()),
      ],
    );
  }
}
