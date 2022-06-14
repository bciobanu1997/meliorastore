import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/product_details_screen/product_details_large/product_detailsscreen_large.dart';
import 'package:meliorabag/design/screens/shopscreen/catalog_products_large/catalog_productcard_large.dart';
import 'package:meliorabag/products/product_controller.dart';

class CatalogProductsLarge extends StatelessWidget {
  final productController = Get.put(ProductController());

  CatalogProductsLarge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          GridView.builder(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: productController.products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 30,
                childAspectRatio: 0.6,
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                return CatalogProductCardLarge(
                  index: index,
                  press: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => ProductDetailsScreenLarge(
                                  index: index,
                                )));
                  },
                );
              }),
        ],
      ),
    );
  }
}
