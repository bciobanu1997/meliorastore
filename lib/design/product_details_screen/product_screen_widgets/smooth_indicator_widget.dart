import 'package:flutter/material.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget buildIndicator(int index, int lenght) => AnimatedSmoothIndicator(
    activeIndex: index,
    count: lenght,
    effect: JumpingDotEffect(
      activeDotColor: AppColors.black,
      dotColor: AppColors.chineseSilver,
      dotHeight: 10,
      dotWidth: 10,
    ));
