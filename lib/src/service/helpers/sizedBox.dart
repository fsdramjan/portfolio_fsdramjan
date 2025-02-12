import 'package:flutter/material.dart';

Widget sizedboxH(double? height) {
  return SizedBox(
    height: height,
  );
}

Widget sizedboxW(double? width) {
  return SizedBox(
    width: width,
  );
}

Size deviceSize(BuildContext context) {
  return MediaQuery.of(context).size;
}
