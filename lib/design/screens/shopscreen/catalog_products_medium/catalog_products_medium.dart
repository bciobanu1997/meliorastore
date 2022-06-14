import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/products/product_controller.dart';

import '../../../product_details_screen/product_details_medium/product_detailsscreen_medium.dart';
import 'catalog_productcard_medium.dart';

class CatalogProductsMedium extends StatelessWidget {
  CatalogProductsMedium({Key? key}) : super(key: key);
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
                childAspectRatio: 0.6,
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return CatalogProductCardMedium(
                  index: index,
                  press: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => ProductDetailsScreenMedium(
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
