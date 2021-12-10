import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _BussinesPageState createState() => _BussinesPageState();
}

class _BussinesPageState extends State<ProfilePage> {
  final String _title = 'Profile - Demo XYZies';

  @override
  Widget build(BuildContext context) {
    return Title(
      title: _title,
      color: Colors.blue, // This is required
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          centerTitle: true,
        ),
        body: const Center(child: Text('Profiile :)', style: TextStyle(fontSize: 60))),
      ),
    );
  }
}
