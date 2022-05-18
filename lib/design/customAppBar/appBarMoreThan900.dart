import 'package:flutter/material.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/aboutButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/brexitButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/commingSoonButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/faqButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/favouriteButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/languageButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/loginButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/mainNameButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/shopButton.dart';
import 'package:meliorabag/design/customAppBar/keyButtons/shoppingCartButton.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class AppBarMoreThan900 extends StatelessWidget {
  const AppBarMoreThan900({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TopAppRow(),
            BottomAppRow(),
          ],
        ));
  }
}

class TopAppRow extends StatelessWidget {
  const TopAppRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Expanded(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 60, minHeight: 55),
        child: Container(
          color: AppColors.desertStorm,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(width: 15),
              Icon(Icons.delivery_dining,
                  color: AppColors.chineseSilver, size: 20),
              SizedBox(width: 5),
              AppTextStyle(
                  text: 'freeDelivery',
                  color: AppColors.shuttleGrey,
                  fontSize: Constant.extraSmall),
              SizedBox(width: 15),
              Icon(Icons.update_rounded,
                  color: AppColors.chineseSilver, size: 20),
              SizedBox(width: 5),
              AppTextStyle(
                  text: 'fastShipping',
                  color: AppColors.shuttleGrey,
                  fontSize: Constant.extraSmall),
              SizedBox(width: 15),
              Icon(Icons.lock_open, color: AppColors.chineseSilver, size: 20),
              SizedBox(width: 5),
              AppTextStyle(
                  text: 'securePayments',
                  color: AppColors.shuttleGrey,
                  fontSize: Constant.extraSmall),
              Expanded(child: LanguageButtonWidget())
            ],
          ),
        ),
      ),
    );
  }
}

class BottomAppRow extends StatelessWidget {
  const BottomAppRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Expanded(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 60, minHeight: 55),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            const ShopButton(),
            const CommingSoonButton(),
            const AboutButton(),
            const FaqButton(),
            const BrexitButton(),
            Expanded(
                child: MainNameButtonWidget(
              fontwidth: screenSize.width / 40,
            )),
            const LoginButton(buttonColor: AppColors.black),
            const FavouriteButton(buttonColor: AppColors.black),
            const ShoppingCartButton(buttonColor: AppColors.black),
            const SizedBox(width: 40)
          ],
        ),
      ),
    );
  }
}
