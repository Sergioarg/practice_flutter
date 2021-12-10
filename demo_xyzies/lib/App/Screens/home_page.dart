import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _title = 'Home - Demo XYZies';

  @override
  Widget build(BuildContext context) {
    return Title(
      title: _title,
      color: Colors.blue, // This is required
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
        ),
        body: const Center(
            child: Text('Home :)', style: TextStyle(fontSize: 60))),
      ),
    );
  }
}
