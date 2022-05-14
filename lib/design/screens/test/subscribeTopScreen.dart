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
            style: GoogleFonts.jua(
                color: AppColors.black,
                fontSize: screenSize.height / 20,
                fontWeight: FontWeight.w800)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('weComingSoon'.tr,
                style: GoogleFonts.jua(
                    color: AppColors.black,
                    fontSize: screenSize.height / 20,
                    fontWeight: FontWeight.w800)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Text('subscribeMessage'.tr,
              style: GoogleFonts.cinzel(
                  color: AppColors.black,
                  fontSize: screenSize.height / 50,
                  fontWeight: FontWeight.w100)),
        ),
      ],
    );
  }
}
