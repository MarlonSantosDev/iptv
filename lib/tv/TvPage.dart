// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:iptv/widget/LIstaConteudo.dart';

class TVPage extends StatefulWidget {
  const TVPage({super.key});

  @override
  State<TVPage> createState() => _TVPageState();
}

class _TVPageState extends State<TVPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 31, 48),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 31, 48),
        title: const Text("TV"),
      ),
      body: ListaConteudo(),
    );
  }
}
