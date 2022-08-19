main(){
  print("olá");
  //looping com for
  for (int i=0; i<10; i++){
    print("rodou $i");
  }
  bool condition = true;
  int i = 0;
  //looping com while
  while(condition){
    print("rodou $i");
    if(i > 9){
      condition = false;
    }
    i++;
  }
}