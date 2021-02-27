using sap.incident.reporting as reporting from '../db/data-model';

service ReportingService {
    @readonly entity MessageHeaderSet as projection on reporting.MessageHeaderSet;
    @readonly entity MessageAlogSet as projection on reporting.MessageAlogSet;
    action loadData();
    action loadDataAxios();
}