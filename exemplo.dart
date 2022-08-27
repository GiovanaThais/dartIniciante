import "dart:io";

List<Map<String, dynamic>> cadastros = [];

main() {
  bool condition = true;
  while (condition) {
    print("\x1B[2J\x1B[0;0H");
    print("==== DIGITE UM COMANDO(0 -sair ,1- cadastrar, 2 - ver)=======");
    String input = stdin.readLineSync() ?? '0';
    int comando = int.parse(input);
    switch (comando) {
      case 0:
        print("=== PROGRAMA FINALIZADO=====");
        condition = false;
        break;
      case 1:
        print("\x1B[2J\x1B[0;0H");
        return cadastrar();
      case 2:
        return print(cadastros);
      default:
        print("=== ESSE COMANDO NÃO EXISTE");
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};

  print("=== Digite o seu Nome");
  cadastro["nome"] = stdin.readLineSync();

  print("=== Digite o sua idade");
  cadastro["idade"] = stdin.readLineSync();

  print("=== Digite o sua cidade");
  cadastro["cidade"] = stdin.readLineSync();

  print("=== Digite o sua estado");
  cadastro["estado"] = stdin.readLineSync();
  cadastros.add(cadastro);
}

int calculate() {
  return 6 * 7;
}
