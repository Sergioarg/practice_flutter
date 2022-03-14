import 'package:flutter/material.dart';

Widget buildImage(dynamic urlImage) {
  return Container(
    height: 320,
    margin: const EdgeInsets.only(top: 10),
    clipBehavior: Clip.hardEdge,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Image.network(urlImage, fit: BoxFit.cover),
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


Widget buildCardInfo(dynamic urlImage, dynamic titleItem, dynamic desItem,
    dynamic hpItem, dynamic zeroItem, dynamic topSpeedItem) {
  return Column(
    children: [
      buildImage(urlImage),
      const SizedBox(height: 15),
      Text(
        titleItem,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(desItem),
          textInfo('Horse Power: ', hpItem),
          textInfo('0 to 100: ', zeroItem),
          textInfo('Topspeed: ', topSpeedItem),
        ],
      ),
    ],
  );
}


BoxDecoration buildBorderAnimation(dynamic mapItems, dynamic _selectedIndex) =>
    BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: _selectedIndex == mapItems
          ? Border.all(color: Colors.blue.shade500, width: 3)
          : null,
      boxShadow: _selectedIndex == mapItems
          ? [
              BoxShadow(
                  color: Colors.blue.shade100,
                  blurRadius: 30,
                  offset: const Offset(0, 10))
            ]
          : [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 20,
                  offset: const Offset(0, 5))
            ],
    );
