import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        //style: ,
        onPressed: () {},
        child: Text('about'.tr,
            style: GoogleFonts.cinzel(
                color: AppColors.black, fontSize: Constant.small)));
  }
}
