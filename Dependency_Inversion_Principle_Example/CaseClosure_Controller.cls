/**
 * Created by gerry on 11/30/2021.
 */

public with sharing class CaseClosure_Controller
{
	@AuraEnabled
	public static void closeCase(Case cs){
		CaseClosure_Service.determineIfCaseShouldClose(new List<Case>{cs}, 'Order');
	}
}