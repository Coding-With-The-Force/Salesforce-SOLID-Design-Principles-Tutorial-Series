/**
 * Created by gerry on 10/31/2021.
 */

public with sharing class MapMarkerLead_Impl implements DisplayWrapper_Interface
{
	public List<SObject> getRecords(){
		List<Lead> leadRecords = [SELECT Id, State, PostalCode, Country, City, Name, Street, Description FROM Lead
		WHERE City != null AND Country != null AND PostalCode != null AND State != null AND Street != null];
		return leadRecords;
	}

	public List<Object> wrapRecordsForUI(List<SObject> sObjectRecords){
		List<MapMarker> mapMarkers = new List<MapMarker>();
		for(Lead leadRecord: (List<Lead>)sObjectRecords){
			MapMarker marker = new MapMarker();
			MapLocation mapLocation = new MapLocation();
			mapLocation.Country = leadRecord.Country;
			mapLocation.PostalCode = leadRecord.PostalCode;
			mapLocation.Street = leadRecord.Street;
			mapLocation.City = leadRecord.City;
			marker.location = mapLocation;
			marker.title = leadRecord.Name;
			marker.description = leadRecord.Description;
			mapMarkers.add(marker);
		}
		return mapMarkers;
	}
}