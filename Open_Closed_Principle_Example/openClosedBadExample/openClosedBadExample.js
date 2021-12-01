/**
 * Created by gerry on 10/31/2021.
 */

import {LightningElement, api} from 'lwc';
import {objectService} from "./objectService";

export default class OpenClosedBadExample extends LightningElement {
	@api objectApiName;
	message;
	connectedCallback() {
		this.getObjectMessage();
	}

	getObjectMessage(){
		const objectService = new objectService();
		this.message = objectService.setMessage(this.objectApiName);
	}
}