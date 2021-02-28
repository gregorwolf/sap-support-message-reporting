using {ReportingService} from '../srv/reporting-service';

annotate ReportingService.MessageHeaderSet with {
  PriorityTxt @(ValueList.entity : 'PriorityTxt', );
  StatusTxt   @(ValueList.entity : 'StatusTxt', );
};

annotate ReportingService.MessageHeaderSet with @(UI : {
  SelectionFields     : [
    StatusTxt,
    PriorityTxt
  ],
  Chart               : {
    ChartType           : #Bar,
    Dimensions          : ['StatusTxt'],
    Measures            : ['count'],
    DimensionAttributes : [{
      Dimension : 'StatusTxt',
      Role      : #Series
    }],
    MeasureAttributes   : [{
      Measure : 'count',
      Role    : #Axis1
    }]
  },
  PresentationVariant : {Visualizations : [
    '@UI.Chart',
    '@UI.LineItem'
  ]},
  LineItem            : [
    {Value : StatusTxt},
    {Value : PriorityTxt},
  ]
});
