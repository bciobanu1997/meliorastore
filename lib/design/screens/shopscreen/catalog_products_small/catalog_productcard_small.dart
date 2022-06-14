import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/screens/shopscreen/controller/cart_controller.dart';
import 'package:meliorabag/design/utils/app_icon_button.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';
import 'package:meliorabag/products/product_controller.dart';

class CatalogProductCardSmall extends StatelessWidget {
  final cartController = Get.put(CartController());
  final ProductController productController = Get.find();
  final int index;
  final VoidCallback? press;
  CatalogProductCardSmall({
    Key? key,
    required this.index,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: press,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(
                                  productController.products[index].photoUrl))),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.transparent, width: 1),
                      ),
                      child: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: ClipOval(
                              child: AppIconButton(
                            icon: const Icon(
                              Icons.favorite_border_outlined,
                              color: AppColors.black,
                            ),
                            action: () {},
                            color: AppColors.black,
                            size: 25,
                          ))),
                    ),
                    trailing: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.transparent, width: 1),
                      ),
                      child: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: ClipOval(
                              child: AppIconButton(
                            color: AppColors.black,
                            icon: const Icon(
                              Icons.add_shopping_cart_outlined,
                              color: AppColors.black,
                              size: 20,
                            ),
                            action: () {
                              cartController.addProduct(
                                  productController.products[index]);
                            },
                            size: 25,
                          ))),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: AppTextStyle(
              text: productController.products[index].name,
              color: AppColors.black,
              fontSize: Constant.small,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: AppTextStyle(
              text: '\$ ${productController.products[index].price}',
              color: AppColors.black,
              fontSize: Constant.small,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: AppTextStyle(
              text: 'size: ${productController.products[index].size}',
              color: AppColors.black,
              fontSize: Constant.small,
            ),
          ),
        ],
      ),
    );
  }
}
