public with sharing class Query_1 
	
{
	
	public static void traditionalPrintRecords()
	{
		List<Account> accountList = Database.query('Select Id from Account');
		/*accountList = Database.query([Select Id from Account]);
		for(Integer i = 0 ; i < accountList.size() ; i++)
		{
			Database.query([Select Id from Account]);
		}
		*/
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
   	 	 /*List<Contact> contactList = new List<Contact>();
		contactList = [select id, name from contact where Account.Name ='Eternus'];
		Integer sum = 0;
		while (sum < contactList.size())
		{
			sum++;
		}
		system.debug(sum);
    }*/
	    try{
		    Account accRecord = new Account (Name = 'Eternus');
		    insert accrecord;		     
		    Id a = accRecord.Id;
		    system.debug(a);
		    
		    Contact conRecord = new Contact(LastName = 'Con1',	AccountId = a);
		   	insert conRecord;
		    /*
			List<Contact> conupdate = [select id, name from contact where Account.Name ='Eternus'];
			list<aggregateResult> demo = [select count(id) from contact where Account.Name ='Eternus'];
			Integer countContacts = (Integer) demo[0].get('expr0');
			for(Contact ac : conupdate)
			{
				ac.Count__c = countContacts;
			}
			*/
			//String strContactQuery = '';
			//Integer cnt = Database.countQuery('select count() from contact where Account.Name =\'Eternus\'');
			
			List<Contact> countUpdate = [select id, name from contact where Account.Name ='Eternus'];
			Integer countContacts = countUpdate.size();
			system.debug(countContacts);
			for(Contact ac : countUpdate)
			{
				ac.Count__c = countContacts;
			}
			update countUpdate;
	    }
     	catch(DMLException e)
    	{
    		System.debug('An unexpected error has occurred: ');
    	}
    } 
    
    
    public static void statusupdate()
    {
    	try{
    		List<Lead> statusObject = [select status,name from lead where status like 'Won'];
	    	for (Lead change : statusObject)
		    	{
		    	change.Status = 'Closed Converted';
		    	}
	    	update statusObject;
	      }
    	catch(DMLException e)
    	{
    		System.debug('An unexpected error has occurred: ');
    	}
    }
    
    public static void childParentRelationship()
    {
    	List<Contact> conList = new List <Contact>();
    	conList = [select Contact.FirstName,Contact.Account.Name from Contact];
    	system.debug(conList);
    }
    
    public static void recordsCreatedtoday()
    {
    	List<Account> accList = new List<Account>();
    	accList = [select Id ,Name from Account where CreatedDate = Today];
    	system.debug(accList);
    }
    
    public static void SOSl()
    {
    	
    	List<List<SObject>> searchList = [FIND 'SFDC' IN ALL FIELDS RETURNING Account(Name), Contact(FirstName,LastName)];
  		system.debug(searchList); 
   }
   
   public static void databaseInsert()
   {
   	List<Account> lstAccount = new List <Account>();
   	lstAccount.add(new Account(Name = 'Test01 new1 '));
   	lstAccount.add(new Account(Name = 'Test02 new2 '));
   	lstAccount.add(new Account());
   	lstAccount.add(new Account());
   	
   	Database.insert(lstAccount);
   	
   }
   
   	public static void git()
   	{
   		
   	}
    
}