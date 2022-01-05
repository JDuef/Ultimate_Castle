/*==============================================================*/
/* DBMS name:      SAP SQL Anywhere 17                          */
/* Created on:     05.01.2022 08:02:07                          */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_ACCOUNT_KOENIGREI_KOENIGRE') then
    alter table ACCOUNT
       delete foreign key FK_ACCOUNT_KOENIGREI_KOENIGRE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ACCOUNT_USER_TO_A_ALLIANZ') then
    alter table ACCOUNT
       delete foreign key FK_ACCOUNT_USER_TO_A_ALLIANZ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ACCOUNT_ZUGEHOERI_WELT') then
    alter table ACCOUNT
       delete foreign key FK_ACCOUNT_ZUGEHOERI_WELT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ACCOUNT__BESITZT2_ITEM') then
    alter table ACCOUNT_TO_ITEM
       delete foreign key FK_ACCOUNT__BESITZT2_ITEM
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ACCOUNT__BEZITZT_V_ACCOUNT') then
    alter table ACCOUNT_TO_ITEM
       delete foreign key FK_ACCOUNT__BEZITZT_V_ACCOUNT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ADMINIST_WIRD_VERW_ALLIANZ') then
    alter table ADMINISTRATION
       delete foreign key FK_ADMINIST_WIRD_VERW_ALLIANZ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ALLIANZ_ALLIANZ_T_FORUM') then
    alter table ALLIANZ
       delete foreign key FK_ALLIANZ_ALLIANZ_T_FORUM
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ALLIANZ_VERWALTET_ADMINIST') then
    alter table ALLIANZ
       delete foreign key FK_ALLIANZ_VERWALTET_ADMINIST
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ANGRIFF_ANGREIFER_BURG') then
    alter table ANGRIFF
       delete foreign key FK_ANGRIFF_ANGREIFER_BURG
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ANGRIFF_BEWEGUNG__EINHEIT_') then
    alter table ANGRIFF
       delete foreign key FK_ANGRIFF_BEWEGUNG__EINHEIT_
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ANGRIFF_VERTEIDIG_BURG') then
    alter table ANGRIFF
       delete foreign key FK_ANGRIFF_VERTEIDIG_BURG
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ATTRIBUT_ATTRIB_EI_EINHEIT_') then
    alter table ATTRIBUTE
       delete foreign key FK_ATTRIBUT_ATTRIB_EI_EINHEIT_
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ATTRIBUT_AUF_ITEM') then
    alter table ATTRIBUT_TO_ITEM
       delete foreign key FK_ATTRIBUT_AUF_ITEM
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ATTRIBUT_HAT_ITEM_ATT') then
    alter table ATTRIBUT_TO_ITEM
       delete foreign key FK_ATTRIBUT_HAT_ITEM_ATT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_AUKTION_ACCOUNT_T_ACCOUNT') then
    alter table AUKTION
       delete foreign key FK_AUKTION_ACCOUNT_T_ACCOUNT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_AUKTION_RELATIONS_ITEM') then
    alter table AUKTION
       delete foreign key FK_AUKTION_RELATIONS_ITEM
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_BESTELLU_BEINHALTE_ITEM') then
    alter table BESTELLUNG_TO_ITEM
       delete foreign key FK_BESTELLU_BEINHALTE_ITEM
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_BESTELLU_IN_BESTELLU') then
    alter table BESTELLUNG_TO_ITEM
       delete foreign key FK_BESTELLU_IN_BESTELLU
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_BURG_KONIGREIC_KOENIGRE') then
    alter table BURG
       delete foreign key FK_BURG_KONIGREIC_KOENIGRE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CHATNACH_NACHRICHT_ACCOUNT') then
    alter table CHATNACHRICHT
       delete foreign key FK_CHATNACH_NACHRICHT_ACCOUNT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CHATNACH_USER_TO_N_ACCOUNT') then
    alter table CHATNACHRICHT
       delete foreign key FK_CHATNACH_USER_TO_N_ACCOUNT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CHATROOM_ADMIN_TO__ADMINIST') then
    alter table CHATROOM
       delete foreign key FK_CHATROOM_ADMIN_TO__ADMINIST
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CHATROOM_ALLIANZ_T_ALLIANZ') then
    alter table CHATROOM
       delete foreign key FK_CHATROOM_ALLIANZ_T_ALLIANZ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CHATROOM_CR_NACHRI_CHATROOM') then
    alter table CHATROOM_NACHRICHT
       delete foreign key FK_CHATROOM_CR_NACHRI_CHATROOM
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CHATROOM_USER_TO_C_ACCOUNT') then
    alter table CHATROOM_NACHRICHT
       delete foreign key FK_CHATROOM_USER_TO_C_ACCOUNT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EINHEIT_GEBAUEDE__GEBAEUDE') then
    alter table EINHEIT
       delete foreign key FK_EINHEIT_GEBAUEDE__GEBAEUDE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EINHEIT_GEHOERT_BURG') then
    alter table EINHEIT
       delete foreign key FK_EINHEIT_GEHOERT_BURG
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EINHEIT__EINHEIT_A_EINHEIT') then
    alter table EINHEIT_ATTRIBUT
       delete foreign key FK_EINHEIT__EINHEIT_A_EINHEIT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EINTRAG_FORUM_TO__FORUM') then
    alter table EINTRAG
       delete foreign key FK_EINTRAG_FORUM_TO__FORUM
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EINTRAG_USER_TO_E_ACCOUNT') then
    alter table EINTRAG
       delete foreign key FK_EINTRAG_USER_TO_E_ACCOUNT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_FORUM_ADMIN_TO__ADMINIST') then
    alter table FORUM
       delete foreign key FK_FORUM_ADMIN_TO__ADMINIST
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_GEBAEUDE_GEHORT2_GEBAEUDE') then
    alter table GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT
       delete foreign key FK_GEBAEUDE_GEHORT2_GEBAEUDE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_GEBAEUDE_HAT2_GEBAEUDE') then
    alter table GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT
       delete foreign key FK_GEBAEUDE_HAT2_GEBAEUDE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_GEBOT_ACCOUNT_T_ACCOUNT') then
    alter table GEBOT
       delete foreign key FK_GEBOT_ACCOUNT_T_ACCOUNT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_GEBOT_AUKTION_T_AUKTION') then
    alter table GEBOT
       delete foreign key FK_GEBOT_AUKTION_T_AUKTION
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_GRUPPE_BEINHALTE_EINHEIT') then
    alter table GRUPPE
       delete foreign key FK_GRUPPE_BEINHALTE_EINHEIT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_GRUPPE_GEHORT_EINHEIT_') then
    alter table GRUPPE
       delete foreign key FK_GRUPPE_GEHORT_EINHEIT_
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_KOENIGRE_KOENIGREI_ACCOUNT') then
    alter table KOENIGREICH
       delete foreign key FK_KOENIGRE_KOENIGREI_ACCOUNT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_KOMMENTA_EINTRAG_T_EINTRAG') then
    alter table KOMMENTAR
       delete foreign key FK_KOMMENTA_EINTRAG_T_EINTRAG
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_KOMMENTA_USER_TO_K_ACCOUNT') then
    alter table KOMMENTAR
       delete foreign key FK_KOMMENTA_USER_TO_K_ACCOUNT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_KRIEGSBE_KRIEGSBEU_ANGRIFF') then
    alter table KRIEGSBEUTE
       delete foreign key FK_KRIEGSBE_KRIEGSBEU_ANGRIFF
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SPEICHER_BESITZT_GEBAEUDE') then
    alter table SPEICHERLEVEL
       delete foreign key FK_SPEICHER_BESITZT_GEBAEUDE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SPEICHER_GEHORT_ZU_BURG') then
    alter table SPEICHERLEVEL
       delete foreign key FK_SPEICHER_GEHORT_ZU_BURG
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_USER_TO__IST_TEIL_ADMINIST') then
    alter table USER_TO_ADMIN
       delete foreign key FK_USER_TO__IST_TEIL_ADMINIST
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_USER_TO__WIRD_GEFU_ACCOUNT') then
    alter table USER_TO_ADMIN
       delete foreign key FK_USER_TO__WIRD_GEFU_ACCOUNT
end if;

drop index if exists ACCOUNT.KOENIGREICH_TO_ACCOUNT2_FK;

drop index if exists ACCOUNT.ZUGEHOERIG_FK;

drop index if exists ACCOUNT.USER_TO_ALLIANZ_FK;

drop index if exists ACCOUNT.ACCOUNT_PK;

drop table if exists ACCOUNT;

drop index if exists ACCOUNT_TO_ITEM.BEZITZT_VON_FK;

drop index if exists ACCOUNT_TO_ITEM.BESITZT2_FK;

drop index if exists ACCOUNT_TO_ITEM.ACCOUNT_TO_ITEM_PK;

drop table if exists ACCOUNT_TO_ITEM;

drop index if exists ADMINISTRATION.WIRD_VERWALTET_FK;

drop index if exists ADMINISTRATION.ADMINISTRATION_PK;

drop table if exists ADMINISTRATION;

drop index if exists ALLIANZ.VERWALTET_FK;

drop index if exists ALLIANZ.ALLIANZ_TO_FORUM_FK;

drop index if exists ALLIANZ.ALLIANZ_PK;

drop table if exists ALLIANZ;

drop index if exists ANGRIFF.ANGREIFER_BURG_FK;

drop index if exists ANGRIFF.BEWEGUNG_GRP_FK;

drop index if exists ANGRIFF.VERTEIDIGER_BURG_FK;

drop index if exists ANGRIFF.ANGRIFF_PK;

drop table if exists ANGRIFF;

drop index if exists ATTRIBUTE.ATTRIB_EINHEIT_FK;

drop index if exists ATTRIBUTE.ATTRIBUTE_PK;

drop table if exists ATTRIBUTE;

drop index if exists ATTRIBUT_TO_ITEM.HAT_FK;

drop index if exists ATTRIBUT_TO_ITEM.AUF_FK;

drop index if exists ATTRIBUT_TO_ITEM.ATTRIBUT_TO_ITEM_PK;

drop table if exists ATTRIBUT_TO_ITEM;

drop index if exists AUKTION.RELATIONSHIP_8_FK;

drop index if exists AUKTION.ACCOUNT_TO_AUKTION_FK;

drop index if exists AUKTION.AUKTION_PK;

drop table if exists AUKTION;

drop index if exists BESTELLUNG.BESTELLUNG_PK;

drop table if exists BESTELLUNG;

drop index if exists BESTELLUNG_TO_ITEM.BEINHALTET2_FK;

drop index if exists BESTELLUNG_TO_ITEM.IN_FK;

drop index if exists BESTELLUNG_TO_ITEM.BESTELLUNG_TO_ITEM_PK;

drop table if exists BESTELLUNG_TO_ITEM;

drop index if exists BURG.KONIGREICHBURG_FK;

drop index if exists BURG.BURG_PK;

drop table if exists BURG;

drop index if exists CHATNACHRICHT.USER_TO_NACHRICHT_FK;

drop index if exists CHATNACHRICHT.NACHRICHT_TO_USER_FK;

drop index if exists CHATNACHRICHT.CHATNACHRICHT_PK;

drop table if exists CHATNACHRICHT;

drop index if exists CHATROOM.ADMIN_TO_CHATROOM_FK;

drop index if exists CHATROOM.ALLIANZ_TO_CHATROOM_FK;

drop index if exists CHATROOM.CHATROOM_PK;

drop table if exists CHATROOM;

drop index if exists CHATROOM_NACHRICHT.USER_TO_CR_NACHRICHT_FK;

drop index if exists CHATROOM_NACHRICHT.CR_NACHRICHT_TO_CHATROOM_FK;

drop index if exists CHATROOM_NACHRICHT.CHATROOM_NACHRICHT_PK;

drop table if exists CHATROOM_NACHRICHT;

drop index if exists EINHEIT.GEBAUEDE_VORRAUSETZUNG_EINHEIT_FK;

drop index if exists EINHEIT.GEHOERT_FK;

drop index if exists EINHEIT.EINHEIT_PK;

drop table if exists EINHEIT;

drop index if exists EINHEIT_ATTRIBUT.EINHEIT_ATTRIB_FK;

drop index if exists EINHEIT_ATTRIBUT.EINHEIT_ATTRIBUT_PK;

drop table if exists EINHEIT_ATTRIBUT;

drop index if exists EINHEIT_GRUPPE.EINHEIT_GRUPPE_PK;

drop table if exists EINHEIT_GRUPPE;

drop index if exists EINTRAG.USER_TO_EINTRAG_FK;

drop index if exists EINTRAG.FORUM_TO_EINTRAG_FK;

drop index if exists EINTRAG.EINTRAG_PK;

drop table if exists EINTRAG;

drop index if exists FORUM.ADMIN_TO_FORUM_FK;

drop index if exists FORUM.FORUM_PK;

drop table if exists FORUM;

drop index if exists GEBAEUDE.GEBAEUDE_PK;

drop table if exists GEBAEUDE;

drop index if exists GEBAEUDE_EIGENSCHAFT.GEBAEUDE_EIGENSCHAFT_PK;

drop table if exists GEBAEUDE_EIGENSCHAFT;

drop index if exists GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT.HAT2_FK;

drop index if exists GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT.GEHORT2_FK;

drop index if exists GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT.GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT_PK;

drop table if exists GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT;

drop index if exists GEBOT.AUKTION_TO_GEBOT_FK;

drop index if exists GEBOT.ACCOUNT_TO_GEBOT_FK;

drop index if exists GEBOT.GEBOT_PK;

drop table if exists GEBOT;

drop index if exists GRUPPE.GEHORT_FK;

drop index if exists GRUPPE.BEINHALTET_FK;

drop index if exists GRUPPE.GRUPPE_PK;

drop table if exists GRUPPE;

drop index if exists ITEM.ITEM_PK;

drop table if exists ITEM;

drop index if exists ITEM_ATTRIBUT.ITEM_ATTRIBUT_PK;

drop table if exists ITEM_ATTRIBUT;

drop index if exists KOENIGREICH.KOENIGREICH_TO_ACCOUNT_FK;

drop index if exists KOENIGREICH.KOENIGREICH_PK;

drop table if exists KOENIGREICH;

drop index if exists KOMMENTAR.USER_TO_KOMMENTAR_FK;

drop index if exists KOMMENTAR.EINTRAG_TO_KOMMENTAR_FK;

drop index if exists KOMMENTAR.KOMMENTAR_PK;

drop table if exists KOMMENTAR;

drop index if exists KRIEGSBEUTE.KRIEGSBEUTE_FK;

drop index if exists KRIEGSBEUTE.KRIEGSBEUTE_PK;

drop table if exists KRIEGSBEUTE;

drop index if exists SPEICHERLEVEL.BESITZT_FK;

drop index if exists SPEICHERLEVEL.GEHORT_ZU_FK;

drop index if exists SPEICHERLEVEL.SPEICHERLEVEL_PK;

drop table if exists SPEICHERLEVEL;

drop index if exists USER_TO_ADMIN.IST_TEIL_FK;

drop index if exists USER_TO_ADMIN.WIRD_GEFUEHRT_FK;

drop index if exists USER_TO_ADMIN.USER_TO_ADMIN_PK;

drop table if exists USER_TO_ADMIN;

drop index if exists WELT.WELT_PK;

drop table if exists WELT;

if exists(select 1 from sys.sysusertype where type_name='ANGRIFF_STATUS') then
   drop domain ANGRIFF_STATUS
end if;

if exists(select 1 from sys.sysusertype where type_name='EINHEIT_ATTRIBUTE') then
   drop domain EINHEIT_ATTRIBUTE
end if;

if exists(select 1 from sys.sysusertype where type_name='EINHEIT_KLASSE') then
   drop domain EINHEIT_KLASSE
end if;

if exists(select 1 from sys.sysusertype where type_name='GEBAEUDE_EIGENSCHAFT') then
   drop domain GEBAEUDE_EIGENSCHAFT
end if;

if exists(select 1 from sys.sysusertype where type_name='GEBAEUDE_TYP') then
   drop domain GEBAEUDE_TYP
end if;

if exists(select 1 from sys.sysusertype where type_name='ITEM_ATTRIB_EFFEKT') then
   drop domain ITEM_ATTRIB_EFFEKT
end if;

if exists(select 1 from sys.sysusertype where type_name='ITEM_ATTRIB_TYP') then
   drop domain ITEM_ATTRIB_TYP
end if;

if exists(select 1 from sys.sysusertype where type_name='RESSOURCE') then
   drop domain RESSOURCE
end if;

if exists(select 1 from sys.sysusertype where type_name='WERTETYP') then
   drop domain WERTETYP
end if;

/*==============================================================*/
/* Domain: ANGRIFF_STATUS                                       */
/*==============================================================*/
create domain ANGRIFF_STATUS as varchar(20) not null 
     check (@column in ('Geplant','Gewonnen','Verloren','<Val16>'));

/*==============================================================*/
/* Domain: EINHEIT_ATTRIBUTE                                    */
/*==============================================================*/
create domain EINHEIT_ATTRIBUTE as varchar(20) 
     check (@column is null or (@column in ('Angriff','Verteidigung','Bewegungsgeschwindigkeit')));

/*==============================================================*/
/* Domain: EINHEIT_KLASSE                                       */
/*==============================================================*/
create domain EINHEIT_KLASSE as varchar(50) not null 
     check (@column in ('Speertraeger','Schwertkaempfer','Axtkaempfer','Bogenschuetze','Reiter'));

/*==============================================================*/
/* Domain: GEBAEUDE_EIGENSCHAFT                                 */
/*==============================================================*/
create domain GEBAEUDE_EIGENSCHAFT as varchar(100) not null 
     check (@column in ('Produktionsrate','Bauzeit','Kosten'));

/*==============================================================*/
/* Domain: GEBAEUDE_TYP                                         */
/*==============================================================*/
create domain GEBAEUDE_TYP as varchar(100) not null 
     check (@column in ('Holzfaeller','Lehmgrube','Eisenmine','Speicher','Kaserne','Rathaus'));

/*==============================================================*/
/* Domain: ITEM_ATTRIB_EFFEKT                                   */
/*==============================================================*/
create domain ITEM_ATTRIB_EFFEKT as char(10);

/*==============================================================*/
/* Domain: ITEM_ATTRIB_TYP                                      */
/*==============================================================*/
create domain ITEM_ATTRIB_TYP as char(10);

/*==============================================================*/
/* Domain: RESSOURCE                                            */
/*==============================================================*/
create domain RESSOURCE as varchar(100) not null 
     check (@column in ('Eisen','Lehm','Holz'));

/*==============================================================*/
/* Domain: WERTETYP                                             */
/*==============================================================*/
create domain WERTETYP as varchar(20);

/*==============================================================*/
/* Table: ACCOUNT                                               */
/*==============================================================*/
create or replace table ACCOUNT 
(
   ACC_ID               integer                        not null,
   WELT_ID              integer                        not null,
   KOE_ID               integer                        null,
   AL_ID                integer                        null,
   ACC_USERNAME         varchar(100)                   not null,
   ACC_PASSWORD         varchar(100)                   not null,
   ACC_EMAIL            varchar(100)                   not null,
   ACC_LETZER_LOGIN     timestamp                      null,
   ACC_PREMIUM          smallint                       null,
   ACC_PAYMENT_TOKEN    varchar(1024)                  null,
   constraint PK_ACCOUNT primary key clustered (ACC_ID)
);

/*==============================================================*/
/* Index: ACCOUNT_PK                                            */
/*==============================================================*/
create unique clustered index ACCOUNT_PK on ACCOUNT (
ACC_ID ASC
);

/*==============================================================*/
/* Index: USER_TO_ALLIANZ_FK                                    */
/*==============================================================*/
create index USER_TO_ALLIANZ_FK on ACCOUNT (
AL_ID ASC
);

/*==============================================================*/
/* Index: ZUGEHOERIG_FK                                         */
/*==============================================================*/
create index ZUGEHOERIG_FK on ACCOUNT (
WELT_ID ASC
);

/*==============================================================*/
/* Index: KOENIGREICH_TO_ACCOUNT2_FK                            */
/*==============================================================*/
create index KOENIGREICH_TO_ACCOUNT2_FK on ACCOUNT (
KOE_ID ASC
);

/*==============================================================*/
/* Table: ACCOUNT_TO_ITEM                                       */
/*==============================================================*/
create or replace table ACCOUNT_TO_ITEM 
(
   ITEM_ID              integer                        not null,
   ACC_ID               integer                        not null,
   constraint PK_ACCOUNT_TO_ITEM primary key clustered (ITEM_ID, ACC_ID)
);

/*==============================================================*/
/* Index: ACCOUNT_TO_ITEM_PK                                    */
/*==============================================================*/
create unique clustered index ACCOUNT_TO_ITEM_PK on ACCOUNT_TO_ITEM (
ITEM_ID ASC,
ACC_ID ASC
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
create or replace table ADMINISTRATION 
(
   AD_ID                integer                        not null,
   AL_ID                integer                        null,
   constraint PK_ADMINISTRATION primary key clustered (AD_ID)
);

/*==============================================================*/
/* Index: ADMINISTRATION_PK                                     */
/*==============================================================*/
create unique clustered index ADMINISTRATION_PK on ADMINISTRATION (
AD_ID ASC
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
create or replace table ALLIANZ 
(
   AL_ID                integer                        not null,
   FO_ID                integer                        not null,
   AD_ID                integer                        not null,
   AL_NAME              long varchar                   not null,
   AL_BESCHREIBUNG      long varchar                   null,
   AL_DATE_OF_CREATION  date                           null,
   constraint PK_ALLIANZ primary key clustered (AL_ID)
);

/*==============================================================*/
/* Index: ALLIANZ_PK                                            */
/*==============================================================*/
create unique clustered index ALLIANZ_PK on ALLIANZ (
AL_ID ASC
);

/*==============================================================*/
/* Index: ALLIANZ_TO_FORUM_FK                                   */
/*==============================================================*/
create index ALLIANZ_TO_FORUM_FK on ALLIANZ (
FO_ID ASC
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
create or replace table ANGRIFF 
(
   ANGRIFF_ID           integer                        not null,
   BU_POSITION          integer                        not null,
   BUR_BU_POSITION      integer                        not null,
   GRUPPE_ID            integer                        not null,
   ANGRIFF_GEPLANT_AM   timestamp                      not null,
   ANGRIFF_STATUS       ANGRIFF_STATUS                 not null,
   constraint PK_ANGRIFF primary key clustered (ANGRIFF_ID)
);

/*==============================================================*/
/* Index: ANGRIFF_PK                                            */
/*==============================================================*/
create unique clustered index ANGRIFF_PK on ANGRIFF (
ANGRIFF_ID ASC
);

/*==============================================================*/
/* Index: VERTEIDIGER_BURG_FK                                   */
/*==============================================================*/
create index VERTEIDIGER_BURG_FK on ANGRIFF (
BU_POSITION ASC
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
BUR_BU_POSITION ASC
);

/*==============================================================*/
/* Table: ATTRIBUTE                                             */
/*==============================================================*/
create or replace table ATTRIBUTE 
(
   ATTRIBUT_ID          integer                        not null,
   EINHEIT_ATTRIBU_ID   integer                        null,
   ATTRIBUT_TYP         EINHEIT_ATTRIBUTE              not null,
   ATTRIBUT_BEZEICHNUNG varchar(50)                    not null,
   constraint PK_ATTRIBUTE primary key clustered (ATTRIBUT_ID)
);

/*==============================================================*/
/* Index: ATTRIBUTE_PK                                          */
/*==============================================================*/
create unique clustered index ATTRIBUTE_PK on ATTRIBUTE (
ATTRIBUT_ID ASC
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
create or replace table ATTRIBUT_TO_ITEM 
(
   ITEM_ID              integer                        not null,
   ITAT_ID              integer                        not null,
   constraint PK_ATTRIBUT_TO_ITEM primary key clustered (ITEM_ID, ITAT_ID)
);

/*==============================================================*/
/* Index: ATTRIBUT_TO_ITEM_PK                                   */
/*==============================================================*/
create unique clustered index ATTRIBUT_TO_ITEM_PK on ATTRIBUT_TO_ITEM (
ITEM_ID ASC,
ITAT_ID ASC
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
create or replace table AUKTION 
(
   ACC_ID               integer                        not null,
   ITEM_ID              integer                        not null,
   AUK_ID               integer                        not null,
   AUK_START_DATUM      timestamp                      not null,
   AUK_END_DATUM        timestamp                      not null,
   constraint PK_AUKTION primary key clustered (ACC_ID, ITEM_ID, AUK_ID)
);

/*==============================================================*/
/* Index: AUKTION_PK                                            */
/*==============================================================*/
create unique clustered index AUKTION_PK on AUKTION (
ACC_ID ASC,
ITEM_ID ASC,
AUK_ID ASC
);

/*==============================================================*/
/* Index: ACCOUNT_TO_AUKTION_FK                                 */
/*==============================================================*/
create index ACCOUNT_TO_AUKTION_FK on AUKTION (
ACC_ID ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on AUKTION (
ITEM_ID ASC
);

/*==============================================================*/
/* Table: BESTELLUNG                                            */
/*==============================================================*/
create or replace table BESTELLUNG 
(
   BEST_ID              integer                        not null,
   ACC_ID               integer                        null,
   BEST_DATUM           timestamp                      not null,
   BEST_WERT            integer                        not null,
   constraint PK_BESTELLUNG primary key clustered (BEST_ID)
);

/*==============================================================*/
/* Index: BESTELLUNG_PK                                         */
/*==============================================================*/
create unique clustered index BESTELLUNG_PK on BESTELLUNG (
BEST_ID ASC
);

/*==============================================================*/
/* Table: BESTELLUNG_TO_ITEM                                    */
/*==============================================================*/
create or replace table BESTELLUNG_TO_ITEM 
(
   BEST_ID              integer                        not null,
   ITEM_ID              integer                        not null,
   constraint PK_BESTELLUNG_TO_ITEM primary key clustered (BEST_ID, ITEM_ID)
);

/*==============================================================*/
/* Index: BESTELLUNG_TO_ITEM_PK                                 */
/*==============================================================*/
create unique clustered index BESTELLUNG_TO_ITEM_PK on BESTELLUNG_TO_ITEM (
BEST_ID ASC,
ITEM_ID ASC
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
create or replace table BURG 
(
   BU_POSITION          integer                        not null,
   KOE_ID               integer                        not null,
   BU_BURGNAME          long varchar                   not null,
   BU_LEHM              integer                        not null,
   BU_EISEN             integer                        not null,
   BU_HOLZ              integer                        not null,
   constraint PK_BURG primary key clustered (BU_POSITION)
);

/*==============================================================*/
/* Index: BURG_PK                                               */
/*==============================================================*/
create unique clustered index BURG_PK on BURG (
BU_POSITION ASC
);

/*==============================================================*/
/* Index: KONIGREICHBURG_FK                                     */
/*==============================================================*/
create index KONIGREICHBURG_FK on BURG (
KOE_ID ASC
);

/*==============================================================*/
/* Table: CHATNACHRICHT                                         */
/*==============================================================*/
create or replace table CHATNACHRICHT 
(
   CN_ID                integer                        not null,
   ACC_ID               integer                        not null,
   ACC_ACC_ID           integer                        not null,
   CN_INHALT            long varchar                   not null,
   CN_DATE_OF_CREATION  date                           not null,
   constraint PK_CHATNACHRICHT primary key clustered (CN_ID)
);

/*==============================================================*/
/* Index: CHATNACHRICHT_PK                                      */
/*==============================================================*/
create unique clustered index CHATNACHRICHT_PK on CHATNACHRICHT (
CN_ID ASC
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
create or replace table CHATROOM 
(
   CR_ID                integer                        not null,
   AD_ID                integer                        not null,
   AL_ID                integer                        not null,
   CR_TOPIC             long varchar                   not null,
   CR_DATE_OF_CREATION  date                           not null,
   constraint PK_CHATROOM primary key clustered (CR_ID)
);

/*==============================================================*/
/* Index: CHATROOM_PK                                           */
/*==============================================================*/
create unique clustered index CHATROOM_PK on CHATROOM (
CR_ID ASC
);

/*==============================================================*/
/* Index: ALLIANZ_TO_CHATROOM_FK                                */
/*==============================================================*/
create index ALLIANZ_TO_CHATROOM_FK on CHATROOM (
AL_ID ASC
);

/*==============================================================*/
/* Index: ADMIN_TO_CHATROOM_FK                                  */
/*==============================================================*/
create index ADMIN_TO_CHATROOM_FK on CHATROOM (
AD_ID ASC
);

/*==============================================================*/
/* Table: CHATROOM_NACHRICHT                                    */
/*==============================================================*/
create or replace table CHATROOM_NACHRICHT 
(
   CRN_ID               integer                        not null,
   ACC_ID               integer                        not null,
   CR_ID                integer                        not null,
   CRN_INHALT           long varchar                   not null,
   CRN_DATE_OF_CREATION date                           not null,
   constraint PK_CHATROOM_NACHRICHT primary key clustered (CRN_ID)
);

/*==============================================================*/
/* Index: CHATROOM_NACHRICHT_PK                                 */
/*==============================================================*/
create unique clustered index CHATROOM_NACHRICHT_PK on CHATROOM_NACHRICHT (
CRN_ID ASC
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
create or replace table EINHEIT 
(
   EINHEIT_ID           integer                        not null,
   BU_POSITION          integer                        null,
   GEB_ID               integer                        not null,
   EINHEIT_NAME         varchar(50)                    not null,
   EINHEIT_KLASSE       EINHEIT_KLASSE                 not null,
   EINHEIT_RESSOURCE    RESSOURCE                      not null,
   EINHEIT_RES_WERT     integer                        null,
   constraint PK_EINHEIT primary key clustered (EINHEIT_ID)
);

/*==============================================================*/
/* Index: EINHEIT_PK                                            */
/*==============================================================*/
create unique clustered index EINHEIT_PK on EINHEIT (
EINHEIT_ID ASC
);

/*==============================================================*/
/* Index: GEHOERT_FK                                            */
/*==============================================================*/
create index GEHOERT_FK on EINHEIT (
BU_POSITION ASC
);

/*==============================================================*/
/* Index: GEBAUEDE_VORRAUSETZUNG_EINHEIT_FK                     */
/*==============================================================*/
create index GEBAUEDE_VORRAUSETZUNG_EINHEIT_FK on EINHEIT (
GEB_ID ASC
);

/*==============================================================*/
/* Table: EINHEIT_ATTRIBUT                                      */
/*==============================================================*/
create or replace table EINHEIT_ATTRIBUT 
(
   EINHEIT_ATTRIBU_ID   integer                        not null,
   EINHEIT_ID           integer                        not null,
   EINHEIT_ATTRIBU_WERT integer                        not null,
   constraint PK_EINHEIT_ATTRIBUT primary key clustered (EINHEIT_ATTRIBU_ID)
);

/*==============================================================*/
/* Index: EINHEIT_ATTRIBUT_PK                                   */
/*==============================================================*/
create unique clustered index EINHEIT_ATTRIBUT_PK on EINHEIT_ATTRIBUT (
EINHEIT_ATTRIBU_ID ASC
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
create or replace table EINHEIT_GRUPPE 
(
   GRUPPE_ID            integer                        not null,
   GRUPPE_ANZAHL        integer                        not null,
   constraint PK_EINHEIT_GRUPPE primary key clustered (GRUPPE_ID)
);

/*==============================================================*/
/* Index: EINHEIT_GRUPPE_PK                                     */
/*==============================================================*/
create unique clustered index EINHEIT_GRUPPE_PK on EINHEIT_GRUPPE (
GRUPPE_ID ASC
);

/*==============================================================*/
/* Table: EINTRAG                                               */
/*==============================================================*/
create or replace table EINTRAG 
(
   EI_ID                integer                        not null,
   ACC_ID               integer                        not null,
   FO_ID                integer                        not null,
   EI_TITEL             long varchar                   not null,
   EI_INALT             long varchar                   not null,
   EI_DATE_OF_CREATION  date                           not null,
   constraint PK_EINTRAG primary key clustered (EI_ID)
);

/*==============================================================*/
/* Index: EINTRAG_PK                                            */
/*==============================================================*/
create unique clustered index EINTRAG_PK on EINTRAG (
EI_ID ASC
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
create or replace table FORUM 
(
   FO_ID                integer                        not null,
   AD_ID                integer                        not null,
   FO_DATE_OF_CREATION  date                           not null,
   FO_TOPIC             long varchar                   not null,
   constraint PK_FORUM primary key clustered (FO_ID)
);

/*==============================================================*/
/* Index: FORUM_PK                                              */
/*==============================================================*/
create unique clustered index FORUM_PK on FORUM (
FO_ID ASC
);

/*==============================================================*/
/* Index: ADMIN_TO_FORUM_FK                                     */
/*==============================================================*/
create index ADMIN_TO_FORUM_FK on FORUM (
AD_ID ASC
);

/*==============================================================*/
/* Table: GEBAEUDE                                              */
/*==============================================================*/
create or replace table GEBAEUDE 
(
   GEB_ID               integer                        not null,
   GEB_TYP              GEBAEUDE_TYP                   not null,
   GEB_LEVEL            integer                        not null,
   constraint PK_GEBAEUDE primary key clustered (GEB_ID)
);

/*==============================================================*/
/* Index: GEBAEUDE_PK                                           */
/*==============================================================*/
create unique clustered index GEBAEUDE_PK on GEBAEUDE (
GEB_ID ASC
);

/*==============================================================*/
/* Table: GEBAEUDE_EIGENSCHAFT                                  */
/*==============================================================*/
create or replace table GEBAEUDE_EIGENSCHAFT 
(
   GE_ID                integer                        not null,
   GE_EIGENSCHAFT       GEBAEUDE_EIGENSCHAFT           not null,
   GE_WERT              integer                        not null,
   constraint PK_GEBAEUDE_EIGENSCHAFT primary key clustered (GE_ID)
);

/*==============================================================*/
/* Index: GEBAEUDE_EIGENSCHAFT_PK                               */
/*==============================================================*/
create unique clustered index GEBAEUDE_EIGENSCHAFT_PK on GEBAEUDE_EIGENSCHAFT (
GE_ID ASC
);

/*==============================================================*/
/* Table: GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT                       */
/*==============================================================*/
create or replace table GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT 
(
   GEB_ID               integer                        not null,
   GE_ID                integer                        not null,
   constraint PK_GEBAEUDE_TO_GEBAEUDEEIGENSC primary key clustered (GEB_ID, GE_ID)
);

/*==============================================================*/
/* Index: GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT_PK                    */
/*==============================================================*/
create unique clustered index GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT_PK on GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT (
GEB_ID ASC,
GE_ID ASC
);

/*==============================================================*/
/* Index: GEHORT2_FK                                            */
/*==============================================================*/
create index GEHORT2_FK on GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT (
GEB_ID ASC
);

/*==============================================================*/
/* Index: HAT2_FK                                               */
/*==============================================================*/
create index HAT2_FK on GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT (
GE_ID ASC
);

/*==============================================================*/
/* Table: GEBOT                                                 */
/*==============================================================*/
create or replace table GEBOT 
(
   GEBO_ID              integer                        not null,
   AUK_ACC_ID           integer                        null,
   ITEM_ID              integer                        null,
   AUK_ID               integer                        null,
   ACC_ID               integer                        null,
   GEBO_WERT            integer                        not null,
   constraint PK_GEBOT primary key clustered (GEBO_ID)
);

/*==============================================================*/
/* Index: GEBOT_PK                                              */
/*==============================================================*/
create unique clustered index GEBOT_PK on GEBOT (
GEBO_ID ASC
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
AUK_ACC_ID ASC,
ITEM_ID ASC,
AUK_ID ASC
);

/*==============================================================*/
/* Table: GRUPPE                                                */
/*==============================================================*/
create or replace table GRUPPE 
(
   EINHEIT_ID           integer                        not null,
   GRUPPE_ID            integer                        not null,
   constraint PK_GRUPPE primary key clustered (EINHEIT_ID, GRUPPE_ID)
);

/*==============================================================*/
/* Index: GRUPPE_PK                                             */
/*==============================================================*/
create unique clustered index GRUPPE_PK on GRUPPE (
EINHEIT_ID ASC,
GRUPPE_ID ASC
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
create or replace table ITEM 
(
   ITEM_ID              integer                        not null,
   ITEM_NAME            varchar(1024)                  not null,
   ITEM_BESCHREIBUNG    varchar(100)                   null,
   ITEM_PREIS           integer                        null,
   ITEM_VERKAUFBAR      smallint                       null,
   constraint PK_ITEM primary key clustered (ITEM_ID)
);

/*==============================================================*/
/* Index: ITEM_PK                                               */
/*==============================================================*/
create unique clustered index ITEM_PK on ITEM (
ITEM_ID ASC
);

/*==============================================================*/
/* Table: ITEM_ATTRIBUT                                         */
/*==============================================================*/
create or replace table ITEM_ATTRIBUT 
(
   ITAT_ID              integer                        not null,
   ITAT_ATTRIBUTTYP     ITEM_ATTRIB_TYP                not null,
   ITAT_EFFEKT          ITEM_ATTRIB_EFFEKT             not null,
   constraint PK_ITEM_ATTRIBUT primary key clustered (ITAT_ID)
);

/*==============================================================*/
/* Index: ITEM_ATTRIBUT_PK                                      */
/*==============================================================*/
create unique clustered index ITEM_ATTRIBUT_PK on ITEM_ATTRIBUT (
ITAT_ID ASC
);

/*==============================================================*/
/* Table: KOENIGREICH                                           */
/*==============================================================*/
create or replace table KOENIGREICH 
(
   KOE_WAPPEN           integer                        not null,
   KOE_RUHM             integer                        not null,
   KOE_ID               integer                        not null,
   ACC_ID               integer                        not null,
   constraint PK_KOENIGREICH primary key clustered (KOE_ID)
);

/*==============================================================*/
/* Index: KOENIGREICH_PK                                        */
/*==============================================================*/
create unique clustered index KOENIGREICH_PK on KOENIGREICH (
KOE_ID ASC
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
create or replace table KOMMENTAR 
(
   KO_ID                integer                        not null,
   EI_ID                integer                        not null,
   ACC_ID               integer                        not null,
   KO_INHALT            long varchar                   not null,
   KO_DATE_OF_CREATION  date                           not null,
   constraint PK_KOMMENTAR primary key clustered (KO_ID)
);

/*==============================================================*/
/* Index: KOMMENTAR_PK                                          */
/*==============================================================*/
create unique clustered index KOMMENTAR_PK on KOMMENTAR (
KO_ID ASC
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
create or replace table KRIEGSBEUTE 
(
   KRIEGSBEUTE_ID       integer                        not null,
   ANGRIFF_ID           integer                        not null,
   KRIEGSBEUTE_ANZAHL   integer                        not null,
   KRIEGSBEUTE_RESSOURCE integer                        not null,
   constraint PK_KRIEGSBEUTE primary key clustered (KRIEGSBEUTE_ID)
);

/*==============================================================*/
/* Index: KRIEGSBEUTE_PK                                        */
/*==============================================================*/
create unique clustered index KRIEGSBEUTE_PK on KRIEGSBEUTE (
KRIEGSBEUTE_ID ASC
);

/*==============================================================*/
/* Index: KRIEGSBEUTE_FK                                        */
/*==============================================================*/
create index KRIEGSBEUTE_FK on KRIEGSBEUTE (
ANGRIFF_ID ASC
);

/*==============================================================*/
/* Table: SPEICHERLEVEL                                         */
/*==============================================================*/
create or replace table SPEICHERLEVEL 
(
   BU_POSITION          integer                        not null,
   GEB_ID               integer                        not null,
   constraint PK_SPEICHERLEVEL primary key clustered (BU_POSITION, GEB_ID)
);

/*==============================================================*/
/* Index: SPEICHERLEVEL_PK                                      */
/*==============================================================*/
create unique clustered index SPEICHERLEVEL_PK on SPEICHERLEVEL (
BU_POSITION ASC,
GEB_ID ASC
);

/*==============================================================*/
/* Index: GEHORT_ZU_FK                                          */
/*==============================================================*/
create index GEHORT_ZU_FK on SPEICHERLEVEL (
BU_POSITION ASC
);

/*==============================================================*/
/* Index: BESITZT_FK                                            */
/*==============================================================*/
create index BESITZT_FK on SPEICHERLEVEL (
GEB_ID ASC
);

/*==============================================================*/
/* Table: USER_TO_ADMIN                                         */
/*==============================================================*/
create or replace table USER_TO_ADMIN 
(
   ACC_ID               integer                        not null,
   AD_ID                integer                        not null,
   constraint PK_USER_TO_ADMIN primary key clustered (ACC_ID, AD_ID)
);

/*==============================================================*/
/* Index: USER_TO_ADMIN_PK                                      */
/*==============================================================*/
create unique clustered index USER_TO_ADMIN_PK on USER_TO_ADMIN (
ACC_ID ASC,
AD_ID ASC
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
create or replace table WELT 
(
   WELT_ID              integer                        not null,
   WELT_FELD_X          integer                        not null,
   WELT_FELD_Y          integer                        not null,
   WELT_NAME            varchar(100)                   not null,
   constraint PK_WELT primary key clustered (WELT_ID)
);

/*==============================================================*/
/* Index: WELT_PK                                               */
/*==============================================================*/
create unique clustered index WELT_PK on WELT (
WELT_ID ASC
);

alter table ACCOUNT
   add constraint FK_ACCOUNT_KOENIGREI_KOENIGRE foreign key (KOE_ID)
      references KOENIGREICH (KOE_ID)
      on update restrict
      on delete restrict;

alter table ACCOUNT
   add constraint FK_ACCOUNT_USER_TO_A_ALLIANZ foreign key (AL_ID)
      references ALLIANZ (AL_ID)
      on update restrict
      on delete restrict;

alter table ACCOUNT
   add constraint FK_ACCOUNT_ZUGEHOERI_WELT foreign key (WELT_ID)
      references WELT (WELT_ID)
      on update restrict
      on delete restrict;

alter table ACCOUNT_TO_ITEM
   add constraint FK_ACCOUNT__BESITZT2_ITEM foreign key (ITEM_ID)
      references ITEM (ITEM_ID)
      on update restrict
      on delete restrict;

alter table ACCOUNT_TO_ITEM
   add constraint FK_ACCOUNT__BEZITZT_V_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      on update restrict
      on delete restrict;

alter table ADMINISTRATION
   add constraint FK_ADMINIST_WIRD_VERW_ALLIANZ foreign key (AL_ID)
      references ALLIANZ (AL_ID)
      on update restrict
      on delete restrict;

alter table ALLIANZ
   add constraint FK_ALLIANZ_ALLIANZ_T_FORUM foreign key (FO_ID)
      references FORUM (FO_ID)
      on update restrict
      on delete restrict;

alter table ALLIANZ
   add constraint FK_ALLIANZ_VERWALTET_ADMINIST foreign key (AD_ID)
      references ADMINISTRATION (AD_ID)
      on update restrict
      on delete restrict;

alter table ANGRIFF
   add constraint FK_ANGRIFF_ANGREIFER_BURG foreign key (BUR_BU_POSITION)
      references BURG (BU_POSITION)
      on update restrict
      on delete restrict;

alter table ANGRIFF
   add constraint FK_ANGRIFF_BEWEGUNG__EINHEIT_ foreign key (GRUPPE_ID)
      references EINHEIT_GRUPPE (GRUPPE_ID)
      on update restrict
      on delete restrict;

alter table ANGRIFF
   add constraint FK_ANGRIFF_VERTEIDIG_BURG foreign key (BU_POSITION)
      references BURG (BU_POSITION)
      on update restrict
      on delete restrict;

alter table ATTRIBUTE
   add constraint FK_ATTRIBUT_ATTRIB_EI_EINHEIT_ foreign key (EINHEIT_ATTRIBU_ID)
      references EINHEIT_ATTRIBUT (EINHEIT_ATTRIBU_ID)
      on update restrict
      on delete restrict;

alter table ATTRIBUT_TO_ITEM
   add constraint FK_ATTRIBUT_AUF_ITEM foreign key (ITEM_ID)
      references ITEM (ITEM_ID)
      on update restrict
      on delete restrict;

alter table ATTRIBUT_TO_ITEM
   add constraint FK_ATTRIBUT_HAT_ITEM_ATT foreign key (ITAT_ID)
      references ITEM_ATTRIBUT (ITAT_ID)
      on update restrict
      on delete restrict;

alter table AUKTION
   add constraint FK_AUKTION_ACCOUNT_T_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      on update restrict
      on delete restrict;

alter table AUKTION
   add constraint FK_AUKTION_RELATIONS_ITEM foreign key (ITEM_ID)
      references ITEM (ITEM_ID)
      on update restrict
      on delete restrict;

alter table BESTELLUNG_TO_ITEM
   add constraint FK_BESTELLU_BEINHALTE_ITEM foreign key (ITEM_ID)
      references ITEM (ITEM_ID)
      on update restrict
      on delete restrict;

alter table BESTELLUNG_TO_ITEM
   add constraint FK_BESTELLU_IN_BESTELLU foreign key (BEST_ID)
      references BESTELLUNG (BEST_ID)
      on update restrict
      on delete restrict;

alter table BURG
   add constraint FK_BURG_KONIGREIC_KOENIGRE foreign key (KOE_ID)
      references KOENIGREICH (KOE_ID)
      on update restrict
      on delete restrict;

alter table CHATNACHRICHT
   add constraint FK_CHATNACH_NACHRICHT_ACCOUNT foreign key (ACC_ACC_ID)
      references ACCOUNT (ACC_ID)
      on update restrict
      on delete restrict;

alter table CHATNACHRICHT
   add constraint FK_CHATNACH_USER_TO_N_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      on update restrict
      on delete restrict;

alter table CHATROOM
   add constraint FK_CHATROOM_ADMIN_TO__ADMINIST foreign key (AD_ID)
      references ADMINISTRATION (AD_ID)
      on update restrict
      on delete restrict;

alter table CHATROOM
   add constraint FK_CHATROOM_ALLIANZ_T_ALLIANZ foreign key (AL_ID)
      references ALLIANZ (AL_ID)
      on update restrict
      on delete restrict;

alter table CHATROOM_NACHRICHT
   add constraint FK_CHATROOM_CR_NACHRI_CHATROOM foreign key (CR_ID)
      references CHATROOM (CR_ID)
      on update restrict
      on delete restrict;

alter table CHATROOM_NACHRICHT
   add constraint FK_CHATROOM_USER_TO_C_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      on update restrict
      on delete restrict;

alter table EINHEIT
   add constraint FK_EINHEIT_GEBAUEDE__GEBAEUDE foreign key (GEB_ID)
      references GEBAEUDE (GEB_ID)
      on update restrict
      on delete restrict;

alter table EINHEIT
   add constraint FK_EINHEIT_GEHOERT_BURG foreign key (BU_POSITION)
      references BURG (BU_POSITION)
      on update restrict
      on delete restrict;

alter table EINHEIT_ATTRIBUT
   add constraint FK_EINHEIT__EINHEIT_A_EINHEIT foreign key (EINHEIT_ID)
      references EINHEIT (EINHEIT_ID)
      on update restrict
      on delete restrict;

alter table EINTRAG
   add constraint FK_EINTRAG_FORUM_TO__FORUM foreign key (FO_ID)
      references FORUM (FO_ID)
      on update restrict
      on delete restrict;

alter table EINTRAG
   add constraint FK_EINTRAG_USER_TO_E_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      on update restrict
      on delete restrict;

alter table FORUM
   add constraint FK_FORUM_ADMIN_TO__ADMINIST foreign key (AD_ID)
      references ADMINISTRATION (AD_ID)
      on update restrict
      on delete restrict;

alter table GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT
   add constraint FK_GEBAEUDE_GEHORT2_GEBAEUDE foreign key (GEB_ID)
      references GEBAEUDE (GEB_ID)
      on update restrict
      on delete restrict;

alter table GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT
   add constraint FK_GEBAEUDE_HAT2_GEBAEUDE foreign key (GE_ID)
      references GEBAEUDE_EIGENSCHAFT (GE_ID)
      on update restrict
      on delete restrict;

alter table GEBOT
   add constraint FK_GEBOT_ACCOUNT_T_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      on update restrict
      on delete restrict;

alter table GEBOT
   add constraint FK_GEBOT_AUKTION_T_AUKTION foreign key (AUK_ACC_ID, ITEM_ID, AUK_ID)
      references AUKTION (ACC_ID, ITEM_ID, AUK_ID)
      on update restrict
      on delete restrict;

alter table GRUPPE
   add constraint FK_GRUPPE_BEINHALTE_EINHEIT foreign key (EINHEIT_ID)
      references EINHEIT (EINHEIT_ID)
      on update restrict
      on delete restrict;

alter table GRUPPE
   add constraint FK_GRUPPE_GEHORT_EINHEIT_ foreign key (GRUPPE_ID)
      references EINHEIT_GRUPPE (GRUPPE_ID)
      on update restrict
      on delete restrict;

alter table KOENIGREICH
   add constraint FK_KOENIGRE_KOENIGREI_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      on update restrict
      on delete restrict;

alter table KOMMENTAR
   add constraint FK_KOMMENTA_EINTRAG_T_EINTRAG foreign key (EI_ID)
      references EINTRAG (EI_ID)
      on update restrict
      on delete restrict;

alter table KOMMENTAR
   add constraint FK_KOMMENTA_USER_TO_K_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      on update restrict
      on delete restrict;

alter table KRIEGSBEUTE
   add constraint FK_KRIEGSBE_KRIEGSBEU_ANGRIFF foreign key (ANGRIFF_ID)
      references ANGRIFF (ANGRIFF_ID)
      on update restrict
      on delete restrict;

alter table SPEICHERLEVEL
   add constraint FK_SPEICHER_BESITZT_GEBAEUDE foreign key (GEB_ID)
      references GEBAEUDE (GEB_ID)
      on update restrict
      on delete restrict;

alter table SPEICHERLEVEL
   add constraint FK_SPEICHER_GEHORT_ZU_BURG foreign key (BU_POSITION)
      references BURG (BU_POSITION)
      on update restrict
      on delete restrict;

alter table USER_TO_ADMIN
   add constraint FK_USER_TO__IST_TEIL_ADMINIST foreign key (AD_ID)
      references ADMINISTRATION (AD_ID)
      on update restrict
      on delete restrict;

alter table USER_TO_ADMIN
   add constraint FK_USER_TO__WIRD_GEFU_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID)
      on update restrict
      on delete restrict;

