import 'package:demo_xyzies/Shared/const_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _BussinesPageState createState() => _BussinesPageState();
}

class _BussinesPageState extends State<ProfilePage> {
  final String _title = 'Profile';
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[buildTop(), buildContent()]),
    );
  }

  // ! --------------------------------------------
  // contruye el tope de la funcion
  Widget buildTop() {
    final botton = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: botton), child: buildCoverImage()),
        Positioned(top: top, child: buildProfileImage()),
      ],
    );
  }

  // widget buildcover image
  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          techBackground,
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  // widget buildcover image
  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const NetworkImage(profilePhoto),
      );

  // widget buildcover image
  Widget buildContent() => Column(
        children: [
          const SizedBox(height: 8),
          Text('Sergio Ramos',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text('Full Stack Developer',
              style: TextStyle(fontSize: 20, color: Colors.black38)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon(FontAwesomeIcons.slack),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.github),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.linkedin),
            ],
          ),
            //  Text('About',
            //  textAlign: TextAlign.justify,
            //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, )),
            //   Text('AboutAboutAboutAboutAboutAboutAboutAbo',
            //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            //   Text('AboutAboutAboutAboutAboutAboutAboutAbo',
            //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            //   Text('AboutAboutAboutAboutAboutAboutAboutAbo',
            //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            //   Text('AboutAboutAboutAboutAboutAboutAboutAbo',
            //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            //   Text('AboutAboutAboutAboutAboutAboutAboutAbo',
            //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            //   Text('AboutAboutAboutAboutAboutAboutAboutAbo',
            //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ],
      );
  // widget buildcover image
  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Center(child: Icon(icon, size: 32)),
      );

  // ! --------------------------------------------
}
