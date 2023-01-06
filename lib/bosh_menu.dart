import 'package:flutter/material.dart';

class meal extends StatefulWidget {
  const meal({Key? key}) : super(key: key);

  @override
  State<meal> createState() => _mealState();
}

class _mealState extends State<meal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 62, 199, 119),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('img/burger.jpg'),
              radius: 80,
            ),
            Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Food Ordering App',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Colors.white),
                    )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  height: 40,
                  width: 230,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'main');
                      },
                      child: Text('Get a meal',
                          style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w600))),
                )
              ],
            )
          ],
        ));
  }
}
