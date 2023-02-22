// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:iptv/tv/Controller/TvController.dart';
import 'package:iptv/widget/LIstaConteudo.dart';

class TVPage extends StatefulWidget {
  const TVPage({super.key});

  @override
  State<TVPage> createState() => _TVPageState();
}

class _TVPageState extends State<TVPage> {
  TvController tvcontroller = new TvController();

  @override
  initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tvcontroller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 31, 48),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 31, 48),
        title: const Text("TV"),
        actions: [
          const Icon(
            Icons.search,
            size: 30.0,
          ),
          const Icon(
            Icons.filter_alt_outlined,
            size: 30.0,
          ),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
      body: ListaConteudo(),
    );
  }
}
