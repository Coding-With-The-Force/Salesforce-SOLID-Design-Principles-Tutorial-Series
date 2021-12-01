/**
 * Created by gerry on 11/16/2021.
 */

public with sharing class ClassA_Service implements MethodA_Interface
{
	public void methodA(){
		ClassMethodACalls kewlClass = new ClassMethodACalls();
		kewlClass.kewlFunction();
		System.debug('Method A Call');
	}
}