import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/screens/cartscreen/cart_product_card.dart';
import 'package:meliorabag/design/screens/shopscreen/controller/cart_controller.dart';
import 'package:meliorabag/design/screens/shopscreen/shopscreen.dart';
import 'package:meliorabag/design/utils/appTextButton.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class CardScreenBodyLarge extends StatelessWidget {
  const CardScreenBodyLarge({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final CartController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (controller.products.isNotEmpty) ? FullCardScreen() : EmptyCardScreen(),
        Obx(
          () => Center(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return CartProductCard(
                    index: index,
                    controller: controller,
                    product: controller.products.keys.toList()[index],
                    quantity: controller.products.values.toList()[index],
                  );
                }),
          ),
        ),
        //CartTotal()
      ],
    );
  }
}

class FullCardScreen extends StatelessWidget {
  const FullCardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: SizedBox()),
        Expanded(
          flex: 8,
          child: Container(
              decoration: const BoxDecoration(
                  color: AppColors.desertStorm,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  )),
              height: 65,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  flex: 10,
                  child: AppTextStyle(
                    alignment: Alignment.center,
                    text: 'product'.tr,
                    color: AppColors.black,
                    fontSize: Constant.small,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: AppTextStyle(
                    alignment: Alignment.center,
                    text: 'quantity'.tr,
                    color: AppColors.black,
                    fontSize: Constant.small,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: AppTextStyle(
                    alignment: Alignment.center,
                    text: 'price'.tr,
                    color: AppColors.black,
                    fontSize: Constant.small,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ])),
        ),
        const Expanded(flex: 1, child: SizedBox()),
      ],
    );
  }
}

class EmptyCardScreen extends StatelessWidget {
  const EmptyCardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: SizedBox()),
        Expanded(
          flex: 8,
          child: Column(
            children: [
              Container(
                height: 65,
                decoration: const BoxDecoration(
                    color: AppColors.desertStorm,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    )),
                child: Row(children: [
                  const Expanded(child: Icon(Icons.info_rounded)),
                  Expanded(
                    flex: 20,
                    child: AppTextStyle(
                      text: 'emptyCard'.tr,
                      color: AppColors.black,
                      fontSize: Constant.small,
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 50,
                        color: AppColors.black,
                        child: AppTextButton(
                            action: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ShopScreen()),
                              );
                              print(Get.size.width);
                            },
                            textStyle: AppTextStyle(
                                alignment: Alignment.center,
                                text: 'goToShop'.tr,
                                color: AppColors.white,
                                fontSize: Constant.mediumSmall)),
                      ),
                    ),
                    Expanded(flex: 6, child: const SizedBox()),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Expanded(flex: 1, child: SizedBox()),
      ],
    );
  }
}
