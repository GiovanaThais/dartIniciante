void main() {
  //variaveis
  int velocidade = 10;
  print(velocidade);
  double nota = 1.6;
  print(nota);
  bool esta_aberto = false;
  String nome_curso = ("logica de programação");
  
  
  
  
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }
//programa que retorna o valor hora de um funcionario 
    //com base no salario mensal e horas trabalhadas
    double salarioMensal = 2000; 
    double horasTrabalhadas = 52;
    double valorHora = salarioMensal/horasTrabalhadas;
    print("valor hora: $valorHora");
 
print("hello world");
  
//condicionais 
  bool trabalho_terminado = false;
  if(trabalho_terminado == true){
    print("bora dar uma saida!");
  }
  else if(trabalho_terminado == false){
    print("ainda estou no trabalho!");
  }

//introdução IF
  var prova1 = 9;
  var prova2 = 8;
  var media = (prova1+prova2)/2;
  print(media);
  if(media>=7){
    print("aprovado, com média de $media");
  }
  else{
    print("reprovado");
  }
  print(prova1 == prova2);
  if(prova1==10 || prova2==10){
    print("parabens pelo 10");
  }
  //IF ternario
  var resultado = (prova1 >=7) ? "aluno passou" : "o aluno reprovou";
  print(resultado);
}
