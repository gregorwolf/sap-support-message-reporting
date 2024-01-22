/* checksum : ae9ef932eb8731070ef6d5a311fc9582 */
@cds.external        : true
@cds.persistence.skip: true
entity support.CaseActionLogs {
  key internalId : LargeString not null;
      changeOn   : LargeString not null;
      action     : LargeString not null;
      oldValue   : LargeString not null;
      newValue   : LargeString not null;
      updateBy   : LargeString not null;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseActionPlans {
  status           : LargeString not null;
  plannedNextStep  : LargeString not null;
  nextStatusUpdate : LargeString not null;
  responsible      : LargeString not null;
  createdOn        : LargeString not null;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseAlertIncident {
  key pointer     : LargeString not null;
      createdAt   : LargeString;
      priorityTxt : LargeString;
      reporter    : LargeString;
      statusTxt   : LargeString;
      subject     : LargeString;
      lastUpdate  : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseAttachedSolutions {
  key ID         : LargeString not null;
      title      : LargeString;
      summary    : LargeString;
      component  : LargeString;
      type       : LargeString;
      category   : LargeString;
      created_on : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseAttachments {
      fileName       : LargeString not null;
      description    : LargeString not null;
      type           : LargeString not null;
      size           : LargeString not null;
      createdBy      : LargeString not null;
      createdOn      : LargeString not null;
      dataProtection : LargeString not null;
      cpocd          : Boolean not null;
      status         : LargeString not null;
  key url            : LargeString not null;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseContacts {
  key ID        : LargeString not null;
      role      : LargeString;
      userId    : LargeString;
      contact   : LargeString;
      mobile    : LargeString;
      telephone : LargeString;
      email     : LargeString;
      timezone  : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseDetails {
  key ID                            : LargeString not null;
      incidentNumber                : LargeString;
      incidentYear                  : LargeString;
      subject                       : LargeString;
      lastCommunication             : LargeString;
      lastCommunicationBy           : LargeString;
      component                     : LargeString;
      componentName                 : LargeString;
      classifiedContent             : LargeString;
      customer                      : LargeString;
      customerNumber                : LargeString;
      lastChanged                   : LargeString;
      createdAt                     : LargeString;
      reporter                      : LargeString;
      reporterId                    : LargeString;
      priority                      : LargeString;
      businessImpact                : LargeString;
      isFavorite                    : Boolean;
      affectedURL                   : LargeString;
      relevantId                    : LargeString;
      apiKey                        : LargeString;
      swClass                       : LargeString;
      swType                        : LargeString;
      systemNumber                  : LargeString;
      installationTxt               : LargeString;
      systemTxt                     : LargeString;
      dataProtection                : LargeString;
      lastCommunicationByIsSapAgent : Boolean;
      statusTxt                     : LargeString;
      status                        : LargeString;
      incidentSource                : LargeString;
      overruleAuth                  : Boolean;
      installationNum               : LargeString;
      aaEPDraftFlag                 : LargeString;
      aaEPFlag                      : LargeString;
      aaEPQuesEmail                 : LargeString;
      aaEPQuesStatus                : LargeString;
      aaEPQuesUUID                  : LargeString;
      aaEPSessStatus                : LargeString;
      creator                       : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseDiscussion {
  key internalId         : LargeString not null;
      dateTime           : LargeString not null;
      userName           : LargeString not null;
      isCurrentUser      : Boolean not null;
      isSAPAgent         : Boolean not null;
      type               : LargeString not null;
      originalText       : LargeString not null;
      translatedText     : LargeString;
      sourceLanguage     : LargeString;
      targetLanguage     : LargeString;
      selectedLanguage   : LargeString;
      isInitiallyMessage : Boolean;
      sys_created_by     : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseKBASolutions {
  key ID           : LargeString not null;
      title        : LargeString;
      summary      : LargeString;
      component    : LargeString;
      type         : LargeString;
      category     : LargeString;
      url          : LargeString;
      external_url : LargeString;
      release_on   : LargeString;
      created_on   : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseList {
  key pointer            : LargeString not null;
      incidentNumber     : LargeString;
      source             : LargeString;
      statusId           : LargeString;
      lastUpdate         : LargeString;
      priorityId         : LargeString;
      createdAt          : Double;
      updatedAt          : Double;
      installationId     : LargeString;
      systemNumber       : LargeString;
      customerId         : LargeString;
      reporterId         : LargeString;
      sapNumber          : LargeString;
      sapYear            : LargeString;
      subject            : LargeString;
      respITSM           : LargeString;
      statusTxt          : LargeString;
      priorityTxt        : LargeString;
      installationTxt    : LargeString;
      systemId           : LargeString;
      systemTxt          : LargeString;
      componentId        : LargeString;
      componentKey       : LargeString;
      componentTxt       : LargeString;
      reporterTxt        : LargeString;
      customerTxt        : LargeString;
      creationDate       : LargeString;
      creationTime       : LargeString;
      createdBy          : LargeString;
      updateDate         : LargeString;
      updateTime         : LargeString;
      autoConfirmDateTxt : LargeString;
      autoConfirmDate    : Double;
      productId          : LargeString;
      productTxt         : LargeString;
      userTimezone       : LargeString;
      isFavorite         : Boolean not null;
      serviceType        : LargeString;
      aaEPDraftFlag      : LargeString;
      aaEPQuesStatus     : LargeString;
      aaEPSessStatus     : LargeString;
      quesDateCreated    : LargeString;
      quesExpirationDate : LargeString;
      searchTerm         : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseSystemInfo {
  key ID                     : Integer not null;
      systemName             : LargeString not null;
      installationName       : LargeString not null;
      installationNum        : LargeString not null;
      isConnectionOpen       : Boolean not null;
      accessDataError        : LargeString;
      isAccessDataAuthorized : Boolean not null;
      isAccessDataMaintained : Boolean not null;
      isAccessDataRestricted : Boolean not null;
      secureAreaURL          : LargeString not null;
      sysnr                  : LargeString not null;
      reporter               : LargeString not null;
      dataProtection         : LargeString;
      affectedURL            : LargeString;
      relevantId             : LargeString;
      apiKey                 : LargeString;
      swClass                : LargeString;
      classifiedContent      : LargeString;
      overruleAuth           : Boolean not null;
      RampUpFlag             : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.ContractTypes {
  key ID       : LargeString not null;
      name     : LargeString not null;
      initials : LargeString not null;
      total    : Integer not null;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.OverviewContract {
      serviceName    : LargeString not null;
  key contractNumber : LargeString not null;
      contractType   : LargeString not null;
      contractTypeID : LargeString not null;
      startDate      : LargeString not null;
      endDate        : LargeString not null;
      isFavorite     : Boolean not null;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.Incidents {
  key pointer                   : LargeString not null;
      incidentID                : LargeString;
      productKey                : LargeString;
      system                    : LargeString;
      subject                   : LargeString;
      status                    : LargeString;
      statusKey                 : Integer;
      reporterProfilePictureURL : LargeString;
      reporter                  : LargeString;
      isReportedByMe            : Boolean;
      priorityKey               : Integer;
      priorityText              : LargeString;

      @odata.Precision: 0
      @odata.Type     : 'Edm.DateTimeOffset'
      lastChanged               : DateTime;
      source                    : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.IncidentsOverview {
  key ID         : LargeString not null;
  key status     : LargeString not null;
      count      : Integer;
      percentage : Double;
      reporter   : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.ServiceRequest {
  key id                : LargeString not null;
      area              : LargeString;
      sysId             : LargeString;
      number            : LargeString;
      requestFor        : LargeString;
      entity            : LargeString;
      type              : LargeString;
      title             : LargeString;
      chargeableService : LargeString;
      topic             : LargeString;
      createdOn         : LargeString;
      createdBy         : LargeString;
      startsAt          : LargeString;
      status            : LargeString;
      hasPassword       : LargeString;
      technicalSystem   : LargeString;
      systemNumber      : LargeString;
      userPasswordList  : LargeString;
      createdByUserName : LargeString;
      systemRole        : LargeString;
      isClassic         : Boolean;
      isOpen            : Boolean not null;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseAppointments {
  ID             : LargeString not null;
  type           : LargeString;
  reporter       : LargeString;
  startTime      : LargeString;
  endTime        : LargeString;
  title          : LargeString;
  status         : LargeString;
  teamsUrl       : LargeString;
  additionalInfo : LargeString;
  pointer        : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseQualtricsAuthW7 {
  w7pUrl    : LargeString not null;
  olproUrld : LargeString not null;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseContactsList {
  key ID        : LargeString not null;
      role      : LargeString;
      userId    : LargeString;
      contact   : LargeString;
      mobile    : LargeString;
      telephone : LargeString;
      email     : LargeString;
      available : Boolean;
      timezone  : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseText {
  key ID   : LargeString not null;
      name : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.EventAreaFilter {
  key keyValue  : LargeString not null;
      textValue : LargeString;
      count     : Integer;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.EventCardStatusFilter {
  key keyValue  : LargeString not null;
      textValue : LargeString;
      count     : Integer;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.F4Help {
  key Category      : LargeString not null;
  key Name          : LargeString not null;
      Type          : LargeString;
      KeyValue      : LargeString;
      KeyType       : LargeString;
      SWClass       : LargeString;
      SWType        : LargeString;
      Uname         : LargeString;
      Value         : LargeString;
      Desc1         : LargeString;
      Desc2         : LargeString;
      NotSelectFlag : LargeString;
      CustomerNbr   : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.SystemSearch {
  key systemNumber           : LargeString not null;
      uname                  : LargeString;
      customerNumber         : LargeString;
      productNumber          : LargeString;
      productText            : LargeString;
      productVersionNumber   : LargeString;
      productVersionText     : LargeString;
      installationNumber     : LargeString;
      searchText             : LargeString;
      matchScore             : LargeString;
      systemId               : LargeString;
      systemName             : LargeString;
      systemType             : LargeString;
      supportPartnerNumber   : LargeString;
      supportPartnerName     : LargeString;
      supportPartnerURL      : LargeString;
      notSelectable          : LargeString;
      customerName           : LargeString;
      installationName       : LargeString;
      softwareClass          : LargeString;
      softwareType           : LargeString;
      dataProcessRestriction : LargeString;
      dataCenterText         : LargeString;
      isSystemCloud          : LargeString;
      cloudURL               : LargeString;
      mainSystemNbr          : LargeString;
      mainSystemName         : LargeString;
      isOutOfRange           : Boolean;
      isFavorite             : Boolean;
      leadingProduct         : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CreateCustomerAndSuser {
  customerNumber : LargeString;
  suser          : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseList4Card {
  key incidentID   : LargeString not null;
      subject      : LargeString;
      status       : LargeString;
      statusKey    : LargeString;
      reporter     : LargeString;
      priorityKey  : LargeString;
      priorityText : LargeString;
      lastChanged  : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CloudSystemStatus {
  key uName          : LargeString not null;
  key systemNumber   : LargeString not null;
      customerNumber : LargeString;
      eventID        : LargeString;
      type           : LargeString;
      typeText       : LargeString;
      eventStartTime : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.SystemProductInfo {
  key keyPath            : LargeString not null;
      installationNumber : LargeString;
      systemNumber       : LargeString;
      startNodePPMSId    : LargeString;
      pathPPMSId         : LargeString;
      nodeId             : LargeString;
      parentNodeId       : LargeString;
      nodeName           : LargeString;
      fullPath           : LargeString;
      drillState         : LargeString;
      nodeLevel          : LargeString;
      componentKey       : LargeString;
      componentName      : LargeString;
      expertArea         : LargeString;
      showProduct        : Boolean;
      sortDet            : LargeString;
      pilot              : Boolean;
      addSearchTerm      : LargeString;
      addComponents      : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CasePrioritySet {
  key priorityId  : LargeString not null;
      priorityTxt : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseStatusSet {
  key statusId  : LargeString not null;
      statusTxt : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.IncidentReporterSet {
  key reporterId  : LargeString not null;
      reporterTxt : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseSystemSet {
      systemId     : LargeString not null;
  key systemNumber : LargeString not null;
      systemTxt    : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.IncidentInstSet {
  installationId  : LargeString not null;
  installationTxt : LargeString;
  inactive        : LargeString;
  customerId      : LargeString;
  customerTxt     : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseMessageTextsSet {
  pointer    : LargeString not null;
  noteType   : LargeString;
  updateDate : LargeString;
  noteText   : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.ScheduleAnExpertBooking {
  Date  : LargeString not null;
  Count : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.ScheduleAnExpertBookingTimeSlot {
  Date : LargeString not null;
  time : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.ScheduleAManagerBooking {
  Date  : LargeString not null;
  Count : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.ScheduleAManagerBookingTimeSlot {
  Date : LargeString not null;
  time : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseChannelCheckSet {
  pointer             : LargeString not null;
  component           : LargeString;
  system              : LargeString;
  productFunctionPath : LargeString;
  channelType         : LargeString;
  respArea            : LargeString;
  active              : LargeString;
  details             : LargeString;
  slots               : LargeString;
  bookingGuid         : LargeString;
  timezone            : LargeString;
  incidentTitle       : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseSuggestedSolutions {
  key ID                    : LargeString not null;
      leadingProductId      : LargeString;
      leadingProduct        : LargeString;
      problemDescription    : LargeString;
      stepToReproduce       : LargeString;
      swClass               : LargeString;
      swType                : LargeString;
      systemId              : LargeString;
      installationNumber    : LargeString;
      inputTitle            : LargeString;
      summary               : LargeString;
      component             : LargeString;
      type                  : LargeString;
      category              : LargeString;
      url                   : LargeString;
      externalUrl           : LargeString;
      releasedAt            : LargeString;
      age                   : LargeString;
      trending              : Boolean;
      score                 : LargeString;
      status                : LargeString;
      noteTitle             : LargeString;
      componentLong         : LargeString;
      systemNumber          : LargeString;
      productFunctionPathId : LargeString;
      stepsToReproduce      : LargeString;
      firstEntry            : LargeString;
      lastEntry             : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.ProductKnowledge {
  key useCaseId     : LargeString not null;
  key modelNumber   : LargeString not null;
      componentKey  : LargeString not null;
      componentName : LargeString not null;
      systemNumber  : LargeString not null;
      url           : LargeString not null;
      title         : LargeString not null;
      summary       : LargeString not null;
      category      : LargeString not null;
      kmNumber      : LargeString not null;
      domain        : LargeString not null;
      sortOrder     : LargeString not null;
      score         : LargeString not null;
      type          : LargeString not null;
      subtype       : LargeString not null;
      tag           : LargeString not null;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.UserSettingsTimeZone {
  userTimezone        : LargeString;
  timeZoneDescription : LargeString;
  timeZoneUTCsign     : LargeString;
  timeZoneUTCdiff     : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseAuthPointersSet {
  key pointer        : LargeString not null;
      updatedAt      : Double;
      createdAt      : Double;
      customerId     : LargeString;
      source         : LargeString;
      installationId : LargeString;
      lastUpdate     : LargeString;
      priorityId     : LargeString;
      reporterId     : LargeString;
      respITSM       : LargeString;
      statusId       : LargeString;
      systemId       : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseListAggregated {
  key pointer            : LargeString not null;
      incidentNumber     : LargeString;
      source             : LargeString;
      statusId           : LargeString;
      lastUpdate         : LargeString;
      priorityId         : LargeString;
      createdAt          : Double;
      updatedAt          : Double;
      installationId     : LargeString;
      systemNumber       : LargeString;
      customerId         : LargeString;
      reporterId         : LargeString;
      sapNumber          : LargeString;
      sapYear            : LargeString;
      subject            : LargeString;
      respITSM           : LargeString;
      statusTxt          : LargeString;
      priorityTxt        : LargeString;
      installationTxt    : LargeString;
      systemId           : LargeString;
      systemTxt          : LargeString;
      componentId        : LargeString;
      componentKey       : LargeString;
      componentTxt       : LargeString;
      reporterTxt        : LargeString;
      customerTxt        : LargeString;
      creationDate       : LargeString;
      creationTime       : LargeString;
      createdBy          : LargeString;
      updateDate         : LargeString;
      updateTime         : LargeString;
      autoConfirmDateTxt : LargeString;
      autoConfirmDate    : Double;
      productId          : LargeString;
      productTxt         : LargeString;
      userTimezone       : LargeString;
      isFavorite         : Boolean not null;
      serviceType        : LargeString;
      aaEPDraftFlag      : LargeString;
      aaEPQuesStatus     : LargeString;
      aaEPSessStatus     : LargeString;
      quesDateCreated    : LargeString;
      quesExpirationDate : LargeString;
      searchTerm         : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseListW7 {
  key pointer            : LargeString not null;
      incidentNumber     : LargeString;
      source             : LargeString;
      statusId           : LargeString;
      lastUpdate         : LargeString;
      priorityId         : LargeString;
      createdAt          : Double;
      updatedAt          : Double;
      installationId     : LargeString;
      systemNumber       : LargeString;
      customerId         : LargeString;
      reporterId         : LargeString;
      sapNumber          : LargeString;
      sapYear            : LargeString;
      subject            : LargeString;
      respITSM           : LargeString;
      statusTxt          : LargeString;
      priorityTxt        : LargeString;
      installationTxt    : LargeString;
      systemId           : LargeString;
      systemTxt          : LargeString;
      componentId        : LargeString;
      componentKey       : LargeString;
      componentTxt       : LargeString;
      reporterTxt        : LargeString;
      customerTxt        : LargeString;
      creationDate       : LargeString;
      creationTime       : LargeString;
      createdBy          : LargeString;
      updateDate         : LargeString;
      updateTime         : LargeString;
      autoConfirmDateTxt : LargeString;
      autoConfirmDate    : Double;
      productId          : LargeString;
      productTxt         : LargeString;
      userTimezone       : LargeString;
      isFavorite         : Boolean not null;
      serviceType        : LargeString;
      aaEPDraftFlag      : LargeString;
      aaEPQuesStatus     : LargeString;
      aaEPSessStatus     : LargeString;
      quesDateCreated    : LargeString;
      quesExpirationDate : LargeString;
      searchTerm         : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseListServiceNow {
  key pointer            : LargeString not null;
      incidentNumber     : LargeString;
      source             : LargeString;
      statusId           : LargeString;
      lastUpdate         : LargeString;
      priorityId         : LargeString;
      createdAt          : Double;
      updatedAt          : Double;
      installationId     : LargeString;
      systemNumber       : LargeString;
      customerId         : LargeString;
      reporterId         : LargeString;
      sapNumber          : LargeString;
      sapYear            : LargeString;
      subject            : LargeString;
      respITSM           : LargeString;
      statusTxt          : LargeString;
      priorityTxt        : LargeString;
      installationTxt    : LargeString;
      systemId           : LargeString;
      systemTxt          : LargeString;
      componentId        : LargeString;
      componentKey       : LargeString;
      componentTxt       : LargeString;
      reporterTxt        : LargeString;
      customerTxt        : LargeString;
      creationDate       : LargeString;
      creationTime       : LargeString;
      createdBy          : LargeString;
      updateDate         : LargeString;
      updateTime         : LargeString;
      autoConfirmDateTxt : LargeString;
      autoConfirmDate    : Double;
      productId          : LargeString;
      productTxt         : LargeString;
      userTimezone       : LargeString;
      isFavorite         : Boolean not null;
      serviceType        : LargeString;
      aaEPDraftFlag      : LargeString;
      aaEPQuesStatus     : LargeString;
      aaEPSessStatus     : LargeString;
      quesDateCreated    : LargeString;
      quesExpirationDate : LargeString;
      searchTerm         : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.ChannelRecommender {
  channelId       : LargeString;
  rank            : LargeString;
  channelText     : LargeString;
  channelData     : LargeString;
  modelNumber     : LargeString;
  status          : LargeString;
  useCaseId       : LargeString;
  casePointer     : LargeString;
  caseTitle       : LargeString;
  caseDescription : LargeString;
  priorityId      : LargeString;
  systemNumber    : LargeString;
  channelReason   : LargeString;
  tagId           : LargeString;
  areaId          : LargeString;
};

@cds.external        : true
@cds.persistence.skip: true
entity support.CaseListUserPersonalization {
  columns : LargeString;
  sort    : LargeString;
  group   : LargeString;
  tab     : LargeString;
};

@cds.external: true
service support {};
