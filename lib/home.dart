import 'package:flutter/material.dart';
import 'package:test_project/coffee_card.dart';
import 'package:test_project/coffee_prefs.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zora Coffee", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.brown[100],
            child: const Text("Good Morning, User!"),
          ),
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: CoffeePrefs(),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: CoffeeCard(),
          ),
        ],
      ),
    );
  }
}
