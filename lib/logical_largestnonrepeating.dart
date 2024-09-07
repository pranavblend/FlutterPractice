void main(){
  List numbers=[8,8,3,3,1,4,5,6];
  List dupicates=[];
  List newlist =[];

  for(var i=0;i<numbers.length;i++){
    for(var j=i+1;j<numbers.length;j++){
      if(numbers[i]==numbers[j]){
        dupicates.add(numbers[i]);
      }
    }
  }
  print(dupicates);

 var value=dupicates.toSet();
 var origin=value.toList();

 for(var i=0;i<origin.length;i++){
   numbers.removeWhere((element) => element==origin[i],);
 }
  print(numbers.last);
}