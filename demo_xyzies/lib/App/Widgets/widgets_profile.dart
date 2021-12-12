import 'package:demo_xyzies/Shared/consts_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double coverHeight = 200;
const double profileHeight = 144;

// buildTop - build the top of the images
Widget buildTop() {
  const botton = profileHeight / 2;
  const top = coverHeight - profileHeight / 2;

  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      Container(
          margin: const EdgeInsets.only(bottom: botton),
          child: buildCoverImage()),
      Positioned(top: top, child: buildProfileImage()),
    ],
  );
}

// buildCoverImage - build the background image of the profile
Widget buildCoverImage() => Container(
      color: Colors.grey,
      child: Image.network(
        techBackground,
        width: double.infinity,
        height: coverHeight,
        fit: BoxFit.cover,
      ),
    );

// buildProfileImage - build the profile image of the user
Widget buildProfileImage() => CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: const NetworkImage(profilePhoto),
    );

// buildSocialIcon - build the incons of the user
Widget buildSocialIcon(IconData icon) => CircleAvatar(
      // TODO: add hreft to icons
      radius: 25,
      child: Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child: InkWell(
              onTap: () {}, child: Center(child: Icon(icon, size: 32)))),
    );

// buildContent - build the principal information of the user.
Widget buildContent() => Container(
      margin: const EdgeInsets.only(bottom: 60),
      child: Column(
        children: [
          const SizedBox(height: 8),
          const Text('Sergio Ramos',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('Full Stack Developer',
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
          Container(
            margin: const EdgeInsets.only(
                left: 50.0, right: 50.0, bottom: 40.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('About',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 20),
                Text(
                    'Hello my name is sergio ramos and this is a demo project to present as a technical proof for XYZies.',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
              ],
            ),
          ),
        ],
      ),
    );
