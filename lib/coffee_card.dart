import 'package:flutter/material.dart';
import 'package:test_project/models/coffee_model.dart';

class CoffeeCard extends StatelessWidget {
  CoffeeCard({super.key});

  List<CoffeeModel> coffess = [];

  void _getCoffee() {
    coffess = CoffeeModel.getCoffees();
  }

  @override
  Widget build(BuildContext context) {
    _getCoffee();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Our Top Menus", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 15),
        Container(
          height: 200,
          child: ListView.separated(
            itemCount: coffess.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 10);
            },
            itemBuilder: (context, index) {
              return Container(
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        coffess[index].name,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            coffess[index].imgPath,
                            colorBlendMode: BlendMode.multiply,
                            color: Colors.grey[200],
                          ),
                        ),
                      ),
                      Text(
                        coffess[index].description,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
