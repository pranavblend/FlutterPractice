import 'dart:io';

void main() {
  List arr = [];
  int i;
  List temp=[];
  num sum=0;

  print("How many numbers to add");
  var len=int.parse(stdin.readLineSync()!);
  print("Enter your numbers");
  for (var i=0;i<len;i++){
    arr.add(int.parse(stdin.readLineSync()!));
  }



  for (i=0;i<arr.length; i++) {
    if(i%2==0){
      temp.add(arr[i]);
    }
  }
  print(temp);

  for(i=0;i<temp.length;i++){
    sum+=temp[i];
  }
print(sum);

}