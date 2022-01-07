/*==============================================================*/
/* Table: ACCOUNT                                               */
/*==============================================================*/
create table ACCOUNT 
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
   constraint PK_ACCOUNT primary key (ACC_ID)
);


/*==============================================================*/
/* Table: ACCOUNT_TO_ITEM                                       */
/*==============================================================*/
create table ACCOUNT_TO_ITEM 
(
   ITEM_ID              integer                        not null,
   ACC_ID               integer                        not null,
   constraint PK_ACCOUNT_TO_ITEM primary key (ITEM_ID, ACC_ID)
);


/*==============================================================*/
/* Table: ADMINISTRATION                                        */
/*==============================================================*/
create table ADMINISTRATION 
(
   AD_ID                integer                        not null,
   AL_ID                integer                        null,
   constraint PK_ADMINISTRATION primary key (AD_ID)
);

/*==============================================================*/
/* Table: ALLIANZ                                               */
/*==============================================================*/
create table ALLIANZ 
(
   AL_ID                integer                        not null,
   FO_ID                integer                        not null,
   AD_ID                integer                        not null,
   AL_NAME              varchar                   not null,
   AL_BESCHREIBUNG      varchar                   null,
   AL_DATE_OF_CREATION  date                           null,
   constraint PK_ALLIANZ primary key (AL_ID)
);

/*==============================================================*/
/* Table: ANGRIFF                                               */
/*==============================================================*/
create table ANGRIFF 
(
   ANGRIFF_ID           integer                        not null,
   BU_POSITION          integer                        not null,
   BUR_BU_POSITION      integer                        not null,
   GRUPPE_ID            integer                        not null,
   ANGRIFF_GEPLANT_AM   timestamp                      not null,
   ANGRIFF_STATUS       ANGRIFF_STATUS                 not null,
   constraint PK_ANGRIFF primary key (ANGRIFF_ID)
);

/*==============================================================*/
/* Table: ATTRIBUTE                                             */
/*==============================================================*/
create table ATTRIBUTE 
(
   ATTRIBUT_ID          integer                        not null,
   EINHEIT_ATTRIBU_ID   integer                        null,
   ATTRIBUT_TYP         EINHEIT_ATTRIBUTE              not null,
   ATTRIBUT_BEZEICHNUNG varchar(50)                    not null,
   constraint PK_ATTRIBUTE primary key (ATTRIBUT_ID)
);

/*==============================================================*/
/* Table: AUKTION                                               */
/*==============================================================*/
create table AUKTION 
(
   ACC_ID               integer                        not null,
   ITEM_ID              integer                        not null,
   AUK_ID               integer                        not null,
   AUK_START_DATUM      timestamp                      not null,
   AUK_END_DATUM        timestamp                      not null,
   constraint PK_AUKTION primary key (ACC_ID, ITEM_ID, AUK_ID)
);

/*==============================================================*/
/* Table: BESTELLUNG                                            */
/*==============================================================*/
create table BESTELLUNG 
(
   BEST_ID              integer                        not null,
   ACC_ID               integer                        null,
   BEST_DATUM           timestamp                      not null,
   BEST_WERT            integer                        not null,
   constraint PK_BESTELLUNG primary key (BEST_ID)
);

/*==============================================================*/
/* Table: BESTELLUNG_TO_ITEM                                    */
/*==============================================================*/
create table BESTELLUNG_TO_ITEM 
(
   BEST_ID              integer                        not null,
   ITEM_ID              integer                        not null,
   constraint PK_BESTELLUNG_TO_ITEM primary key (BEST_ID, ITEM_ID)
);

/*==============================================================*/
/* Table: BURG                                                  */
/*==============================================================*/
create table BURG 
(
   BU_POSITION          integer                        not null,
   KOE_ID               integer                        not null,
   BU_BURGNAME          varchar                   not null,
   BU_LEHM              integer                        not null,
   BU_EISEN             integer                        not null,
   BU_HOLZ              integer                        not null,
   constraint PK_BURG primary key (BU_POSITION)
);

/*==============================================================*/
/* Table: CHATNACHRICHT                                         */
/*==============================================================*/
create table CHATNACHRICHT 
(
   CN_ID                integer                        not null,
   ACC_ID               integer                        not null,
   ACC_ACC_ID           integer                        not null,
   CN_INHALT            varchar                   not null,
   CN_DATE_OF_CREATION  date                           not null,
   constraint PK_CHATNACHRICHT primary key (CN_ID)
);

/*==============================================================*/
/* Table: CHATROOM                                              */
/*==============================================================*/
create table CHATROOM 
(
   CR_ID                integer                        not null,
   AD_ID                integer                        not null,
   AL_ID                integer                        not null,
   CR_TOPIC             varchar                   not null,
   CR_DATE_OF_CREATION  date                           not null,
   constraint PK_CHATROOM primary key (CR_ID)
);

/*==============================================================*/
/* Table: CHATROOM_NACHRICHT                                    */
/*==============================================================*/
create table CHATROOM_NACHRICHT 
(
   CRN_ID               integer                        not null,
   ACC_ID               integer                        not null,
   CR_ID                integer                        not null,
   CRN_INHALT           varchar                   not null,
   CRN_DATE_OF_CREATION date                           not null,
   constraint PK_CHATROOM_NACHRICHT primary key (CRN_ID)
);

/*==============================================================*/
/* Table: EINHEIT                                               */
/*==============================================================*/
create table EINHEIT 
(
   EINHEIT_ID           integer                        not null,
   BU_POSITION          integer                        null,
   GEB_ID               integer                        not null,
   EINHEIT_NAME         varchar(50)                    not null,
   EINHEIT_KLASSE       EINHEIT_KLASSE                 not null,
   EINHEIT_RESSOURCE    RESSOURCE                      not null,
   EINHEIT_RES_WERT     integer                        null,
   constraint PK_EINHEIT primary key (EINHEIT_ID)
);

/*==============================================================*/
/* Table: EINHEIT_ATTRIBUT                                      */
/*==============================================================*/
create table EINHEIT_ATTRIBUT 
(
   EINHEIT_ATTRIBU_ID   integer                        not null,
   EINHEIT_ID           integer                        not null,
   EINHEIT_ATTRIBU_WERT integer                        not null,
   constraint PK_EINHEIT_ATTRIBUT primary key (EINHEIT_ATTRIBU_ID)
);

/*==============================================================*/
/* Table: EINHEIT_GRUPPE                                        */
/*==============================================================*/
create table EINHEIT_GRUPPE 
(
   GRUPPE_ID            integer                        not null,
   GRUPPE_ANZAHL        integer                        not null,
   constraint PK_EINHEIT_GRUPPE primary key (GRUPPE_ID)
);

/*==============================================================*/
/* Table: EINTRAG                                               */
/*==============================================================*/
create table EINTRAG 
(
   EI_ID                integer                        not null,
   ACC_ID               integer                        not null,
   FO_ID                integer                        not null,
   EI_TITEL             varchar                   not null,
   EI_INALT             varchar                   not null,
   EI_DATE_OF_CREATION  date                           not null,
   constraint PK_EINTRAG primary key (EI_ID)
);

/*==============================================================*/
/* Table: FORUM                                                 */
/*==============================================================*/
create table FORUM 
(
   FO_ID                integer                        not null,
   AD_ID                integer                        not null,
   FO_DATE_OF_CREATION  date                           not null,
   FO_TOPIC             varchar                   not null,
   constraint PK_FORUM primary key (FO_ID)
);

/*==============================================================*/
/* Table: GEBAEUDE                                              */
/*==============================================================*/
create table GEBAEUDE 
(
   GEB_ID               integer                        not null,
   GEB_TYP              GEBAEUDE_TYP                   not null,
   GEB_LEVEL            integer                        not null,
   constraint PK_GEBAEUDE primary key (GEB_ID)
);

/*==============================================================*/
/* Table: GEBAEUDE_EIGENSCHAFT                                  */
/*==============================================================*/
create table GEBAEUDE_EIGENSCHAFT 
(
   GE_ID                integer                        not null,
   GE_EIGENSCHAFT       GEBAEUDE_EIGENSCHAFT           not null,
   GE_WERT              integer                        not null,
   constraint PK_GEBAEUDE_EIGENSCHAFT primary key (GE_ID)
);

/*==============================================================*/
/* Table: GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT                       */
/*==============================================================*/
create table GEBAEUDE_TO_GEBAEUDEEIGENSCHAFT 
(
   GEB_ID               integer                        not null,
   GE_ID                integer                        not null,
   constraint PK_GEBAEUDE_TO_GEBAEUDEEIGENSC primary key (GEB_ID, GE_ID)
);

/*==============================================================*/
/* Table: GEBOT                                                 */
/*==============================================================*/
create table GEBOT 
(
   GEBO_ID              integer                        not null,
   AUK_ACC_ID           integer                        null,
   ITEM_ID              integer                        null,
   AUK_ID               integer                        null,
   ACC_ID               integer                        null,
   GEBO_WERT            integer                        not null,
   constraint PK_GEBOT primary key (GEBO_ID)
);

/*==============================================================*/
/* Table: GRUPPE                                                */
/*==============================================================*/
create table GRUPPE 
(
   EINHEIT_ID           integer                        not null,
   GRUPPE_ID            integer                        not null,
   constraint PK_GRUPPE primary key (EINHEIT_ID, GRUPPE_ID)
);

/*==============================================================*/
/* Table: ITEM                                                  */
/*==============================================================*/
create table ITEM 
(
   ITEM_ID              integer                        not null,
   ITEM_NAME            varchar(1024)                  not null,
   ITEM_BESCHREIBUNG    varchar(100)                   null,
   ITEM_PREIS           integer                        null,
   ITEM_VERKAUFBAR      smallint                       null,
   constraint PK_ITEM primary key (ITEM_ID)
);

/*==============================================================*/
/* Table: KOENIGREICH                                           */
/*==============================================================*/
create table KOENIGREICH 
(
   KOE_WAPPEN           integer                        not null,
   KOE_RUHM             integer                        not null,
   KOE_ID               integer                        not null,
   ACC_ID               integer                        not null,
   constraint PK_KOENIGREICH primary key (KOE_ID)
);

/*==============================================================*/
/* Table: KOMMENTAR                                             */
/*==============================================================*/
create table KOMMENTAR 
(
   KO_ID                integer                        not null,
   EI_ID                integer                        not null,
   ACC_ID               integer                        not null,
   KO_INHALT            varchar                   not null,
   KO_DATE_OF_CREATION  date                           not null,
   constraint PK_KOMMENTAR primary key (KO_ID)
);

/*==============================================================*/
/* Table: KRIEGSBEUTE                                           */
/*==============================================================*/
create table KRIEGSBEUTE 
(
   KRIEGSBEUTE_ID       integer                        not null,
   ANGRIFF_ID           integer                        not null,
   KRIEGSBEUTE_ANZAHL   integer                        not null,
   KRIEGSBEUTE_RESSOURCE integer                        not null,
   constraint PK_KRIEGSBEUTE primary key (KRIEGSBEUTE_ID)
);

/*==============================================================*/
/* Table: SPEICHERLEVEL                                         */
/*==============================================================*/
create table SPEICHERLEVEL 
(
   BU_POSITION          integer                        not null,
   GEB_ID               integer                        not null,
   constraint PK_SPEICHERLEVEL primary key (BU_POSITION, GEB_ID)
);

/*==============================================================*/
/* Table: USER_TO_ADMIN                                         */
/*==============================================================*/
create table USER_TO_ADMIN 
(
   ACC_ID               integer                        not null,
   AD_ID                integer                        not null,
   constraint PK_USER_TO_ADMIN primary key (ACC_ID, AD_ID)
);

/*==============================================================*/
/* Table: WELT                                                  */
/*==============================================================*/
create table WELT 
(
   WELT_ID              integer                        not null,
   WELT_FELD_X          integer                        not null,
   WELT_FELD_Y          integer                        not null,
   WELT_NAME            varchar(100)                   not null,
   constraint PK_WELT primary key (WELT_ID)
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
   add constraint FK_GEBAEUDE_HAT_GEBAEUDE foreign key (GE_ID)
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

