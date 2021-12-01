/**
 * Created by gerry on 11/16/2021.
 */

public with sharing class ClassThatDependsOnB
{
	public void callMethodB(){
		ClassB_Service megaClass = new ClassB_Service();
		megaClass.methodB();
	}
}