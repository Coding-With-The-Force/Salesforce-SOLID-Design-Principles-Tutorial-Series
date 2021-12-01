/**
 * Created by gerry on 10/20/2021.
 */

public with sharing class OppCalculator_Service
{
	private static Map<String, Type> userTypeToCalculatorImpl = new Map<String, Type>{
		'CTO' => OppCalculatorService_CTO.class,
		'Sales Associate' => OppCalculatorService_SalesAssoc.class,
		'Manager' => OppCalculatorService_Managers.class
	};
	public static void calculateOpps(String userType){
		OppCalculator_Interface oppCalculator = (OppCalculator_Interface)userTypeToCalculatorImpl.get(userType).newInstance();
		oppCalculator.calculateOpps();
	}
}