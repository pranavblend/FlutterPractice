import 'dart:io';

void main() {

  List<int> arr = [];
  print("Enter the length of the list");
  var length=int.parse(stdin.readLineSync()!);
  print("Enter number");
  for (int i=0;i<length;i++) {

    arr.add(int.parse(stdin.readLineSync()!));
  }
  print("The List of numbers you entered=$arr");

  List newarr = [];
  List result=[];

  for (var i = 0; i < arr.length; i++) {
    if(arr[i]!=0){
      newarr.add(arr[i]);
    }else if(arr[i]==0){
      newarr.add(arr[i]);
      newarr.add(0);
    }
    }

  print("The List after duplicating occurence of zeros=$newarr");

  for(var i=0;i<arr.length;i++){
    result.add(newarr[i]);
  }

  print("The List after correcting to original array length= $result ");


  }

