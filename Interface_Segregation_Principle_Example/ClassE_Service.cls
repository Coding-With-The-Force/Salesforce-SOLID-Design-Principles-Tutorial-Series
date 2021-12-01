/**
 * Created by gerry on 11/16/2021.
 */

public with sharing class ClassE_Service implements MethodA_Interface, MethodB_Interface
{
	public void methodA(){
		Type methodAInterfaceType = Type.forName('ClassA_Service');
		MethodA_Interface methodAInterface =
				(MethodA_Interface)methodAInterfaceType.newInstance();
		methodAInterface.methodA();
	}

	public void methodB(){
		ClassB_Service classB = new ClassB_Service();
		classB.methodB();
	}
}