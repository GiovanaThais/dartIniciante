import 'dart:io';

void main() {
  //Entrada dos tipos de ativos
  var quantidadeAtivos = int.parse(stdin.readLineSync()!);

  List<String> ativos = [];

  // Entrada dos códigos dos ativos
  for (var i = 0; i < quantidadeAtivos; i++) {
    var codigoAtivo = stdin.readLineSync()!;
    ativos.add(codigoAtivo);
  }

  //TODO: Ordenar os ativos em ordem alfabética.
  ativos.sort();
  //TODO: Imprimir a lista de ativos ordenada, conforme a tabela de exemplos.
  for (var ativo in ativos) {
    print(ativo);
  }
}
/*
Descrição
Após uma análise cuidadosa realizada pela equipe de desenvolvimento de uma empresa bancaria, foi identificado a necessidade de uma nova funcionalidade para otimizar os processos e melhorias da experiência dos usuários. Agora, sua tarefa é implementar uma solução que organize em ordem alfabética uma lista de ativos que será informada pelos usuários. Os ativos são representados por strings que representam seus tipos, como por exemplo: Reservas de liquidez, Ativos intangiveis e dentre outros.

Entrada
A primeira entrada consiste em um número inteiro que representa a  quantidade de ativos que o usuário possui. Em seguida, o usuário deverá  informar, em linhas separadas, os tipos (strings) dos respectivos ativos.

Saída
Seu programa deve exibir a lista de Ativos organizada em ordem alfabética. Cada ativo deve ser apresentado em uma linha separada.
*/