import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/operar");
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: Center(
          child: Column(children: [
            Image.network(
                "https://cdn-icons-png.flaticon.com/512/4341/4341087.png"),
            Text(
              "Vamos fazer algumas contas?",
              style: TextStyle(color: Colors.deepPurple, fontSize: 20),
            ),
          ]),
        ));
  }
}
