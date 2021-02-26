using sap.incident.reporting as reporting from '../db/data-model';

using { incidentws as external } from './external/incidentws.csn';

service ReportingService {
    @readonly entity MessageHeaderSet as projection on reporting.MessageHeaderSet;
    @readonly entity MessageAlogSet as projection on reporting.MessageAlogSet;    
}