import 'dart:io';

void main() {
  stdout.write("Nhập vào số nguyên n x n: ");
  String input = stdin.readLineSync()!;
  int number = int.tryParse(input) ?? 0;

  List<int> arr = [];
  List<List<int>> ARR = [];

  for (int i = 0; i < number; i++) {
    List<int> row = [];
    for (int j = 0; j < number; j++) {
      stdout.write("Nhập vào mảng [$i][$j]: ");
      String input1 = stdin.readLineSync()!;
      int number1 = int.tryParse(input1) ?? 0;
      arr.add(number1);
      row.add(number1);
    }
    ARR.add(row);
  }

  arr.sort();
  int s = 0;
  for (int i = 0; i < number; i++) {
    for (int j = 0; j < number; j++) {
      ARR[i][j] = arr[s++];
    }
  }

  print("Mảng sau khi sắp xếp:");
  for (int i = 0; i < number; i++) {
    for (int j = 0; j < number; j++) {
      stdout.write("${ARR[i][j]} ");
    }
    print("");
  }
}
