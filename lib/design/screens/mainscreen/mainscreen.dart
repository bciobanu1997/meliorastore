import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/customAppBar/custom_appbar.dart';
import 'package:meliorabag/design/customAppBar/navbar_drawer.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

import 'mainscreenBody/mainscreenBodyLarge.dart';
import 'mainscreenBody/mainscreenBodySmall.dart';
import 'mainscreenBottom/mainscreenBottomLarge.dart';
import 'mainscreenBottom/mainscreenBottomSmall.dart';

GlobalKey<ScaffoldState> drawerKey = GlobalKey();

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  // Create a key
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColors.white,
        key: drawerKey,
        drawer: const AppBarNavDrawer(),
        appBar: MainAppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: (width > 800) ? 50 : 20),
              (width > 800)
                  ? const MainScreenBodyLarge()
                  : const MainScreenBodySmall(),
              SizedBox(height: 10),
              (width > 800)
                  ? const MainScreenBottomLarge()
                  : const MainScreenBottomSmall(),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                AppTextStyle(
                  text: 'melioraCopyright'.tr,
                  color: AppColors.black,
                  fontSize: Constant.small,
                ),
              ])

              //MainScreenBody(),
            ],
          ),
        ));
  }
}
