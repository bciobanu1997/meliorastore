import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meliorabag/design/utils/colors.dart';

class MainNameButtonWidget extends StatelessWidget {
  const MainNameButtonWidget({Key? key, required this.fontwidth})
      : super(key: key);
  final double fontwidth;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return TextButton(
      //style: ,
      onPressed: () {},
      child: Text(
        'Meliora Store',
        style: GoogleFonts.cinzel(
          color: AppColors.black,
          fontSize: fontwidth,
        ),
      ),
    );
  }
}
