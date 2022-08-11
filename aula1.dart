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
}