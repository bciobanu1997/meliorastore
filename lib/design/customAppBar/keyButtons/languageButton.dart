import 'package:flutter/material.dart';
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class LanguageButtonWidget extends StatelessWidget {
  const LanguageButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.language_rounded,
            color: AppColors.chineseSilver,
          ),
          label: const AppTextStyle(
              text: 'unitedKingdom',
              color: AppColors.shuttleGrey,
              fontSize: Constant.extraSmall),
        )
      ],
    );
  }
}
