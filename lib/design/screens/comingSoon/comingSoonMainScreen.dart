import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class ComingSoonMainScreen extends StatelessWidget {
  const ComingSoonMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppTextStyle(
          text: 'meliora'.tr,
          fontSize: Constant.xxlbig,
          color: AppColors.black,
        ),
      ),
    );
  }
}
