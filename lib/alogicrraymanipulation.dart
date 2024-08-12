void main() {
  List arr = [1, 2, 3, 4, 5, 6];
  print(arr);
  int i;
  List temp=[];


  for (i = 0; i < arr.length; i++) {
    if(i%2==0){
      temp.add(arr[i]);
    }
  }
  print(temp);
}