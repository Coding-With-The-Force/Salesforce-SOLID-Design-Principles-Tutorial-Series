/**
 * Created by gerry on 10/20/2021.
 */

public with sharing class OppCalculatorService_Managers implements OppCalculator_Interface
{
	public void calculateOpps(){
		System.debug('Manager Opps');
	}
}