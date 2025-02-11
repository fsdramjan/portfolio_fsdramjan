import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderComponent extends StatelessWidget {
  final double? height;
  SliderComponent({this.height});
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 2,
        itemBuilder: (
          BuildContext context,
          int itemIndex,
          int pageViewIndex,
        ) {
          return Stack(
            children: [
              Container(
                height: height ?? 150,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                  'https://avatars.githubusercontent.com/u/83186779?v=4',
                  width: Get.width,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          );
        },
        options: CarouselOptions(
          height: height ?? 140,
          // aspectRatio: 16 / 9,
          viewportFraction: 1,
          pageSnapping: true,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,

          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          // onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
        ),
  
    );
  }
}
