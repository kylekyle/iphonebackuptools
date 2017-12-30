CREATE TABLE ZICCLOUDSTATE (
    Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZCURRENTLOCALVERSION INTEGER,
    ZINCLOUD INTEGER,
    ZLATESTVERSIONSYNCEDTOCLOUD INTEGER,
    ZCLOUDSYNCINGOBJECT INTEGER,
    Z2_CLOUDSYNCINGOBJECT INTEGER,
    ZLOCALVERSIONDATE TIMESTAMP );
CREATE TABLE ZICCLOUDSYNCINGOBJECT (
    Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZCRYPTOITERATIONCOUNT INTEGER,
    ZISPASSWORDPROTECTED INTEGER,
    ZMARKEDFORDELETION INTEGER,
    ZMINIMUMSUPPORTEDNOTESVERSION INTEGER,
    ZNEEDSINITIALFETCHFROMCLOUD INTEGER,
    ZNEEDSTOBEFETCHEDFROMCLOUD INTEGER,
    ZNEEDSTOSAVEUSERSPECIFICRECORD INTEGER,
    ZCLOUDSTATE INTEGER,
    ZCHECKEDFORLOCATION INTEGER,
    ZFILESIZE INTEGER,
    ZHASMARKUPDATA INTEGER,
    ZIMAGEFILTERTYPE INTEGER,
    ZORIENTATION INTEGER,
    ZSECTION INTEGER,
    ZLOCATION INTEGER,
    ZMEDIA INTEGER,
    ZNOTE INTEGER,
    ZPARENTATTACHMENT INTEGER,
    ZSCALEWHENDRAWING INTEGER,
    ZVERSION INTEGER,
    ZVERSIONOUTOFDATE INTEGER,
    ZATTACHMENT INTEGER,
    ZSTATE INTEGER,
    ZACCOUNT INTEGER,
    ZTYPE INTEGER,
    ZACCOUNT1 INTEGER,
    ZATTACHMENT1 INTEGER,
    ZATTACHMENTVIEWTYPE INTEGER,
    ZINTEGERID INTEGER,
    ZLEGACYNOTEINTEGERID INTEGER,
    ZLEGACYNOTEWASPLAINTEXT INTEGER,
    ZNOTEHASCHANGES INTEGER,
    ZACCOUNT2 INTEGER,
    ZNOTEDATA INTEGER,
    ZISHIDDENNOTECONTAINER INTEGER,
    ZSORTORDER INTEGER,
    ZOWNER INTEGER,
    ZACCOUNTTYPE INTEGER,
    ZDIDCHOOSETOMIGRATE INTEGER,
    ZDIDFINISHMIGRATION INTEGER,
    ZDIDMIGRATEONMAC INTEGER,
    ZFOLDERTYPE INTEGER,
    ZIMPORTEDFROMLEGACY INTEGER,
    ZACCOUNT3 INTEGER,
    ZPARENT INTEGER,
    ZCREATIONDATE TIMESTAMP,
    ZCROPPINGQUADBOTTOMLEFTX FLOAT,
    ZCROPPINGQUADBOTTOMLEFTY FLOAT,
    ZCROPPINGQUADBOTTOMRIGHTX FLOAT,
    ZCROPPINGQUADBOTTOMRIGHTY FLOAT,
    ZCROPPINGQUADTOPLEFTX FLOAT,
    ZCROPPINGQUADTOPLEFTY FLOAT,
    ZCROPPINGQUADTOPRIGHTX FLOAT,
    ZCROPPINGQUADTOPRIGHTY FLOAT,
    ZDURATION FLOAT,
    ZMODIFICATIONDATE TIMESTAMP,
    ZORIGINX FLOAT,
    ZORIGINY FLOAT,
    ZPREVIEWUPDATEDATE TIMESTAMP,
    ZSIZEHEIGHT FLOAT,
    ZSIZEWIDTH FLOAT,
    ZHEIGHT FLOAT,
    ZMODIFIEDDATE TIMESTAMP,
    ZSCALE FLOAT,
    ZWIDTH FLOAT,
    ZSTATEMODIFICATIONDATE TIMESTAMP,
    ZMODIFICATIONDATEATIMPORT TIMESTAMP,
    ZCREATIONDATE1 TIMESTAMP,
    ZFOLDERSMODIFICATIONDATE TIMESTAMP,
    ZLASTVIEWEDMODIFICATIONDATE TIMESTAMP,
    ZLEGACYMODIFICATIONDATEATIMPORT TIMESTAMP,
    ZMODIFICATIONDATE1 TIMESTAMP,
    ZDATEFORLASTTITLEMODIFICATION TIMESTAMP,
    ZPARENTMODIFICATIONDATE TIMESTAMP,
    ZIDENTIFIER VARCHAR UNIQUE,
    ZPASSWORDHINT VARCHAR,
    ZZONEOWNERNAME VARCHAR,
    ZSUMMARY VARCHAR,
    ZTITLE VARCHAR,
    ZTYPEUTI VARCHAR,
    ZURLSTRING VARCHAR,
    ZDEVICEIDENTIFIER VARCHAR,
    ZCONTENTHASHATIMPORT VARCHAR,
    ZFILENAME VARCHAR,
    ZLEGACYCONTENTHASHATIMPORT VARCHAR,
    ZLEGACYIMPORTDEVICEIDENTIFIER VARCHAR,
    ZLEGACYMANAGEDOBJECTIDURIREPRESENTATION VARCHAR,
    ZSNIPPET VARCHAR,
    ZTHUMBNAILATTACHMENTIDENTIFIER VARCHAR,
    ZTITLE1 VARCHAR,
    ZACCOUNTNAMEFORACCOUNTLISTSORTING VARCHAR,
    ZNESTEDTITLEFORSORTING VARCHAR,
    ZNAME VARCHAR,
    ZUSERRECORDNAME VARCHAR,
    ZTITLE2 VARCHAR,
    ZSERVERRECORD BLOB,
    ZSERVERSHARE BLOB,
    ZUSERSPECIFICSERVERRECORD BLOB,
    ZREMOTEFILEURL BLOB,
    ZASSETCRYPTOINITIALIZATIONVECTOR BLOB,
    ZASSETCRYPTOTAG BLOB,
    ZCRYPTOINITIALIZATIONVECTOR BLOB,
    ZCRYPTOSALT BLOB,
    ZCRYPTOTAG BLOB,
    ZCRYPTOWRAPPEDKEY BLOB,
    ZENCRYPTEDVALUESJSON BLOB,
    ZUNAPPLIEDENCRYPTEDRECORD BLOB,
    ZFALLBACKIMAGECRYPTOINITIALIZATIONVECTOR BLOB,
    ZFALLBACKIMAGECRYPTOTAG BLOB,
    ZMARKUPMODELDATA BLOB,
    ZMERGEABLEDATA BLOB,
    ZCRYPTOMETADATAINITIALIZATIONVECTOR BLOB,
    ZCRYPTOMETADATATAG BLOB,
    ZENCRYPTEDMETADATA BLOB,
    ZMETADATA BLOB,
    ZCRYPTOVERIFIER BLOB );
CREATE TABLE Z_11NOTES (
    Z_11FOLDERS INTEGER,
    Z_8NOTES INTEGER,
    PRIMARY KEY (Z_11FOLDERS, Z_8NOTES) );
CREATE TABLE ZICLOCATION (
    Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZPLACEUPDATED INTEGER,
    ZATTACHMENT INTEGER,
    ZLATITUDE FLOAT,
    ZLONGITUDE FLOAT,
    ZPLACEMARK BLOB );
CREATE TABLE ZICNOTECHANGE (
    Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZCHANGETYPE INTEGER,
    ZFOLDER INTEGER,
    ZLEGACYNOTEINTEGERIDS BLOB,
    ZNOTEIDENTIFIERS BLOB );
CREATE TABLE ZICNOTEDATA (
    Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZNOTE INTEGER,
    ZCRYPTOINITIALIZATIONVECTOR BLOB,
    ZCRYPTOTAG BLOB,
    ZDATA BLOB );
CREATE TABLE ZICSEARCHINDEXTRANSACTION (
    Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZLASTTRANSACTIONID INTEGER,
    ZIDENTIFIER VARCHAR );
CREATE TABLE ZICSERVERCHANGETOKEN (
    Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZDATABASESCOPE INTEGER,
    ZACCOUNT INTEGER,
    ZOWNERNAME VARCHAR,
    ZZONENAME VARCHAR,
    ZCKSERVERCHANGETOKEN BLOB );
CREATE TABLE ZNEXTID (
    Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZCOUNTER INTEGER );
CREATE INDEX ZICCLOUDSTATE_ZCLOUDSYNCINGOBJECT_INDEX ON ZICCLOUDSTATE (ZCLOUDSYNCINGOBJECT);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZCLOUDSTATE_INDEX ON ZICCLOUDSYNCINGOBJECT (ZCLOUDSTATE);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZLOCATION_INDEX ON ZICCLOUDSYNCINGOBJECT (ZLOCATION);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZMEDIA_INDEX ON ZICCLOUDSYNCINGOBJECT (ZMEDIA);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZNOTE_INDEX ON ZICCLOUDSYNCINGOBJECT (ZNOTE);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZPARENTATTACHMENT_INDEX ON ZICCLOUDSYNCINGOBJECT (ZPARENTATTACHMENT);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZATTACHMENT_INDEX ON ZICCLOUDSYNCINGOBJECT (ZATTACHMENT);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZACCOUNT_INDEX ON ZICCLOUDSYNCINGOBJECT (ZACCOUNT);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZACCOUNT1_INDEX ON ZICCLOUDSYNCINGOBJECT (ZACCOUNT1);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZATTACHMENT1_INDEX ON ZICCLOUDSYNCINGOBJECT (ZATTACHMENT1);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZACCOUNT2_INDEX ON ZICCLOUDSYNCINGOBJECT (ZACCOUNT2);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZNOTEDATA_INDEX ON ZICCLOUDSYNCINGOBJECT (ZNOTEDATA);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZOWNER_INDEX ON ZICCLOUDSYNCINGOBJECT (ZOWNER);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZACCOUNT3_INDEX ON ZICCLOUDSYNCINGOBJECT (ZACCOUNT3);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_ZPARENT_INDEX ON ZICCLOUDSYNCINGOBJECT (ZPARENT);
CREATE INDEX ZICCLOUDSYNCINGOBJECT_Z_ENT_INDEX ON ZICCLOUDSYNCINGOBJECT (Z_ENT);
CREATE INDEX Z_11NOTES_Z_8NOTES_INDEX ON Z_11NOTES (Z_8NOTES,
    Z_11FOLDERS);
CREATE INDEX ZICLOCATION_ZATTACHMENT_INDEX ON ZICLOCATION (ZATTACHMENT);
CREATE INDEX ZICLOCATION_Z_ENT_INDEX ON ZICLOCATION (Z_ENT);
CREATE INDEX ZICNOTECHANGE_ZFOLDER_INDEX ON ZICNOTECHANGE (ZFOLDER);
CREATE INDEX ZICNOTEDATA_ZNOTE_INDEX ON ZICNOTEDATA (ZNOTE);
CREATE INDEX ZICSERVERCHANGETOKEN_ZACCOUNT_INDEX ON ZICSERVERCHANGETOKEN (ZACCOUNT);
CREATE TABLE Z_PRIMARYKEY (
    Z_ENT INTEGER PRIMARY KEY,
    Z_NAME VARCHAR,
    Z_SUPER INTEGER,
    Z_MAX INTEGER);
CREATE TABLE Z_METADATA (
    Z_VERSION INTEGER PRIMARY KEY,
    Z_UUID VARCHAR(255),
    Z_PLIST BLOB);
CREATE TABLE Z_MODELCACHE (
    Z_CONTENT BLOB);