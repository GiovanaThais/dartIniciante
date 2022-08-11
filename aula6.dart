import 'dart:io';
void main(){
  print("digite um numero para ver o fatorial: ");
  String input = stdin.readLineSync() ?? '0';
  int numero = int.parse(input);

  if(numero >0){
    int fatorial = 1;
    for(int i=1; i< numero; i+1){
      fatorial *= numero;
    print(fatorial);
    }
  }
}