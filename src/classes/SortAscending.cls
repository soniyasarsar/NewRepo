public with sharing class SortAscending 
{
	public static void ascendingOrder(Integer []arr)
	{
		Integer[] arrList = new List<Integer>();      
		arrList.add( new Integer(9,1,8,2,7,3));
		System.debug(arrList);
		arrList.sort();
	}
    
}