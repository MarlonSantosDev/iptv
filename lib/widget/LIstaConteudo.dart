import 'package:flutter/material.dart';

class ListaConteudo extends StatelessWidget {
  ListaConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  "GFG",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("List item $index"),
              );
            },
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            width: 10,
            color: Colors.amber,
            child: const Text("TV"),
          ),
        ),
      ],
    );
  }
}
