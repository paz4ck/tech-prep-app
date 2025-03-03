import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: 'Cerberus',
        iconPath: 'assets/icons/cerberus.svg',
        boxColor: Color.fromARGB(255, 245, 220, 140),
      ),
    );

    categories.add(
      CategoryModel(
        name: "Medusa",
        iconPath: 'assets/icons/gorgon.svg',
        boxColor: Color.fromARGB(255, 245, 220, 140),
      ),
    );

    categories.add(
      CategoryModel(
        name: "Satyr",
        iconPath: 'assets/icons/satyr.svg',
        boxColor: Color.fromARGB(255, 245, 220, 140),
      ),
    );

    return categories;
  }
}

