import 'package:flutter/material.dart';

class Conteudo extends StatelessWidget {
  const Conteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Text("List item $index");
            },
          ),
        ),
        Expanded(
          child: Container(
            width: 10,
            height: 10,
            color: Colors.red,
          ),
        )
      ],
    );
  }

  Widget card() {
    return Container(
      color: Colors.amberAccent,
      height: 20,
      width: 10,
      child: const Text("NOME"),
    );
  }
}
