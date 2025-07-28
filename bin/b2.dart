import 'dart:io';

void main(){
  List<int> mainList = [];
   List<int> evenList = [];
    List<int> oddList = [];
    print("enter the numbers(0 to stop): ");

    while (true){
      int num=int.parse(stdin.readLineSync()!);

      if (num==0){
        break;
      }

      mainList.add(num);

      if (num%2==0){
        evenList.add(num);
      }else{
        oddList.add(num);
      }
    }

    if (mainList.isEmpty){
      print("there is no numbers entered");
    }else{
      int max=mainList[0];
      for (int number in mainList){
        if (number>max){
          max=number;
        }
      }

      print("mainlist: $mainList");
      print("evenList: $evenList");
      print("oddlist: $oddList");
      print("greatest number: $max");
    }

}