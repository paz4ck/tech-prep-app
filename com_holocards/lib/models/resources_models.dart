import 'package:flutter/material.dart';

class ResourcesModel {
  String name;
  String iconPath;
  Color boxColor;

  ResourcesModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<ResourcesModel> getResources() {
    List<ResourcesModel> resources = [];

    resources.add(
      ResourcesModel(
        name: 'Cards',
        iconPath: 'assets/icons/Cardback.svg',
        boxColor: Color.fromARGB(255, 245, 220, 140),
      ),
    );

    resources.add(
      ResourcesModel(
        name: "STL's",
        iconPath: 'assets/icons/3DHoloBox.svg',
        boxColor: Color.fromARGB(255, 245, 220, 140),
      ),
    );

    return resources;
  }
}

