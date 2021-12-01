/**
 * Created by gerry on 10/31/2021.
 */

export class objectServiceFactory {
	classType;
	constructor(classType) {
		this.classType = classType;
	}
	setMessage(){
		return this.classType.setMessage();
	}
}