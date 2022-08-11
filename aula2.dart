import 'dart:io';

main(){
    print("digite o salario mensal: ");
    String input = stdin.readLineSync() ?? '0';
    double salarioMensal = double.parse(input);
  
    print("digite as horas trabalhadas por mes: ");
    String inputHours = stdin.readLineSync()  ?? '0';
    double horasTrabalhadas = double.parse(inputHours);
  
    double valorHora = salarioMensal/horasTrabalhadas;
    print("valor hora: $valorHora");
}