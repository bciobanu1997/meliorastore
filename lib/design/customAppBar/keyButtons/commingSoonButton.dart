import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class CommingSoonButton extends StatelessWidget {
  const CommingSoonButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        //style: ,
        onPressed: () {},
        child: Text('commingSoon'.tr,
            style: GoogleFonts.cinzel(
                color: AppColors.black, fontSize: Constant.small)));
  }
}
