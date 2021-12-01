/**
 * Created by gerry on 10/20/2021.
 */

import {LightningElement} from 'lwc';
import {oppService} from "./oppService";

export default class SrpExample extends LightningElement {
	userType = 'Manager';
	calculateOpps(){
		const oppService1 = new oppService();
		oppService1.calculateOpps(this.userType);
	}
}