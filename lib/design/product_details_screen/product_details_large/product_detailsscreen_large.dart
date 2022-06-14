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

class ProductDetailsScreenLarge extends StatelessWidget {
  ProductDetailsScreenLarge({Key? key, required this.index}) : super(key: key);
  final cartController = Get.put(CartController());
  final ProductController productController = Get.find();
  final int index;
  final photoController = Get.put(PhotoController());

  @override
  Widget build(BuildContext context) {
    //List of photos in carousel of product information
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
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: const SizedBox()),
                  Obx(
                    () => Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          PhotoSlider(
                              photoController: photoController,
                              imgList: imgList),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: buildIndicator(
                                photoController.activeIndex.value,
                                imgList.length),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: const SizedBox()),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProductDetailsInfomation(index: index),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Expanded(flex: 2, child: const SizedBox()),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: 120, bottom: 50),
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
    );
  }
}
