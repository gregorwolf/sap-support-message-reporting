using sap.incident.reporting as reporting from '../db/data-model';

service ReportingService {
    @sap.semantics: 'aggregate'
    @Aggregation.ApplySupported : {
        $Type : 'Aggregation.ApplySupportedType',
        PropertyRestrictions: true,
        GroupableProperties : [
            PriorityTxt,
            StatusTxt
        ],
    }
    @readonly 
    entity MessageHeaderSet as projection on reporting.MessageHeaderSet;
    @readonly 
    entity MessageAlogSet as projection on reporting.MessageAlogSet;
    entity PriorityTxt as projection on reporting.PriorityTxt;
    entity StatusTxt as projection on reporting.StatusTxt;
    action loadData();
    action loadDataAxios();
}

annotate ReportingService.MessageHeaderSet with {
    PriorityTxt @sap: { ![aggregation-role]: dimension };
    PriorityTxt @Analytics : { Dimension: true };
    StatusTxt @sap: { ![aggregation-role]: dimension };
    StatusTxt @Analytics : { Dimension: true };
    count @Aggregation.default: #SUM;
    count @Analytics : { Measure: true };
};
