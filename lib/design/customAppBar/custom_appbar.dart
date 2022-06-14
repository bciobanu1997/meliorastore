import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/customAppBar/appbar_large.dart';
import 'package:meliorabag/design/customAppBar/appbar_small.dart';
import 'package:meliorabag/design/utils/controller.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  MainAppBar({Key? key}) : super(key: key);
  SubscriberController controller = Get.put(SubscriberController());

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return (screenSize.width > 800) ? const AppBarLarge() : const AppBarSmall();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}
