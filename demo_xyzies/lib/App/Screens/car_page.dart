import 'package:flutter/material.dart';

class CarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Car Page'),
        ),
        body: Center(child: Text('Car', style: TextStyle(fontSize: 60))),
      );
}
