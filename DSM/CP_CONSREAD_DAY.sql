drop table OMAC.CP_CONSREAD_DAY cascade constraints;

/*==============================================================*/
/* Table: CP_CONSREAD_DAY                                       */
/*==============================================================*/
create table OMAC.CP_CONSREAD_DAY 
(
   DATA_ID              VARCHAR2(24)         not null,
   PRO_ORG_NO           VARCHAR2(16)         not null,
   ORG_NO               VARCHAR2(16)         not null,
   STAT_DATE            VARCHAR2(8),
   CONS_NO              VARCHAR2(16),
   CONS_NAME            VARCHAR2(256),
   FROZEN_TIME          DATE,
   ASSET_NO             VARCHAR2(32),
   BAR_CODE             VARCHAR2(32),
   READ_TYPE_CODE       VARCHAR2(8),
   MR_READ              NUMBER(16,6),
   SUCC_FLAG            VARCHAR2(8),
   MR_SPECIAL_FLAG      VARCHAR2(8),
   REMARK               VARCHAR2(256),
   TIME_STAMP           DATE,
   constraint PK_CP_CONSREAD_DAY primary key (DATA_ID, PRO_ORG_NO)
);

comment on table OMAC.CP_CONSREAD_DAY is
'1)���õ���Ϣ�ɼ�ϵͳд���û��ն���ʾ��
2) ͨ���ӿڲ�����¼��
3) ��ʵ����Ҫ���ۺ�չʾ���õ�������ʹ�á�';

comment on column OMAC.CP_CONSREAD_DAY.DATA_ID is
'���ݱ�ʶ';

comment on column OMAC.CP_CONSREAD_DAY.PRO_ORG_NO is
'ʡ�б��';

comment on column OMAC.CP_CONSREAD_DAY.ORG_NO is
'�������絥λ��Ψһ���롣';

comment on column OMAC.CP_CONSREAD_DAY.STAT_DATE is
'�ն������ݵ�����';

comment on column OMAC.CP_CONSREAD_DAY.CONS_NO is
'�û����';

comment on column OMAC.CP_CONSREAD_DAY.CONS_NAME is
'�û�����';

comment on column OMAC.CP_CONSREAD_DAY.FROZEN_TIME is
'Ĭ��0��,��ȷ����';

comment on column OMAC.CP_CONSREAD_DAY.ASSET_NO is
'��Ƶ�Ψһ�ʲ���ţ�Ӧ��Ӫ��ϵͳһ��';

comment on column OMAC.CP_CONSREAD_DAY.BAR_CODE is
'��Ƶ�Ψһ�����룬Ӧ��Ӫ��ϵͳһ��';

comment on column OMAC.CP_CONSREAD_DAY.READ_TYPE_CODE is
'11 �����й��ܣ�ֻ���������й���ʾ��';

comment on column OMAC.CP_CONSREAD_DAY.MR_READ is
'ʾ��ֵ';

comment on column OMAC.CP_CONSREAD_DAY.SUCC_FLAG is
'1�ɼ��ɹ���2�ɼ�ʧ��';

comment on column OMAC.CP_CONSREAD_DAY.MR_SPECIAL_FLAG is
'01 ��
02 ��Ʒ�ת
';

comment on column OMAC.CP_CONSREAD_DAY.REMARK is
'˵���ֶ�';

comment on column OMAC.CP_CONSREAD_DAY.TIME_STAMP is
'ʱ���';
