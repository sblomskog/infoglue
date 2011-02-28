CREATE SEQUENCE cmAvailServBind_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmAvailServBind (  AvailServBindId integer  NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  visualizationAction varchar(100) NOT NULL,  isMandatory integer default 0 NOT NULL,  isUserEditable integer default 0 NOT NULL,  isInheritable integer default 0 NOT NULL,  PRIMARY KEY  (AvailServBindId));CREATE SEQUENCE cmAvailServBindSiNoTypeDef_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmAvailServBindSiNoTypeDef (  AvailServBindId integer default 0 NOT NULL,  SiNoTypeDefId integer default 0 NOT NULL,  PRIMARY KEY  (AvailServBindId, SiNoTypeDefId));CREATE SEQUENCE cmCont_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmCont (  ContId integer  NOT NULL,  name varchar(100) NOT NULL,  publishDateTime date  NOT NULL,  expireDateTime date  NOT NULL,  contentTypeDefId integer default NULL,  parentContId integer default NULL,  creator varchar(100) NOT NULL,  repositoryId integer default 0 NOT NULL,  isBranch integer default 0 NOT NULL,  isProtected integer default 2 NOT NULL,  isDeleted int NOT NULL DEFAULT 0,  PRIMARY KEY  (ContId));CREATE SEQUENCE cmContRelation_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmContRelation (  ContRelationId integer  NOT NULL,  relationInternalName varchar(100) NOT NULL,  relationTypeId integer default 0 NOT NULL,  sourceContId integer default 0 NOT NULL,  destinationContId integer default 0 NOT NULL,  PRIMARY KEY  (ContRelationId));CREATE SEQUENCE cmContentTypeDef_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmContentTypeDef (  contentTypeDefId integer  NOT NULL,  schemaValue clob NOT NULL,  name varchar(100) NOT NULL,  type integer default 0 NOT NULL,  PRIMARY KEY  (contentTypeDefId));CREATE SEQUENCE cmContVer_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmContVer (  ContVerId integer  NOT NULL,  stateId integer default 0 NOT NULL,  VerValue clob NOT NULL,  modifiedDateTime date  NOT NULL,  VerComment varchar(1024),  isCheckedOut integer default 0 NOT NULL,  isActive integer default 1 NOT NULL,  ContId integer default 0 NOT NULL,  languageId integer default 0 NOT NULL,  versionModifier varchar(1024) NOT NULL,  PRIMARY KEY  (ContVerId));CREATE SEQUENCE cmContVerDigAsset_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmContVerDigAsset (  ContVerId integer default 0 NOT NULL,  DigAssetId integer default 0 NOT NULL,  PRIMARY KEY  (ContVerId, DigAssetId));CREATE SEQUENCE cmUserPropDigAsset_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmUserPropDigAsset (  userPropId integer default 0 NOT NULL,  DigAssetId integer default 0 NOT NULL,  PRIMARY KEY  (userPropId, DigAssetId));CREATE SEQUENCE cmRolePropDigAsset_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmRolePropDigAsset (  rolePropId integer default 0 NOT NULL,  DigAssetId integer default 0 NOT NULL,  PRIMARY KEY  (rolePropId, DigAssetId));CREATE SEQUENCE cmDigAsset_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmDigAsset (  DigAssetId integer  NOT NULL,  assetKey varchar(255) NOT NULL,  assetFileName varchar(1024) NOT NULL,  assetFilepath varchar(1024) NOT NULL,  assetFileSize integer default 0 NOT NULL,  assetContentType varchar(255) NOT NULL,  assetBlob blob,  PRIMARY KEY  (DigAssetId));CREATE SEQUENCE cmLanguage_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmLanguage (  languageId integer  NOT NULL,  name varchar(100) NOT NULL,  languageCode varchar(5) NOT NULL,  charset varchar(30) NOT NULL,  PRIMARY KEY  (languageId));CREATE SEQUENCE cmPublication_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmPublication (  publicationId integer  NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  publicationDateTime date  NOT NULL,  publisher varchar(100) NOT NULL,  repositoryId integer default 0 NOT NULL,  PRIMARY KEY  (publicationId));CREATE SEQUENCE cmQualifyer_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmQualifyer (  qualifyerId integer  NOT NULL,  name varchar(100) NOT NULL,  value varchar(100) NOT NULL,  sortOrder integer default 0 NOT NULL,  ServBindId integer default 0 NOT NULL,  PRIMARY KEY  (qualifyerId));CREATE SEQUENCE cmRepository_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmRepository (  repositoryId integer  NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  dnsName varchar(255),  PRIMARY KEY  (repositoryId));CREATE SEQUENCE cmRepositoryContTypeDef_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmRepositoryContTypeDef (  repositoryId integer default 0 NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  PRIMARY KEY  (repositoryId, contentTypeDefId));CREATE SEQUENCE cmRepositoryLanguage_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmRepositoryLanguage (  repositoryLanguageId integer  NOT NULL,  repositoryId integer default 0 NOT NULL,  languageId integer default 0 NOT NULL,  isPublished integer default 0 NOT NULL,  sortOrder integer default 0 NOT NULL,  PRIMARY KEY  (repositoryLanguageId));CREATE SEQUENCE cmRole_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmRole (  roleName varchar(100) NOT NULL,  description varchar(255) NOT NULL,  PRIMARY KEY  (roleName));CREATE SEQUENCE cmServBind_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmServBind (  ServBindId integer  NOT NULL,  name varchar(100) NOT NULL,  path varchar(255) NOT NULL,  BindTypeId integer default 0 NOT NULL,  ServDefId integer default 0 NOT NULL,  AvailServBindId integer default 0 NOT NULL,  SiNoVerId integer default 0 NOT NULL,  PRIMARY KEY  (ServBindId));CREATE SEQUENCE cmServDef_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmServDef (  ServDefId integer  NOT NULL,  className varchar(100) NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  PRIMARY KEY  (ServDefId));CREATE SEQUENCE cmServDefAvailServBind_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmServDefAvailServBind (  ServDefId integer default 0 NOT NULL,  AvailServBindId integer default 0 NOT NULL,  PRIMARY KEY  (ServDefId, AvailServBindId));CREATE SEQUENCE cmSiNo_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmSiNo (  SiNoId integer NOT NULL,  name varchar(100) NOT NULL,  publishDateTime date NOT NULL,  expireDateTime date NOT NULL,  parentSiNoId integer default NULL,  creator varchar(100) NOT NULL,  repositoryId integer default 0 NOT NULL,  SiNoTypeDefId integer default 0,  isBranch integer default 0 NOT NULL,  metaInfoContentId integer DEFAULT -1,  isDeleted int NOT NULL DEFAULT 0,  PRIMARY KEY  (SiNoId));CREATE SEQUENCE cmSiNoTypeDef_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmSiNoTypeDef (  SiNoTypeDefId integer  NOT NULL,  invokerClassName varchar(100) NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  PRIMARY KEY  (SiNoTypeDefId));CREATE SEQUENCE cmSiNoVer_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmSiNoVer (  SiNoVerId integer NOT NULL,  stateId integer default 0 NOT NULL,  VerNumber integer default 0 NOT NULL,  modifiedDateTime date NOT NULL,  VerComment varchar(1024) NOT NULL,  isCheckedOut integer default 0 NOT NULL,  isActive integer default 1 NOT NULL,  SiNoId integer default 0 NOT NULL,  versionModifier varchar(100) NOT NULL,  isProtected integer default 2 NOT NULL,  disablePageCache integer default 2 NOT NULL,  disableEditOnSight integer default 2 NOT NULL,  disableLanguages integer default 2 NOT NULL,  disableForceIDCheck integer default 2 NOT NULL,  forceProtocolChange integer default 0 NOT NULL,  contentType varchar(100) DEFAULT 'text/html' NOT NULL,  pageCacheKey varchar(255) DEFAULT 'default' NOT NULL,  pageCacheTimeout VARCHAR(20) default NULL,  sortOrder int NOT NULL DEFAULT '-1',  isHidden int NOT NULL DEFAULT 0,  PRIMARY KEY  (SiNoVerId));CREATE SEQUENCE cmSystemUser_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmSystemUser (  userName varchar(100) NOT NULL,  password varchar(100) NOT NULL,  firstName varchar(100) NOT NULL,  lastName varchar(100) NOT NULL,  email varchar(255) NOT NULL,  PRIMARY KEY  (userName));CREATE SEQUENCE cmSystemUserRole_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmSystemUserRole (  userName varchar(100) NOT NULL,  roleName varchar(100) NOT NULL,  PRIMARY KEY  (userName, roleName));CREATE SEQUENCE cmTransactionHistory_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmTransactionHistory (  transactionHistoryId integer  NOT NULL,  name varchar(200) NOT NULL,  transactionDateTime date  NOT NULL,  transactionTypeId integer default 0 NOT NULL,  transactionObjectId varchar(200) NOT NULL,  transactionObjectName varchar(200) NOT NULL,  systemUserName varchar(200) NOT NULL,  PRIMARY KEY  (transactionHistoryId));CREATE SEQUENCE cmPublicationDetail_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmPublicationDetail (  publicationDetailId integer  NOT NULL,  publicationId integer default 0 NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  entityClass varchar(255) NOT NULL,  entityId integer default 0 NOT NULL,  creationDateTime date NOT NULL,  typeId integer default 0 NOT NULL,  publisher varchar(100) NOT NULL,  PRIMARY KEY  (publicationDetailId));CREATE SEQUENCE cmEvent_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmEvent (  eventId integer  NOT NULL,  repositoryId integer default 0 NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  entityClass varchar(255) NOT NULL,  entityId integer default 0 NOT NULL,  creationDateTime date NOT NULL,  typeId integer default 0 NOT NULL,  creator varchar(100) NOT NULL,  PRIMARY KEY  (eventId));CREATE SEQUENCE cmRoleContentTypeDef_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmRoleContentTypeDef (  roleContentTypeDefId integer NOT NULL,  roleName varchar(100) NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  PRIMARY KEY  (roleContentTypeDefId));CREATE SEQUENCE cmRoleProperties_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmRoleProperties (  rolePropertiesId integer NOT NULL,  roleName varchar(100) NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  value clob NOT NULL,  languageId integer default 0 NOT NULL,  PRIMARY KEY  (rolePropertiesId));CREATE SEQUENCE cmUserContentTypeDef_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmUserContentTypeDef (  userContentTypeDefId integer NOT NULL,  userName varchar(255) NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  PRIMARY KEY  (userContentTypeDefId));CREATE SEQUENCE cmUserProperties_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmUserProperties (  userPropertiesId integer NOT NULL,  userName varchar(255) NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  value clob NOT NULL,  languageId integer default 0 NOT NULL,  PRIMARY KEY  (userPropertiesId));CREATE SEQUENCE cmAccessRight_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmAccessRight (  accessRightId integer NOT NULL,  parameters varchar(2048),  interceptionPointId integer NOT NULL,  PRIMARY KEY  (accessRightId));CREATE SEQUENCE cmInterceptionPoint_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmInterceptionPoint (  interceptionPointId integer NOT NULL,  category varchar(100) NOT NULL,  name varchar(100) NOT NULL,  description varchar(1024) NOT NULL,  usesExtraDataForAccessControl integer default 0,  PRIMARY KEY  (interceptionPointId));CREATE SEQUENCE cmIntPointInterceptor_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmIntPointInterceptor (  interceptionPointId integer NOT NULL,  interceptorId integer NOT NULL,  PRIMARY KEY  (interceptionPointId, interceptorId));CREATE SEQUENCE cmInterceptor_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmInterceptor (  interceptorId integer NOT NULL,  name varchar(100) NOT NULL,  className varchar(255) NOT NULL,  description varchar(1024) NOT NULL,  PRIMARY KEY  (interceptorId));CREATE TABLE OS_PROPERTYENTRY(	entity_name varchar(125) not null,	entity_id integer DEFAULT 0 not null,	entity_key varchar(150) not null,	key_type smallint,	boolean_val smallint,	string_val varchar(255),	long_val integer,	date_val date,	data_val blob,	double_val float,	int_val int,	primary key (entity_name, entity_id, entity_key));create table OS_WFENTRY(    ID integer not null,    NAME varchar(20),    STATE integer,    primary key (ID));create table OS_CURRENTSTEP(    ID integer not null,    ENTRY_ID integer,    STEP_ID integer,    ACTION_ID integer,    OWNER varchar(255),    START_DATE date,    FINISH_DATE date,    DUE_DATE date,    STATUS varchar(20),    CALLER varchar(255),    STEPINDEX integer DEFAULT 0,    primary key (ID),    foreign key (ENTRY_ID) references OS_WFENTRY(ID));create table OS_HISTORYSTEP(    ID integer not null,    ENTRY_ID integer,    STEP_ID integer,    ACTION_ID integer,    OWNER varchar(255),    START_DATE date,    FINISH_DATE date,    DUE_DATE date,    STATUS varchar(20),    CALLER varchar(255),    STEPINDEX integer DEFAULT 0,    primary key (ID),    foreign key (ENTRY_ID) references OS_WFENTRY(ID));create table OS_CURRENTSTEP_PREV(    ID integer not null,    PREVIOUS_ID integer not null,    primary key (ID, PREVIOUS_ID),    foreign key (ID) references OS_CURRENTSTEP(ID),    foreign key (PREVIOUS_ID) references OS_HISTORYSTEP(ID));create table OS_HISTORYSTEP_PREV(    ID integer not null,    PREVIOUS_ID integer not null,    primary key (ID, PREVIOUS_ID),    foreign key (ID) references OS_HISTORYSTEP(ID),    foreign key (PREVIOUS_ID) references OS_HISTORYSTEP(ID));create sequence hibernate_sequence;create sequence seq_os_wfentry minvalue 10 increment by 10;create sequence seq_os_currentsteps; CREATE SEQUENCE cmCategory_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmCategory(	categoryId		integer NOT NULL,	name			varchar(100) NOT NULL,	displayName 	varchar(4000),	description		varchar(1024),	active 			integer default 1 NOT NULL,	parentId		integer,	PRIMARY KEY (categoryId));CREATE SEQUENCE cmContentCategory_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmContentCategory(	contentCategoryId	integer NOT NULL,	attributeName		varchar(100) NOT NULL,	ContVerId			integer NOT NULL,	categoryId			integer NOT NULL,	PRIMARY KEY (contentCategoryId));CREATE SEQUENCE cmUserPropDigAsset_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmUserPropDigAsset (  userPropDigAssetId integer NOT NULL,  userPropertiesId integer NOT NULL,  digAssetId integer NOT NULL,  PRIMARY KEY  (userPropDigAssetId));CREATE SEQUENCE cmRolePropDigAsset_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmRolePropDigAsset (  rolePropDigAssetId integer NOT NULL,  rolePropertiesId integer NOT NULL,  digAssetId integer NOT NULL,  PRIMARY KEY  (rolePropDigAssetId));CREATE SEQUENCE cmGroupPropDigAsset_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmGroupPropDigAsset (  groupPropDigAssetId integer NOT NULL,  groupPropertiesId integer NOT NULL,  digAssetId integer NOT NULL,  PRIMARY KEY  (groupPropDigAssetId));CREATE SEQUENCE cmPropertiesCategory_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmPropertiesCategory(	propertiesCategoryId integer NOT NULL,	attributeName		varchar(100) NOT NULL,	entityName			varchar(100) NOT NULL,	entityId			integer NOT NULL,	categoryId			integer NOT NULL,	PRIMARY KEY (propertiesCategoryId));CREATE SEQUENCE cmRegistry_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmRegistry(	registryId		            integer NOT NULL,	entityName		            varchar(100) NOT NULL,	entityId		            varchar(200) NOT NULL,	referenceType	            integer NOT NULL,	referencingEntityName		varchar(100) NOT NULL,	referencingEntityId		    varchar(200) NOT NULL,	referencingEntityComplName	varchar(100) NOT NULL,	referencingEntityComplId	varchar(200) NOT NULL,    PRIMARY KEY (registryId));CREATE TABLE cmGroup (  groupName varchar(255) NOT NULL,  description varchar(1024) NOT NULL,  PRIMARY KEY  (groupName));CREATE SEQUENCE cmGroupContTypeDef_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmGroupContTypeDef (  groupContTypeDefId integer NOT NULL,  groupName varchar(255) NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  PRIMARY KEY  (groupContTypeDefId));CREATE SEQUENCE cmGroupProperties_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmGroupProperties (  groupPropertiesId integer NOT NULL,  groupName varchar(255) NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  value clob NOT NULL,  languageId integer NOT NULL,  PRIMARY KEY  (groupPropertiesId));CREATE SEQUENCE cmSystemUserGroup_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmSystemUserGroup (  userName varchar(100) NOT NULL,  groupName varchar(200) NOT NULL,  PRIMARY KEY  (userName,groupName));CREATE SEQUENCE cmAccessRightRole_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmAccessRightRole (  accessRightRoleId integer NOT NULL,  accessRightId integer NOT NULL,  roleName varchar(150) NOT NULL,  PRIMARY KEY  (accessRightRoleId));CREATE SEQUENCE cmAccessRightGroup_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmAccessRightGroup (  accessRightGroupId integer NOT NULL,  accessRightId integer NOT NULL,  groupName varchar(150) NOT NULL,  PRIMARY KEY  (accessRightGroupId));CREATE SEQUENCE cmAccessRightUser_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmAccessRightUser (  accessRightUserId integer NOT NULL,  accessRightId integer NOT NULL,  userName varchar(150) NOT NULL,  PRIMARY KEY  (accessRightUserId));CREATE SEQUENCE cmWorkflowDefinition_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmWorkflowDefinition (  workflowDefinitionId integer NOT NULL,  name varchar(100) NOT NULL,  value clob NOT NULL,  PRIMARY KEY  (workflowDefinitionId));CREATE SEQUENCE cmRedirect_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmRedirect(	id				integer NOT NULL,	url				varchar(1024) NOT NULL,	redirectUrl		varchar(1024) NOT NULL,	PRIMARY KEY (id));CREATE SEQUENCE cmServerNode_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmServerNode (  serverNodeId integer NOT NULL,  name varchar(255) NOT NULL,  description varchar(1024) NOT NULL,  dnsName varchar(1024) NOT NULL,  PRIMARY KEY  (serverNodeId));CREATE SEQUENCE cmFormEntry_seq START WITH 100 INCREMENT BY 1;CREATE TABLE cmFormEntry(	id					number NOT NULL,	originAddress		VARCHAR2(1024) NOT NULL,	formName			VARCHAR2(255) NOT NULL,	formContentId		number NOT NULL,	userIP				VARCHAR2(20) NOT NULL,	userAgent			VARCHAR2(1024) NOT NULL,	PRIMARY KEY (id));CREATE SEQUENCE cmFormEntryValue_seq START WITH 100 INCREMENT BY 1;CREATE TABLE cmFormEntryValue(	id			number NOT NULL,	name		VARCHAR2(128) NOT NULL,	value		VARCHAR2(4000),	formEntryId	number NOT NULL,	PRIMARY KEY (id));CREATE SEQUENCE cmFormEntryAsset_seq START WITH 100 INCREMENT BY 1;CREATE TABLE cmFormEntryAsset(	id					number NOT NULL,	formEntryId			number NOT NULL,	fileName			VARCHAR2(255) NOT NULL,	fileSize			number NOT NULL,	assetKey			VARCHAR2(255) NOT NULL,	contentType			VARCHAR2(50) NOT NULL,	assetBlob 			blob NOT NULL,	PRIMARY KEY (id));CREATE SEQUENCE cmSubscription_seq START WITH 100 INCREMENT BY 1;CREATE TABLE cmSubscription(	id						number NOT NULL,	interceptionPointId		number NOT NULL,	name					VARCHAR2(100) NOT NULL,	isGlobal				integer default 0 NOT NULL,	entityName				VARCHAR2(100) default NULL,	entityId				VARCHAR2(200) default NULL,	userName				VARCHAR2(150) NOT NULL,	userEmail				VARCHAR2(150),	lastNotifiedDateTime	date NOT NULL WITH DEFAULT,	PRIMARY KEY (id));CREATE SEQUENCE cmSubscriptionFilter_seq START WITH 100 INCREMENT BY 1;CREATE TABLE cmSubscriptionFilter(	id						number NOT NULL,	subscriptionId			number NOT NULL,	filterType				VARCHAR2(50) NOT NULL,	filterCondition			VARCHAR2(255) NOT NULL,	isAndCondition			number default 0 NOT NULL,	PRIMARY KEY (id));CREATE SEQUENCE cmInfoGlueProperties_seq START WITH 100000 INCREMENT BY 1;CREATE TABLE cmInfoGlueProperties (  propertyId integer NOT NULL,  name varchar(100) NOT NULL,  value varchar(1024) NOT NULL,  PRIMARY KEY  (propertyId));INSERT INTO cmInfoGlueProperties(propertyId, name, value) VALUES  (1, 'version', '2.9');CREATE INDEX "qualServBindIdIX" ON cmQualifyer(servBindId);CREATE INDEX "sBindServDefIdIX" ON cmServBind(servDefId);CREATE INDEX "sBindAServBindIdIX" ON cmServBind(availServBindId);CREATE INDEX "sBindSNodeVerIdIX" ON cmServBind(siNoVerId);CREATE INDEX "contTypeNameIX" ON cmContentTypeDef(name);CREATE INDEX "contentVerContIdIX" ON cmContVer(contId);CREATE INDEX "sNodeVerSNodeIdIX" ON cmSiNoVer(siNoId);CREATE INDEX "contTypeDefIdIX" ON cmCont(contentTypeDefId);CREATE INDEX "parentContentIdIX" ON cmCont(parentContId);CREATE INDEX "publicationIdIX" ON cmPublicationDetail(publicationId);CREATE INDEX "OS_CURRSTEP_OIX" ON OS_CURRENTSTEP(OWNER);CREATE INDEX "OS_CURRSTEP_OCALL" ON OS_CURRENTSTEP(CALLER);CREATE INDEX "OS_HISTSTEP_OIX" ON OS_HISTORYSTEP(OWNER);CREATE INDEX "OS_HISTSTEP_CIX" ON OS_HISTORYSTEP(CALLER);CREATE INDEX "refEntNameIndex" ON cmRegistry(referencingEntityName);CREATE INDEX "refEntIdIndex" ON cmRegistry(referencingEntityId);CREATE INDEX "entityNameIndex" ON cmRegistry(entityName);CREATE INDEX "entityIdIndex" ON cmRegistry(entityId);CREATE INDEX "refEntComplNameIx" ON cmRegistry(referencingEntityComplName);CREATE INDEX "refEntComplIdIx" ON cmRegistry(referencingEntityComplId);CREATE INDEX "attrNameCategoryId" on cmContentCategory (attributeName, categoryId);CREATE INDEX "categoryCVerIdIx" ON cmContentCategory(contVerId);CREATE INDEX "contVerDigDAssIdIx" ON cmContVerDigAsset(digAssetId);CREATE INDEX "contVerDigCVerIdIx" ON cmContVerDigAsset(contVerId);COMMIT;