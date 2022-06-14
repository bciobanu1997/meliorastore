import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/utils/appTextButton.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';
import 'package:meliorabag/design/widgets/svgImages.dart';

class MainScreenBottomLarge extends StatelessWidget {
  const MainScreenBottomLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextStyle(
              text: 'information'.tr,
              color: AppColors.black,
              fontSize: Constant.mediumSmall,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 5),
            AppTextButton(
                action: () => '',
                textStyle: AppTextStyle(
                    text: 'customerService'.tr,
                    color: AppColors.black,
                    fontSize: Constant.mediumSmall)),
            AppTextButton(
                action: () => '',
                textStyle: AppTextStyle(
                    text: 'returns'.tr,
                    color: AppColors.black,
                    fontSize: Constant.mediumSmall)),
            AppTextButton(
                action: () => '',
                textStyle: AppTextStyle(
                    text: 'deliveries'.tr,
                    color: AppColors.black,
                    fontSize: Constant.mediumSmall)),
            AppTextButton(
                action: () => '',
                textStyle: AppTextStyle(
                    text: 'contacts'.tr,
                    color: AppColors.black,
                    fontSize: Constant.mediumSmall)),
            AppTextButton(
                action: () => '',
                textStyle: AppTextStyle(
                    text: 'faq'.tr,
                    color: AppColors.black,
                    fontSize: Constant.mediumSmall)),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextStyle(
              text: 'production'.tr,
              color: AppColors.black,
              fontSize: Constant.mediumSmall,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 5),
            AppTextButton(
                action: () => '',
                textStyle: AppTextStyle(
                    text: 'productCare'.tr,
                    color: AppColors.black,
                    fontSize: Constant.mediumSmall)),
            AppTextButton(
                action: () => '',
                textStyle: AppTextStyle(
                    text: 'howitsmade'.tr,
                    color: AppColors.black,
                    fontSize: Constant.mediumSmall)),
            AppTextButton(
                action: () => '',
                textStyle: AppTextStyle(
                    text: 'about'.tr,
                    color: AppColors.black,
                    fontSize: Constant.mediumSmall)),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextStyle(
              text: 'terms'.tr,
              color: AppColors.black,
              fontSize: Constant.mediumSmall,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 5),
            AppTextButton(
                action: () => '',
                textStyle: AppTextStyle(
                    text: 'termsConditions'.tr,
                    color: AppColors.black,
                    fontSize: Constant.mediumSmall)),
            AppTextButton(
                action: () => '',
                textStyle: AppTextStyle(
                    text: 'privacy'.tr,
                    color: AppColors.black,
                    fontSize: Constant.mediumSmall)),
          ],
        ),
        Column(
          children: [
            AppTextStyle(
              text: 'socialMedia'.tr,
              color: AppColors.black,
              fontSize: Constant.mediumSmall,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 5),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    js.context.callMethod(
                        'open', ['https://www.facebook.com/MelioraStoreCo']);
                  },
                  child: SvgPicture.asset(
                    SvgImages.facebook,
                    width: 25,
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    js.context.callMethod(
                        'open', ['https://www.instagram.com/meliorastoreco/']);
                  },
                  child: SvgPicture.asset(
                    SvgImages.instagram,
                    width: 25,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
