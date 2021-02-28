using sap.incident.reporting as reporting from '../db/data-model';

service ReportingService {
    entity MessageHeaderSet as projection on reporting.MessageHeaderSet;
    entity MessageAlogSet as projection on reporting.MessageAlogSet;
    entity PriorityTxtVH as projection on reporting.PriorityTxtVH;
    entity StatusTxtVH as projection on reporting.StatusTxtVH;
    entity StatusVH as projection on reporting.StatusVH;

    action loadData();
    action loadDataAxios();
}
