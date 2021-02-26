namespace sap.incident.reporting;

using { incidentws as external } from '../srv/external/incidentws.csn';

@cds.persistence.skip : false
@cds.persistence.table
entity MessageHeaderSet: external.MessageHeaderSet {

}

@cds.persistence.skip : false
@cds.persistence.table
entity MessageAlogSet: external.MessageAlogSet {

}