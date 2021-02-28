namespace sap.incident.reporting;

using { incidentws as external } from '../srv/external/incidentws.csn';

@cds.persistence.skip : false
@cds.persistence.table
entity MessageHeaderSet: external.MessageHeaderSet {
    count: Integer default 1
}

@cds.persistence.skip : false
@cds.persistence.table
entity MessageAlogSet: external.MessageAlogSet {
    count: Integer default 1
}

view PriorityTxtView as select distinct PriorityTxt from MessageHeaderSet;

// Search Help for PriorityTxt solved with custom logic
@readonly
@cds.odata.valuelist
entity PriorityTxt {
  key PriorityTxt: external.MessageHeaderSet:PriorityTxt;
};

view StatusTxtView as select distinct StatusTxt from MessageHeaderSet;

// Search Help for StatusTxt solved with custom logic
@readonly
@cds.odata.valuelist
entity StatusTxt {
  key StatusTxt: external.MessageHeaderSet:StatusTxt;
};