main(){
  
  Map<String, dynamic> maps = {
    "nome": "Ana",
    "idade": 39,
    "cidade": "Aracaju",
    "estado": "Sergipe",
  };
  print(maps["nome"]);
  maps["nome"] = "Maria"; //renomeando
}