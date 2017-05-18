public with sharing class Query_1 {
	
	public static void traditionalPrintRecords()
	{
		List<Account> accountList = new List<Account>();
		accountList = [Select Id from Account];
		for(Integer i = 0 ; i < accountList.size() ; i++)
		{
			system.debug(accountList[i]);
		}
		
	}
	
	public static void advancedPrintRecords()
	{
		
		for (Account var : [Select Id from Account])
		{
			system.debug(var);
		}
		
	}
	
	public static void whilePrintrecords()
	{
		List<Account> accountList = new List<Account>();
		accountList = [Select Id from Account];
		while(accountlist.size() != null)
		{
			system.debug(accountList);
		}
	}
	
	public static void setPrint()
	{
		Set <Lead> mySet = new Set <Lead>([Select Id, name from Lead]);
		system.debug(mySet);
	}
    
    public static void updateCustomField()
    {
    	List<Contact> contactList = new List<Contact>();
		contactList = [select id, name from contact where Account.Name ='Eternus'];
		Integer sum = 0;
		while (sum < contactList.size())
		{
			sum++;
		}
		system.debug(sum);
    }
}