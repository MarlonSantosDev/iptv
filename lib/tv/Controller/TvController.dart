import 'dart:convert';
import 'dart:io';
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
    await getListaDeCanal();
    load = false;
  }

  getListaDeCanal() async {
    final arquivo = await File("assets/m3u.m3u").readAsString();
    final conteuDoArquivo = await parseFile(arquivo);
    List dados = [];

    conteuDoArquivo.map((e) {
      String valor = e.toString().substring(e.toString().indexOf('tvg-id='), e.toString().length);
      String valor2 = valor.substring(valor.toString().indexOf('group-title='), valor.length);
      List lista2 = valor2.split(',');
      String completo = '{"${valor.substring(0, valor.indexOf(lista2[0]))}${lista2[0]}}';
      completo = completo.replaceAll('=', ':');
      completo = completo.replaceAll(':"', '":"');
      completo = completo.replaceAll('" ', '", "');
      dados.add(completo);
    }).toList();
    List rest = jsonDecode(dados.toString());
    rest.map((value) {
      if (value["group-title"].contains('CANAI')) tvModel.add(TvModel.fromJson(value));
    }).toList();
  }
}
