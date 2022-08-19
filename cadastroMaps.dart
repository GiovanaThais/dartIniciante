import "dart:io";

List<Map<String,dynamic>> cadastros = [];

main(){
  
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");
  while (condicao) {
    print("==== DIGITE UM COMANDO");
    String comando = stdin.readLineSync()??"0";
    if(comando == "sair"){
      print("=== PROGRAMA FINALIZADO");
      condicao = false;
    } else if(comando == "cadastro"){
      print("\x1B[2J\x1B[0;0H");
      cadastrar();
    } else if(comando == "imprimir"){
      print(cadastros);
    } else {
      print("=== ESSE COMANDO NÃO EXISTE");
    } 
  }

}

cadastrar(){
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