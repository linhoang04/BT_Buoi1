bool nt(int n){
  if(n<=1) return false;
  for(int i = 2; i<=n/2;++i){
    if(n%i == 0) return false;
  }
  return true;
}
void main(){
  List<List<int>> ARR = [
    [1,2,3,4,5],
    [6,7,8,9,10]
  ];
  List<int> arr = [];
  for(var index in ARR){
    for(var index1 in index){
      if(nt(index1)) arr.add(index1);
    }
  }
  print("$arr");
}