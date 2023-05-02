import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class topico extends StatelessWidget {
  const topico(this.texto, {super.key});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeHrNMVHI8SKCYakkjcSnOYo-AlK9EVSwuq5YM_QyHGgi91cG0rafdQJ-dJfq21foWwtc&usqp=CAU"),
        ),
        Text(texto)
      ],
    );
  }
}
