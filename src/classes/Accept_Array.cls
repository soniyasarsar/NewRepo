public with sharing class Accept_Array {
	
	Integer[] store=new Integer[]{};
	
	public void acceptingArray(Integer[] arr)
	{
		store=arr;
		system.debug(store);
	}
	
	public void ascendingSortArray()
	{
		store.sort();
	}
	
	public void descendingSortArray()
	{
		
	}
    
}