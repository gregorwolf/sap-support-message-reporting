namespace sap.incident.reporting;

using {incidentws} from '../srv/external/incidentws.csn';
using {support} from '../srv/external/support';

// persist the re-used incidentws enity
@cds.persistence.skip                           : false
@cds.persistence.table
// analytical annotation
@Aggregation.ApplySupported.PropertyRestrictions: true
// With this annotation the Fiori Application Generator also works
// with the CAP Project and shows the entity in the drop-down
@Aggregation.ApplySupported.Transformations     : [
    'aggregate',
    'topcount',
    'bottomcount',
    'identity',
    'concat',
    'groupby',
    'filter',
    'search'
  ]
// reuse the imported data model
entity MessageHeaderSet : incidentws.MessageHeaderSet {
  // add aditional field that is always filled with 1 to calculate the
  // number of messages in aggregations. This is our analytic measure
  @Analytics.Measure  : true
  @Aggregation.default: #SUM
  numberOfMessages  : Integer default 1 @(title: '{i18n>numberOfMessages}');
  to_MessageAlogSet : Association to many MessageAlogSet
                        on to_MessageAlogSet.Pointer = $self.Pointer;
}

// Annotate analytic dimensions
annotate MessageHeaderSet with {
  @Analytics.Dimension: true
  PriorityTxt @(title: '{i18n>PriorityTxt}');
  @Analytics.Dimension: true
  Status      @(title: '{i18n>Status}');
  @Analytics.Dimension: true
  StatusTxt   @(title: '{i18n>StatusTxt}');
  @Analytics.Dimension: true
  SystemId    @(title: '{i18n>SystemId}');
};

// View with distinct values for search help
view PriorityTxtView as select distinct PriorityTxt from MessageHeaderSet;

// Entity for search help is filled with custom logic
@readonly
@cds.odata.valuelist
entity PriorityTxtVH {
  key PriorityTxt : incidentws.MessageHeaderSet:PriorityTxt;
};

view StatusTxtView as select distinct StatusTxt from MessageHeaderSet;

// Search Help for StatusTxt solved with custom logic
@readonly
@cds.odata.valuelist
entity StatusTxtVH {
  key StatusTxt : incidentws.MessageHeaderSet:StatusTxt;
};

view StatusView as select distinct Status from MessageHeaderSet;

// Search Help for Status solved with custom logic
@readonly
@cds.odata.valuelist
entity StatusVH {
  key Status : incidentws.MessageHeaderSet:Status;
};

view SystemIdView as
  select distinct SystemId from MessageHeaderSet
  where
    SystemId is not null;

// Search Help for SystemId solved with custom logic
@readonly
@cds.odata.valuelist
entity SystemIdVH {
  key SystemId : incidentws.MessageHeaderSet:SystemId;
};

@cds.persistence.skip                           : false
@cds.persistence.table
@Aggregation.ApplySupported.PropertyRestrictions: true
entity MessageAlogSet : incidentws.MessageAlogSet {
  @Analytics.Measure  : true
  @Aggregation.default: #SUM
  numberOfLogs        : Integer default 1;
  to_MessageHeaderSet : Association to one MessageHeaderSet
}

annotate MessageAlogSet with {
  @Analytics.Dimension: true
  Uname @(title: '{i18n>Uname}');
  @Analytics.Dimension: true
  Pointer;
  @Analytics.Dimension: true
  NameTxt;
}

@cds.persistence.skip                           : false
@cds.persistence.table
@Aggregation.ApplySupported.PropertyRestrictions: true
entity MessageContactsSet : incidentws.MessageContactsSet {
  @Analytics.Measure  : true
  @Aggregation.default: #SUM
  numberOfContacts : Integer default 1
}

annotate MessageContactsSet with {
  @Analytics.Dimension: true
  ContTypTxt;
}

view ContTypTxtView as select distinct ContTypTxt from MessageContactsSet;

// Search Help for SystemId solved with custom logic
@readonly
@cds.odata.valuelist
entity ContTypTxtVH {
  key ContTypTxt : incidentws.MessageContactsSet:ContTypTxt;
};


@cds.persistence.skip                           : false
@cds.persistence.table
@Aggregation.ApplySupported.PropertyRestrictions: true
entity CaseList : support.CaseList {}
