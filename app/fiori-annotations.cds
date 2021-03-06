using {sap.incident.reporting as reporting} from '../db/data-model';

annotate reporting.MessageHeaderSet with {
  @Common : {ValueList #PriorityTxtVisualFilter : {
    $Type                        : 'Common.ValueListType',
    CollectionPath               : 'MessageHeaderSet',
    PresentationVariantQualifier : 'PriorityTxt',
    Parameters                   : [{
      $Type             : 'Common.ValueListParameterInOut',
      LocalDataProperty : 'PriorityTxt',
      ValueListProperty : 'PriorityTxt'
    }]
  }}
  PriorityTxt @(ValueList.entity : 'PriorityTxtVH', );
  @Common : {ValueList #StatusTxtVisualFilter : {
    $Type                        : 'Common.ValueListType',
    CollectionPath               : 'MessageHeaderSet',
    PresentationVariantQualifier : 'StatusTxt',
    Parameters                   : [{
      $Type             : 'Common.ValueListParameterInOut',
      LocalDataProperty : 'StatusTxt',
      ValueListProperty : 'StatusTxt'
    }]
  }}
  @(ValueList.entity : 'StatusTxtVH', )
  StatusTxt;
  @(ValueList.entity : 'StatusVH', )
  Status;
  @Common : {ValueList #SystemIdVisualFilter : {
    $Type                        : 'Common.ValueListType',
    CollectionPath               : 'MessageHeaderSet',
    PresentationVariantQualifier : 'SystemId',
    Parameters                   : [{
      $Type             : 'Common.ValueListParameterInOut',
      LocalDataProperty : 'SystemId',
      ValueListProperty : 'SystemId'
    }]
  }}
  @(ValueList.entity : 'SystemIdVH', )
  SystemId;
};

annotate reporting.MessageHeaderSet with @(UI : {
  SelectionFields                  : [
    StatusTxt,
    PriorityTxt,
    SystemId
  ],
  PresentationVariant #StatusTxt   : {Visualizations : ['@UI.Chart#StatusTxt', ], },
  PresentationVariant #PriorityTxt : {Visualizations : ['@UI.Chart#PriorityTxt', ], },
  PresentationVariant #SystemId    : {Visualizations : ['@UI.Chart#SystemId', ], },
  Chart                            : {
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
  Chart #StatusTxt                 : {
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
  Chart #PriorityTxt               : {
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
  Chart #SystemId                  : {
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
  LineItem                         : [
    {Value : StatusTxt},
    {Value : PriorityTxt},
    {Value : numberOfMessages}
  ],
  HeaderInfo                       : {
    TypeName       : '{i18n>Message}',
    TypeNamePlural : '{i18n>Messages}',
    Title          : {Value : Aedate},
    Description    : {Value : Aedate}
  },
  Facets                           : [{
    $Type  : 'UI.ReferenceFacet',
    Label  : '{i18n>Details}',
    Target : '@UI.FieldGroup#Details'
  }, ],
  FieldGroup #Details              : {Data : [
    {Value : Aedate},
    {Value : Status},
    {Value : StatusTxt},
    {Value : PriorityTxt},
    {Value : numberOfMessages}

  ]}
});
