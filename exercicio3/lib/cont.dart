// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';


class contador extends StatefulWidget {
  const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network("https://cdn-icons-png.flaticon.com/512/4341/4341087.png")
            Text("Contador usando Stateful Widget"),
            FloatingActionButton(onPressed: onPressed),
          ],
        ),
      ),
    );
  }
}
