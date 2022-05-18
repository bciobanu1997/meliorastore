import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meliorabag/design/utils/colors.dart';

class SubscribeTopScreen extends StatelessWidget {
  const SubscribeTopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('hey'.tr,
            style: GoogleFonts.cinzel(
                color: AppColors.black,
                fontSize: screenSize.height / 28,
                fontWeight: FontWeight.w500)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('weComingSoon'.tr,
                style: GoogleFonts.cinzel(
                    color: AppColors.black,
                    fontSize: screenSize.height / 28,
                    fontWeight: FontWeight.w500)),
          ],
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Text('subscribeMessage'.tr,
              style: GoogleFonts.cinzel(
                  color: AppColors.black,
                  fontSize: screenSize.height / 50,
                  fontWeight: FontWeight.w500)),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Text('meet'.tr,
              style: GoogleFonts.cinzel(
                  color: AppColors.black,
                  fontSize: screenSize.height / 50,
                  fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}
