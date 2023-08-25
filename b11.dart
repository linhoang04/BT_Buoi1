import 'dart:io';
void main(){
  stdout.write("Nhập chuỗi: ");
  String input = stdin.readLineSync()!;
  String hoa = input.toUpperCase();
  String thuong = input.toLowerCase();
  print("Chuỗi ở dạng viêt in hoa: $hoa \n");
  print("Chuỗi ở dạng viết in thuong: $thuong");
}