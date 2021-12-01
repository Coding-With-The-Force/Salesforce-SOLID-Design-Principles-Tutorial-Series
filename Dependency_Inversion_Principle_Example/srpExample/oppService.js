/**
 * Created by gerry on 10/20/2021.
 */
import {oppServiceCTO} from "./oppServiceCTO";
import {oppServiceManager} from "./oppServiceManager";
import {oppServiceFactory} from "./oppServiceFactory";

export class oppService {
	calculateOpps(userType){
		let classType;
		if(userType === 'CTO'){
			classType = new oppServiceCTO();
		}
		else if (userType === 'Manager'){
			classType = new oppServiceManager();
		}
		const oppServiceFactory1 = new oppServiceFactory(classType);
		oppServiceFactory1.calculateOpps();
	}
}