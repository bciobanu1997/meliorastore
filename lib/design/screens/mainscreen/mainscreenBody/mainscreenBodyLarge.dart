import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meliorabag/design/screens/shopscreen/shopscreen.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/widgets/networkImageUrl.dart';
import 'package:meliorabag/design/widgets/subscribeWidget.dart';

class MainScreenBodyLarge extends StatelessWidget {
  const MainScreenBodyLarge({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(children: [
      Stack(children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: screenSize.width / 2.5,
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
          children: [
            Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 2,
              child: AppTextStyle(
                text: 'comingSoon'.tr,
                fontfamily: 'Cookie',
                fontSize: screenSize.width / 10,
                color: AppColors.icerberg,
              ),
            )
          ],
        ),
      ]),
      SizedBox(height: 40),
      SubscribeWidget(),
      SizedBox(height: 40),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: SizedBox()),
          Expanded(
              flex: 8,
              child: Container(
                color: AppColors.black,
                height: 1,
              )),
          Expanded(flex: 1, child: SizedBox()),
        ],
      )
    ]);
  }
}
