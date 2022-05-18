import 'package:flutter/material.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/favouriteButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/languageButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/loginButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/mainNameButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/shoppingCartButton.dart';
import 'package:meliorabag/design/screens/mainscreen/mainscreen.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class AppBarLessThan900 extends StatelessWidget {
  const AppBarLessThan900({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size.fromHeight(screenSize.width / 25),
      child: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.desertStorm,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const LanguageButtonWidget(),
                const LoginButton(buttonColor: AppColors.shuttleGrey),
                const FavouriteButton(buttonColor: AppColors.shuttleGrey),
                const ShoppingCartButton(buttonColor: AppColors.shuttleGrey),
                IconButton(
                  onPressed: () {
                    drawerKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.list),
                  iconSize: Constant.medium,
                  color: AppColors.shuttleGrey,
                  splashRadius: Constant.medium,
                ),
              ],
            )),
            Expanded(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 60),
                child: Container(
                  color: AppColors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      MainNameButtonWidget(
                        fontwidth: 35,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
