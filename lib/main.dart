import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/routes/routes.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/language/translation_service.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Flurorouter.setupRouter();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: TranslationService(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      color: AppColors.lavender,
      debugShowCheckedModeBanner: false,
      title: 'Meliora Store',
      theme: ThemeData(
        backgroundColor: AppColors.lavender,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: AppColors.lavender),
      ),
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator, //const MainScreen(),
    );
  }
}
