// ignore_for_file: prefer_const_constructors

/*import 'dart:html';*/

import 'package:flutter/material.dart';

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
          appBar: AppBar(
            title: Text("Meu Nenis"),
            backgroundColor: Colors.pink,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.lightBlue),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Kikito",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
                SizedBox(
                    height: 180,
                    child: Image.network(
                        'https://www.florence.edu.br/wp-content/uploads/2022/08/Imagem-Materia_Dia-do-Cachorro.png')),
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.grey),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text("Yuki", style: TextStyle(fontSize: 50)),
                  ),
                ),
                SizedBox(height: 30),
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.brown),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text("Hydra", style: TextStyle(fontSize: 50)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
