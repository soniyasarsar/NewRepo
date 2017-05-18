public with sharing class Occurence {
	public static void appearance(Integer num)
	{
		Integer[] arr = new Integer []{};
		Integer rem,i;
		for(i=0;i<10;i++)
		{
			arr[i]=0;
		}
		while(num > 0)
		{
		  rem=math.mod(num,10);
	      arr[rem]++;
	      num=num/10;
		}
		for(Integer j=0;j<10;j++)
  		{
	      if(arr[j]>0)
	      	{
	      		system.debug(j + arr[j]);
	       	}
 	 	}
	}
    
}