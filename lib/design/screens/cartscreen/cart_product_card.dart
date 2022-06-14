import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/screens/shopscreen/controller/cart_controller.dart';
import 'package:meliorabag/design/utils/app_icon_button.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';
import 'package:meliorabag/products/product.dart';
import 'package:meliorabag/products/product_controller.dart';

class CartProductCard extends StatelessWidget {
  final ProductController productController = Get.find();
  CartProductCard(
      {Key? key,
      required this.controller,
      required this.product,
      required this.quantity,
      required this.index})
      : super(key: key);
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          children: [
            Expanded(child: const SizedBox()),
            Expanded(
              flex: 8,
              child: Container(
                color: AppColors.sand,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.cancel_rounded),
                    )),
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(productController
                                    .products[index].photoUrl)))),
                    Expanded(
                      flex: 14,
                      child: AppTextStyle(
                          text: product.name + ', size: ' + product.size,
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: Constant.mediumSmall),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.transparent, width: 3),
                          ),
                          child: CircleAvatar(
                              backgroundColor: AppColors.white,
                              child: ClipOval(
                                  child: AppIconButton(
                                icon: const Icon(
                                  Icons.remove_circle,
                                  color: AppColors.black,
                                ),
                                action: () {
                                  controller.removeProduct(product);
                                },
                                size: 20,
                                color: AppColors.black,
                              ))),
                        ),
                        AppTextStyle(
                            text: '${quantity}',
                            color: AppColors.black,
                            fontSize: Constant.small),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.transparent, width: 3),
                          ),
                          child: CircleAvatar(
                              backgroundColor: AppColors.white,
                              child: ClipOval(
                                  child: AppIconButton(
                                icon: const Icon(
                                  Icons.add_circle,
                                  color: AppColors.black,
                                ),
                                action: () {
                                  controller.addProduct(product);
                                },
                                size: 20,
                                color: AppColors.black,
                              ))),
                        )
                      ]),
                    ),
                    Expanded(
                      flex: 2,
                      child: AppTextStyle(
                          text: '\$${product.price}',
                          color: AppColors.black,
                          fontSize: Constant.mediumSmall),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: const SizedBox()),
          ],
        ),
      ),
    );
  }
}
