import 'package:demo_xyzies/Shared/content_product.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: const Text('Carousel Cars',
            style: TextStyle(color: Colors.black, fontSize: 30)),
        centerTitle: true,
      ),
      body: const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: BuildCarousel(),
      ),
    );
  }
}
