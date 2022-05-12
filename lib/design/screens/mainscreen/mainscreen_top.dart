import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/widgets/networkImageUrl.dart';

class MainScreenTop extends StatelessWidget {
  MainScreenTop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    print('Screen width: ${screenSize.height}');
    return Stack(children: [
      ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: screenSize.width / 2.5,
        ),
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, '/main/coomingsoon'),
          child: Row(
            children: [
              SizedBox(width: screenSize.width / 100),
              Expanded(child: Image.network(NetworkImageUrl.bag1)),
              const SizedBox(width: 5),
              Expanded(child: Image.network(NetworkImageUrl.bag2)),
              const SizedBox(width: 5),
              Expanded(
                child: Image.network(NetworkImageUrl.bag3),
              ),
              SizedBox(width: screenSize.width / 100),
            ],
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: screenSize.width / 10,
            height: screenSize.width / 10,
          ),
          Text('commingSoon'.tr,
              style: GoogleFonts.bonbon(
                  color: AppColors.icerberg,
                  fontSize: screenSize.width / 10,
                  fontWeight: FontWeight.w800))
        ],
      ),
    ]);
  }
}
