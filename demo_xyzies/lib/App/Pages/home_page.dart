import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _title = 'Demo XYZies';

  @override
  Widget build(BuildContext context) {
    return Title(
      title: _title,
      color: Colors.blue, // This is required
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to the demo for XYZies'),
          centerTitle: true,
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: const [
                Text("Here you will find a small project on cars in flutter",
                    style: TextStyle(fontSize: 15))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
