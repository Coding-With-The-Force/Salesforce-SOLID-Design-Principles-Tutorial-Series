/**
 * Created by gerry on 10/20/2021.
 */

public with sharing class OppCalculator_Controller
{
	@AuraEnabled
	public static void calculateOpps(String userType){
		OppCalculator_Service.calculateOpps(userType);
	}
}