import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/screens/shopscreen/controller/cart_controller.dart';
import 'package:meliorabag/design/utils/appTextButton.dart';
import 'package:meliorabag/design/utils/app_icon_button.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/color_dot.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';
import 'package:meliorabag/products/product_controller.dart';

class ProductDetailsInfomation extends StatelessWidget {
  ProductDetailsInfomation({Key? key, required this.index}) : super(key: key);
  final cartController = Get.put(CartController());
  final ProductController productController = Get.find();
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(children: [
              Expanded(
                child: AppTextStyle(
                  text: productController.products[index].name,
                  color: AppColors.black,
                  fontSize: Constant.medium,
                ),
              ),
              AppIconButton(
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: AppColors.black,
                ),
                action: () {},
                color: AppColors.black,
                size: 25,
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: AppTextStyle(
              text: '\$ ${productController.products[index].price}',
              color: AppColors.black,
              fontSize: Constant.medium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      height: 50,
                      color: AppColors.black,
                      child: AppTextButton(
                          action: () {},
                          textStyle: const AppTextStyle(
                            alignment: Alignment.center,
                            text: 'Buy now',
                            color: AppColors.white,
                          ))),
                ),
              ],
            ),
          ),
          const AppTextStyle(
            text: 'Product Information',
            color: AppColors.black,
            fontSize: Constant.medium,
            fontWeight: FontWeight.w600,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: const [
                ColorDot(
                  borderColor: AppColors.chineseSilver,
                  color: AppColors.chineseSilver,
                ),
                SizedBox(width: 10),
                AppTextStyle(
                    text: 'Fibers origin: Turkey',
                    color: AppColors.black,
                    fontSize: Constant.small),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: const [
                ColorDot(
                  borderColor: AppColors.chineseSilver,
                  color: AppColors.chineseSilver,
                ),
                SizedBox(width: 10),
                AppTextStyle(
                    text: 'Fibers origin: Turkey',
                    color: AppColors.black,
                    fontSize: Constant.small),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: const [
                ColorDot(
                  borderColor: AppColors.chineseSilver,
                  color: AppColors.chineseSilver,
                ),
                SizedBox(width: 10),
                AppTextStyle(
                    text: 'Fibers origin: Turkey',
                    color: AppColors.black,
                    fontSize: Constant.small),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: const [
                ColorDot(
                  borderColor: AppColors.chineseSilver,
                  color: AppColors.chineseSilver,
                ),
                SizedBox(width: 10),
                AppTextStyle(
                    text: 'Fibers origin: Turkey',
                    color: AppColors.black,
                    fontSize: Constant.small),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: const [
                ColorDot(
                  borderColor: AppColors.chineseSilver,
                  color: AppColors.chineseSilver,
                ),
                SizedBox(width: 10),
                AppTextStyle(
                    text: 'Fibers origin: Turkey',
                    color: AppColors.black,
                    fontSize: Constant.small),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const AppTextStyle(
              text: 'Washing instructions',
              color: AppColors.black,
              fontSize: Constant.mediumSmall,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.waves, color: AppColors.black, size: Constant.medium),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.recycling,
                  color: AppColors.black, size: Constant.medium),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.no_stroller,
                  color: AppColors.black, size: Constant.medium),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.no_food_outlined,
                  color: AppColors.black, size: Constant.medium),
            ],
          ),
        ],
      ),
    );
  }
}
