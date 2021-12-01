/**
 * Created by gerry on 10/31/2021.
 */
import {objectServiceContactImpl} from "./objectServiceContactImpl";
import {objectServiceLeadImpl} from "./objectServiceLeadImpl";
import {objectServiceFactory} from "./objectServiceFactory";

export class objectService {
	classType;
	setMessage(objectType){
		if(this.objectApiName === 'Contact'){
			this.classType = new objectServiceContactImpl();
		}
		else if(this.objectApiName === 'Lead'){
			this.classType = new objectServiceLeadImpl();
		}
		const serviceFactory = new objectServiceFactory(this.classType);
		return serviceFactory.setMessage();
	}

}