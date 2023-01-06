import 'package:flutter/material.dart';
import 'package:navigation_bar/screens/create.dart';
import 'package:navigation_bar/shaxs.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _SchoolPageState();
}

class _SchoolPageState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    ListTile(
        title: TextButton(
      onPressed: () {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => number(),
              ));
        });
      },
      child: Text('Add an account'),
    ));
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              ListTile(
                title: IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => number(),
                            ));
                      });
                    },
                    icon: Icon(Icons.person_add_alt)),
              ),
              ListTile(
                  title: TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => number(),
                        ));
                  });
                },
                child: Text('Add an account'),
              )),
              ListTile(
                leading: Icon(Icons.https),
                title: Text('Security'),
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('Manual'),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help'),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
