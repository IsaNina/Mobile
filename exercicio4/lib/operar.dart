import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyOperar extends StatefulWidget {
  const MyOperar({super.key});

  @override
  State<MyOperar> createState() => _MyOperarState();
}

class _MyOperarState extends State<MyOperar> {
  double resultado = 0;
  double valor1 = 0;
  TextEditingController campo1 = TextEditingController();
  double valor2 = 0;
  TextEditingController campo2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operações"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(5.0),
          ),
          TextField(
            controller: campo1,
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 13.0,
            ),
            decoration: InputDecoration(
                labelText: "Valor 1:",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.00)),
                filled: true,
                fillColor: Colors.black26),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          TextField(
            controller: campo2,
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 13.0,
            ),
            decoration: InputDecoration(
                labelText: "Valor 2:",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.00)),
                filled: true,
                fillColor: Colors.black26),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.all(3.0),
            ),
            ElevatedButton(
                onPressed: () {
                  valor1 = double.parse(campo1.text);
                  valor2 = double.parse(campo2.text);
                  resultado = valor1 + valor2;
                  setState(() {});
                },
                child: Text("+")),
            Padding(
              padding: EdgeInsets.all(3.0),
            ),
            ElevatedButton(
                onPressed: () {
                  valor1 = double.parse(campo1.text);
                  valor2 = double.parse(campo2.text);
                  resultado = valor1 - valor2;
                  setState(() {});
                },
                child: Text("-")),
            Padding(
              padding: EdgeInsets.all(3.0),
            ),
            ElevatedButton(
                onPressed: () {
                  valor1 = double.parse(campo1.text);
                  valor2 = double.parse(campo2.text);
                  resultado = valor1 * valor2;
                  setState(() {});
                },
                child: Text("*")),
            Padding(
              padding: EdgeInsets.all(3.0),
            ),
            ElevatedButton(
                onPressed: () {
                  valor1 = double.parse(campo1.text);
                  valor2 = double.parse(campo2.text);
                  resultado = valor1 / valor2;
                  setState(() {});
                },
                child: Text("/")),
            Padding(
              padding: EdgeInsets.all(3.0),
            ),
            ElevatedButton(
                onPressed: () {
                  campo1.clear();
                  campo2.clear();
                  resultado = 0;
                  setState(() {});
                },
                child: Text("CE")),
            Padding(
              padding: EdgeInsets.all(3.0),
            ),
          ]),
          Padding(
            padding: EdgeInsets.all(5.0),
          ),
          Text("Resultado: $resultado "),
        ]),
      ),
    );
  }
}
