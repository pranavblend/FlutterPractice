
void main(){
  String s="hello world";
  String ch="o";
  int i;
  String temp="";
  var list=s.split("");
  print(list);

  for(i=0;i<list.length;i++){
    if(list[i]!=ch){
      temp=temp+list[i];
    }
  }
  print(temp);
  }
