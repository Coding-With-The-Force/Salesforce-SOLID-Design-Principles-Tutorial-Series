/**
 * Created by gerry on 10/31/2021.
 */

public with sharing class MapMarkerContact_Impl implements DisplayWrapper_Interface
{
	public List<SObject> getRecords(){
		List<Contact> contactRecords = [SELECT Id, MailingState, MailingPostalCode, MailingCountry, MailingCity, MailingStreet, Name, Description FROM Contact
		WHERE MailingCity != null AND MailingCountry != null AND MailingPostalCode != null AND MailingState != null AND MailingStreet != null];
		return contactRecords;
	}

	public List<Object> wrapRecordsForUI(List<SObject> sObjectRecords){
		List<MapMarker> mapMarkers = new List<MapMarker>();
		for(Contact cont: (List<Contact>)sObjectRecords){
			MapMarker marker = new MapMarker();
			MapLocation mapLocation = new MapLocation();
			mapLocation.Country = cont.MailingCountry;
			mapLocation.PostalCode = cont.MailingPostalCode;
			mapLocation.Street = cont.MailingStreet;
			mapLocation.City = cont.MailingCity;
			marker.location = mapLocation;
			marker.title = cont.Name;
			marker.description = cont.Description;
			mapMarkers.add(marker);
		}
		return mapMarkers;
	}
}