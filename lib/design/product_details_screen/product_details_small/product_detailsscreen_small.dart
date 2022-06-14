import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/customAppBar/custom_appbar.dart';
import 'package:meliorabag/design/customAppBar/navbar_drawer.dart';
import 'package:meliorabag/design/product_details_screen/product_details_large/product_details_information.dart';
import 'package:meliorabag/design/product_details_screen/product_screen_widgets/carousel_controller.dart';
import 'package:meliorabag/design/product_details_screen/product_screen_widgets/photo_slider.dart';
import 'package:meliorabag/design/product_details_screen/product_screen_widgets/smooth_indicator_widget.dart';
import 'package:meliorabag/design/screens/mainscreen/mainscreenBottom/mainscreenBottomLarge.dart';
import 'package:meliorabag/design/screens/mainscreen/mainscreenBottom/mainscreenBottomSmall.dart';
import 'package:meliorabag/design/screens/shopscreen/controller/cart_controller.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';
import 'package:meliorabag/products/product_controller.dart';

class ProductDetailsScreenSmall extends StatelessWidget {
  ProductDetailsScreenSmall({Key? key, required this.index}) : super(key: key);
  final cartController = Get.put(CartController());
  final ProductController productController = Get.find();
  final int index;
  final photoController = Get.put(PhotoController());
  @override
  Widget build(BuildContext context) {
    //List of photos
    final List<String> imgList = [
      productController.products[index].photoUrl,
      productController.products[index].photoUrl2 as String,
      productController.products[index].photoUrl3 as String,
    ];
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MainAppBar(),
      drawer: const AppBarNavDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 450,
                  child: PhotoSlider(
                      photoController: photoController, imgList: imgList),
                ),
                SizedBox(height: 10),
                buildIndicator(
                    photoController.activeIndex.value, imgList.length),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: ProductDetailsInfomation(index: index),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  color: AppColors.black,
                  height: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 50),
                    child: (width > 800)
                        ? const MainScreenBottomLarge()
                        : const MainScreenBottomSmall()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppTextStyle(
                      text: 'melioraCopyright'.tr,
                      color: AppColors.black,
                      fontSize: Constant.small,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
