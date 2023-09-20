import 'dart:io';

class Bancaria {
  int numeroConta;
  String nomeTitular;
  double saldo;

  Bancaria(this.numeroConta, this.nomeTitular, this.saldo);

  void exibirInformacoes() {
    print(nomeTitular);
    print(numeroConta);
    print("Saldo: R\$ ${saldo.toStringAsFixed(1)}");
  }
}

class ContaPoupanca extends Bancaria {
  double taxaJuros;

  ContaPoupanca(
      int numeroConta, String nomeTitular, double saldo, this.taxaJuros)
      : super(numeroConta, nomeTitular, saldo);

  ContaPoupanca.fromInput(
      String nomeTitular, int numeroConta, double saldo, double taxaJuros)
      : this(numeroConta, nomeTitular, saldo, taxaJuros);

  @override
  void exibirInformacoes() {
    super.exibirInformacoes();
    String formattedTaxaJuros = taxaJuros % 1 == 0 ? '${taxaJuros.toInt()}.0' : taxaJuros.toString();
    print("Taxa de Juros: $formattedTaxaJuros%");
  }
}

void main() {
  String? nomeTitular = stdin.readLineSync();
  int? numeroConta = int.tryParse(stdin.readLineSync() ?? "");
  double? saldo = double.tryParse(stdin.readLineSync() ?? "");
  double? taxaJuros = double.tryParse(stdin.readLineSync() ?? "");

  if (nomeTitular == null ||
      numeroConta == null ||
      saldo == null ||
      taxaJuros == null) {
    print("Entrada inválida.");
    return;
  }

  var contaPoupanca =
      ContaPoupanca.fromInput(nomeTitular, numeroConta, saldo, taxaJuros);

  print("Conta Poupanca:");
  contaPoupanca.exibirInformacoes();
}
