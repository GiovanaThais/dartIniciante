import 'dart:io';

main(){
  List nomes = [];
  bool condition = true;

  while(condition){
    print("digite um nome(ou sair para fechar): ");
    String inputName = stdin.readLineSync() ?? '0';
    if (inputName == 'sair'){
      condition = false;
    } else {
      nomes.add(inputName);
    }
    print(nomes);
    print('\n');
  }
  nomes.add("maria");
  nomes.remove("maria");
  nomes.removeAt(1);

  print(nomes);
}