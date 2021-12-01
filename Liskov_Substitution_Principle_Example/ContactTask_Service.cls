/**
 * Created by gerry on 11/9/2021.
 */

public with sharing class ContactTask_Service implements TaskCreatorLSP_Interface
{
	public void createTasks(SObject record){
		System.debug('Creating contact tasks');
	}
}