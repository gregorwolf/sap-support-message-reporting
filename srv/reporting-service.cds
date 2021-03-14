using sap.incident.reporting as reporting from '../db/data-model';

service ReportingService {
    // Main Entities
    entity MessageHeaderSet as projection on reporting.MessageHeaderSet {
        *,
        to_MessageAlogSet : redirected to MessageAlogSet
    };
    entity MessageAlogSet as projection on reporting.MessageAlogSet;
    entity MessageContactsSet as projection on reporting.MessageContactsSet;

    @readonly 
    entity MessageAlogView as SELECT 
        from reporting.MessageAlogSet { sum( numberOfLogs ) as numberOfLogs:Integer, Pointer }  
        group by Pointer;

    // Value Helps
    entity PriorityTxtVH as projection on reporting.PriorityTxtVH;
    entity StatusTxtVH as projection on reporting.StatusTxtVH;
    entity StatusVH as projection on reporting.StatusVH;
    entity SystemIdVH as projection on reporting.SystemIdVH;
    // Actions
    action loadDataFromMock();
    action loadDataFromSAP();
}
