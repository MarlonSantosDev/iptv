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
    final fileContent = await File("assets/m3u.m3u").readAsString();
    final listOfTracks = await parseFile(fileContent);
    printW(listOfTracks.runtimeType);

    // Organized categories
    final categories = sortedCategories(entries: listOfTracks, attributeName: 'Séries | Netflix');
    printE(categories.runtimeType);
  }
}
