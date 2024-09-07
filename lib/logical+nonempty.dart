void main(){
  List<dynamic> nums=[3,2,4,10,15];
  var target=25;
 print(nums);
 int temp1=0;
 int temp2=0;
 List intexPairs=[];

 for(var i=0;i<nums.length;i++){
   for(var j=1;j<nums.length;j++){
     if(nums[i]+nums[j]==target) {
       temp1=nums[i];
       temp2=nums[j];
       intexPairs.add([i,j]);
       break;


     }
   }
 }
 print("target $target= $temp1 + $temp2");
 print(intexPairs);
}
