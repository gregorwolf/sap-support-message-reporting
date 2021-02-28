using {sap.incident.reporting as reporting} from '../db/data-model';

annotate reporting.MessageHeaderSet with {
  PriorityTxt @(ValueList.entity : 'PriorityTxtVH', );
  StatusTxt   @(ValueList.entity : 'StatusTxtVH', );
  Status      @(ValueList.entity : 'StatusVH', );
};

annotate reporting.MessageHeaderSet with @(UI : {
  SelectionFields     : [
    Status,
    StatusTxt,
    PriorityTxt
  ],
  Chart               : {
    ChartType           : #Column,
    Dimensions          : [StatusTxt],
    DimensionAttributes : [{
      Dimension : StatusTxt,
      Role      : #Category
    }],
    Measures            : [numberOfMessages],
    MeasureAttributes   : [{
      Measure : numberOfMessages,
      Role    : #Axis1
    }]
  },
  PresentationVariant : {Visualizations : [
    '@UI.Chart',
    '@UI.LineItem'
  ]},
  LineItem            : [
    {Value : Status},
    {Value : StatusTxt},
    {Value : PriorityTxt},
    {Value : numberOfMessages}
  ]
});
