import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_xyzies/Shared/const_images.dart';

import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({ Key? key }) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _current = 0;
  dynamic _selectedIndex = {};

  CarouselController _carouselController = new CarouselController();

  List<dynamic> _products = [
    {
      'title': 'Chevrolet Camaro \nModel: 1969',
      'image': classicCamaro,
      'description': 'Limited collection'
    },
    {
      'title': 'Chevrolet Camaro \nModel: 2021',
      'image': newCamaro,
      'description': 'Limited collection'
    },
    {
      'title': 'Bmw Z4 \n Model: 2021',
      'image': bmwz4,
      'description': 'Limited collection'
    },
    {
      'title': 'Lambirghini Urus \n Model: 2021',
      'image': lamboUrus,
      'description': 'Limited collection'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _selectedIndex.length > 0 ? FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_forward_ios),
      ) : null,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Cars', style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            height: 450.0,
            aspectRatio: 16/9,
            viewportFraction: 0.70,
            enlargeCenterPage: true,
            pageSnapping: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }
          ),
          items: _products.map((movie) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_selectedIndex == movie) {
                        _selectedIndex = {};
                      } else {
                        _selectedIndex = movie;
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: _selectedIndex == movie ? Border.all(color: Colors.blue.shade500, width: 3) : null,
                      boxShadow: _selectedIndex == movie ? [
                        BoxShadow(
                          color: Colors.blue.shade100,
                          blurRadius: 30,
                          offset: Offset(0, 10)
                        )
                      ] : [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 20,
                          offset: Offset(0, 5)
                        )
                      ]
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 320,
                            margin: EdgeInsets.only(top: 10),
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.network(movie['image'], fit: BoxFit.cover),
                          ),
                          SizedBox(height: 20,),
                          Text(movie['title'], style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 20,),
                          Text(movie['description'], style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade600
                          ),),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList()
        ),
      ),
    );
  }
}
