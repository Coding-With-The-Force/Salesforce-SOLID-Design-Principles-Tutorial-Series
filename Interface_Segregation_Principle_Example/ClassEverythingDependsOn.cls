/**
 * Created by gerry on 11/16/2021.
 */

public with sharing class ClassEverythingDependsOn implements TonsOfMethods
{
	public void methodA(){
		ClassMethodACalls kewlClass = new ClassMethodACalls();
		kewlClass.kewlFunction();
		System.debug('Method A Call');
	}

	public void methodB(){
		System.debug('Method B Call');
	}

	public void methodC(){
		System.debug('Method C Call');
	}
}