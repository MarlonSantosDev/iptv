import 'package:flutter/material.dart';

class ListaConteudo extends StatelessWidget {
  ListaConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 20,
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
          child: GridView.builder(
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (BuildContext context, int index) {
              return card(index);
            },
          ),
        ),
      ],
    );
  }

  Widget card(index) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(8),
      color: Colors.amberAccent,
      child: Text("NOME $index"),
    );
  }
}
