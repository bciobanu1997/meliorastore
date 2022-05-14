import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meliorabag/design/screens/test/subscribeTopScreen.dart';
import 'package:meliorabag/design/screens/test/subscribersScreen.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/widgets/networkImageUrl.dart';

final GlobalKey<ScaffoldState> drawerKey = GlobalKey();

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);
  // Create a key
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: drawerKey,
        //drawer: const AppBarNavDrawer(),
        //appBar: MainAppBar(),
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenSize.height / 20),
              SizedBox(
                  height: screenSize.height / 6,
                  child: Image.asset(NetworkImageUrl.meliora)),
              SizedBox(height: screenSize.height / 10),
              const SubscribeTopScreen(),
              //MainScreenTop(),
              SubscribeScreen(),
              (screenSize.width > 900)
                  ? SizedBox(height: screenSize.height / 3)
                  : SizedBox(height: screenSize.height / 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('homemade'.tr,
                      style: GoogleFonts.cinzel(
                          color: AppColors.black,
                          fontSize: screenSize.height / 50,
                          fontWeight: FontWeight.w400)),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            js.context.callMethod('open',
                                ['https://www.instagram.com/meliorastoreco/']);
                          },
                          icon: Image.asset(NetworkImageUrl.instagram)),
                      IconButton(
                          onPressed: () {
                            js.context.callMethod('open',
                                ['https://www.facebook.com/MelioraStoreCo']);
                          },
                          icon: Image.asset(NetworkImageUrl.facebook)),
                    ],
                  ),
                  Text('madeinuk'.tr,
                      style: GoogleFonts.cinzel(
                          color: AppColors.black,
                          fontSize: screenSize.height / 50,
                          fontWeight: FontWeight.w400)),
                ],
              )
            ],
          ),
        ));
  }
}
