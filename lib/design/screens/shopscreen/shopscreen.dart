import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/customAppBar/custom_appbar.dart';
import 'package:meliorabag/design/customAppBar/navbar_drawer.dart';
import 'package:meliorabag/design/screens/mainscreen/mainscreenBottom/mainscreenBottomLarge.dart';
import 'package:meliorabag/design/screens/mainscreen/mainscreenBottom/mainscreenBottomSmall.dart';
import 'package:meliorabag/design/screens/shopscreen/catalog_products_large/catalog_products_large.dart';
import 'package:meliorabag/design/screens/shopscreen/catalog_products_small/catalog_products_small.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

import 'catalog_products_medium/catalog_products_medium.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MainAppBar(),
      drawer: const AppBarNavDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 30),
          child: Column(children: [
            const AppTextStyle(
              alignment: Alignment.topLeft,
              text: 'shop',
              fontSize: Constant.big,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
            Container(
                padding: EdgeInsets.only(top: 20),
                child: (width > 1100)
                    ? CatalogProductsLarge()
                    : (width < 1100 && width > 800)
                        ? CatalogProductsMedium()
                        : CatalogProductsSmall()),
            Padding(
                padding: EdgeInsets.only(top: 120, bottom: 50),
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
          ]),
        ),
      ),
    );
  }
}
