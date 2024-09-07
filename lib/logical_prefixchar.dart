void main(){
  int i;
List<String> words=["cat","car","fear","center"];
print(words);
int temp=0;

String prefix="ca";
List a=prefix.split("");

String s1=words[0];
List b1=s1.split("");
String s2=words[1];
List b2=s2.split("");
String s3=words[2];
List b3=s3.split("");
String s4=words[3];
List b4=s4.split("");
for(i=0;i<prefix.length;i++){
for(int j=0;j<b1.length;i++){
  if(b1[i]==a[j]){
    print(b1[i]);
  }
}
}
}
