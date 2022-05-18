import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/customAppBar/appBarLessThan900.dart';
import 'package:meliorabag/design/customAppBar/appBarMoreThan900.dart';
import 'package:meliorabag/design/utils/controller.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  MainAppBar({Key? key}) : super(key: key);
  AppBarController controller = Get.put(AppBarController());

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return (screenSize.width > 800) ? const AppBarMoreThan900() : const AppBarLessThan900();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(110);
}
