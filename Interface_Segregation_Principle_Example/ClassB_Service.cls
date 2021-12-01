/**
 * Created by gerry on 11/16/2021.
 */

public with sharing class ClassB_Service implements MethodB_Interface
{
	public void methodB(){
		System.debug('Method B Call');
	}
}