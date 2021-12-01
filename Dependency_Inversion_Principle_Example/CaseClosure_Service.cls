/**
 * Created by gerry on 11/30/2021.
 */

public with sharing class CaseClosure_Service
{
	private static Map<String, Type> caseClosureServiceByRecordType = new Map<String, Type>{
		'Order' => CaseClosure_Service_Order_Impl.class,
		'Delivery' => CaseClosure_Service_Delivery_Impl.class
	};

	public static void determineIfCaseShouldClose(List<Case> cases, String recordTypeName){
		CaseClosureService_Interface caseClosureService =
				(CaseClosureService_Interface)caseClosureServiceByRecordType.get(recordTypeName).newInstance();
		caseClosureService.determineIfCaseShouldClose(cases);
	}
}