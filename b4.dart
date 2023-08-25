import 'dart:io';

void main(){
  stdout.write("nhập 1 số X: ");
  String input = stdin.readLineSync()!;
  int number =  int.tryParse(input) ?? 0;

  stdout.write("Nhập số lượng pt trong mảng: ");
  String input1 = stdin.readLineSync()!;
  int number1 = int.tryParse(input1) ?? 0;

  List<int> arr = [];
  for(int i = 0; i < number1; ++i){
    stdout.write("Nhập số thứ $i trong mảng: ");
    String input2 = stdin.readLineSync()!;
    int number2 = int.tryParse(input2) ?? 0;
    arr.add(number2);
  }
  int s = 0 ;
  for(int i=0; i< arr.length; ++i){
    if(number == arr[i]) s++;
  }
  print("$s");
}