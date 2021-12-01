/**
 * Created by gerry on 10/30/2021.
 */

public with sharing class OpenClosed_BadExample
{
	@AuraEnabled
	public static List<MapMarker> getLeadsForMap(String objectName){
		if(objectName == 'Lead')
		{
			List<Lead> leadsInSystem = [
					SELECT Id, FirstName, LastName, LeadSource, City, Street, PostalCode, Country FROM Lead WHERE Street != NULL AND PostalCode != NULL AND City != NULL AND Country != NULL
			];
			List<MapMarker> mapMarkers = new List<MapMarker>();
			for(Lead ld : leadsInSystem)
			{
				MapMarker marker = new MapMarker();
				MapLocation location = new MapLocation();
				location.Country = ld.Country;
				location.City = ld.City;
				location.PostalCode = ld.PostalCode;
				location.Street = ld.Street;
				marker.location = location;
				marker.description = 'Hi';
				marker.title = 'Jambette';
				mapMarkers.add(marker);
			}
			System.debug(mapMarkers);
			return mapMarkers;
		}
	}
}