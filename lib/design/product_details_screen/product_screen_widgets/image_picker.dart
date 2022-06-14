import 'package:flutter/material.dart';

Widget ImagePicker(String urlImage, int index) => Container(
        child: Stack(children: [
      Image.network(
        urlImage,
        fit: BoxFit.fitHeight,
      ),
    ]));
