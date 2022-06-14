import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/product_details_screen/product_details_small/product_detailsscreen_small.dart';
import 'package:meliorabag/products/product_controller.dart';

import 'catalog_productcard_small.dart';

class CatalogProductsSmall extends StatelessWidget {
  CatalogProductsSmall({Key? key}) : super(key: key);
  final productController = Get.put(ProductController());
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
                crossAxisSpacing: 10,
                childAspectRatio: 0.5,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return CatalogProductCardSmall(
                  index: index,
                  press: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => ProductDetailsScreenSmall(
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
