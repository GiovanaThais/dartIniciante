import 'dart:io';

class Bancaria {
  int numeroConta;
  String nomeTitular;
  double saldo;

  Bancaria(this.numeroConta, this.nomeTitular, this.saldo);

  int getNumeroConta() {
    return numeroConta;
  }

  String getNomeTitular() {
    return nomeTitular;
  }

  double getSaldo() {
    return saldo;
  }
}

void main() {
  print('Digite o número da conta:');
  int numeroConta = int.parse(stdin.readLineSync()!);

  print('Digite o nome do titular:');
  String nomeTitular = stdin.readLineSync()!;

  print('Digite o saldo inicial:');
  double saldo = double.parse(stdin.readLineSync()!);

  // Criar uma instância de "ContaBancaria" com os valores de entrada.
  Bancaria conta = Bancaria(numeroConta, nomeTitular, saldo);

  print("Informacoes:");
  // Imprimir as informações da conta usando o objeto criado acima.
  print('Número da Conta: ${conta.getNumeroConta()}');
  print('Nome do Titular: ${conta.getNomeTitular()}');
  print('Saldo Atual: R\$ ${conta.getSaldo()}');
}
