import 'package:flutter/material.dart';

class ListaConteudo extends StatelessWidget {
  final controller;
  ListaConteudo({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: controller.tvModel.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                contentPadding: EdgeInsets.all(8),
                leading: Container(
                  width: 50,
                  child: Image.network(controller.tvModel[index].tvg_logo),
                ),
                trailing: const Text(
                  "2",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${controller.tvModel[index].group_title}",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      "${controller.tvModel[index].tvg_name}",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
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
