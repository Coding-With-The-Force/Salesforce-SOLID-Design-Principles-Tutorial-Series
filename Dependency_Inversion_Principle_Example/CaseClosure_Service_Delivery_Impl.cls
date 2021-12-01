/**
 * Created by gerry on 11/30/2021.
 */

public with sharing class CaseClosure_Service_Delivery_Impl implements CaseClosureService_Interface
{
	public void determineIfCaseShouldClose(List<Case> cases){
		System.debug('Calling Service Class');
		List<Case> casesToClose = new List<Case>();
		List<Case> casesToReject = new List<Case>();
		for(Case cs: cases){
			if(cs.Status == 'Delivered'){
				casesToClose.add(cs);
			}
			else{
				casesToReject.add(cs);
			}
		}
		rejectCaseClosure(casesToReject);
		closeCase(casesToClose);
	}

	private static void rejectCaseClosure(List<Case> casesToReject){
		for(Case cs: casesToReject){
			cs.Status = 'Redo Case';
		}
		update casesToReject;
	}

	private static void closeCase(List<Case> casesToClose){
		for(Case cs: casesToClose){
			cs.Status = 'Closed - Delivered';
		}
		update casesToClose;
	}
}