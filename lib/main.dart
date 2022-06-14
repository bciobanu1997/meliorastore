import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/screens/mainscreen/mainscreen.dart';
import 'package:meliorabag/design/screens/shopscreen/controller/cart_controller.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/language/translation_service.dart';
import 'package:meliorabag/products/product_controller.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  final productController = Get.put(ProductController());
  final cartController = Get.put(CartController());
  // final ProductController productController = Get.find();
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: TranslationService(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      color: AppColors.white,
      debugShowCheckedModeBanner: false,
      title: 'Meliora Store',
      theme: ThemeData(
        backgroundColor: AppColors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: AppColors.white),
      ),
      home: MainScreen(),
      //const MainScreen(),
    );
  }
}
