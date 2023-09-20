import 'dart:io';

abstract class Cofre {
  final String tipo;
  final String metodoAbertura;

  Cofre(this.tipo, this.metodoAbertura);

  void imprimirInformacoes() {
    print('Tipo: $tipo');
    print('Metodo de abertura: $metodoAbertura');
  }
}

class CofreDigital extends Cofre {
  final int senha;

  CofreDigital(this.senha) : super('Cofre Digital', 'Senha');

  bool validarSenha(int confirmacaoSenha) {
    return confirmacaoSenha == senha;
  }
}

class CofreFisico extends Cofre {
  CofreFisico() : super('Cofre Fisico', 'Chave');
}

void main() {
  final tipoCofre = stdin.readLineSync();

  if (tipoCofre?.toLowerCase() == 'digital') {
    final senha = int.tryParse(stdin.readLineSync() ?? '');
    final confirmacaoSenha = int.tryParse(stdin.readLineSync() ?? '');

    if (senha != null && confirmacaoSenha != null) {
      final cofre = CofreDigital(senha);

      if (cofre.validarSenha(confirmacaoSenha)) {
        cofre.imprimirInformacoes();
        print('Cofre aberto!');
      } else {
        cofre.imprimirInformacoes();
        print('Senha incorreta!');
      }
    } else {
      print('Senha inválida.');
    }
  } else if (tipoCofre?.toLowerCase() == 'fisico') {
    final cofre = CofreFisico();
    cofre.imprimirInformacoes();
  }
}
