import 'dart:io';

//variavel global
List <String> produtos = [];

main(){
  
  bool condition = true;

  while (condition){
    print("Adicione um produto ou sair para finalizar o programa ou ver para visualizar ou remover : ");
    String text = stdin.readLineSync() ?? '0';
    if(text == "sair"){
      print("saindo do programa");
      condition = false;
    } else if(text == "ver"){
      print(produtos);
      imprimir(produtos);
    } else if(text == "remover"){
      remover(produtos);
    }
    else{
      produtos.add(text);
    }
  }
}
  //modularizando projeto
imprimir(produtos){
  for(var i = 0; i < produtos.length; i++){
      print("ITEM $i - ${produtos[i]}");
    }
}
remover(produtos){
  print("digite qual item a remover por numero: ");
  imprimir(produtos);
  int item = int.parse(stdin.readLineSync() ?? "0");
  produtos.removeAt(item);
  print("item removido");
}
