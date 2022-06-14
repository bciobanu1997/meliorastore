import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/screens/cartscreen/cart_screen.dart';
import 'package:meliorabag/design/screens/comingSoon/comingSoonMainScreen.dart';
import 'package:meliorabag/design/screens/mainscreen/mainscreen.dart';
import 'package:meliorabag/design/screens/shopscreen/shopscreen.dart';
import 'package:meliorabag/design/utils/appTextButton.dart';
import 'package:meliorabag/design/utils/app_icon_button.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class AppBarLarge extends StatelessWidget {
  const AppBarLarge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.white,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopAppRow(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
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
                          MaterialPageRoute(
                              builder: (context) => ComingSoonMainScreen()),
                        );
                      },
                      textStyle: AppTextStyle(
                          text: 'newCollection'.tr,
                          color: AppColors.black,
                          fontSize: Constant.mediumSmall)),
                  AppTextButton(
                      action: () => '',
                      textStyle: AppTextStyle(
                          text: 'about'.tr,
                          color: AppColors.black,
                          fontSize: Constant.mediumSmall)),
                  Expanded(flex: 4, child: SizedBox()),
                  AppTextButton(
                      action: () {
                        Navigator.pop(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => MainScreen()));
                      },
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
                  Expanded(flex: 1, child: SizedBox()),
                  AppIconButton(
                      action: () => '',
                      icon: Icon(Icons.favorite_border_outlined),
                      size: Constant.mediumBig,
                      color: AppColors.black),
                  Expanded(flex: 1, child: SizedBox()),
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
              ),
            ),
          ],
        ));
  }
}

class TopAppRow extends StatelessWidget {
  const TopAppRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Expanded(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 60, minHeight: 55),
        child: Container(
          color: AppColors.lavender,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(width: 15),
              Icon(Icons.delivery_dining,
                  color: AppColors.chineseSilver, size: 20),
              SizedBox(width: 5),
              AppTextStyle(
                  text: 'freeDelivery',
                  color: AppColors.shuttleGrey,
                  fontSize: Constant.extraSmall),
              SizedBox(width: 15),
              Icon(Icons.update_rounded,
                  color: AppColors.chineseSilver, size: 20),
              SizedBox(width: 5),
              AppTextStyle(
                  text: 'fastShipping',
                  color: AppColors.shuttleGrey,
                  fontSize: Constant.extraSmall),
              SizedBox(width: 15),
              Icon(Icons.lock_open, color: AppColors.chineseSilver, size: 20),
              SizedBox(width: 5),
              AppTextStyle(
                  text: 'securePayments',
                  color: AppColors.shuttleGrey,
                  fontSize: Constant.extraSmall),
              //Expanded(child: LanguageButtonWidget())
            ],
          ),
        ),
      ),
    );
  }
}
