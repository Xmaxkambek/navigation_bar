import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class number extends StatefulWidget {
  const number({super.key});

  @override
  State<number> createState() => _numberState();
}

class _numberState extends State<number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('create'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Number',
                  border: OutlineInputBorder(borderSide: BorderSide())),
            ),
          ),
          // Padding(padding: EdgeInsets.all(15),
          // child: TextField(
          //   decoration: InputDecoration(
          //     filled: true,
          //     hintText: 'SurName'
          //   ),
          // ),
          // ),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(filled: true, hintText: 'Name'),
            ),
          )
        ],
      ),
    );
  }
}
