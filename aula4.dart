import 'dart:io';

main() {
  for (int i = 0; i < 4; i++) {
    print("digite o primeiro valor: ");
    String input = stdin.readLineSync() ?? '0';
    double primeiro_valor = double.parse(input);

    print("digite o segundo valor: ");
    String inputHours = stdin.readLineSync() ?? '0';
    double segundo_valor = double.parse(inputHours);

    if (primeiro_valor > segundo_valor) {
      print("o valor $primeiro_valor é o maior");
    } else if (segundo_valor > primeiro_valor) {
      print("segundo valor $segundo_valor é o maior");
    } else if (primeiro_valor == segundo_valor) {
      print("valores iguais");
    } else if (primeiro_valor == 0 && segundo_valor == 0) {
      break;
    }
  }
}