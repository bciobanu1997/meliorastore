import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'carousel_controller.dart';
import 'image_picker.dart';

class PhotoSlider extends StatelessWidget {
  const PhotoSlider({
    Key? key,
    required this.photoController,
    required this.imgList,
  }) : super(key: key);

  final PhotoController photoController;
  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          height: 450,
          aspectRatio: 1,
          viewportFraction: 1,
          enableInfiniteScroll: true,
          onPageChanged: (index, reason) =>
              photoController.activeIndex.value = index,
        ),
        itemCount: imgList.length,
        itemBuilder: (context, index, realIndex) {
          return ImagePicker(imgList[index], index);
        });
  }
}
