using {sap.incident.reporting as reporting} from '../db/data-model';

annotate reporting.MessageHeaderSet with {
  PriorityTxt @(ValueList.entity : 'PriorityTxtVH', );
  StatusTxt   @(ValueList.entity : 'StatusTxtVH', );
  Status      @(ValueList.entity : 'StatusVH', );
  SystemId    @(ValueList.entity : 'SystemIdVH', );
};

annotate reporting.MessageHeaderSet with @(UI : {
  SelectionFields     : [
    Status,
    StatusTxt,
    PriorityTxt,
    SystemId
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
  Chart #PriorityTxt  : {
    ChartType           : #Column,
    Dimensions          : [PriorityTxt],
    DimensionAttributes : [{
      Dimension : PriorityTxt,
      Role      : #Category
    }],
    Measures            : [numberOfMessages],
    MeasureAttributes   : [{
      Measure : numberOfMessages,
      Role    : #Axis1
    }]
  },
  Chart #SystemId     : {
    ChartType           : #Donut,
    Dimensions          : [SystemId],
    DimensionAttributes : [{
      Dimension : SystemId,
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
