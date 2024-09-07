void main(){
  List nums=[2,7,9,3,1];
  int i;
  int sum=0;

  for(i=0;i<nums.length-1;i++){
    sum=nums[i]+nums[i+1];
  }
  print(sum);
}