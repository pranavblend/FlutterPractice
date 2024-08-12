void main() {
  List arr = [1, 2, 3, 4, 5, 6];
  print(arr);
  int i;
  List temp=[];
  num mul=0;


  for (i = 0; i < arr.length; i++) {
    if(arr.indexOf(arr[i])==mul){
      temp=temp+arr[i];
      mul=mul+2;
    }
    }
  print(temp);
    }