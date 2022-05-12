import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meliorabag/design/customAppBar/custom_appbar.dart';
import 'package:meliorabag/design/customAppBar/navBarDrawer.dart';
import 'package:meliorabag/design/screens/test/subscribersScreen.dart';
import 'package:meliorabag/design/utils/colors.dart';

import 'mainscreen_top.dart';

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
    return Scaffold(
      key: drawerKey,
      drawer: const AppBarNavDrawer(),
      appBar: MainAppBar(),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 50),
            MainScreenTop(),
            SubscribeScreen(),
          ],
        ),
      ),
    );
  }
}
