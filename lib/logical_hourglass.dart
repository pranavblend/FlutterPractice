import 'dart:io';

void main(){
  int n=5;
  int i,j,k;
  for( i=0;i<=n;i++){
    for(j=0;j<i;j++){
      stdout.write(' ');
    }
    for(k=0;k<(2*(n-i)+1);k++){
      stdout.write('*');
    }
    print(" ");
  }
  for( i=1;i<=n;i++){
    for(j=0;j<n-i;j++){
      stdout.write(' ');
    }
    for(k=0;k<((2*i+1));k++){
      stdout.write('*');
    }
    print(" ");
  }
}