/**
 * Created by gerry on 10/31/2021.
 */

public interface DisplayWrapper_Interface
{
	List<SObject> getRecords();
	List<Object> wrapRecordsForUI(List<SObject> sObjectRecords);
}