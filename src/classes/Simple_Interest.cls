public with sharing class SI
{
    public static void operation(Integer principle , Integer rate , Integer t)
    {
 
	    Integer CI=(principle * t * rate)/100;
	    system.debug(CI);
    }
}