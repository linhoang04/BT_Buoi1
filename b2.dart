// void main(){
//   List<int> array = [1,2,3];
//   var tong=0, i;   
//   for(i = 0; i < array.length; i++){
//     tong += array[i];
//   };
//   print(tong);
// }
//cách 2
void main(){
  List<int> array = [1,2,3];
  var tong=0;   
  for(int i in array){
    tong += i;
  };
  print(tong);
}