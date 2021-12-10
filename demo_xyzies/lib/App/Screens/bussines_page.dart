import 'package:flutter/material.dart';

class BussinesPage extends StatefulWidget {
  const BussinesPage({Key? key}) : super(key: key);

  @override
  _BussinesPageState createState() => _BussinesPageState();
}

class _BussinesPageState extends State<BussinesPage> {
  final String _title = 'Bussines - Demo XYZies';

  @override
  Widget build(BuildContext context) {
    return Title(
      title: _title,
      color: Colors.blue, // This is required
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bussines'),
          centerTitle: true,
        ),
        body: const Center(child: Text('Bussines :)', style: TextStyle(fontSize: 60))),
      ),
    );
  }
}
