import 'dart:convert';
void main(){
  List idades = [4,3,5,1,2];
  double total=0;
  for(final item in idades){
    total += item;
    print("total da soma de idades é $total");
  }
}