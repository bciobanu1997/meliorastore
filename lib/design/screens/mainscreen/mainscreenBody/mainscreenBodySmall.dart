import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/screens/shopscreen/shopscreen.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/widgets/networkImageUrl.dart';
import 'package:meliorabag/design/widgets/subscribeWidget.dart';

class MainScreenBodySmall extends StatelessWidget {
  const MainScreenBodySmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(children: [
          ConstrainedBox(
            constraints: BoxConstraints(
                //maxHeight: screenSize.width / 1,
                ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShopScreen()),
                );
              },
              child: Row(
                children: [
                  SizedBox(),
                  Expanded(child: Image.network(NetworkImageUrl.bag1)),
                  SizedBox(),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(flex: 1, child: SizedBox()),
              Expanded(
                  flex: 4,
                  child: AppTextStyle(
                    text: 'comingSoon'.tr,
                    fontfamily: 'Cookie',
                    fontSize: 70,
                    color: AppColors.icerberg,
                  ))
            ],
          ),
        ]),
        SizedBox(height: 40),
        SubscribeWidget(),
        SizedBox(height: 40),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(flex: 1, child: SizedBox()),
          Expanded(
              flex: 8,
              child: Container(
                color: AppColors.black,
                height: 1,
              )),
          Expanded(flex: 1, child: SizedBox()),
        ]),
      ],
    );
  }
}
