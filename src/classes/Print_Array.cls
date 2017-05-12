public with sharing class Print_Array {
    public static void printArray(Integer num)
    {
     Integer[] arr=new Integer[num];
	 for(Integer i=0;i<num;i++)
	    {
	    		arr[i]=i;
		    	  	
	    }
    	System.debug(arr);
    }
    	
}