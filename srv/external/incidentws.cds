/* checksum : 7d74c998312273a57eb677f6ddb59dbe */
@cds.external              : true
@m.IsDefaultEntityContainer: 'true'
@sap.supported.formats     : 'atom json xlsx'
service incidentws {};

@cds.persistence.skip: true
@sap.deletable       : 'false'
@sap.searchable      : 'true'
@sap.content.version : '1'
entity incidentws.MessageHeaderSet {
      @sap.unicode    : 'false'
      @sap.label      : 'Message Pointer'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
  key Pointer             : String(24);

      @sap.unicode    : 'false'
      @sap.label      : 'Installation Number where the message was created'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Csinsta             : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Message Number'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Mnumm               : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Message Year'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Myear               : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Uname'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Uname               : String(12);

      @sap.unicode    : 'false'
      @sap.label      : 'Status'
      @sap.sortable   : 'false'
      Status              : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Priority'
      @sap.sortable   : 'false'
      Priority            : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Message Number'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      MnummNLZ            : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Service Component'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Component           : LargeString;

      @odata.Type     : 'Edm.DateTime'
      @odata.Precision: 0
      @sap.unicode    : 'false'
      @sap.label      : 'Time Stamp'
      @sap.sortable   : 'false'
      Erftstmp            : DateTime;

      @odata.Type     : 'Edm.DateTime'
      @odata.Precision: 0
      @sap.unicode    : 'false'
      @sap.label      : 'Time Stamp'
      @sap.sortable   : 'false'
      Aetstmp             : DateTime;

      @odata.Type     : 'Edm.DateTime'
      @odata.Precision: 0
      @sap.unicode    : 'false'
      @sap.label      : 'Time Stamp'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Closetstmp          : DateTime;

      @sap.unicode    : 'false'
      @sap.label      : 'Reporting User'
      @sap.sortable   : 'false'
      Reporter            : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Entered By'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      EnteredBy           : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Last Changed By'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      LastChangedBy       : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Processor'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Processor           : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Short Text'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Stext               : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Language Key'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Sprsl               : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Input Type (how message is entered)'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      InputType           : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Installation Number where the message was created'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Masterinst          : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Servicetype Text'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      ServicetypTxt       : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Status Text'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      StatusTxt           : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Priority Text'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      PriorityTxt         : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Component Key'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      CompKey             : String(20);

      @sap.unicode    : 'false'
      @sap.label      : 'Service Component Text'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      ComponentTxt        : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Service Component Path'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      CompPath            : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'ERFDATE'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Erfdate             : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Create Time Formatted'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Erftime             : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Change Date Formatted'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Aedate              : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Change Time Formatted'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Aetime              : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Close Date Formatted'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Closedate           : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Cloise Time Formatted'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Closetime           : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Auto Confirm Date For Display'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AutoConfirmDateText : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Auto Confirm Date For Sorting'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AutoConfirmDate     : String(8);

      @sap.unicode    : 'false'
      @sap.label      : 'Name of Reporter'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      ReporterTxt         : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Name of Entered By User'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      EnteredByTxt        : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Name of Last changed by User'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      LastChangedTxt      : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Name of Processor'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      ProcessorTxt        : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Text of Language'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SprslTxt            : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Nuimber of Contacts'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      ContactsCnt         : Integer;

      @sap.unicode    : 'false'
      @sap.label      : 'Number of Texts'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      TextsCnt            : Integer;

      @sap.unicode    : 'false'
      @sap.label      : 'Number of Attachments'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AttxCnt             : Integer;

      @sap.unicode    : 'false'
      @sap.label      : 'Number of SAP Notes'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      NotesCnt            : Integer;

      @sap.unicode    : 'false'
      @sap.label      : 'Number of Action Log entries'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AlogCnt             : Integer;

      @sap.unicode    : 'false'
      @sap.label      : 'Number of Action Plan entries'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AplanCnt            : Integer;

      @sap.unicode    : 'false'
      @sap.label      : 'Last Text from SAP'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      LastText            : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Last Text Type'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      LastTextType        : LargeString;

      @odata.Type     : 'Edm.DateTime'
      @odata.Precision: 0
      @sap.unicode    : 'false'
      @sap.label      : 'Last Text Timestamp'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      LastTextTstmp       : DateTime;

      @sap.unicode    : 'false'
      @sap.label      : 'Last Text Date'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      LastTextDate        : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Last Text Time'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      LastTextTime        : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Last Text Creator'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      LastTextCreator     : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Text Active'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      TextActive          : String(1);

      @sap.unicode    : 'false'
      @sap.label      : 'Last Note Number'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      LastNoteNbr         : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Last Note Text'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      LastNoteTxt         : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Product Text'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      ProductTxt          : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Last Update Filter'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      LastUpdate          : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Incident Source'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      IncSource           : String(3);

      @sap.unicode    : 'false'
      @sap.label      : 'Message Source'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Source              : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'User''s Timezone'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      UserTimezone        : String(6);

      @sap.unicode    : 'false'
      @sap.label      : 'EUDP Flag'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      EUDPFlag            : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'Can be overruled (deactivate EUDP)'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      OverruleAuth        : Boolean;

      @sap.unicode    : 'false'
      @sap.label      : 'EditorType'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      EditorType          : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'DraftFlag'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      DraftFlag           : String(1);

      @sap.unicode    : 'false'
      @sap.label      : 'AltCount'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AltCount            : Integer;

      @sap.unicode    : 'false'
      @sap.label      : 'Serviced Flag'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      ServicedFlag        : String(1);

      @sap.unicode    : 'false'
      @sap.label      : 'Serviced By Cust'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      ServiceByCustText   : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Favorite incident'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Favorite            : String(1);

      @sap.unicode    : 'false'
      @sap.label      : 'Service'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Service             : String(3);

      @sap.unicode    : 'false'
      @sap.label      : 'Serv. Type'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Servicetyp          : String(3);

      @sap.unicode    : 'false'
      @sap.label      : 'Creation Time'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      FirstS2sap          : Decimal(15, 0);

      @sap.unicode    : 'false'
      @sap.label      : 'Change Time'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      LastS2sap           : Decimal(15, 0);

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field Length = 10'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      ProdRel             : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field Length = 10'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Frontend            : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field Length = 10'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      OpSystem            : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field Length = 10'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      DbSystem            : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field Length = 10'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      RampupFlag          : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'Single-Character Indicator'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      DssClassified       : String(1);

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field Length = 10'
      @sap.sortable   : 'false'
      Customer            : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'CustomerTxt'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      CustomerTxt         : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field Length = 10'
      @sap.sortable   : 'false'
      Installation        : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'InstallationTxt'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      InstallationTxt     : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Field length 18'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SystemNumber        : String(18);

      @sap.unicode    : 'false'
      @sap.label      : 'SAP System ID'
      @sap.sortable   : 'false'
      SystemId            : String(8);

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field Length = 10'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SystemType          : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'SystemTxt'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SystemTxt           : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Char20'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Product             : String(20);

      @sap.unicode    : 'false'
      @sap.label      : 'Char20'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      ProductVersion      : String(20);

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field Length = 10'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SuppPartner         : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field Length = 10'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SoftwPartner        : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field of Length 12'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Swkla               : String(12);

      @sap.unicode    : 'false'
      @sap.label      : 'GIGYA API Key'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      APIKey              : String(132);

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field Length = 10'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Product1            : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field Length = 10'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Product2            : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'Character Field Length = 10'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Product3            : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'Char20'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Help01              : String(20);

      @sap.unicode    : 'false'
      @sap.label      : 'Char20'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Help02              : String(20);

      @sap.unicode    : 'false'
      @sap.label      : 'Char20'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Help03              : String(20);

      @sap.unicode    : 'false'
      @sap.label      : 'Indicate if SNOW'
      @sap.creatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      RespITSM            : String(4);

      @sap.unicode    : 'false'
      @sap.label      : 'SearchTerm'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Searchterm          : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'SaE start time'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SaeStartTime        : String(14);

      @sap.unicode    : 'false'
      @sap.label      : 'SAE Status'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SaeStatus           : String(5);

      @sap.unicode    : 'false'
      @sap.label      : 'SaE Guid'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SaeGuid             : UUID;

      @sap.unicode    : 'false'
      @sap.label      : 'SaM start time'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SamStartTime        : String(14);

      @sap.unicode    : 'false'
      @sap.label      : 'SaM Status'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SamStatus           : String(5);

      @sap.unicode    : 'false'
      @sap.label      : 'SaM Info'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SamInfo             : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Affected URL'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AffectedURL         : LargeString;

      @sap.unicode    : 'false'
      @sap.label      : 'Relevant ID'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      RelevantID          : String(200);

      @sap.unicode    : 'false'
      @sap.label      : 'Software Type'
      @sap.creatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SWType              : String(12);

      @sap.unicode    : 'false'
      @sap.label      : 'Product Numer selected on UI'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      ProductSelected     : String(40);

      @sap.unicode    : 'false'
      @sap.label      : 'Data Protection'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      DataProtection      : String(10);

      @sap.unicode    : 'false'
      @sap.label      : 'Question UUID(Directly)'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AaEPQuesUUID        : String(40);

      @sap.unicode    : 'false'
      @sap.label      : 'Status of AaEP session'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AaEPSessStatus      : String(40);

      @sap.unicode    : 'false'
      @sap.label      : 'Status of AaEP question'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AaEPQuesStatus      : String(40);

      @sap.unicode    : 'false'
      @sap.label      : 'Email of AaEP question'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AaEPQuesEmail       : String(241);

      @sap.unicode    : 'false'
      @sap.label      : 'Created date of AaEP question'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      QuesDateCreated     : String(40);

      @sap.unicode    : 'false'
      @sap.label      : 'Expire date of AaEP question'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      ExpirationDate      : String(40);

      @sap.unicode    : 'false'
      @sap.label      : 'Flag of AaEP draft Incident'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AaEPDraftFlag       : String(1);

      @sap.unicode    : 'false'
      @sap.label      : 'Flag of AaEP draft Incident'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AaEPFlag            : String(1);

      @sap.unicode    : 'false'
      @sap.label      : 'Business Impact'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      BusinessImpactTxt   : LargeString;

      @cds.ambiguous  : 'missing on condition?'
      MessageTexts        : Association to many incidentws.MessageTextsSet
                              on MessageTexts.Pointer = Pointer;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.content.version : '1'
entity incidentws.UserDataSet {
      @sap.unicode   : 'false'
      @sap.label     : 'Benutzer'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Susid           : String(12);

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PartnerUser     : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Address'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Adrnr           : String(10);

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CloudFlag       : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      OnpremFlag      : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Char'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      UcFirst         : String(40);

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      OnecustFlag     : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Char'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      UcLast          : String(40);

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      OpenMsgFlag     : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'WarrantyUser'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      WarrantyUser    : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Char15'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Title           : String(15);

      @sap.unicode   : 'false'
      @sap.label     : 'Char'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      FirstName       : String(40);

      @sap.unicode   : 'false'
      @sap.label     : 'INSTALLATION_NBR'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstallationNbr : String(10);

      @sap.unicode   : 'false'
      @sap.label     : 'Text'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstallationTxt : String(60);

      @sap.unicode   : 'false'
      @sap.label     : 'SWType'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SWType          : String(15);

      @sap.unicode   : 'false'
      @sap.label     : 'Char'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      LastName        : String(40);

      @sap.unicode   : 'false'
      @sap.label     : 'Text'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NameText        : String(60);

      @sap.unicode   : 'false'
      @sap.label     : 'SYSTEM_NBR'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SystemNbr       : String(18);

      @sap.unicode   : 'false'
      @sap.label     : 'Text'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Email           : String(60);

      @sap.unicode   : 'false'
      @sap.label     : 'Text'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SystemTxt       : String(60);

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InternalUser    : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Customer'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Kunnr           : String(10);

      @sap.unicode   : 'false'
      @sap.label     : 'Text'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustName        : String(60);

      @sap.unicode   : 'false'
      @sap.label     : 'Char'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Phone           : String(40);

      @sap.unicode   : 'false'
      @sap.label     : 'Char'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Handy           : String(40);

      @sap.unicode   : 'false'
      @sap.label     : 'TimeZone'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TimeZone        : String(6);

      @sap.unicode   : 'false'
      @sap.label     : 'TimeZoneOffset'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TimeZoneOffset  : Integer;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.content.version : '1'
entity incidentws.MessageContactsSet {
      @sap.unicode   : 'false'
      @sap.label     : 'Message Pointer'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
  key Pointer     : String(24);

      @sap.unicode   : 'false'
      @sap.label     : 'Contact Type'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key ContTyp     : String(50);

      @sap.unicode   : 'false'
      @sap.label     : 'User Name'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key UserId      : String(12);

      @sap.unicode   : 'false'
      @sap.label     : 'Customer Number'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      Kunnr       : String(10);

      @sap.unicode   : 'false'
      @sap.label     : 'c'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      FirstName   : String(50);

      @sap.unicode   : 'false'
      @sap.label     : 'c'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      LastName    : String(50);

      @sap.unicode   : 'false'
      @sap.label     : 'Email Address'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Email       : String(60);

      @sap.unicode   : 'false'
      @sap.label     : '30 Characters'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Telephone   : String(30);

      @sap.unicode   : 'false'
      @sap.label     : '30 Characters'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Mobil       : String(30);

      @sap.unicode   : 'false'
      @sap.label     : 'Single-Character Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SmsNotif    : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Single-Character Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      EmailNotif  : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'CONT_TYP_TXT'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ContTypTxt  : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'FULL_NAME'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      FullName    : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'OPEN_MSG_FLAG'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      OpenMsgFlag : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'TIME_ZONE'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TimeZone    : String(6);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.MessageAuthSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Action     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Object     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Value      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AuthResult : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ResultTxt  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ResultCode : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.HybridCheckSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Uname           : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InternalUser    : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PartnerUser     : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      OnPremFlag      : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CloudFlag       : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChatParam       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustomerNbr     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustomerTxt     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstallationNbr : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstallationTxt : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SystemNbr       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SystemTxt       : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.StatusSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key StatusKey : String(5);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      StatusTxt : String(40);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.content.version : '1'
entity incidentws.SysParamSet {
      @sap.unicode   : 'false'
      @sap.label     : '30 Characters'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Category : String(30);

      @sap.unicode   : 'false'
      @sap.label     : 'CATVALUE'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Catvalue : LargeString;
} actions {
  action AaEPStatusUpdate(AaEPUISessionStatus : LargeString,
                          ExpireDate : LargeString,
                          QuestionUUID : LargeString,
                          QuestionStatus : LargeString,
                          IncidentID : LargeString)     returns incidentws.SysParamSet;
  action AaEPRelationshipSave(Email : LargeString,
                              CreationDate : LargeString,
                              QuestionUUID : LargeString,
                              IncidentID : LargeString) returns incidentws.SysParamSet;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.F4HelpSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Type          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      KeyValue      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      KeyType       : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SWClass       : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SWType        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Uname         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Category      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Name          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Value         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Desc1         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Desc2         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NotSelectFlag : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustomerNbr   : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.SysConnectSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Sysnr                : String(18);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer              : String(24);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Uname                : String(12);

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ConnectionOpen       : Boolean;

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AccessDataMaintained : Boolean;

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AccessDataRestricted : Boolean;

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AccessDataAuthorized : Boolean;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AccessDataError      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SecureAreaURL        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ConnectionJSON       : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.content.version : '1'
entity incidentws.UserInstallationsSet {
      @sap.unicode   : 'false'
      @sap.label     : 'User Name'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Uname : String(12);

      @sap.unicode   : 'false'
      @sap.label     : 'InstallatNr.'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Insta : String(10);

      @sap.unicode   : 'false'
      @sap.label     : 'Name 1'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Name  : String(30);

      @sap.unicode   : 'false'
      @sap.label     : 'City'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Ort   : String(25);

      @sap.unicode   : 'false'
      @sap.label     : 'Customer'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Debit : String(10);

      @sap.unicode   : 'false'
      @sap.label     : 'Betriebssyst.'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Opsys : String(8);

      @sap.unicode   : 'false'
      @sap.label     : 'Datenbanksyst.'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Dbsys : String(8);

      @sap.unicode   : 'false'
      @sap.label     : 'Version'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Oprel : String(8);

      @sap.unicode   : 'false'
      @sap.label     : 'Version'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Dbrel : String(8);

      @sap.unicode   : 'false'
      @sap.label     : 'Installation'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Intxt : String(30);

      @sap.unicode   : 'false'
      @sap.label     : 'Product class'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Swkla : String(6);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.MessageCSQSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Component : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Uname     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CSQ       : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.MessageAPlanSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer      : String(24);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CreatedOn    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DueOn        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      UserTimezone : String(6);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      StatusTxt    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Responsible  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ActionTxt    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CreateTS     : Decimal(15, 0);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DueTS        : Decimal(15, 0);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.MessageSuggSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer    : String(24);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Csinsta    : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Mnumm      : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Myear      : String(4);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Uname      : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Stext      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Aetstmp    : Decimal(15, 0);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Searchterm : LargeString;
};

@cds.persistence.skip: true
@sap.deletable       : 'false'
@sap.searchable      : 'true'
@sap.content.version : '1'
entity incidentws.MessageTextsSet {
      @sap.unicode   : 'false'
      @sap.label     : 'Message Pointer'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer      : String(24);

      @sap.unicode   : 'false'
      @sap.label     : 'Installation Message'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CrInsta      : String(10);

      @sap.unicode   : 'false'
      @sap.label     : 'Notetype'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Notetype     : String(2);

      @sap.unicode   : 'false'
      @sap.label     : 'Timestamp'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Ertstmp      : Decimal(15, 0);

      @sap.unicode   : 'false'
      @sap.label     : 'Service'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Service      : String(3);

      @sap.unicode   : 'false'
      @sap.label     : 'Serv. Type'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Servicetyp   : String(3);

      @sap.unicode   : 'false'
      @sap.label     : 'Changed by'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Aenam        : String(12);

      @sap.unicode   : 'false'
      @sap.label     : 'Timestamp'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.filterable: 'false'
      Aetstmp      : Decimal(15, 0);

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Textsperre   : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Translation  : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Valuation'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Valuation    : String(30);

      @sap.unicode   : 'false'
      @sap.label     : 'Reference Type'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Searchhelp   : String(50);

      @sap.unicode   : 'false'
      @sap.label     : 'String'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Notetext     : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'NOTETYPETXT'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Notetypetxt  : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'CREATEDATE'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Createdate   : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'CREATETIME'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Createtime   : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'CREATEDBY'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CreatedBy    : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'CHANGEDATE'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Changedate   : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'CHANGETIME'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Changetime   : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'CHANGEBY'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChangeBy     : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'TIMEZONE'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      UserTimezone : String(6);

      @sap.unicode   : 'false'
      @sap.label     : 'DraftFlag'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DraftFlag    : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'TextActive'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TextActive   : String(1);
};

@cds.persistence.skip: true
@sap.deletable       : 'false'
@sap.searchable      : 'true'
@sap.content.version : '1'
entity incidentws.MessageAttachmentsSet {
      @sap.unicode   : 'false'
      @sap.label     : 'Message Pointer'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer       : String(24);

      @sap.unicode   : 'false'
      @sap.label     : 'Hash Value'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Hash          : Binary(20);

      @sap.unicode   : 'false'
      @sap.label     : 'Hash40'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Hash40        : String(40);

      @sap.unicode   : 'false'
      @sap.label     : 'Service'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Service       : String(3);

      @sap.unicode   : 'false'
      @sap.label     : 'Serv. Type'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Servicetyp    : String(3);

      @sap.unicode   : 'false'
      @sap.label     : 'Work Area Length 128'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Filename      : String(128);

      @sap.unicode   : 'false'
      @sap.label     : 'Text'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Text          : String(60);

      @sap.unicode   : 'false'
      @sap.label     : 'Type'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Type          : String(64);

      @sap.unicode   : 'false'
      @sap.label     : 'Creation Time'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Merftstmp     : Decimal(15, 0);

      @sap.unicode   : 'false'
      @sap.label     : 'Entered by'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Merfnam       : String(12);

      @sap.unicode   : 'false'
      @sap.label     : 'Change Time'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Maetstmp      : Decimal(15, 0);

      @sap.unicode   : 'false'
      @sap.label     : 'Changed by'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Maenam        : String(12);

      @sap.unicode   : 'false'
      @sap.label     : 'Single-Character Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Internal      : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Single-Character Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Flag01        : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Single-Character Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Flag02        : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Single-Character Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Flag03        : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Single-Character Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Flag04        : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Single-Character Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Isurl         : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Doc. contents'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Url           : String(1022);

      @sap.unicode   : 'false'
      @sap.label     : 'Attx Contains Personal or Confident. Data'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Cpocd         : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Attx Data Protection Restriction'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Dprest        : String(4);

      @sap.unicode   : 'false'
      @sap.label     : 'FileLength'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      FilelengthTxt : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Created by'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CreatedBy     : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Created on'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CreatedOn     : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Timezone'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      UserTimezone  : String(6);

      @sap.unicode   : 'false'
      @sap.label     : 'DraftFlag'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DraftFlag     : String(1);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.ProductSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key ProdId  : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Uname   : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstNbr : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ProdTxt : String(60);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Sysnr   : String(18);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.PrioritySet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Prio     : String(2);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PrioTxt  : String(40);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PrioDesc : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.SubproductSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key CompKey          : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Uname            : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Installation     : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SubproductId     : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.filterable: 'false'
      SubproductTxt    : String(60);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SubproductPath   : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PrioLimit        : String(4);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChatDepartmentId : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AllComp          : String(1);
};

@cds.persistence.skip: true
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.MessageCoreSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Action          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SaeDuration     : Integer;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SaeStartTime    : Decimal(31, 0);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SaeAction       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SamDuration     : Integer;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SamStartTime    : Decimal(31, 0);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SamInfo         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      UserTimezone    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Sysnr           : String(18);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Component       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ShortText       : String(120);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      LongText        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      BiText          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ReproText       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Priority        : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Uname           : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Pointer         : String(24);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      MnummNLZ        : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DraftFlag       : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DataProtection  : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DSSClassified   : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Language        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ContactStr      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AttxStr         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ValueStr        : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Signed INT2 / int16'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      RetCode         : Integer;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ResultTxt       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TextActive      : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AffectedURL     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      RelevantID      : String(200);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ProductSelected : String(40);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      KMdata          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      EEAPath         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Source          : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Replication Case'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      RepCase         : String(1);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.MessageNoteSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer         : String(24);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NoteNbr         : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NoteShortTxt    : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      LatestNotesFlag : Boolean;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CategoryDes     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Notetype        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Abstract        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponetName    : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentPath   : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ReleasedOnDate  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CreatedOn       : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.content.version : '1'
entity incidentws.MessageAlogSet {
      @sap.unicode   : 'false'
      @sap.label     : 'User Name'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Uname        : String(12);

      @sap.unicode   : 'false'
      @sap.label     : 'Message Pointer'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer      : String(24);

      @sap.unicode   : 'false'
      @sap.label     : 'Installation Message'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key CrInsta      : String(10);

      @sap.unicode   : 'false'
      @sap.label     : 'Change Time'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Aetstmp      : Decimal(15, 0);

      @sap.unicode   : 'false'
      @sap.label     : 'Number'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Lfnr         : String(5);

      @sap.unicode   : 'false'
      @sap.label     : 'Service'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Service      : String(3);

      @sap.unicode   : 'false'
      @sap.label     : 'Serv. Type'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Servicetyp   : String(3);

      @sap.unicode   : 'false'
      @sap.label     : 'Changed by'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Aenam        : String(12);

      @sap.unicode   : 'false'
      @sap.label     : 'Table Name'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Tabname      : String(30);

      @sap.unicode   : 'false'
      @sap.label     : 'Actionlog Object'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Alobject     : String(30);

      @sap.unicode   : 'false'
      @sap.label     : 'Actionlog Value'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      OldVal       : String(50);

      @sap.unicode   : 'false'
      @sap.label     : 'Actionlog Value'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NewVal       : String(50);

      @sap.unicode   : 'false'
      @sap.label     : 'Character Field Length = 10'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AeDate       : String(10);

      @sap.unicode   : 'false'
      @sap.label     : 'char8'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AeTime       : String(8);

      @sap.unicode   : 'false'
      @sap.label     : 'Week Day'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DayTxt       : String(20);

      @sap.unicode   : 'false'
      @sap.label     : 'Changed by'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NameTxt      : String(40);

      @sap.unicode   : 'false'
      @sap.label     : 'Action'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ActionTxt    : String(20);

      @sap.unicode   : 'false'
      @sap.label     : 'Old value'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      OldTxt       : String(45);

      @sap.unicode   : 'false'
      @sap.label     : 'New value'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NewTxt       : String(45);

      @sap.unicode   : 'false'
      @sap.label     : 'Time Zone'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      UserTimezone : String(6);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.MessagePCCSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer    : String(24);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      LaunchFlag : String(1);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.CompF4HelpSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Uname            : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ShortText        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      LongText         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SWType           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Category         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompKey          : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompName         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompDesc         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompPath         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PrioLimit        : String(4);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NotSelectable    : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Installation     : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChatDepartmentId : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      HasChild         : String(1);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.CompSearchSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key SearchText       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SWType           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompKey          : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompName         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompDesc         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PrioLimit        : String(4);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NotSelectable    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Installation     : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChatDepartmentId : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompPath         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      MatchScore       : Decimal(7, 2);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AllComp          : String(1);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.SystemSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key SystemNumber     : String(18);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SystemID         : String(3);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SystemTxt        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Uname            : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Source           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PartnerSupported : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Customer         : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustomerTxt      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Installation     : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstallationTxt  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Priority         : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Status           : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      LastUpdate       : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.TopNoteSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Number        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Title         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Component     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentName : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentText : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Priority      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Category      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Rating        : Double;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Abstract      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NoteTypeKey   : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NoteType      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ReleasedOn    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      SystemNumber  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      Uname         : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.InstallationSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key InstNbr    : String(18);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstTxt    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Uname      : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Source     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Customer   : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Priority   : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Status     : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      LastUpdate : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.MessageDSS {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Kunnr         : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Insnr         : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Sysnr         : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DSSClassified : String(1);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.SystemSearchSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Uname              : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustomerNbr        : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ProductNbr         : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ProductTxt         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ProductVerNbr      : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ProductVerTxt      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstallationNbr    : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SearchTxt          : String(40);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      MatchScore         : Decimal(7, 2);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SystemNbr          : String(18);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SystemId           : String(3);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SystemName         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      SystemType         : String(40);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SupportPartnerNbr  : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SupportPartnerName : String(60);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SupportPartnerURL  : String(255);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NotSelectable      : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustomerName       : String(60);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstallationName   : String(60);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SWClass            : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SWType             : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      DPRest             : String(4);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      DataCenter         : String(40);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DataCenterText     : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Signed INT2 / int16'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SystemTypePrio     : Integer;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      IsCloud            : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      LongSystemID       : String(40);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CloudURL           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      LeadingProduct     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      IsFavorite         : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      MainSystemNbr      : String(18);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      MainSystemName     : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.CustProdInstSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Uname    : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustNbr  : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustName : String(100);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ProdNbr  : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ProdName : String(100);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstNbr  : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstName : String(100);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.RampUpSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Sysnr      : String(18);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      RampUpFlag : String(10);
};

@cds.persistence.skip: true
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.CitrixChatSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Description    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Reporter       : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CreatedBy      : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Additional     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      BusinessImpact : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Step2Repro     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CreatedAt      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChatGuid       : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.SysTypeSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Uname           : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustomerNbr     : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ProductNbr      : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstallationNbr : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Sytyp           : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Descr           : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.CompAdvisorSuggSet {
      @sap.unicode   : 'false'
      @sap.label     : 'User Name'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Uname            : String(12);

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ShortText        : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      LongText         : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SWType           : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Category         : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Char20'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompKey          : String(20);

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompName         : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompDesc         : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Undefined range (can be used for patch levels)'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PrioLimit        : String(4);

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NotSelectable    : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Character Field with Length 10'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Installation     : String(10);

      @sap.unicode   : 'false'
      @sap.label     : 'Char20'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChatDepartmentId : String(20);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.FavoriteIncidentSet {
      @sap.unicode   : 'false'
      @sap.label     : 'Message Pointer'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer : String(24);

      @sap.unicode   : 'false'
      @sap.label     : 'Favorite Value'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Value   : String(1);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.GigyaCompSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key CompKey   : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Uname     : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompName  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompDesc  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PrioLimit : String(4);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.IncidentHeaderSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer            : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      InboxType          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      IncidentNumberText : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SubjectText        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      StatusKey          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      StatusText         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PriorityKey        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PriorityText       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      InstallationNbr    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstallationText   : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SystemId           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentName      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentDes       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      ReporterId         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ReporterName       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustomerNumber     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustomerText       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      CreatedOn          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CreatedOnDate      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CreatedOnTime      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      UpdatedOn          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      UpdatedOnDate      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      UpdatedOnTime      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AutoConfirmOn      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AutoConfirmOnDate  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Timezone           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DraftFlag          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ServiceTyp         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Service            : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.InstallationRelatedSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Insnr   : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SWType  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SWClass : String(12);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.IncidentInstSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key InstNbr      : String(18);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstTxt      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustomerNbr  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CustomerText : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Inactive     : String(1);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InactiveTxt  : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.IncidentReporterSet {
      @sap.unicode   : 'false'
      @sap.label     : 'REPORTERID'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key ReporterId   : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'REPORTERNAME'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ReporterName : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.SaECheckSet {
      @sap.unicode   : 'false'
      @sap.label     : 'Message Pointer'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer    : String(24);

      @sap.unicode   : 'false'
      @sap.label     : 'SaE Check Value'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SaEFlag    : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Processor'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Processor  : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Expert Area'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ExpertArea : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'SaE Details'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SaEDetails : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.CompPredictionSet {
      @sap.unicode   : 'false'
      @sap.label     : 'User Name'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Uname            : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Type             : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ShortText        : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      LongText         : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SWType           : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Category         : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Char20'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompKey          : String(20);

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompName         : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompDesc         : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Component Path'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      CompPath         : String(255);

      @sap.unicode   : 'false'
      @sap.label     : 'Undefined range (can be used for patch levels)'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PrioLimit        : String(4);

      @sap.unicode   : 'false'
      @sap.label     : 'string'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NotSelectable    : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Character Field with Length 10'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Installation     : String(10);

      @sap.unicode   : 'false'
      @sap.label     : 'Char20'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChatDepartmentId : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SystemNr         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NodePath         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NodeAdvice       : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.AllowedFileTypesSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.filterable: 'false'
  key Service     : String(3);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.filterable: 'false'
  key ServiceType : String(3);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      FileType    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      IsAllowed   : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.AttachmentSet {
      @sap.unicode   : 'false'
      @sap.label     : 'Identifier'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Identifier : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Url'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Url        : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'DataString'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DataString : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'FileName'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      FileName   : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.SysProductSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key ProdId  : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Uname   : String(12);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstNbr : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ProdTxt : String(60);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Sysnr   : String(18);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.ServiceMailSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.filterable: 'false'
  key Servicename : String(12);

      @sap.unicode   : 'false'
      Title       : LargeString;

      @sap.unicode   : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Subtitle    : LargeString;

      @sap.unicode   : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Description : LargeString;

      @sap.unicode   : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Link        : LargeString;

      @sap.unicode   : 'false'
      Priority    : LargeString;

      @sap.unicode   : 'false'
      @sap.updatable : 'false'
      Application : String(16);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Error       : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.SaMCheckSet {
      @sap.unicode   : 'false'
      @sap.label     : 'Message Pointer'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer    : String(24);

      @sap.unicode   : 'false'
      @sap.label     : 'SaM Source'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key SaMSource  : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'SaM Check Value'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SaMFlag    : String(1);

      @sap.unicode   : 'false'
      @sap.label     : 'Processor'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Processor  : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Expert Area'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ExpertArea : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Details'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SaMDetails : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.SysProductEnhSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key KeyPath            : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstNbr            : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Sysnr              : String(18);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Start_Node_PPMS_ID : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Path_PPMS_ID       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Node_ID            : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Parent_Node_ID     : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Node_Name          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Full_Path          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Drill_State        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Node_Level         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentKey       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentName      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Expert_Area        : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ShowProduct        : Boolean;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SortDet            : Integer64;

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Pilot              : Boolean;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AddSearchTerms     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AddComponents      : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.ExpertAreaF4HelpSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Uname        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      ExpertAreaID : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.ACRFSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key ![Key]    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Data      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Timestamp : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Filter    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Table     : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_TopicsSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key NodeID           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key NodePath         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Score            : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NodePathName     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Techname         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NodeName         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NodeType         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NodeTypeName     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NodeClustertype  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PPMSID           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Nexus_area       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Cloudsystemrole  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Component_key    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Component_name   : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Created_at       : Integer64;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Created_by       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Changed_at       : Integer64;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Changed_by       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Status           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Sortdet          : Integer;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Semantic         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Product_type     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Information      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SearchTerms      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Action           : LargeString;

      @cds.ambiguous : 'missing on condition?'
      Ext              : Association to incidentws.EEA_Topics_extSet
                           on  Ext.NodeID   = NodeID
                           and Ext.NodePath = NodePath;

      @cds.ambiguous : 'missing on condition?'
      Km               : Association to many incidentws.EEA_Topics_kmSet
                           on  Km.NodeID   = NodeID
                           and Km.NodePath = NodePath;

      @cds.ambiguous : 'missing on condition?'
      Attr             : Association to many incidentws.EEA_Topics_attrSet
                           on  Attr.NodePath = NodePath
                           and Attr.NodeID   = NodeID;

      @cds.ambiguous : 'missing on condition?'
      Rel              : Association to many incidentws.EEA_Topics_relSet
                           on  Rel.NodePath = NodePath
                           and Rel.NodeID   = NodeID;

      @cds.ambiguous : 'missing on condition?'
      EEA_Topics_tfSet : Association to many incidentws.EEA_Topics_tfSet
                           on  EEA_Topics_tfSet.NodePath = NodePath
                           and EEA_Topics_tfSet.NodeID   = NodeID;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_MaintainSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key KeyPath            : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InstNbr            : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Sysnr              : String(18);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Start_Node_PPMS_ID : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Node_ID            : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Parent_Node_ID     : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Node_Name          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Full_Path          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Drill_State        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Node_Level         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentKey       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentName      : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ShowProduct        : Boolean;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ShowProductText    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SortDet            : Integer64;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Inactive           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NodeStatus         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Node_Semantic      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Node_Type          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Node_PPMS_ID       : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Inherit_PPMS_ID    : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Inherit_PPMS_ID_ID : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NoBuffer           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Languages          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      HideRP             : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AttrFilter         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SearchRoot         : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_Topics_extSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key NodeID         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key NodePath       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      StartNodes     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DestComponents : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Channels       : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_Topics_kmSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key NodeID         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key NodePath       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key KM_Type_ID     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Counter        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      KM_Type        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      URL            : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      URL_Short_Text : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      URL_Long_Text  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      URL_Domain     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      URL_Visibility : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      URL_Info       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Condition      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Status         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Auth           : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Signed INT2 / int16'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Sortdet        : Integer;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TF             : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_Topics_attrSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key NodeID    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key NodePath  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key TypeID    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Counter   : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Type      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Value     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Condition : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Status    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Grouping  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Auth      : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Signed INT2 / int16'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Sortdet   : Integer;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_EdgeSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Parent_ID  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Child_ID   : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Created_at : Integer64;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Created_by : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Changed_at : Integer64;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Changed_by : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Status     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Semantic   : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Action     : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.CloudSysStatusSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
  key Uname          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
  key SystemNbr      : String(18);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      CustomerNbr    : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      EventID        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Type           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TypeText       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      EventStartTime : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_PermissionSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key User  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Level : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.ExpertChatCheckSetSet {
      @sap.unicode   : 'false'
      @sap.label     : 'MessagePointer'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer            : String(24);

      @sap.unicode   : 'false'
      @sap.label     : 'Compoent'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Component          : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Swtype'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SWType             : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'IncidentStatus'
      @sap.sortable  : 'false'
      IncidentStatus     : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'IsDsDevelopment'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      IsDsDevelopment    : Boolean;

      @sap.unicode   : 'false'
      @sap.label     : 'BoldAvtive'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      BoldAvtive         : Boolean;

      @sap.unicode   : 'false'
      @sap.label     : 'ChatOnIncident'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChatOnIncident     : Boolean;

      @sap.unicode   : 'false'
      @sap.label     : 'IncidentAge'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      IncidentAge        : Integer;

      @sap.unicode   : 'false'
      @sap.label     : 'IncidentPriority'
      @sap.sortable  : 'false'
      IncidentPriority   : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'ExpertAreaDes'
      @sap.sortable  : 'false'
      ExpertAreaDes      : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'NexusAreaDes'
      @sap.sortable  : 'false'
      NexusAreaDes       : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'NexusAreaId'
      @sap.sortable  : 'false'
      NexusAreaId        : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'ProcessorAvailable'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ProcessorAvailable : Boolean;

      @sap.unicode   : 'false'
      @sap.label     : 'Processor'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Processor          : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_Topics_relSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key NodeID   : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key NodePath : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      RelType  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      RelID    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      RelName  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Status   : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_ValuesSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key ![Key] : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Data   : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_PathSearchSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Path       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Component  : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Indicator'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Selectable : Boolean;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.ReadNoteSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Number : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Data   : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.ERCD_SystemsSet {
      @sap.unicode    : 'false'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
  key KunNr      : LargeString;

      @sap.unicode    : 'false'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
  key InsNr      : LargeString;

      @sap.unicode    : 'false'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
  key SysNr      : LargeString;

      @sap.unicode    : 'false'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
  key OpenCon    : LargeString;

      @odata.Type     : 'Edm.DateTime'
      @odata.Precision: 0
      @sap.unicode    : 'false'
      @sap.label      : 'Time Stamp'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      FromTS     : DateTime;

      @odata.Type     : 'Edm.DateTime'
      @odata.Precision: 0
      @sap.unicode    : 'false'
      @sap.label      : 'Time Stamp'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      ToTS       : DateTime;

      @sap.unicode    : 'false'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      SysID      : LargeString;

      @sap.unicode    : 'false'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      Dpres      : LargeString;

      @sap.unicode    : 'false'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      LOP        : LargeString;

      @sap.unicode    : 'false'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      AppServers : LargeString;

      @odata.Type     : 'Edm.DateTime'
      @odata.Precision: 0
      @sap.unicode    : 'false'
      @sap.label      : 'Time Stamp'
      @sap.creatable  : 'false'
      @sap.updatable  : 'false'
      @sap.sortable   : 'false'
      @sap.filterable : 'false'
      UploadTS   : DateTime;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.SNTokenSet {
      @sap.unicode   : 'false'
      @sap.label     : 'Message Pointer'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Pointer : String(24);

      @sap.unicode   : 'false'
      @sap.label     : 'Uname'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Uname   : String(12);

      @sap.unicode   : 'false'
      @sap.label     : 'Token'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Token   : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_Topics_tfSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key NodeID        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key NodePath      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PPMSID        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Condition     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NoteNr        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NoteType      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Score         : Double;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      EndDate       : Integer64;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Type          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Subtype       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      URL           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ShortText     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      LongText      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      MassData      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentID   : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentName : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Options       : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.AaEPSwitchSet {
      @sap.unicode   : 'false'
      @sap.label     : 'Name'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Name     : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Category'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Category : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Value'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Value    : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_RESP_AreaSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Id         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Name       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ParentId   : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AreaTypeId : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Status     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      FKey       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      OrgKey     : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Signed INT2 / int16'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Level      : Integer;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DrillState : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Task       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      SearchBy   : LargeString;

      @cds.ambiguous : 'missing on condition?'
      Attr       : Association to many incidentws.EEA_RESP_AttrSet
                     on Attr.AreaId = Id;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_RESP_AttrSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key AttrId       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      AreaId       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TypeId       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TypeName     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      TypeType     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Sort         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Value        : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Signed INT2 / int16'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      InheritDepth : Integer;

      @cds.ambiguous : 'missing on condition?'
      Area         : Association to incidentws.EEA_RESP_AreaSet
                       on Area.Id = AreaId;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_RESPSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key ![Key] : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Json   : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_RESP_ChannelSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key AreaId  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Channel : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Status  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Source  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Info    : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_RESP_ChannelTasksSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Path     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Data     : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChatData : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_RESP_CompSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Id              : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Name            : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ParentId        : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Signed INT2 / int16'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Level           : Integer;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DrillState      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      NodeId          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentKey    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentName   : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ComponentSelect : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Source          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      IsArea          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PsArea          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DevArea         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      MainArea        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      DocuArea        : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_RESP_ChannelUserSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key ChannelTypeID : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key UserID        : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'Signed INT2 / int16'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      MaxPerWeek    : Integer;

      @sap.unicode   : 'false'
      @sap.label     : 'Signed INT2 / int16'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      MaxPerDay     : Integer;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChandeAt      : Integer64;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChangedBy     : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_RESP_ChannelQualSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key ChannelTypeID : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key RespAreaID    : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key UserID        : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChangedAt     : Integer64;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChangedBy     : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEASet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Type  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ![In] : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Out   : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.ChannelCheckSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key Component           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key System              : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ProductFunctionPath : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      IncidentID          : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      IncidentTitle       : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChannelType         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      RespArea            : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Active              : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Details             : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Slots               : LargeString;

      @sap.unicode   : 'false'
      @sap.label     : 'UUID'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      BookingGuid         : UUID;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Timezone            : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.ACRFPPMSSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key CL_KEY   : String(10);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      PPMS_KEY : String(20);

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      del_flag : String(1);
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_BuiltInSupportSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key SystemNumber   : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key ComponentName  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      KMContent      : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Categorization : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.EEA_S4M_PredictiveSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key InputParams  : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      OutputParams : LargeString;
};

@cds.persistence.skip: true
@sap.creatable       : 'false'
@sap.updatable       : 'false'
@sap.deletable       : 'false'
@sap.pageable        : 'false'
@sap.addressable     : 'false'
@sap.content.version : '1'
entity incidentws.ChannelRecommenderSet {
      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
  key ChannelID           : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      Rank                : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChannelText         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ChannelData         : LargeString;

      @sap.unicode   : 'false'
      @sap.creatable : 'false'
      @sap.updatable : 'false'
      @sap.sortable  : 'false'
      @sap.filterable: 'false'
      ProductFunctionPath : LargeString;
};
