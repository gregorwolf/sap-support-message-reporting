namespace sap.incident.reporting;

using {incidentws as external} from '../srv/external/incidentws.csn';

@cds.persistence.skip                            : false
@cds.persistence.table
@Aggregation.ApplySupported.PropertyRestrictions : true
entity MessageHeaderSet : external.MessageHeaderSet {
  @Analytics.Measure   : true
  @Aggregation.default : #SUM
  numberOfMessages : Integer default 1 @(title : '{i18n>numberOfMessages}');
}

annotate MessageHeaderSet with {
  @Analytics.Dimension : true
  PriorityTxt @(title : '{i18n>PriorityTxt}');
  @Analytics.Dimension : true
  Status      @(title : '{i18n>Status}');
  @Analytics.Dimension : true
  StatusTxt   @(title : '{i18n>StatusTxt}');
  @Analytics.Dimension : true
  SystemId   @(title : '{i18n>SystemId}');
};

@cds.persistence.skip                            : false
@cds.persistence.table
@Aggregation.ApplySupported.PropertyRestrictions : true
entity MessageAlogSet : external.MessageAlogSet {
  @Analytics.Measure   : true
  @Aggregation.default : #SUM
  numberOfLogs : Integer default 1
}

view PriorityTxtView as select distinct PriorityTxt from MessageHeaderSet;

// Search Help for PriorityTxt solved with custom logic
@readonly
@cds.odata.valuelist
entity PriorityTxtVH {
  key PriorityTxt : external.MessageHeaderSet : PriorityTxt;
};

view StatusTxtView as select distinct StatusTxt from MessageHeaderSet;

// Search Help for StatusTxt solved with custom logic
@readonly
@cds.odata.valuelist
entity StatusTxtVH {
  key StatusTxt : external.MessageHeaderSet : StatusTxt;
};

view StatusView as select distinct Status from MessageHeaderSet;

// Search Help for Status solved with custom logic
@readonly
@cds.odata.valuelist
entity StatusVH {
  key Status : external.MessageHeaderSet : Status;
};

view SystemIdView as select distinct SystemId from MessageHeaderSet;

// Search Help for SystemId solved with custom logic
@readonly
@cds.odata.valuelist
entity SystemIdVH {
  key SystemId : external.MessageHeaderSet : SystemId;
};
