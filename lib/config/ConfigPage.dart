class Settings {
  static String VERSAO_API_APP = '1.0.0';

  //CONFIGURAÇÕES
  String SERVER_IP = '';
}

void printW(text) {
  print('\x1B[33m$text\x1B[0m');
}

void printE(text) {
  print('\x1B[31m$text\x1B[0m');
}

void printO(text) {
  print('\x1b[32m$text\x1B[0m');
}
