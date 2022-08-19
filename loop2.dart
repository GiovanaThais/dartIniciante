import 'dart:io';

main(){

  bool condition = true;
  
  while(condition){
    print("Escreva um texto: ");
    String text = stdin.readLineSync() ?? '0';
    if(text == "sair"){
      condition = false;
      print("programa finalizado");
      break;
    } else{
      print("vc digitou $text");
    }
  }

}