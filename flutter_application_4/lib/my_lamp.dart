// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyLamp extends StatefulWidget {
  const MyLamp({super.key});

  @override
  State<MyLamp> createState() => _MyLampState();
}

class _MyLampState extends State<MyLamp> {
  String linkImagem = 'https://i.stack.imgur.com/b983w.jpg';
  String mensagem = 'Desligado';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(linkImagem),
            Text(mensagem),
            ElevatedButton(
              onPressed: () {
                mudaEstado();
                setState(() {});
              },
              child: Text("Mudar estado"),
            )
          ],
        ),
      ),
    );
  }

  // ignore: dead_code
  void mudaEstado() {
    if (mensagem == "Desligado") {
      mensagem = "Ligado";
      linkImagem = 'https://i.stack.imgur.com/ybxlO.jpg';
    } else {
      mensagem = "Desligado";
      linkImagem = 'https://i.stack.imgur.com/b983w.jpg';
    }
  }
}
