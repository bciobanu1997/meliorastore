import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/customAppBar/custom_appbar.dart';
import 'package:meliorabag/design/customAppBar/navbar_drawer.dart';
import 'package:meliorabag/design/screens/cartscreen/cartscreen_body/cardscreen_bodyLarge.dart';
import 'package:meliorabag/design/screens/mainscreen/mainscreenBottom/mainscreenBottomLarge.dart';
import 'package:meliorabag/design/screens/mainscreen/mainscreenBottom/mainscreenBottomSmall.dart';
import 'package:meliorabag/design/screens/shopscreen/controller/cart_controller.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  final CartController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MainAppBar(),
      drawer: const AppBarNavDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: SizedBox()),
                  Expanded(
                    flex: 8,
                    child: AppTextStyle(
                      text: 'cart'.tr,
                      color: AppColors.black,
                      fontSize: Constant.big,
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: CardScreenBodyLarge(controller: controller)),
              Padding(
                  padding: EdgeInsets.only(top: 200, bottom: 50),
                  child: (width > 800)
                      ? const MainScreenBottomLarge()
                      : const MainScreenBottomSmall()),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                AppTextStyle(
                  text: 'melioraCopyright'.tr,
                  color: AppColors.black,
                  fontSize: Constant.small,
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
