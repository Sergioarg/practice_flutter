import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_xyzies/Shared/consts_product.dart';
import 'package:flutter/material.dart';

Widget buildImage(dynamic urlImage) {
  return Container(
    height: 320,
    margin: EdgeInsets.only(top: 10),
    clipBehavior: Clip.hardEdge,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Image.network(urlImage, fit: BoxFit.cover),
  );
}

Widget buildCardInfo(dynamic urlImage, dynamic titleCard, dynamic desCard,
    dynamic hpCard, dynamic zeroCard, dynamic topspeedCard) {
  return Column(
    children: [
      buildImage(urlImage),
      const SizedBox(height: 15),
      Text(
        titleCard,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(desCard),
          textInfo('Horse Power: ', hpCard),
          textInfo('0 to 100: ', zeroCard),
          textInfo('Topspeed: ', topspeedCard),
        ],
      ),
    ],
  );
}

Widget textInfo(String textItem, dynamic cardItem) => RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: textItem,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: cardItem,
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
    );

class AllCarousel extends StatefulWidget {
  const AllCarousel({Key? key}) : super(key: key);

  @override
  AllCarouselState createState() => AllCarouselState();
}

class AllCarouselState extends State<AllCarousel> {
  int current = 0;
  dynamic _selectedIndex = {};

  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        carouselController: _carouselController,
        options: CarouselOptions(
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
        items: products.map((car) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (_selectedIndex == car) {
                      _selectedIndex = {};
                    } else {
                      _selectedIndex = car;
                    }
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: _selectedIndex == car
                          ? Border.all(color: Colors.blue.shade500, width: 3)
                          : null,
                      boxShadow: _selectedIndex == car
                          ? [
                              BoxShadow(
                                  color: Colors.blue.shade100,
                                  blurRadius: 30,
                                  offset: Offset(0, 10))
                            ]
                          : [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  blurRadius: 20,
                                  offset: Offset(0, 5))
                            ]),
                  child: SingleChildScrollView(
                    child: buildCardInfo(
                      car['image'],
                      car['title'],
                      car['description'],
                      car['hp'],
                      car['zerotohundred'],
                      car['topspeed'],
                    ),
                  ),
                ),
              );
            },
          );
        }).toList());
  }
}
