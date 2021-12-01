/**
 * Created by gerry on 10/30/2021.
 */

import {LightningElement, api} from 'lwc';
import getUIDataController from '@salesforce/apex/LWCMapController.getDataForUI';

export default class LwcMap extends LightningElement {
	@api objectApiName
	mapMarkers;

	connectedCallback() {
		this.getMapMarkers();
	}

	getMapMarkers(){
		getUIDataController({"objectApiName":"Contact", "uiType":"MapMarker"}).then(markers =>{
			this.mapMarkers = markers;
		});
	}
}