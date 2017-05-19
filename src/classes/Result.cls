public with sharing class Result {
    public static Integer calculator(String str, Integer X, Integer Y)
    {
    	String str1 = 'Sum';
    	String str2 = 'Sub';
    	String str3 = 'Mul';
    	String str4 = 'Div';
    	 
    	if(str.equals('Sum'))
    	{
    		Integer result = X+Y;
    		system.debug('Sum ' + ': ' + result);
    		return result;
    	}
    	if(str.equals('Sub'))
    	{
    		Integer result = X-Y;
    		system.debug('Sub ' + ': ' + result);
    		return result;
    	}
    	if(str.equals('Mul'))
    	{
    		Integer result = X*Y;
    		system.debug('Mul ' + ': ' + result);
    		return result;
    	} 
    	if(str.equals('Div'))
    	{
    		Integer result = X/Y;
    		system.debug('Div ' + ': ' + result);
    		return result;
    	}
    
    } 
}