import 'dart:io';
import 'package:iptv/config/config.dart';
import 'package:m3u_nullsafe/m3u_nullsafe.dart';
import 'package:mobx/mobx.dart';
part 'TvController.g.dart';

class TvController = TvControllerbase with _$TvController;

abstract class TvControllerbase with Store {
  Set ListaDeCanal = {};

  TvControllerbase() {
    getListaDeCanal();
  }

  getListaDeCanal() async {
    final arquivo = await File("assets/m3u.m3u").readAsString();
    final conteuDoArquivo = await parseFile(arquivo);

    conteuDoArquivo.map((e) {
      //String valor = e.toString().replaceAll(" ", "");
      //valor = valor.toString().replaceAll("\"", "'");

      String valor = e.toString().substring(e.toString().indexOf('tvg-id='), e.toString().length);
      String valor2 = valor.substring(valor.toString().indexOf('group-title='), valor.length);
      List lista2 = valor2.split(',');

      String map = '${valor.substring(0, valor.indexOf(lista2[0]))}${lista2[0]}';

      String part0 = e.toString().substring(0, e.toString().indexOf('tvg-id='));

      printW("${part0}  ${map} ${lista2[1]}");

      printO(e);
    }).toList();
    /*
    Title:  Link:#EXTINF:-1 tvg-id="" tvg-name="24H BREAKING BAD" tvg-logo="http://www.rochagalaxia.live/logos/breakingbad250.png" group-title="CANAIS: 24 HORAS",24H BREAKING BAD hasAttributes:false
    Title:  Link:#EXTINF:-1 tvg-id="" tvg-name="Red Rose S01 Red Rose S01E07" tvg-logo="https://image.tmdb.org/t/p/w600_and_h900_bestv2/jS8mOKloyEzqQKrne0w4Upu1pnv.jpg" group-title="Séries | Netflix",Red Rose S01 Red Rose S01E07 hasAttributes:false
    */
  }
}
