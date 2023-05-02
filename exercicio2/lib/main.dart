// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'topico.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 244, 235, 114),
          child: (SizedBox(
            height: 20,
            child: Align(
              child: Text(
                "ArtSearch",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 245, 87, 208)),
                textAlign: TextAlign.center,
              ),
            ),
          )),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 245, 87, 208),
          title: Text("ArtSearch"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            SizedBox(
              child: Image.network(
                  "https://thumbs.dreamstime.com/b/%C3%ADcone-preto-da-lupa-projeto-ilustra%C3%A7%C3%A3o-do-vetor-116924241.jpg"),
              height: 300,
              width: 300,
            ),
            SizedBox(height: 10),
            Text("Bem vindo ao nosso app!",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Aqui você encontrará:",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 15)),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(children: [
                topico("Material Escolar"),
                topico("Material de Papelaria"),
                topico("Bolsas e mochilas"),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
