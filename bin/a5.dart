int findLargest(List<int> numbers){
  int largest = numbers[0];

  for (int num in numbers){
    if (num > largest){
      largest = num;
    }
  }
  return largest;
}

void main(){
  List<int> myList=[10, 20 , 30 , 40];
  int max = findLargest(myList);
  print("the largest number is : $max");
}