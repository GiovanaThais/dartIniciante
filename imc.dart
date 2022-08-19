import 'dart:io';

void main(){
  calculoImc();
}
  
calculoImc(){
  //programa calcula IMC
  print("Digite o peso: ");
  String inputWeight = stdin.readLineSync() ?? '0';
  int peso = int.parse(inputWeight);

  print('digite sua altura: ');
  String inputHeight = stdin.readLineSync() ?? '0';
  double altura= double.parse(inputHeight);

  double imc = calcImcExpr(peso, altura);

  //print(imc);

  imprimirResult(imc);
  
}
double calcImcExpr(int peso, double altura){
  return peso / (altura*altura);
}

imprimirResult(double imc){
  if(imc < 18.5){
    print("abaixo do peso ideal");
  } else if(imc >18.5 && imc > 24.9 ){
    print("peso normal");
  } else if(imc >25 && imc > 29.9 ){
    print("sobrepeso");
  } else if(imc > 30){
    print("obesidade");
  }
}
