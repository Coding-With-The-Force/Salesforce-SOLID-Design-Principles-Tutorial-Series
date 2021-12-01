/**
 * Created by gerry on 10/20/2021.
 */

public with sharing class OppCalculator_Combined_Service
{
	public static void calculateOpps(String userType){
		if(userType == 'CTO'){
			calculateOppsCTO();
		}
		else if(userType == 'Sales Associate'){
			calculateOppsSales();
		}
		else{
			calculateOppsManager();
		}
	}

	private static void calculateOppsCTO(){
		System.debug('CTO Opps');
	}

	private static void calculateOppsSales(){
		System.debug('Sales Opps');
	}

	private static void calculateOppsManager(){
		System.debug('Manager Opps');
	}
}