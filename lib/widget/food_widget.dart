import 'package:flutter/material.dart';
import 'package:navigation_bar/food.dart';

class FoodWidget extends StatelessWidget {
  final Food food;
  const FoodWidget({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('img/${food.img}'),
      ),
      title: Text(food.name.toString()),
      trailing: IconButton(
          onPressed: (() {
            Navigator.pushNamed(context, 'home');
          }),
          icon: Icon(Icons.arrow_forward_ios_sharp)),
      subtitle: Text("⏱ 5 min ⚪️ coin  ♨️kcal"),
    );
  }
}