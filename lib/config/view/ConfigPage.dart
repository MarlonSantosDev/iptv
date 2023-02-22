import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 31, 48),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 31, 48),
        title: Text("Configuração"),
      ),
      body: Center(
        child: Text("Configuração ..."),
      ),
    );
  }
}
