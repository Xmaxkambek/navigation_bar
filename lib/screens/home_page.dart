import 'package:flutter/material.dart';
import 'package:navigation_bar/food.dart';
import 'package:navigation_bar/widget/food_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Food> food = [
    Food(name: 'Burger', img: 'burger.jpg',),
    Food(name: 'Chicken', img: 'chicken.jpg',),
    Food(name: 'Lagmon', img: 'Lagmon.jpg',),
    Food(name: 'Pizza', img: 'pizza.jpg', ),
    Food(name: 'Somsa', img: 'somsa.jpg',),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.separated(
            itemCount: food.length,
            itemBuilder: (context, index) {
    
              return FoodWidget(food: food[index]);
            },
            separatorBuilder: ((context, index) => Divider())),
      ),
    );
  }
}
