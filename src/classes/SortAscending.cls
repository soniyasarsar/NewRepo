public class SortAscending
{
	 
	   public static void arrayOperations(List<Integer> ls1)
	   {     
	       
	        system.debug(ls1);	
	        ls1.sort();
	        system.debug(ls1);
	        system.debug('Maximum' + ':' + ls1[0]);
	        Integer num = ls1.size()-1;
	        system.debug('Minimum' + ':' +ls1[num]);
	   }

}