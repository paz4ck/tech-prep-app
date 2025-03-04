import 'package:flutter/material.dart';

class CommunityModel {
  String name;
  String iconPath;
  Color boxColor;

  CommunityModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CommunityModel> getResources() {
    List<CommunityModel> community = [];

    community.add(
      CommunityModel(
        name: 'Socials',
        iconPath: 'assets/icons/ContactUs.svg',
        boxColor: Color.fromARGB(255, 245, 220, 140),
      ),
    );

    return community;
  }
}

