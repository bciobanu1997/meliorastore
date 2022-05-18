import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meliorabag/design/screens/test/subscribeTopScreen.dart';
import 'package:meliorabag/design/screens/test/subscribersScreen.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/widgets/pngImages.dart';
import 'package:meliorabag/design/widgets/svgImages.dart';

final GlobalKey<ScaffoldState> drawerKey = GlobalKey();

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

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
        //backgroundColor: AppColors.mistyrose,
        body: Container(
            height: screenSize.height,
            width: screenSize.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(PngImages.cover),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: screenSize.height / 25),
                  Text('meliorastore'.tr,
                      style: GoogleFonts.cinzel(
                          color: AppColors.black,
                          fontSize: screenSize.height / 20,
                          fontWeight: FontWeight.w400)),
                  SizedBox(height: screenSize.height / 20),
                  const SubscribeTopScreen(),
                  //MainScreenTop(),
                  SubscribeScreen(),
                  (screenSize.width > 720)
                      ? SizedBox(height: screenSize.height / 3)
                      : SizedBox(height: screenSize.height / 28),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          height: screenSize.height / 5,
                          width: screenSize.height / 5,
                          child: IconButton(
                            padding: const EdgeInsets.all(0.0),
                            icon: SvgPicture.asset(
                              SvgImages.instagram,
                            ),
                            onPressed: () {
                              js.context.callMethod('open', [
                                'https://www.instagram.com/meliorastoreco/'
                              ]);
                            },
                          )),
                      SizedBox(
                          height: screenSize.height / 4,
                          width: screenSize.height / 4,
                          child: IconButton(
                            padding: const EdgeInsets.all(0.0),
                            icon: SvgPicture.asset(
                              SvgImages.facebook,
                            ),
                            onPressed: () {
                              js.context.callMethod('open',
                                  ['https://www.facebook.com/MelioraStoreCo']);
                            },
                          )),
                    ],
                  )
                ],
              ),
            )));
  }
}
