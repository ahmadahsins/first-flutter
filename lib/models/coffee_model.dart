import 'package:flutter/material.dart';

class CoffeeModel {
  String name;
  String description;
  String imgPath;
  Color boxColor;

  CoffeeModel({
    required this.name,
    required this.description,
    required this.imgPath,
    required this.boxColor,
  });

  static List<CoffeeModel> getCoffees() {
    List<CoffeeModel> coffees = [];

    coffees.add(
      CoffeeModel(
        name: "Americano",
        description: "lorem ipsum sit dolor amet",
        imgPath: "assets/img/sugar_cube.png",
        boxColor: Color(0xff8349),
      ),
    );

    coffees.add(
      CoffeeModel(
        name: "Cappucino",
        description: "lorem ipsum sit dolor amet",
        imgPath: "assets/img/sugar_cube.png",
        boxColor: Color(0xf23982),
      ),
    );

    coffees.add(
      CoffeeModel(
        name: "Matcha",
        description: "lorem ipsum sit dolor amet",
        imgPath: "assets/img/sugar_cube.png",
        boxColor: Color.fromARGB(0, 35, 165, 41),
      ),
    );

    return coffees;
  }
}
