using sap.incident.reporting as reporting from '../db/data-model';

service ReportingService {
    @readonly entity MessageHeaderSet as projection on reporting.MessageHeaderSet;
    @readonly entity MessageAlogSet as projection on reporting.MessageAlogSet;
    action loadData();
    action loadDataAxios();
}

annotate ReportingService.MessageHeaderSet with {
    PriorityTxt @Analytics : { Dimension: true };
    StatusTxt @Analytics : { Dimension: true };
    count @Aggregation.default: #SUM;
    count @Analytics : { Measure: true };
};
