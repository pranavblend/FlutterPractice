void main(){
  List marks=[10,23,8,6,5,15,10,5,4,5,7,0];
  int i;

  for(i=0;i<marks.length;i++){
    if(marks[i]<10){
      print(marks[i]);
    }
  }
  marks.add(14);
  print(marks);
  int m=marks.length;
  print(m);

}