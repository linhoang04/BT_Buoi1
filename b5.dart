import 'dart:io';

bool nt(int n){
  if(n<=1) return false;
  for(int i=2;i<=n/2;i++){
    if(n%i==0) return false;
  }
  return true;
}

void main(){
  stdout.write("nhap vao so nguyen n x n: ");
  String input = stdin.readLineSync()!;
  int number = int.tryParse(input) ?? 0;
  List<List<int>> ARR = List.generate(number, (index) => List<int>.filled(number, 0));
  List<int> arr = [];
  for(int i=0; i<number; i++){
    for(int j=0; j<number; j++){
      stdout.write("nhập pt vị trí [$i][$j]: ");
      String input1 = stdin.readLineSync()!;
      int number1 = int.tryParse(input1) ?? 0;
      ARR[i][j] = number1;
    }
    print("\n");
  }
  for(int i=0; i<number; i++){
    for(int j=0; j<number; j++){
      if(nt(ARR[i][j])) arr.add(ARR[i][j]);
    }
  }
  print("$arr");
}
