public with sharing class Summation 
{
  	public static void operation(Integer num)
  	{
		Integer sum=0;
	  	for(Integer i=0;i<=num;i++)
	 	{
	    	sum=sum+i;
	 	}
		system.debug(sum);
  	}   
}