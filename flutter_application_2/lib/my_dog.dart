import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyDog extends StatelessWidget {
  const MyDog(this.nome, this.cor, this.tamanhoTexto, {super.key});

  //atributos
  final String nome;
  final Color cor;
  final double tamanhoTexto;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(color: cor),
        child: Text(nome, style: TextStyle(fontSize: tamanhoTexto)));
  }
}
