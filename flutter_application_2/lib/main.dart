import 'package:flutter/material.dart';

import 'my_dog.dart';

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
          primarySwatch: Colors.indigo,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Projetinho!"),
              backgroundColor: Colors.indigo[700],
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyDog("Olha o", Colors.red, 50),
                  SizedBox(height: 30),
                  DecoratedBox(
                      decoration: BoxDecoration(color: Colors.green),
                      child: Text("  Passarinho  ",
                          style: TextStyle(fontSize: 30))),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(color: Colors.red[800]),
                        child: Text("bonito", style: TextStyle(fontSize: 30)),
                      ),
                      SizedBox(width: 10),
                      DecoratedBox(
                        decoration: BoxDecoration(color: Colors.red[800]),
                        child: Text("=)", style: TextStyle(fontSize: 30)),
                      ),
                      SizedBox(width: 10),
                      DecoratedBox(
                        decoration: BoxDecoration(color: Colors.red[800]),
                        child:
                            Text("bonitinho", style: TextStyle(fontSize: 30)),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 250,
                    width: 250,
                    child: Image.network(
                        "https://cdn.pixabay.com/photo/2023/04/05/21/09/bird-7902319_960_720.jpg"),
                  ),
                ],
              ),
            )));
  }
}
