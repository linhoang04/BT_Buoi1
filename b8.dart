import 'dart:io';
void main(){
  stdout.write("Nhập vào số hàng: ");
  String input = stdin.readLineSync()!;
  int rum = int.tryParse(input) ?? 0;

  stdout.write("Nhập vào số cột: ");
  String input1 = stdin.readLineSync()!;
  int col = int.tryParse(input1) ?? 0;

  //List<int> arr = [];
  List<List<int>> ARR = [];
  List<List<int>> ARR1 = [];
  for (int i = 0; i < rum ; ++i) {
    List<int> ram = [];
    for(int j = 0; j < col; ++j){
      stdout.write("Nhập vào pt [$i][$j]: ");
      String input2 = stdin.readLineSync()!;
      int number = int.tryParse(input2) ?? 0;
      // arr.add(number);
      ram.add(number);
    }
    ARR.add(ram);
  }
  print("Nhập mảng thứ 2");
  for (int i = 0; i < rum ; ++i) {
    List<int> ram = [];
    for(int j = 0; j < col; ++j){
      stdout.write("Nhập vào pt [$i][$j]: ");
      String input3 = stdin.readLineSync()!;
      int number = int.tryParse(input3) ?? 0;
      // arr.add(number);
      ram.add(number);
    }
    ARR1.add(ram);
  }
  List<List<int>> C = List.generate(rum, (index) => List<int>.filled(col, 0));
  for(int i = 0; i < rum; ++i){
    for(int j =0 ; j< col ;++j){
      int s=0;
      for(int k=0; k< col ;++k){
        s += ARR[i][k]*ARR1[k][j];
      }
      C[i][j] = s;
    }
  }
  print("Hai ma trận có phải là nghịch đảo của nhau ko: ");
  for (int i = 0; i < rum; ++i) {
    int s=1;
    for(int j = 0; j < col; ++j) {
      if(i == j && C[i][j] != 1 || i!=j && C[i][j]!=0) {
        print("không! ");
        s=0;
        break;
      }
      break;
    }
    if(s==0) break;
    else {
      print("có ");
      break;
      }
  }

}
