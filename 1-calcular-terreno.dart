import 'dart:io';

void main() {
  print("\x1B[2J\x1B[0;0H");

  num largura = pegarLargura();
  print("\x1B[2J\x1B[0;0H");

  num comprimento = pegarComprimento();
  print("\x1B[2J\x1B[0;0H");

  num resultado = largura * comprimento;

  print('Área total do terreno = $resultado' 'm');
  print('Fim do programa');
}

num pegarLargura() {
  print('Digite a largura do terreno');
  String? larguraString = stdin.readLineSync();
  if (larguraString == null) {
    return 0.0;
  } else {
    return num.parse(larguraString);
  }
}

num pegarComprimento() {
  print('Digite o comprimento do terreno');
  String? comprimentoString = stdin.readLineSync();
  if (comprimentoString == null) {
    return 0.0;
  } else {
    return num.parse(comprimentoString);
  }
}