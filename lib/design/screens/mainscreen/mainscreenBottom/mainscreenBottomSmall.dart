import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/utils/appTextButton.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';
import 'package:meliorabag/design/widgets/svgImages.dart';

class MainScreenBottomSmall extends StatelessWidget {
  const MainScreenBottomSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: SizedBox()),
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
            Expanded(child: SizedBox()),
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
            Expanded(child: SizedBox()),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 2, child: SizedBox()),
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
            Expanded(flex: 2, child: SizedBox()),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppTextStyle(
                  text: 'socialMedia'.tr,
                  color: AppColors.black,
                  fontSize: Constant.mediumSmall,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod('open',
                            ['https://www.facebook.com/MelioraStoreCo']);
                      },
                      child: SvgPicture.asset(
                        SvgImages.facebook,
                        width: 25,
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod('open',
                            ['https://www.instagram.com/meliorastoreco/']);
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
            Expanded(flex: 2, child: SizedBox()),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
