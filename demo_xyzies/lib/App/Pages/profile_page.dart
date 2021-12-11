import 'package:demo_xyzies/Shared/const_images.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _BussinesPageState createState() => _BussinesPageState();
}

class _BussinesPageState extends State<ProfilePage> {
  final String _title = 'Profile';
  final double coverHeight = 280;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          buildCoverImge()
          ],
      ),
    );
  }

  // widget buildcover image
  Widget buildCoverImge() => Container(
        color: Colors.grey,
        child: Image.network(
          techBackground,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      );
}
