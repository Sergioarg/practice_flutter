import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_xyzies/App/Widgets/widgets_product.dart';
import 'package:demo_xyzies/Shared/consts_product.dart';
import 'package:flutter/material.dart';


class BuildCarousel extends StatefulWidget {
  const BuildCarousel({Key? key}) : super(key: key);

  @override
  BuildCarouselState createState() => BuildCarouselState();
}

class BuildCarouselState extends State<BuildCarousel> {
  int current = 0;
  dynamic _selectedIndex = {};

  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        carouselController: _carouselController,
        options: CarouselOptions(
            // TODO: add validatio to change false if i choose some item
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 1),
            height: 450.0,
            aspectRatio: 16 / 9,
            viewportFraction: 0.70,
            enlargeCenterPage: true,
            pageSnapping: true,
            onPageChanged: (index, reason) {
              setState(() {
                current = index;
              });
            }),
        items: products.map((mapProduct) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (_selectedIndex == mapProduct) {
                      _selectedIndex = {};
                    } else {
                      _selectedIndex = mapProduct;
                    }
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: MediaQuery.of(context).size.width,
                  decoration: buildBorderAnimation(mapProduct, _selectedIndex),
                  child: SingleChildScrollView(
                    child: buildCardInfo(
                      mapProduct['image'],
                      mapProduct['title'],
                      mapProduct['description'],
                      mapProduct['hp'],
                      mapProduct['zerotohundred'],
                      mapProduct['topspeed'],
                    ),
                  ),
                ),
              );
            },
          );
        }).toList());
  }
}
