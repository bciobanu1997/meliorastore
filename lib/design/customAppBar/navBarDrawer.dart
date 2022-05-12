import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/aboutButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/brexitButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/commingSoonButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/faqButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/shopButton.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class AppBarNavDrawer extends StatelessWidget {
  const AppBarNavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(top: screenSize.height / 10),
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ListTile(
                leading: ShopButton(),
              ),
              const ListTile(
                leading: CommingSoonButton(),
              ),
              const ListTile(
                leading: BrexitButton(),
              ),
              const ListTile(
                leading: FaqButton(),
              ),
              const ListTile(
                leading: AboutButton(),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenSize.height / 1.6),
                child: Text('melioraCopyright'.tr,
                    style: GoogleFonts.cinzel(
                        color: AppColors.black, fontSize: Constant.small)),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
