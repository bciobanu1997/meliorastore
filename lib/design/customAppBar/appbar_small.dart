import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/screens/cartscreen/cart_screen.dart';
import 'package:meliorabag/design/screens/mainscreen/mainscreen.dart';
import 'package:meliorabag/design/utils/appTextButton.dart';
import 'package:meliorabag/design/utils/app_icon_button.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class AppBarSmall extends StatelessWidget {
  const AppBarSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size.fromHeight(screenSize.width / 25),
      child: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        flexibleSpace: Column(
          children: [
            Expanded(
                child: ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxHeight: 30, minHeight: 20),
                    child: Container(
                        color: AppColors.lavender,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.delivery_dining,
                                color: AppColors.chineseSilver,
                              ),
                              AppTextStyle(
                                  text: 'freeDelivery',
                                  color: AppColors.shuttleGrey,
                                  fontSize: Constant.extraSmall),
                            ])))),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(flex: 1, child: SizedBox()),
                  AppTextButton(
                      action: () => '',
                      textStyle: AppTextStyle(
                          alignment: Alignment.center,
                          text: 'meliorastore'.tr,
                          color: AppColors.black,
                          fontSize: Constant.big)),
                  Expanded(flex: 1, child: SizedBox()),
                  AppIconButton(
                    action: () => '',
                    icon: Icon(
                      Icons.person_outline,
                      size: Constant.medium,
                    ),
                    size: Constant.medium,
                    color: AppColors.black,
                  ),
                  Expanded(flex: 1, child: SizedBox()),
                  AppIconButton(
                      action: () => '',
                      icon: Icon(Icons.favorite_border_outlined,
                          size: Constant.medium),
                      size: Constant.medium,
                      color: AppColors.black),
                  Expanded(flex: 1, child: SizedBox()),
                  AppIconButton(
                      action: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CartScreen()),
                        );
                      },
                      icon: Icon(Icons.shopping_bag_outlined,
                          size: Constant.medium),
                      size: Constant.medium,
                      color: AppColors.black),
                  Expanded(flex: 1, child: SizedBox()),
                  AppIconButton(
                      action: () {
                        drawerKey.currentState!.openDrawer();
                      },
                      icon: Icon(Icons.list_rounded, size: Constant.medium),
                      size: Constant.medium,
                      color: AppColors.black),
                  Expanded(flex: 2, child: SizedBox()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
