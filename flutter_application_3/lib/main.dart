// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/my_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
            child: Column(
          children: [
            //Text("Casa amarela",style: TextStyle(fontSize: 30),),
            MyWidget("casa amarela", Colors.amber, 30),
            SizedBox(
              height: 50,
            ),
            //Text("Casa azul",style: TextStyle(fontSize: 50),)
            MyWidget("casa azul", Colors.blue, 20),
            SizedBox(
              height: 50,
            ),
            Image.network(
                "https://quizlandia.club/wp-content/uploads/2013/10/sonhar-com-casa-amarela.jpg",
                width: 300),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Eu",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(width: 20),
                Text(
                  "amo",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(width: 20),
                Text(
                  "a casa amarela",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
