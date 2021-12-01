/**
 * Created by gerry on 10/20/2021.
 */

export class oppServiceFactory {
	classType;
	constructor(classType) {
		this.classType = classType
	}
	calculateOpps(){
		this.classType.calculateOpps();
	}
}