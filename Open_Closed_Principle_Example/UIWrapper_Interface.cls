/**
 * Created by gerry on 10/30/2021.
 */

public interface UIWrapper_Interface
{
	List<SObject> getRecords();
	List<Object> wrapRecordsForUI(List<SObject> sObjectRecords);
}