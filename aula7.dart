import 'dart:io';
void main(){
  print("digite a velocidade: ");
  String input = stdin.readLineSync() ?? '0';
  double velocidade = double.parse(input);

  double velocidade_maxima = 80;
  if(velocidade <= velocidade_maxima){
    print('não leva multa');
  }
  else if(velocidade > velocidade_maxima && velocidade <= velocidade_maxima){
    print("levou multa leve");
  }
  else if(velocidade > velocidade_maxima+11 && velocidade <= velocidade_maxima+20){
    print("levou multa grave");
  }
  else if(velocidade > velocidade_maxima+20){
    print("levou multa gravissima");
  }
}