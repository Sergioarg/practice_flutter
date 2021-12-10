import 'package:flutter/material.dart';


class CarPage extends StatefulWidget {
  const CarPage({Key? key}) : super(key: key);

  @override
  _CarPageState createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  final String _title = 'Car - Demo XYZies';

  @override
  Widget build(BuildContext context) {
    return Title(
      title: _title,
      color: Colors.blue, // This is required
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Car'),
          centerTitle: true,
        ),
        body: const Center(child: Text('Car', style: TextStyle(fontSize: 60))),
      ),
    );
  }
}
