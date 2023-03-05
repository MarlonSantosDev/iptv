import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:iptv/config/config.dart';
import 'package:iptv/tv/Model/TvModel.dart';
import 'package:m3u_nullsafe/m3u_nullsafe.dart';
import 'package:mobx/mobx.dart';
part 'TvController.g.dart';

class TvController = TvControllerbase with _$TvController;

abstract class TvControllerbase with Store {
  List<TvModel> tvModel = [];

  @observable
  bool load = true;

  TvControllerbase() {
    getDados();
  }

  getDados() async {
    getListaDeCanal();
    //load = false;
  }

  Future<String> lerAquivo() async {
    return await rootBundle.loadString('assets/m3u.m3u');
  }

  getListaDeCanal() async {
    String conteuDoArquivo = await lerAquivo();
    //List listaConteudo = jsonDecode(conteuDoArquivo);
    printO(conteuDoArquivo);

    [1].map((e) {
      printW(e);
      /*
      String valor = e.toString().substring(e.toString().indexOf('tvg-id='), e.toString().length);
      String valor2 = valor.substring(valor.toString().indexOf('group-title='), valor.length);
      List lista2 = valor2.split(',');
      String completo = '{"${valor.substring(0, valor.indexOf(lista2[0]))}${lista2[0]}}';
      completo = completo.replaceAll('=', ':');
      completo = completo.replaceAll(':"', '":"');
      completo = completo.replaceAll('" ', '", "');
      dados.add(completo);
      */
    }).toList();
    /*
    List rest = jsonDecode(dados.toString());
    rest.map((value) {
      if (value["group-title"].contains('CANAI')) tvModel.add(TvModel.fromJson(value));
    }).toList();
    */
  }
}
