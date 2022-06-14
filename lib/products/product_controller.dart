import 'package:get/get.dart';
import 'package:meliorabag/products/product.dart';
import 'package:meliorabag/products/product_repo.dart';

class ProductController extends GetxController {
  final products = <Product>[].obs;

  @override
  void onInit() {
    products.bindStream(ProductRepository().getaAllProducts());
    super.onInit();
  }
}
