void main(){
  String input = "Hello linh";
  String dis = "l";
  int s=0;
  for(int i=0; i<input.length; i++){
    if(input[i]==dis){
      s++;
    }
  }
  print("Số lần xuất hiện của $dis trong $input là $s");
}