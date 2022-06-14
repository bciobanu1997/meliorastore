import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/screens/shopscreen/shopscreen.dart';
import 'package:meliorabag/design/utils/appTextButton.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class AppBarNavDrawer extends StatelessWidget {
  const AppBarNavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(children: [
        SizedBox(height: 30),
        //
        SizedBox(height: 30),
        SizedBox(
            height: 60,
            child: AppTextButton(
              action: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShopScreen()),
                );
              },
              textStyle: AppTextStyle(
                text: 'shop'.tr,
                color: AppColors.black,
                fontSize: Constant.mediumSmall,
              ),
            )),
        Container(height: 1, color: AppColors.black),
        SizedBox(
            height: 60,
            child: AppTextButton(
                action: () => '',
                textStyle: AppTextStyle(
                    text: 'newCollection'.tr,
                    color: AppColors.black,
                    fontSize: Constant.mediumSmall))),
        Container(height: 1, color: AppColors.black),
        SizedBox(
            height: 60,
            child: AppTextButton(
                action: () => '',
                textStyle: AppTextStyle(
                    text: 'about'.tr,
                    color: AppColors.black,
                    fontSize: Constant.mediumSmall))),
        Container(height: 1, color: AppColors.black),
        SizedBox(
            height: 60,
            child: AppTextButton(
                action: () => '',
                textStyle: AppTextStyle(
                    text: 'faq'.tr,
                    color: AppColors.black,
                    fontSize: Constant.mediumSmall))),
        Container(height: 1, color: AppColors.black),
        SizedBox(height: 30),
      ]),
    );
  }
}
