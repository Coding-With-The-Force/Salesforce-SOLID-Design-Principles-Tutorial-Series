/**
 * Created by gerry on 11/16/2021.
 */

public with sharing class ClassThatDependsOnA
{
	public void callMethodA(){
		ClassA_Service megaClass = new ClassA_Service();
		megaClass.methodA();
	}
}