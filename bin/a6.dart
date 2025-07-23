import 'dart:io';

void main(){
  int num =1;
  for (int i = 4 ; i>=1 ; i--){
    for (int j = 0; j<4-i ; j++){
      stdout.write(" ");
    }
    for (int k =1; k<=i; k++){
      stdout.write('$num');
      num ++;
    }
    print(" ");
  }
}