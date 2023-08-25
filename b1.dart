//Hàm tăng
// void main(){
//   List<int> array = [1,2,4,3];
//   array.sort();
//   print(array);
// }
//Hàm giảm
void main(){
  List<int> array = [1,2,4,3];
  array.sort((a,b) => b.compareTo(a));
  print(array);
}
