void main(){
  List nums=[55,10,15,21,12,14,20,50];
  var biggestNum;
  print(nums);
  List rev=[];
  List descend=[];
  for(int i=nums.length-1;i>=0;i--){

    rev.add(nums[i]);

  }
  print(rev);
  rev.sort();
  for(int i=nums.length-1;i>=0;i--){

    descend.add(rev[i]);

  }
  print(descend);

}