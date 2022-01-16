/*==============================================================*/
/* DBMS name:      ORACLE Version 19c                           */
/* Created on:     13.01.2022 21:43:14                          */
/*==============================================================*/


alter table ACCOUNT
   drop constraint FK_ACCOUNT_USER_TO_A_ALLIANZ;

alter table ACCOUNT_TO_ITEM
   drop constraint FK_ACCOUNT__BESITZT2_ITEM;

alter table ACCOUNT_TO_ITEM
   drop constraint FK_ACCOUNT__BEZITZT_V_ACCOUNT;

alter table ADMINISTRATION
   drop constraint FK_ADMINIST_WIRD_VERW_ALLIANZ;

alter table ALLIANZ
   drop constraint FK_ALLIANZ_VERWALTET_ADMINIST;

alter table ANGRIFF
   drop constraint FK_ANGRIFF_ANGREIFER_BURG;

alter table ANGRIFF
   drop constraint FK_ANGRIFF_BEWEGUNG__EINHEIT_;

alter table ANGRIFF
   drop constraint FK_ANGRIFF_VERTEIDIG_BURG;

alter table ATTRIBUTE
   drop constraint FK_ATTRIBUT_ATTRIB_EI_EINHEIT_;

alter table ATTRIBUT_TO_ITEM
   drop constraint FK_ATTRIBUT_AUF_ITEM;

alter table ATTRIBUT_TO_ITEM
   drop constraint FK_ATTRIBUT_HAT_ITEM_ATT;

alter table AUKTION
   drop constraint FK_AUKTION_ACCOUNT_T_ACCOUNT;

alter table AUKTION
   drop constraint FK_AUKTION_AUTKION_T_ITEM;

alter table BESTELLUNG
   drop constraint FK_BESTELLU_KAUF_ACCOUNT;

alter table BESTELLUNG_TO_ITEM
   drop constraint FK_BESTELLU_BEINHALTE_ITEM;

alter table BESTELLUNG_TO_ITEM
   drop constraint FK_BESTELLU_IN_BESTELLU;

alter table BURG
   drop constraint FK_BURG_KONIGREIC_KOENIGRE;

alter table BURG_TO_GEBAEUDE
   drop constraint FK_BURG_TO__BESITZT_GEBAEUDE;

alter table BURG_TO_GEBAEUDE
   drop constraint FK_BURG_TO__GEHORT_ZU_BURG;

alter table CHATNACHRICHT
   drop constraint FK_CHATNACH_NACHRICHT_ACCOUNT;

alter table CHATNACHRICHT
   drop constraint FK_CHATNACH_USER_TO_N_ACCOUNT;

alter table CHATROOM
   drop constraint FK_CHATROOM_ALLIANZ_T_ALLIANZ;

alter table CHATROOM_NACHRICHT
   drop constraint FK_CHATROOM_CR_NACHRI_CHATROOM;

alter table CHATROOM_NACHRICHT
   drop constraint FK_CHATROOM_USER_TO_C_ACCOUNT;

alter table EINHEIT
   drop constraint FK_EINHEIT_GEB_VOR_E_GEBAEUDE;

alter table EINHEIT
   drop constraint FK_EINHEIT_GEHOERT_BURG;

alter table EINHEIT_ATTRIBUT
   drop constraint FK_EINHEIT__EINHEIT_A_EINHEIT;

alter table EINTRAG
   drop constraint FK_EINTRAG_FORUM_TO__FORUM;

alter table EINTRAG
   drop constraint FK_EINTRAG_USER_TO_E_ACCOUNT;

alter table FORUM
   drop constraint FK_FORUM_ALLIANZ_T_ALLIANZ;

alter table GEBOT
   drop constraint FK_GEBOT_ACCOUNT_T_ACCOUNT;

alter table GEBOT
   drop constraint FK_GEBOT_AUKTION_T_AUKTION;

alter table GEB_TO_GEBEIG
   drop constraint FK_GEB_TO_G_GEHORT2_GEBAEUDE;

alter table GEB_TO_GEBEIG
   drop constraint FK_GEB_TO_G_HAT2_GEBAEUDE;

alter table GRUPPE
   drop constraint FK_GRUPPE_BEINHALTE_EINHEIT;

alter table GRUPPE
   drop constraint FK_GRUPPE_GEHORT_EINHEIT_;

alter table KOENIGREICH
   drop constraint FK_KOENIGRE_KOENIGREI_ACCOUNT;

alter table KOENIGREICH
   drop constraint FK_KOENIGRE_ZUGEHOERI_WELT;

alter table KOMMENTAR
   drop constraint FK_KOMMENTA_EINTRAG_T_EINTRAG;

alter table KOMMENTAR
   drop constraint FK_KOMMENTA_USER_TO_K_ACCOUNT;

alter table KRIEGSBEUTE
   drop constraint FK_KRIEGSBE_KRIEGSBEU_ANGRIFF;

alter table USER_TO_ADMIN
   drop constraint FK_USER_TO__IST_TEIL_ADMINIST;

alter table USER_TO_ADMIN
   drop constraint FK_USER_TO__WIRD_GEFU_ACCOUNT;

drop index USER_TO_ALLIANZ_FK;

drop table ACCOUNT cascade constraints;

drop index BEZITZT_VON_FK;

drop index BESITZT2_FK;

drop table ACCOUNT_TO_ITEM cascade constraints;

drop index WIRD_VERWALTET_FK;

drop table ADMINISTRATION cascade constraints;

drop index VERWALTET_FK;

drop table ALLIANZ cascade constraints;

drop index ANGREIFER_BURG_FK;

drop index BEWEGUNG_GRP_FK;

drop index VERTEIDIGER_BURG_FK;

drop table ANGRIFF cascade constraints;

drop index ATTRIB_EINHEIT_FK;

drop table ATTRIBUTE cascade constraints;

drop index HAT_FK;

drop index AUF_FK;

drop table ATTRIBUT_TO_ITEM cascade constraints;

drop index AUTKION_TO_ITEM_FK;

drop index ACCOUNT_TO_AUKTION_FK;

drop table AUKTION cascade constraints;

drop index KAUF_FK;

drop table BESTELLUNG cascade constraints;

drop index BEINHALTET2_FK;

drop index IN_FK;

drop table BESTELLUNG_TO_ITEM cascade constraints;

drop index KONIGREICHBURG_FK;

drop table BURG cascade constraints;

drop index BESITZT_FK;

drop index GEHORT_ZU_FK;

drop table BURG_TO_GEBAEUDE cascade constraints;

drop index USER_TO_NACHRICHT_FK;

drop index NACHRICHT_TO_USER_FK;

drop table CHATNACHRICHT cascade constraints;

drop index ALLIANZ_TO_CHATROOM_FK;

drop table CHATROOM cascade constraints;

drop index USER_TO_CR_NACHRICHT_FK;

drop index CR_NACHRICHT_TO_CHATROOM_FK;

drop table CHATROOM_NACHRICHT cascade constraints;

drop index GEB_VOR_EIN_FK;

drop index GEHOERT_FK;

drop table EINHEIT cascade constraints;

drop index EINHEIT_ATTRIB_FK;

drop table EINHEIT_ATTRIBUT cascade constraints;

drop table EINHEIT_GRUPPE cascade constraints;

drop index USER_TO_EINTRAG_FK;

drop index FORUM_TO_EINTRAG_FK;

drop table EINTRAG cascade constraints;

drop index ALLIANZ_TO_FORUM_FK;

drop table FORUM cascade constraints;

drop table GEBAEUDE cascade constraints;

drop table GEBAEUDE_EIGENSCHAFT cascade constraints;

drop index AUKTION_TO_GEBOT_FK;

drop index ACCOUNT_TO_GEBOT_FK;

drop table GEBOT cascade constraints;

drop index HAT2_FK;

drop index GEHORT2_FK;

drop table GEB_TO_GEBEIG cascade constraints;

drop index GEHORT_FK;

drop index BEINHALTET_FK;

drop table GRUPPE cascade constraints;

drop table ITEM cascade constraints;

drop table ITEM_ATTRIBUT cascade constraints;

drop index KOENIGREICH_TO_ACCOUNT_FK;

drop index ZUGEHOERIG_FK;

drop table KOENIGREICH cascade constraints;

drop index USER_TO_KOMMENTAR_FK;

drop index EINTRAG_TO_KOMMENTAR_FK;

drop table KOMMENTAR cascade constraints;

drop index KRIEGSBEUTE_FK;

drop table KRIEGSBEUTE cascade constraints;

drop index IST_TEIL_FK;

drop index WIRD_GEFUEHRT_FK;

drop table USER_TO_ADMIN cascade constraints;

drop table WELT cascade constraints;

/*==============================================================*/
/* Table: ACCOUNT                                               */
/*==============================================================*/
create table ACCOUNT (
   ACC_ID               INTEGER               not null,
   AL_ID                INTEGER,
   ACC_USERNAME         VARCHAR2(100)         not null,
   ACC_PASSWORD         VARCHAR2(100)         not null,
   ACC_EMAIL            VARCHAR2(100)         not null,
   ACC_LETZTER_LOGIN    TIMESTAMP,
   ACC_PREMIUM          SMALLINT,
   ACC_PAYMENT_TOKEN    VARCHAR2(1024),
   constraint PK_ACCOUNT primary key (ACC_ID)
);

/*==============================================================*/
/* Index: USER_TO_ALLIANZ_FK                                    */
/*==============================================================*/
create index USER_TO_ALLIANZ_FK on ACCOUNT (
   AL_ID ASC
);

/*==============================================================*/
/* Table: ACCOUNT_TO_ITEM                                       */
/*==============================================================*/
create table ACCOUNT_TO_ITEM (
   ITEM_ID              INTEGER               not null,
   ACC_ID               INTEGER               not null,
   ANZAHL               INTEGER               not null,
   constraint PK_ACCOUNT_TO_ITEM primary key (ITEM_ID, ACC_ID)
);

/*==============================================================*/
/* Index: BESITZT2_FK                                           */
/*==============================================================*/
create index BESITZT2_FK on ACCOUNT_TO_ITEM (
   ITEM_ID ASC
);

/*==============================================================*/
/* Index: BEZITZT_VON_FK                                        */
/*==============================================================*/
create index BEZITZT_VON_FK on ACCOUNT_TO_ITEM (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: ADMINISTRATION                                        */
/*==============================================================*/
create table ADMINISTRATION (
   AD_ID                INTEGER               not null,
   AL_ID                INTEGER,
   constraint PK_ADMINISTRATION primary key (AD_ID)
);

/*==============================================================*/
/* Index: WIRD_VERWALTET_FK                                     */
/*==============================================================*/
create index WIRD_VERWALTET_FK on ADMINISTRATION (
   AL_ID ASC
);

/*==============================================================*/
/* Table: ALLIANZ                                               */
/*==============================================================*/
create table ALLIANZ (
   AL_ID                INTEGER               not null,
   AD_ID                INTEGER               not null,
   AL_NAME              CLOB                  not null,
   AL_BESCHREIBUNG      CLOB,
   AL_DATE_OF_CREATION  TIMESTAMP,
   constraint PK_ALLIANZ primary key (AL_ID)
);

/*==============================================================*/
/* Index: VERWALTET_FK                                          */
/*==============================================================*/
create index VERWALTET_FK on ALLIANZ (
   AD_ID ASC
);

/*==============================================================*/
/* Table: ANGRIFF                                               */
/*==============================================================*/
create table ANGRIFF (
   ANGRIFF_ID           INTEGER               not null,
   BU_ID                INTEGER               not null,
   BUR_BU_ID            INTEGER               not null,
   GRUPPE_ID            INTEGER               not null,
   ANGRIFF_GEPLANT_AM   TIMESTAMP             not null,
   ANGRIFF_STATUS       VARCHAR2(20)          not null
      constraint CKC_ANGRIFF_STATUS_ANGRIFF check (ANGRIFF_STATUS in ('Geplant','Gewonnen','Verloren','<Val16>')),
   constraint PK_ANGRIFF primary key (ANGRIFF_ID)
);

/*==============================================================*/
/* Index: VERTEIDIGER_BURG_FK                                   */
/*==============================================================*/
create index VERTEIDIGER_BURG_FK on ANGRIFF (
   BU_ID ASC
);

/*==============================================================*/
/* Index: BEWEGUNG_GRP_FK                                       */
/*==============================================================*/
create index BEWEGUNG_GRP_FK on ANGRIFF (
   GRUPPE_ID ASC
);

/*==============================================================*/
/* Index: ANGREIFER_BURG_FK                                     */
/*==============================================================*/
create index ANGREIFER_BURG_FK on ANGRIFF (
   BUR_BU_ID ASC
);

/*==============================================================*/
/* Table: ATTRIBUTE                                             */
/*==============================================================*/
create table ATTRIBUTE (
   ATTRIBUT_ID          INTEGER               not null,
   EINHEIT_ATTRIBU_ID   INTEGER,
   ATTRIBUT_TYP         VARCHAR2(50)          not null
      constraint CKC_ATTRIBUT_TYP_ATTRIBUT check (ATTRIBUT_TYP in ('Angriff','Verteidigung','Bewegungsgeschwindigkeit')),
   ATTRIBUT_BEZEICHNUNG VARCHAR2(50)          not null,
   constraint PK_ATTRIBUTE primary key (ATTRIBUT_ID)
);

/*==============================================================*/
/* Index: ATTRIB_EINHEIT_FK                                     */
/*==============================================================*/
create index ATTRIB_EINHEIT_FK on ATTRIBUTE (
   EINHEIT_ATTRIBU_ID ASC
);

/*==============================================================*/
/* Table: ATTRIBUT_TO_ITEM                                      */
/*==============================================================*/
create table ATTRIBUT_TO_ITEM (
   ITEM_ID              INTEGER               not null,
   ITAT_ID              INTEGER               not null,
   constraint PK_ATTRIBUT_TO_ITEM primary key (ITEM_ID, ITAT_ID)
);

/*==============================================================*/
/* Index: AUF_FK                                                */
/*==============================================================*/
create index AUF_FK on ATTRIBUT_TO_ITEM (
   ITEM_ID ASC
);

/*==============================================================*/
/* Index: HAT_FK                                                */
/*==============================================================*/
create index HAT_FK on ATTRIBUT_TO_ITEM (
   ITAT_ID ASC
);

/*==============================================================*/
/* Table: AUKTION                                               */
/*==============================================================*/
create table AUKTION (
   AUK_ID               INTEGER               not null,
   ITEM_ID              INTEGER               not null,
   ACC_ID               INTEGER               not null,
   AUK_START_DATUM      TIMESTAMP             not null,
   AUK_END_DATUM        TIMESTAMP             not null,
   constraint PK_AUKTION primary key (AUK_ID)
);

/*==============================================================*/
/* Index: ACCOUNT_TO_AUKTION_FK                                 */
/*==============================================================*/
create index ACCOUNT_TO_AUKTION_FK on AUKTION (
   ACC_ID ASC
);

/*==============================================================*/
/* Index: AUTKION_TO_ITEM_FK                                    */
/*==============================================================*/
create index AUTKION_TO_ITEM_FK on AUKTION (
   ITEM_ID ASC
);

/*==============================================================*/
/* Table: BESTELLUNG                                            */
/*==============================================================*/
create table BESTELLUNG (
   BEST_ID              INTEGER               not null,
   ACC_ID               INTEGER               not null,
   BEST_DATUM           TIMESTAMP             not null,
   BEST_WERT            INTEGER               not null,
   constraint PK_BESTELLUNG primary key (BEST_ID)
);

/*==============================================================*/
/* Index: KAUF_FK                                               */
/*==============================================================*/
create index KAUF_FK on BESTELLUNG (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: BESTELLUNG_TO_ITEM                                    */
/*==============================================================*/
create table BESTELLUNG_TO_ITEM (
   BEST_ID              INTEGER               not null,
   ITEM_ID              INTEGER               not null,
   BEST_ITEM_ANZAHL     INTEGER               not null,
   constraint PK_BESTELLUNG_TO_ITEM primary key (BEST_ID, ITEM_ID)
);

/*==============================================================*/
/* Index: IN_FK                                                 */
/*==============================================================*/
create index IN_FK on BESTELLUNG_TO_ITEM (
   BEST_ID ASC
);

/*==============================================================*/
/* Index: BEINHALTET2_FK                                        */
/*==============================================================*/
create index BEINHALTET2_FK on BESTELLUNG_TO_ITEM (
   ITEM_ID ASC
);

/*==============================================================*/
/* Table: BURG                                                  */
/*==============================================================*/
create table BURG (
   BU_ID                INTEGER               not null,
   KOE_ID               INTEGER               not null,
   BU_BURGNAME          CLOB                  not null,
   BU_LEHM              INTEGER               not null,
   BU_EISEN             INTEGER               not null,
   BU_HOLZ              INTEGER               not null,
   BU_POSITION_X        INTEGER               not null,
   BU_POSITION_Y        INTEGER               not null,
   constraint PK_BURG primary key (BU_ID)
);

/*==============================================================*/
/* Index: KONIGREICHBURG_FK                                     */
/*==============================================================*/
create index KONIGREICHBURG_FK on BURG (
   KOE_ID ASC
);

/*==============================================================*/
/* Table: BURG_TO_GEBAEUDE                                      */
/*==============================================================*/
create table BURG_TO_GEBAEUDE (
   BU_ID                INTEGER               not null,
   GEB_ID               INTEGER               not null,
   constraint PK_BURG_TO_GEBAEUDE primary key (BU_ID, GEB_ID)
);

/*==============================================================*/
/* Index: GEHORT_ZU_FK                                          */
/*==============================================================*/
create index GEHORT_ZU_FK on BURG_TO_GEBAEUDE (
   BU_ID ASC
);

/*==============================================================*/
/* Index: BESITZT_FK                                            */
/*==============================================================*/
create index BESITZT_FK on BURG_TO_GEBAEUDE (
   GEB_ID ASC
);

/*==============================================================*/
/* Table: CHATNACHRICHT                                         */
/*==============================================================*/
create table CHATNACHRICHT (
   CN_ID                INTEGER               not null,
   ACC_ID               INTEGER               not null,
   ACC_ACC_ID           INTEGER               not null,
   CN_INHALT            CLOB                  not null,
   CN_DATE_OF_CREATION  TIMESTAMP             not null,
   constraint PK_CHATNACHRICHT primary key (CN_ID)
);

/*==============================================================*/
/* Index: NACHRICHT_TO_USER_FK                                  */
/*==============================================================*/
create index NACHRICHT_TO_USER_FK on CHATNACHRICHT (
   ACC_ACC_ID ASC
);

/*==============================================================*/
/* Index: USER_TO_NACHRICHT_FK                                  */
/*==============================================================*/
create index USER_TO_NACHRICHT_FK on CHATNACHRICHT (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: CHATROOM                                              */
/*==============================================================*/
create table CHATROOM (
   CR_ID                INTEGER               not null,
   AL_ID                INTEGER               not null,
   CR_TOPIC             CLOB                  not null,
   CR_DATE_OF_CREATION  TIMESTAMP             not null,
   constraint PK_CHATROOM primary key (CR_ID)
);

/*==============================================================*/
/* Index: ALLIANZ_TO_CHATROOM_FK                                */
/*==============================================================*/
create index ALLIANZ_TO_CHATROOM_FK on CHATROOM (
   AL_ID ASC
);

/*==============================================================*/
/* Table: CHATROOM_NACHRICHT                                    */
/*==============================================================*/
create table CHATROOM_NACHRICHT (
   CRN_ID               INTEGER               not null,
   ACC_ID               INTEGER               not null,
   CR_ID                INTEGER               not null,
   CRN_INHALT           CLOB                  not null,
   CRN_DATE_OF_CREATION TIMESTAMP             not null,
   constraint PK_CHATROOM_NACHRICHT primary key (CRN_ID)
);

/*==============================================================*/
/* Index: CR_NACHRICHT_TO_CHATROOM_FK                           */
/*==============================================================*/
create index CR_NACHRICHT_TO_CHATROOM_FK on CHATROOM_NACHRICHT (
   CR_ID ASC
);

/*==============================================================*/
/* Index: USER_TO_CR_NACHRICHT_FK                               */
/*==============================================================*/
create index USER_TO_CR_NACHRICHT_FK on CHATROOM_NACHRICHT (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: EINHEIT                                               */
/*==============================================================*/
create table EINHEIT (
   EINHEIT_ID           INTEGER               not null,
   BU_ID                INTEGER,
   GEB_ID               INTEGER               not null,
   EINHEIT_NAME         VARCHAR2(50)          not null,
   EINHEIT_KLASSE       VARCHAR2(50)          not null
      constraint CKC_EINHEIT_KLASSE_EINHEIT check (EINHEIT_KLASSE in ('Speertraeger','Schwertkaempfer','Axtkaempfer','Bogenschuetze','Reiter')),
   EINHEIT_RESSOURCE    VARCHAR2(100)         not null
      constraint CKC_EINHEIT_RESSOURCE_EINHEIT check (EINHEIT_RESSOURCE in ('Eisen','Lehm','Holz')),
   EINHEIT_RES_WERT     INTEGER,
   constraint PK_EINHEIT primary key (EINHEIT_ID)
);

/*==============================================================*/
/* Index: GEHOERT_FK                                            */
/*==============================================================*/
create index GEHOERT_FK on EINHEIT (
   BU_ID ASC
);

/*==============================================================*/
/* Index: GEB_VOR_EIN_FK                                        */
/*==============================================================*/
create index GEB_VOR_EIN_FK on EINHEIT (
   GEB_ID ASC
);

/*==============================================================*/
/* Table: EINHEIT_ATTRIBUT                                      */
/*==============================================================*/
create table EINHEIT_ATTRIBUT (
   EINHEIT_ATTRIBU_ID   INTEGER               not null,
   EINHEIT_ID           INTEGER               not null,
   EINHEIT_ATTRIBU_WERT INTEGER               not null,
   constraint PK_EINHEIT_ATTRIBUT primary key (EINHEIT_ATTRIBU_ID)
);

/*==============================================================*/
/* Index: EINHEIT_ATTRIB_FK                                     */
/*==============================================================*/
create index EINHEIT_ATTRIB_FK on EINHEIT_ATTRIBUT (
   EINHEIT_ID ASC
);

/*==============================================================*/
/* Table: EINHEIT_GRUPPE                                        */
/*==============================================================*/
create table EINHEIT_GRUPPE (
   GRUPPE_ID            INTEGER               not null,
   GRUPPE_ANZAHL        INTEGER               not null,
   constraint PK_EINHEIT_GRUPPE primary key (GRUPPE_ID)
);

/*==============================================================*/
/* Table: EINTRAG                                               */
/*==============================================================*/
create table EINTRAG (
   EI_ID                INTEGER               not null,
   ACC_ID               INTEGER               not null,
   FO_ID                INTEGER               not null,
   EI_TITEL             CLOB                  not null,
   EI_INALT             CLOB                  not null,
   EI_DATE_OF_CREATION  TIMESTAMP             not null,
   constraint PK_EINTRAG primary key (EI_ID)
);

/*==============================================================*/
/* Index: FORUM_TO_EINTRAG_FK                                   */
/*==============================================================*/
create index FORUM_TO_EINTRAG_FK on EINTRAG (
   FO_ID ASC
);

/*==============================================================*/
/* Index: USER_TO_EINTRAG_FK                                    */
/*==============================================================*/
create index USER_TO_EINTRAG_FK on EINTRAG (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: FORUM                                                 */
/*==============================================================*/
create table FORUM (
   FO_ID                INTEGER               not null,
   AL_ID                INTEGER               not null,
   FO_DATE_OF_CREATION  TIMESTAMP             not null,
   FO_TOPIC             CLOB                  not null,
   constraint PK_FORUM primary key (FO_ID)
);

/*==============================================================*/
/* Index: ALLIANZ_TO_FORUM_FK                                   */
/*==============================================================*/
create index ALLIANZ_TO_FORUM_FK on FORUM (
   AL_ID ASC
);

/*==============================================================*/
/* Table: GEBAEUDE                                              */
/*==============================================================*/
create table GEBAEUDE (
   GEB_ID               INTEGER               not null,
   GEB_TYP              VARCHAR2(100)         not null
      constraint CKC_GEB_TYP_GEBAEUDE check (GEB_TYP in ('Holzfaeller','Lehmgrube','Eisenmine','Speicher','Kaserne','Rathaus')),
   GEB_LEVEL            INTEGER               not null,
   constraint PK_GEBAEUDE primary key (GEB_ID)
);

/*==============================================================*/
/* Table: GEBAEUDE_EIGENSCHAFT                                  */
/*==============================================================*/
create table GEBAEUDE_EIGENSCHAFT (
   GE_ID                INTEGER               not null,
   GE_EIGENSCHAFT       VARCHAR2(100)         not null
      constraint CKC_GE_EIGENSCHAFT_GEBAEUDE check (GE_EIGENSCHAFT in ('Produktionsrate','Bauzeit','Kosten')),
   GE_WERT              INTEGER               not null,
   constraint PK_GEBAEUDE_EIGENSCHAFT primary key (GE_ID)
);

/*==============================================================*/
/* Table: GEBOT                                                 */
/*==============================================================*/
create table GEBOT (
   GEBOT_ID             INTEGER               not null,
   AUK_ID               INTEGER               not null,
   ACC_ID               INTEGER               not null,
   GEBOT_WERT           INTEGER               not null,
   constraint PK_GEBOT primary key (GEBOT_ID)
);

/*==============================================================*/
/* Index: ACCOUNT_TO_GEBOT_FK                                   */
/*==============================================================*/
create index ACCOUNT_TO_GEBOT_FK on GEBOT (
   ACC_ID ASC
);

/*==============================================================*/
/* Index: AUKTION_TO_GEBOT_FK                                   */
/*==============================================================*/
create index AUKTION_TO_GEBOT_FK on GEBOT (
   AUK_ID ASC
);

/*==============================================================*/
/* Table: GEB_TO_GEBEIG                                         */
/*==============================================================*/
create table GEB_TO_GEBEIG (
   GEB_ID               INTEGER               not null,
   GE_ID                INTEGER               not null,
   constraint PK_GEB_TO_GEBEIG primary key (GEB_ID, GE_ID)
);

/*==============================================================*/
/* Index: GEHORT2_FK                                            */
/*==============================================================*/
create index GEHORT2_FK on GEB_TO_GEBEIG (
   GEB_ID ASC
);

/*==============================================================*/
/* Index: HAT2_FK                                               */
/*==============================================================*/
create index HAT2_FK on GEB_TO_GEBEIG (
   GE_ID ASC
);

/*==============================================================*/
/* Table: GRUPPE                                                */
/*==============================================================*/
create table GRUPPE (
   EINHEIT_ID           INTEGER               not null,
   GRUPPE_ID            INTEGER               not null,
   constraint PK_GRUPPE primary key (EINHEIT_ID, GRUPPE_ID)
);

/*==============================================================*/
/* Index: BEINHALTET_FK                                         */
/*==============================================================*/
create index BEINHALTET_FK on GRUPPE (
   EINHEIT_ID ASC
);

/*==============================================================*/
/* Index: GEHORT_FK                                             */
/*==============================================================*/
create index GEHORT_FK on GRUPPE (
   GRUPPE_ID ASC
);

/*==============================================================*/
/* Table: ITEM                                                  */
/*==============================================================*/
create table ITEM (
   ITEM_ID              INTEGER               not null,
   ITEM_NAME            VARCHAR2(1024)        not null,
   ITEM_BESCHREIBUNG    VARCHAR2(100),
   ITEM_PREIS           INTEGER,
   ITEM_VERKAUFBAR      SMALLINT,
   constraint PK_ITEM primary key (ITEM_ID)
);

/*==============================================================*/
/* Table: ITEM_ATTRIBUT                                         */
/*==============================================================*/
create table ITEM_ATTRIBUT (
   ITAT_ID              INTEGER               not null,
   ITAT_ATTRIBUTTYP     VARCHAR2(1024)        not null
      constraint CKC_ITAT_ATTRIBUTTYP_ITEM_ATT check (ITAT_ATTRIBUTTYP in ('LEHM_BOOSTER','HOLZ_BOOSTER','EISEN_BOOSTER','EINHEIT_PROD_BOOSTER','GENERAL_BOOSTER')),
   ITAT_VALUE           INTEGER               not null,
   constraint PK_ITEM_ATTRIBUT primary key (ITAT_ID)
);

/*==============================================================*/
/* Table: KOENIGREICH                                           */
/*==============================================================*/
create table KOENIGREICH (
   KOE_WAPPEN           INTEGER               not null,
   KOE_RUHM             INTEGER               not null,
   KOE_ID               INTEGER               not null,
   WELT_ID              INTEGER               not null,
   ACC_ID               INTEGER               not null,
   constraint PK_KOENIGREICH primary key (KOE_ID)
);

/*==============================================================*/
/* Index: ZUGEHOERIG_FK                                         */
/*==============================================================*/
create index ZUGEHOERIG_FK on KOENIGREICH (
   WELT_ID ASC
);

/*==============================================================*/
/* Index: KOENIGREICH_TO_ACCOUNT_FK                             */
/*==============================================================*/
create index KOENIGREICH_TO_ACCOUNT_FK on KOENIGREICH (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: KOMMENTAR                                             */
/*==============================================================*/
create table KOMMENTAR (
   KO_ID                INTEGER               not null,
   EI_ID                INTEGER               not null,
   ACC_ID               INTEGER               not null,
   KO_INHALT            CLOB                  not null,
   KO_DATE_OF_CREATION  TIMESTAMP             not null,
   constraint PK_KOMMENTAR primary key (KO_ID)
);

/*==============================================================*/
/* Index: EINTRAG_TO_KOMMENTAR_FK                               */
/*==============================================================*/
create index EINTRAG_TO_KOMMENTAR_FK on KOMMENTAR (
   EI_ID ASC
);

/*==============================================================*/
/* Index: USER_TO_KOMMENTAR_FK                                  */
/*==============================================================*/
create index USER_TO_KOMMENTAR_FK on KOMMENTAR (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: KRIEGSBEUTE                                           */
/*==============================================================*/
create table KRIEGSBEUTE (
   KRIEGSBEUTE_ID       INTEGER               not null,
   ANGRIFF_ID           INTEGER               not null,
   KRIEGSBEUTE_ANZAHL   INTEGER               not null,
   KRIEGSBEUTE_RESSOURCE INTEGER               not null,
   constraint PK_KRIEGSBEUTE primary key (KRIEGSBEUTE_ID)
);

/*==============================================================*/
/* Index: KRIEGSBEUTE_FK                                        */
/*==============================================================*/
create index KRIEGSBEUTE_FK on KRIEGSBEUTE (
   ANGRIFF_ID ASC
);

/*==============================================================*/
/* Table: USER_TO_ADMIN                                         */
/*==============================================================*/
create table USER_TO_ADMIN (
   ACC_ID               INTEGER               not null,
   AD_ID                INTEGER               not null,
   constraint PK_USER_TO_ADMIN primary key (ACC_ID, AD_ID)
);

/*==============================================================*/
/* Index: WIRD_GEFUEHRT_FK                                      */
/*==============================================================*/
create index WIRD_GEFUEHRT_FK on USER_TO_ADMIN (
   ACC_ID ASC
);

/*==============================================================*/
/* Index: IST_TEIL_FK                                           */
/*==============================================================*/
create index IST_TEIL_FK on USER_TO_ADMIN (
   AD_ID ASC
);

/*==============================================================*/
/* Table: WELT                                                  */
/*==============================================================*/
create table WELT (
   WELT_ID              INTEGER               not null,
   WELT_FELD_X          INTEGER               not null,
   WELT_FELD_Y          INTEGER               not null,
   WELT_NAME            VARCHAR2(100)         not null,
   constraint PK_WELT primary key (WELT_ID)
);

alter table ACCOUNT
   add constraint FK_ACCOUNT_USER_TO_A_ALLIANZ foreign key (AL_ID)
      references ALLIANZ (AL_ID)
      ON DELETE SET NULL;

alter table ACCOUNT_TO_ITEM
   add constraint FK_ACCOUNT__BESITZT2_ITEM foreign key (ITEM_ID)
      references ITEM (ITEM_ID)
      ON DELETE CASCADE;

alter table ACCOUNT_TO_ITEM
   add constraint FK_ACCOUNT__BEZITZT_V_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      ON DELETE CASCADE;

alter table ADMINISTRATION
   add constraint FK_ADMINIST_WIRD_VERW_ALLIANZ foreign key (AL_ID)
      references ALLIANZ (AL_ID);

alter table ALLIANZ
   add constraint FK_ALLIANZ_VERWALTET_ADMINIST foreign key (AD_ID)
      references ADMINISTRATION (AD_ID);

alter table ANGRIFF
   add constraint FK_ANGRIFF_ANGREIFER_BURG foreign key (BUR_BU_ID)
      references BURG (BU_ID)
      ON DELETE CASCADE;

alter table ANGRIFF
   add constraint FK_ANGRIFF_BEWEGUNG__EINHEIT_ foreign key (GRUPPE_ID)
      references EINHEIT_GRUPPE (GRUPPE_ID)
      ON DELETE CASCADE;

alter table ANGRIFF
   add constraint FK_ANGRIFF_VERTEIDIG_BURG foreign key (BU_ID)
      references BURG (BU_ID)
      ON DELETE CASCADE;

alter table ATTRIBUTE
   add constraint FK_ATTRIBUT_ATTRIB_EI_EINHEIT_ foreign key (EINHEIT_ATTRIBU_ID)
      references EINHEIT_ATTRIBUT (EINHEIT_ATTRIBU_ID)
      ON DELETE SET NULL;

alter table ATTRIBUT_TO_ITEM
   add constraint FK_ATTRIBUT_AUF_ITEM foreign key (ITEM_ID)
      references ITEM (ITEM_ID)
      ON DELETE CASCADE;

alter table ATTRIBUT_TO_ITEM
   add constraint FK_ATTRIBUT_HAT_ITEM_ATT foreign key (ITAT_ID)
      references ITEM_ATTRIBUT (ITAT_ID)
      ON DELETE CASCADE;

alter table AUKTION
   add constraint FK_AUKTION_ACCOUNT_T_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      ON DELETE CASCADE;

alter table AUKTION
   add constraint FK_AUKTION_AUTKION_T_ITEM foreign key (ITEM_ID)
      references ITEM (ITEM_ID)
      ON DELETE CASCADE;

alter table BESTELLUNG
   add constraint FK_BESTELLU_KAUF_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      ON DELETE CASCADE;

alter table BESTELLUNG_TO_ITEM
   add constraint FK_BESTELLU_BEINHALTE_ITEM foreign key (ITEM_ID)
      references ITEM (ITEM_ID)
      ON DELETE CASCADE;

alter table BESTELLUNG_TO_ITEM
   add constraint FK_BESTELLU_IN_BESTELLU foreign key (BEST_ID)
      references BESTELLUNG (BEST_ID)
      ON DELETE CASCADE;

alter table BURG
   add constraint FK_BURG_KONIGREIC_KOENIGRE foreign key (KOE_ID)
      references KOENIGREICH (KOE_ID)
      ON DELETE CASCADE;

alter table BURG_TO_GEBAEUDE
   add constraint FK_BURG_TO__BESITZT_GEBAEUDE foreign key (GEB_ID)
      references GEBAEUDE (GEB_ID)
      ON DELETE CASCADE;

alter table BURG_TO_GEBAEUDE
   add constraint FK_BURG_TO__GEHORT_ZU_BURG foreign key (BU_ID)
      references BURG (BU_ID)
      ON DELETE CASCADE;

alter table CHATNACHRICHT
   add constraint FK_CHATNACH_NACHRICHT_ACCOUNT foreign key (ACC_ACC_ID)
      references ACCOUNT (ACC_ID)
      ON DELETE CASCADE;

alter table CHATNACHRICHT
   add constraint FK_CHATNACH_USER_TO_N_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      ON DELETE CASCADE;

alter table CHATROOM
   add constraint FK_CHATROOM_ALLIANZ_T_ALLIANZ foreign key (AL_ID)
      references ALLIANZ (AL_ID)
      ON DELETE CASCADE;

alter table CHATROOM_NACHRICHT
   add constraint FK_CHATROOM_CR_NACHRI_CHATROOM foreign key (CR_ID)
      references CHATROOM (CR_ID)
      ON DELETE CASCADE;

alter table CHATROOM_NACHRICHT
   add constraint FK_CHATROOM_USER_TO_C_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      ON DELETE CASCADE;

alter table EINHEIT
   add constraint FK_EINHEIT_GEB_VOR_E_GEBAEUDE foreign key (GEB_ID)
      references GEBAEUDE (GEB_ID)
      ON DELETE CASCADE;

alter table EINHEIT
   add constraint FK_EINHEIT_GEHOERT_BURG foreign key (BU_ID)
      references BURG (BU_ID)
      ON DELETE SET NULL;

alter table EINHEIT_ATTRIBUT
   add constraint FK_EINHEIT__EINHEIT_A_EINHEIT foreign key (EINHEIT_ID)
      references EINHEIT (EINHEIT_ID)
      ON DELETE CASCADE;

alter table EINTRAG
   add constraint FK_EINTRAG_FORUM_TO__FORUM foreign key (FO_ID)
      references FORUM (FO_ID)
      ON DELETE CASCADE;

alter table EINTRAG
   add constraint FK_EINTRAG_USER_TO_E_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      ON DELETE CASCADE;

alter table FORUM
   add constraint FK_FORUM_ALLIANZ_T_ALLIANZ foreign key (AL_ID)
      references ALLIANZ (AL_ID);

alter table GEBOT
   add constraint FK_GEBOT_ACCOUNT_T_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      ON DELETE CASCADE;

alter table GEBOT
   add constraint FK_GEBOT_AUKTION_T_AUKTION foreign key (AUK_ID)
      references AUKTION (AUK_ID)
      ON DELETE CASCADE;

alter table GEB_TO_GEBEIG
   add constraint FK_GEB_TO_G_GEHORT2_GEBAEUDE foreign key (GEB_ID)
      references GEBAEUDE (GEB_ID)
      ON DELETE CASCADE;

alter table GEB_TO_GEBEIG
   add constraint FK_GEB_TO_G_HAT2_GEBAEUDE foreign key (GE_ID)
      references GEBAEUDE_EIGENSCHAFT (GE_ID)
      ON DELETE CASCADE;

alter table GRUPPE
   add constraint FK_GRUPPE_BEINHALTE_EINHEIT foreign key (EINHEIT_ID)
      references EINHEIT (EINHEIT_ID)
      ON DELETE CASCADE;

alter table GRUPPE
   add constraint FK_GRUPPE_GEHORT_EINHEIT_ foreign key (GRUPPE_ID)
      references EINHEIT_GRUPPE (GRUPPE_ID)
      ON DELETE CASCADE;

alter table KOENIGREICH
   add constraint FK_KOENIGRE_KOENIGREI_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      ON DELETE CASCADE;

alter table KOENIGREICH
   add constraint FK_KOENIGRE_ZUGEHOERI_WELT foreign key (WELT_ID)
      references WELT (WELT_ID)
      ON DELETE CASCADE;

alter table KOMMENTAR
   add constraint FK_KOMMENTA_EINTRAG_T_EINTRAG foreign key (EI_ID)
      references EINTRAG (EI_ID)
      ON DELETE CASCADE;

alter table KOMMENTAR
   add constraint FK_KOMMENTA_USER_TO_K_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      ON DELETE CASCADE;

alter table KRIEGSBEUTE
   add constraint FK_KRIEGSBE_KRIEGSBEU_ANGRIFF foreign key (ANGRIFF_ID)
      references ANGRIFF (ANGRIFF_ID)
      ON DELETE CASCADE;

alter table USER_TO_ADMIN
   add constraint FK_USER_TO__IST_TEIL_ADMINIST foreign key (AD_ID)
      references ADMINISTRATION (AD_ID)
      ON DELETE CASCADE;

alter table USER_TO_ADMIN
   add constraint FK_USER_TO__WIRD_GEFU_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      ON DELETE CASCADE;
	  
/* views */
      
/* Alle geschriebenen Nachrichten (Chatroom-Nachrichten & Forenkommentare) eines Nutzers anzeigen*/
CREATE OR REPLACE VIEW nachrichtenuebersicht AS
SELECT acc_id, content, date_of_creation, nachrichtentyp FROM 
    (SELECT acc_id, ko_inhalt AS content, ko_date_of_creation AS date_of_creation, 'Kommentar' AS NACHRICHTENTYP
        FROM KOMMENTAR
    UNION ALL   
    SELECT acc_id, cn_inhalt AS content, cn_date_of_creation AS date_of_creation, 'Chatnachricht' AS NACHRICHTENTYP
        FROM CHATNACHRICHT)
        ;
        
/* Alle Kommentare eines Foreneintrages zeitlich geordnet mit Nutzernamen des Absenders anzeigen */
CREATE OR REPLACE VIEW kommentarverlauf AS
SELECT ACCOUNT.acc_username AS username, KOMMENTAR.ko_inhalt as content, 
KOMMENTAR.ko_date_of_creation as date_of_creation, KOMMENTAR.ei_id as eintrag_id
FROM KOMMENTAR
INNER JOIN ACCOUNT 
ON account.acc_id=kommentar.acc_id;

/* Alle chatraum nachrichten zeitlich geordnet mit Nutzernamen des Absenders anzeigen */
CREATE OR REPLACE VIEW chatraumverlauf AS
SELECT ACCOUNT.acc_username AS username, CHATROOM_NACHRICHT.crn_inhalt as content, CHATROOM_NACHRICHT.CRN_DATE_OF_CREATION as date_of_creation, CHATROOM_NACHRICHT.cr_id as chatroom_id
FROM CHATROOM_NACHRICHT
INNER JOIN ACCOUNT 
ON account.acc_id=CHATROOM_NACHRICHT.acc_id;

/* Foreneintraege, deren letzter Kommentar aelter als angegebene Zeit ist */
CREATE OR REPLACE VIEW letzterkommentar AS 
SELECT eintrag_id, MAX(date_of_creation) AS DATE_LATEST_COMMENT
FROM kommentarverlauf group by eintrag_id;

/* Accounts, die in forum eintraege verfassen duerfen */
CREATE OR REPLACE VIEW accounts_in_forum AS
SELECT FORUM.FO_ID, ACCOUNT.ACC_ID 
FROM FORUM
INNER JOIN ACCOUNT 
ON ACCOUNT.AL_ID=FORUM.AL_ID;

/* Accounts, die eintrag kommentieren duerfen */
CREATE OR REPLACE VIEW accounts_in_foreneintrag AS
SELECT EINTRAG.EI_ID, accounts_in_forum.ACC_ID
FROM EINTRAG
INNER JOIN accounts_in_forum
ON accounts_in_forum.FO_ID=EINTRAG.FO_ID;

/* Accounts, die in chatroom schreiben duerfen */
CREATE OR REPLACE VIEW accounts_in_chatroom AS
SELECT CHATROOM.CR_ID, ACCOUNT.ACC_ID 
FROM CHATROOM
INNER JOIN ACCOUNT 
ON ACCOUNT.AL_ID=CHATROOM.AL_ID;

/* Zuordnung der Nutzer, zwischen denen chat-beziehungen bestehen */
CREATE OR REPLACE VIEW chat_beziehungen AS
SELECT DISTINCT ACC_ID, ACC_ACC_ID FROM 
CHATNACHRICHT
ORDER BY ACC_ID;
/

drop type message_relation_table;
/
drop type message_relation 
/
create type message_relation is object (FROM_ID number, TO_ID number);
/
create type message_relation_table is table of message_relation;
/

/* 
findet alle chatbeziehungen, an denen receiver_id beteiligt ist. filtert
duplikate, sodasss keine doppelten Beziehungen nach der Form
ACC_ID | ACC_ACC_ID
-------------------
1      | 2
2      | 1
enthalten sind.
*/
CREATE OR REPLACE FUNCTION F_GET_MESSAGES_INVOLVING(
    receiver_id IN NUMBER
)
    return message_relation_table
IS
    ret_val message_relation_table := message_relation_table();
    n integer := 0;
BEGIN 
    for r in(
        SELECT DISTINCT ACC_ID, ACC_ACC_ID
        FROM (
            SELECT ACC_ID, ACC_ACC_ID FROM chat_beziehungen
            WHERE ACC_ID=receiver_id OR ACC_ACC_ID=receiver_id
        )
        WHERE (ACC_ID, ACC_ACC_ID) NOT IN (
            SELECT ACC_ID, ACC_ACC_ID
            FROM (
                SELECT ACC_ID, ACC_ACC_ID
                FROM (
                    /* alle chatbeziehungen auswaehlen, an denen receiver_id beteiligt ist*/
                    SELECT ACC_ID, ACC_ACC_ID FROM chat_beziehungen
                    WHERE ACC_ID=receiver_id OR ACC_ACC_ID=receiver_id
                )
                /* alle chatbeziehungen auswaehlen, bei denen ACC_ID der Empfaenger ist */
                WHERE ACC_ID IN (
                    SELECT ACC_ACC_ID FROM chat_beziehungen
                    WHERE ACC_ID=receiver_id OR ACC_ACC_ID=receiver_id
                ))
                WHERE ACC_ID!=receiver_id
                ))
    loop
        ret_val.extend;
        n := n+1;
        ret_val(n) := message_relation(r.ACC_ID, r.ACC_ACC_ID);
    end loop;
    return(ret_val);
    
END F_GET_MESSAGES_INVOLVING;
/

/*SELECT FROM_ID, TO_ID FROM TABLE (SELECT F_GET_MESSAGES_INVOLVING(1) from dual);*/

drop type last_message_table;
/
drop type last_message
/
create type last_message is object (FROM_USERNAME VARCHAR(100), INHALT CLOB, DATE_OF_CREATION TIMESTAMP);
/
create type last_message_table is table of last_message;
/

CREATE OR REPLACE FUNCTION F_GET_LAST_MESSAGES(
    receiver_id IN NUMBER
)
    return last_message_table
IS
    ret_val last_message_table := last_message_table();
    n integer := 0;
BEGIN 
    for r in(
        SELECT ac.ACC_USERNAME, b.CN_ID, b.CN_INHALT, b.CN_DATE_OF_CREATION 
            FROM TABLE (SELECT F_GET_MESSAGES_INVOLVING(receiver_id) from dual)
            INNER JOIN 
            CHATNACHRICHT b ON 
                (b.ACC_ID=FROM_ID AND b.ACC_ACC_ID=TO_ID) OR (b.ACC_ACC_ID=FROM_ID AND b.ACC_ID=TO_ID)
            INNER JOIN ACCOUNT ac ON
                ac.ACC_ID= 
                CASE 
                    WHEN b.ACC_ID=receiver_id THEN b.ACC_ACC_ID
                    ELSE b.ACC_ID
                END   
            WHERE 
                b.CN_DATE_OF_CREATION = (SELECT MAX(CN_DATE_OF_CREATION) FROM CHATNACHRICHT a WHERE (a.ACC_ID=b.ACC_ID AND a.ACC_ACC_ID=b.ACC_ACC_ID) OR (a.ACC_ID=b.ACC_ACC_ID AND a.ACC_ACC_ID=b.ACC_ID))
            ORDER BY b.CN_DATE_OF_CREATION DESC)
    loop
        ret_val.extend;
        n := n+1;
        ret_val(n) := last_message(r.ACC_USERNAME, r.CN_INHALT, r.CN_DATE_OF_CREATION);
    end loop;
    return(ret_val);
END F_GET_LAST_MESSAGES;
/

SELECT * FROM table (SELECT F_GET_LAST_MESSAGES(1) from dual);
  
/* procedures */
CREATE OR REPLACE PROCEDURE NEUE_ALLIANZ_ANLEGEN(
    allianz_name IN ALLIANZ.AL_NAME%TYPE,
    allianz_beschreibung IN ALLIANZ.AL_BESCHREIBUNG%TYPE,
    creator_id IN ACCOUNT.ACC_ID%TYPE
    )
AS
    new_administration_id NUMBER;
    new_allianz_id NUMBER;
BEGIN
    INSERT INTO ADMINISTRATION (AD_ID)
    VALUES (NULL);    
    
    SELECT MAX(AD_ID) INTO new_administration_id FROM ADMINISTRATION;
    
    INSERT INTO ALLIANZ (AL_ID, AD_ID, AL_NAME, AL_BESCHREIBUNG, AL_DATE_OF_CREATION)
    VALUES (NULL, new_administration_id, allianz_name, allianz_beschreibung, (SELECT SYSDATE from dual));
    
    SELECT MAX(AL_ID) INTO new_allianz_id FROM ALLIANZ;
    
    UPDATE ADMINISTRATION
    SET AL_ID = new_allianz_id   
    WHERE AD_ID = new_administration_id;
    
    INSERT INTO USER_TO_ADMIN (ACC_ID, AD_ID)
    VALUES (creator_id, new_allianz_id);
END NEUE_ALLIANZ_ANLEGEN;
/      

CREATE OR REPLACE PROCEDURE NEUES_FORUM_ANLEGEN(
    allianz_id IN ALLIANZ.AL_ID%TYPE,
    forum_topic IN FORUM.FO_TOPIC%TYPE
    )
AS
BEGIN
    INSERT INTO FORUM (FO_ID, AL_ID, FO_DATE_OF_CREATION, FO_TOPIC)
    VALUES (NULL, allianz_id, (SELECT SYSDATE from dual), forum_topic);    
END NEUES_FORUM_ANLEGEN;
/  
     
CREATE OR REPLACE PROCEDURE NEUEN_CHATROOM_ANLEGEN(
    allianz_id IN ALLIANZ.AL_ID%TYPE,
    chatroom_topic IN CHATROOM.CR_TOPIC%TYPE
    )
AS
BEGIN
    INSERT INTO CHATROOM (CR_ID, AL_ID, CR_DATE_OF_CREATION, CR_TOPIC)
    VALUES (NULL, allianz_id, (SELECT SYSDATE from dual), chatroom_topic);    
END NEUEN_CHATROOM_ANLEGEN;
/  

CREATE OR REPLACE PROCEDURE NEUE_CHATROOM_NACHRICHT(
    chatroom_id IN CHATROOM.CR_ID%TYPE,
    sender_id IN ACCOUNT.ACC_ID%TYPE,
    content IN CHATROOM_NACHRICHT.CRN_INHALT%TYPE
    )
AS
BEGIN
    INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CR_ID, CRN_DATE_OF_CREATION, CRN_INHALT)
    VALUES (NULL, sender_id, chatroom_id, (SELECT SYSDATE from dual), content);    
END NEUE_CHATROOM_NACHRICHT;
/

CREATE OR REPLACE PROCEDURE NEUEN_FORENEINTRAG_ERSTELLEN(
    forum_id IN FORUM.FO_ID%TYPE,
    sender_id IN ACCOUNT.ACC_ID%TYPE,
    titel IN EINTRAG.EI_TITEL%TYPE,
    content IN EINTRAG.EI_INHALT%TYPE
    )
AS
BEGIN
    INSERT INTO EINTRAG (EI_ID, ACC_ID, FO_ID, EI_TITEL, EI_INALT, EI_DATE_OF_CREATION)
    VALUES (NULL, sender_id, forum_id, titel, inhalt, (SELECT SYSDATE from dual));    
END  NEUEN_FORENEINTRAG_ERSTELLEN;
/

CREATE OR REPLACE PROCEDURE FORENEINTRAG_KOMMENTIEREN (
    foren_eintrag_id IN EINTRAG.EI_ID%TYPE,
    kommentar_inhalt in KOMMENTAR.KO_INHALT%TYPE,
    sender_id in ACCOUNT.ACC_ID%TYPE
    )
AS
BEGIN
    INSERT INTO KOMMENTAR(KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION)
    VALUES (NULL, foren_eintrag_id, sender_id, kommentar_inhalt, (SElECT SYSDATE from dual));
END FORENEINTRAG_KOMMENTIEREN;
/

CREATE OR REPLACE PROCEDURE CHATNACHRICHT_VERSENDEN(
    to_id IN CHATNACHRICHT.ACC_ID%TYPE,
    from_id IN CHATNACHRICHT.ACC_ACC_ID%TYPE,
    inhalt IN CHATNACHRICHT.CN_INHALT%TYPE
    )
AS
BEGIN
    INSERT INTO CHATNACHRICHT(CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION)
    VALUES (NULL, from_id, to_id, inhalt, (SELECT SYSDATE from dual));
END CHATNACHRICHT_VERSENDEN;
/

CREATE OR REPLACE PROCEDURE CHATNACHRICHT_BEANTWORTEN(
    nachricht_id IN CHATNACHRICHT.CN_ID%TYPE,
    antwort_text IN CHATNACHRICHT.CN_INHALT%TYPE
)
AS
    from_id CHATNACHRICHT.ACC_ID%TYPE;
    to_id CHATNACHRICHT.ACC_ACC_ID%TYPE;
BEGIN
    SELECT (ACC_ACC_ID) INTO from_id FROM CHATNACHRICHT WHERE CN_ID=nachricht_id;
    SELECT (ACC_ID) INTO to_id FROM CHATNACHRICHT WHERE CN_ID=nachricht_id;
    
    INSERT INTO CHATNACHRICHT(CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION)
    VALUES (NULL, from_id, to_id, antwort_text, (SELECT SYSDATE from dual));
END CHATNACHRICHT_BEANTWORTEN;
/

/* sequences and triggers on insert */
DROP SEQUENCE admin_seq;

CREATE SEQUENCE admin_seq
    START WITH 1
    INCREMENT BY 1
    NOMAXVALUE;
    
CREATE OR REPLACE TRIGGER administration_on_insert
  BEFORE INSERT 
  ON ADMINISTRATION
  FOR EACH ROW
BEGIN
      SELECT 
        CASE 
            WHEN :new.ad_id IS NULL THEN admin_seq.nextval
            ELSE :new.ad_id 
        END
      INTO :new.ad_id
      FROM dual;
END administration_on_insert;
/

/* allianz insertion */
DROP SEQUENCE allianz_seq;

CREATE SEQUENCE allianz_seq
    START WITH 1
    INCREMENT BY 1
    NOMAXVALUE;
    
CREATE OR REPLACE TRIGGER allianz_on_insert
  BEFORE INSERT 
  ON ALLIANZ
  FOR EACH ROW
BEGIN
      SELECT 
        CASE 
            WHEN :new.al_id IS NULL THEN allianz_seq.nextval
            ELSE :new.al_id 
        END
      INTO :new.al_id
      FROM dual;
END allianz_on_insert;
/

/* forum insertion */
DROP SEQUENCE forum_seq;

CREATE SEQUENCE forum_seq
    START WITH 1
    INCREMENT BY 1
    NOMAXVALUE;
    
CREATE OR REPLACE TRIGGER forum_on_insert
  BEFORE INSERT 
  ON FORUM
  FOR EACH ROW
BEGIN
      SELECT 
        CASE 
            WHEN :new.fo_id IS NULL THEN forum_seq.nextval
            ELSE :new.fo_id 
        END
      INTO :new.fo_id
      FROM dual;
END forum_on_insert;
/

/* kommentar insertion */
DROP SEQUENCE eintrag_seq;

CREATE SEQUENCE eintrag_seq
    START WITH 1
    INCREMENT BY 1
    NOMAXVALUE;
    
CREATE OR REPLACE TRIGGER eintrag_on_insert
  BEFORE INSERT 
  ON EINTRAG
  FOR EACH ROW
BEGIN
      SELECT 
        CASE 
            WHEN :new.ei_id IS NULL THEN eintrag_seq.nextval
            ELSE :new.ei_id 
        END
      INTO :new.ei_id
      FROM dual;
END kommentar_on_insert;
/

/* prueft, ob sender des kommentars auch mitglied der allianz ist */
CREATE OR REPLACE TRIGGER eintrag_check_allianz_mitglied
    BEFORE INSERT OR UPDATE 
    ON EINTRAG
    FOR EACH ROW
 BEGIN
    DECLARE 
        result number := null;
    BEGIN
      SELECT COUNT(ACC_ID) INTO result FROM accounts_in_forum WHERE ACC_ID=:new.acc_id AND FO_ID=:new.fo_id;
        IF result = 0 THEN
        RAISE_APPLICATION_ERROR(-20101, 'Sender ID ist kein Teil der Allianz des Forums');
      END IF;
    END;
END chatroomnachricht_check_allianz_mitglied;
/   

/* kommentar insertion */
DROP SEQUENCE kommentar_seq;

CREATE SEQUENCE kommentar_seq
    START WITH 1
    INCREMENT BY 1
    NOMAXVALUE;
    
CREATE OR REPLACE TRIGGER kommentar_on_insert
  BEFORE INSERT 
  ON KOMMENTAR
  FOR EACH ROW
BEGIN
      SELECT 
        CASE 
            WHEN :new.ko_id IS NULL THEN kommentar_seq.nextval
            ELSE :new.ko_id 
        END
      INTO :new.ko_id
      FROM dual;
END kommentar_on_insert;
/

/* prueft, ob sender des kommentars auch mitglied der allianz ist */
CREATE OR REPLACE TRIGGER kommentar_check_allianz_mitglied
    BEFORE INSERT OR UPDATE 
    ON KOMMENTAR
    FOR EACH ROW
 BEGIN
    DECLARE 
        result number := null;
    BEGIN
      SELECT COUNT(ACC_ID) INTO result FROM ACCOUNTS_IN_FORENEINTRAG WHERE ACC_ID=:new.acc_id AND EI_ID=:new.ei_id;
        IF result = 0 THEN
        RAISE_APPLICATION_ERROR(-20101, 'Sender ID ist kein Teil der Allianz des Foreneintrags');
      END IF;
    END;
END chatroomnachricht_check_allianz_mitglied;
/   

/* chatroom insertion */
DROP SEQUENCE chatroom_seq;

CREATE SEQUENCE chatroom_seq
    START WITH 1
    INCREMENT BY 1
    NOMAXVALUE;
    
CREATE OR REPLACE TRIGGER chatroom_on_insert
  BEFORE INSERT 
  ON CHATROOM
  FOR EACH ROW
BEGIN
      SELECT 
        CASE 
            WHEN :new.cr_id IS NULL THEN chatroom_seq.nextval
            ELSE :new.cr_id 
        END
      INTO :new.cr_id
      FROM dual;
END chatroom_on_insert;
/

/* chatroom nachricht insertion */
DROP SEQUENCE chatroomnachricht_seq;

CREATE SEQUENCE chatroomnachricht_seq
    START WITH 1
    INCREMENT BY 1
    NOMAXVALUE;
    
CREATE OR REPLACE TRIGGER chatroomnachricht_on_insert
  BEFORE INSERT 
  ON CHATROOM_NACHRICHT
  FOR EACH ROW
BEGIN
  SELECT 
    CASE 
        WHEN :new.crn_id IS NULL THEN chatroomnachricht_seq.nextval
        ELSE :new.crn_id 
    END
  INTO :new.crn_id
  FROM dual;
END chatroomnachricht_on_insert;
/

/* prueft, ob sender der nachricht auch mitglied der allianz ist */
CREATE OR REPLACE TRIGGER chatroomnachricht_check_allianz_mitglied
    BEFORE INSERT OR UPDATE 
    ON CHATROOM_NACHRICHT
    FOR EACH ROW
 BEGIN
    DECLARE 
        result number := null;
    BEGIN
      SELECT COUNT(ACC_ID) INTO result FROM ACCOUNTS_IN_CHATROOM WHERE ACC_ID=:new.acc_id AND CR_ID=:new.cr_id;
        IF result = 0 THEN
        RAISE_APPLICATION_ERROR(-20101, 'Sender ID ist kein Teil der Allianz des Chatrooms');
      END IF;
    END;
END chatroomnachricht_check_allianz_mitglied;
/   

/* chat nachricht insertion */
DROP SEQUENCE chatnachricht_seq;

CREATE SEQUENCE chatnachricht_seq
    START WITH 1
    INCREMENT BY 1
    NOMAXVALUE;
    
CREATE OR REPLACE TRIGGER chatnachricht_on_insert
  BEFORE INSERT 
  ON CHATNACHRICHT
  FOR EACH ROW
BEGIN
      SELECT 
        CASE 
            WHEN :new.cn_id IS NULL THEN chatnachricht_seq.nextval
            ELSE :new.cn_id 
        END
      INTO :new.cn_id
      FROM dual;
END chatnachricht_on_insert;
/
