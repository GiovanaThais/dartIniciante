import 'dart:io';

void main() {
  final scanner = stdin;

  final entrada = scanner.readLineSync()!;
  final partes = entrada.split(',');

  final data = partes[0];
  final hora = partes[1];
  final descricao = partes[2];
  final valor = double.tryParse(partes[3]) ?? 0.0;

  final transacao = Transacao(data, hora, descricao, valor);
  transacao.imprimir();
  // TODO: Solicitar ao usuário que forneça os valores necessários para criar uma Transacao.
}

class Transacao {
  final String data;
  final String hora;
  final String descricao;
  final double valor;

  Transacao(this.data, this.hora, this.descricao, this.valor);

  void imprimir() {
    print(descricao);
    print(data);
    print(hora);
    print(valor.toStringAsFixed(2));
  }
}
