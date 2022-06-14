import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/screens/shopscreen/controller/cart_controller.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class CartTotal extends StatelessWidget {
  CartTotal({Key? key}) : super(key: key);
  final CartController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const AppTextStyle(
              text: 'Total',
              color: AppColors.black,
              fontSize: Constant.big,
              fontWeight: FontWeight.w600,
            ),
            AppTextStyle(
              text: '${controller.total}',
              color: AppColors.black,
              fontSize: Constant.big,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
