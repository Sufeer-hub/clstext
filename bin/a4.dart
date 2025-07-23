import 'dart:io';

void main(){
  stdout.write("enter a number: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num % 4 ==0  && num % 6==0){
    print("QuadHex");
  }else if (num % 6 == 0){
      print("Hex");
    }else if (num % 4==0 ){
      print("Quad");
    }else{
      print(num);
    }
  }