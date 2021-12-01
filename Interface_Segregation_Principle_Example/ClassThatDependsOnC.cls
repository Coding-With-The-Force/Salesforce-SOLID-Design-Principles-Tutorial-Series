/**
 * Created by gerry on 11/16/2021.
 */

public with sharing class ClassThatDependsOnC
{
	public void callMethodC(){
		ClassEverythingDependsOn megaClass = new ClassEverythingDependsOn();
		megaClass.methodC();
	}
}