public class SortAscending {
	public Static void ascendingOrder(Integer [] arr)
	    {
	    	Integer Temp;
	    	for(Integer i=0; i<arr.size(); i++)
	    	{
	    		for(Integer j=i+1; j<arr.size(); j++)
	    		{
	    			if(arr[i] > arr[j])
	    			{
	    			    Temp=arr[i];
	    				arr[i]=arr[j];
	    				arr[j]=temp;
	    			}
	    		}
	    	}
	    	for (Integer i=0; i < arr.size(); i++) 
	        {
	            system.debug(arr[i] + ',');
	        }   	
	   	}
	   	
	   	public Static void descendingOrder(Integer [] arr)
	    {
	    	Integer Temp;
	    	for(Integer i=0; i<arr.size(); i++)
	    	{
	    		for(Integer j=i+1; j<arr.size(); j++)
	    		{
	    			if(arr[i] < arr[j])
	    			{
	    			    Temp=arr[i];
	    				arr[i]=arr[j];
	    				arr[j]=temp;
	    			}
	    		}
	    	}
	    	for (Integer i=0; i < arr.size(); i++) 
	        {
	            system.debug(arr[i] + ',');
	        }   	
	   	}
	   	
	   	public static void findmin(Integer [] a)
	   	{
	   		Integer min,i;
		   	for(i=1;i<a.size();i++)
		   	{
		   		min=a[i];
			   	if(a[i] < min)
			   		{
			   			min=a[i];
			   		}
		  	}
	   		system.debug('Minimun = ' +min);
	   	}
	   	
	   	public static void findMax(Integer [] a)
	   	{
	   		Integer max,i;
		   	for(i=1;i<a.size();i++)
		   	{
		   		max=a[i];
			   	if(a[i] > max)
			   		{
			   			max=a[i];
			   		}
		 	}
	   		system.debug('Maximum = ' +max);
	   	}
    
}