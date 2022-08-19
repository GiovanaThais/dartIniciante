import 'dart:io';

List<Map<String, dynamic>> cadastros = [];
Map<String, dynamic> cadastro = {};

main(){
  print("digite seu nome: ");
  String nome = stdin.readLineSync() ?? '0';
  cadastro["nome"] = nome;

  print("digite sua idade: ");
  String idade = stdin.readLineSync() ?? '0';
  cadastro["idade"] = idade;

  print("digite sua cidade: ");
  String cidade = stdin.readLineSync() ?? '0';
  cadastro["cidade"] = cidade;

  print("digite seu estado: ");
  String estado = stdin.readLineSync() ?? '0';
  cadastro["estado"] = estado;

  print(cadastros);
}