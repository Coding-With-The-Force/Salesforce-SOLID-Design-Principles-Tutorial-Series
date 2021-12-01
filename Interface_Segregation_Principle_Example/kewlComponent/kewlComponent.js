/**
 * Created by gerry on 11/16/2021.
 */

import {LightningElement} from 'lwc';
import {UtilitiesService} from "c/utilities_Service";

export default class KewlComponent extends LightningElement {

	connectedCallback() {
		const utils = new UtilitiesService();
		utils.createToasts();
	}

}