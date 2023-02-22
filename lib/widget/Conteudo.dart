import 'package:flutter/material.dart';

class Conteudo extends StatelessWidget {
  const Conteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 31, 48),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 31, 48),
        title: const Text("TV - NOME DO TITULO"),
      ),
      body: Row(
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
      ),
    );
  }
}
