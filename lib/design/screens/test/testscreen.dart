import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            AppTextStyle(
              text: 'commingSoon',
              color: AppColors.black,
            ),
          ]),
    );
  }
}
