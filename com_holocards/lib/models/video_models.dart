import 'package:flutter/material.dart';

class VideosModel {
  String name;
  String iconPath;
  Color boxColor;

  VideosModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<VideosModel> getVideos() {
    List<VideosModel> videos = [];

    videos.add(
      VideosModel(
        name: 'Cerberus',
        iconPath: 'assets/icons/cerberus.svg',
        boxColor: Color.fromARGB(255, 245, 220, 140),
      ),
    );

    videos.add(
      VideosModel(
        name: "Gorgon",
        iconPath: 'assets/icons/gorgon.svg',
        boxColor: Color.fromARGB(255, 245, 220, 140),
      ),
    );

    videos.add(
      VideosModel(
        name: "Satyr",
        iconPath: 'assets/icons/satyr.svg',
        boxColor: Color.fromARGB(255, 245, 220, 140),
      ),
    );

    return videos;
  }
}

