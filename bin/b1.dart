import 'dart:io';

void main(){
  int rows=5;
  for (int i=1; i<=rows; i++){
    for (int j=1; j<=i; j++){
      stdout.write("* ");
    }
    print('');
  } 

  for (int i=rows -1 ; i>=1; i--){
    for(int j=1; j<=i; j++){
      stdout.write("* ");
    }
    print('');
  }
}