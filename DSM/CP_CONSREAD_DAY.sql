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
'1)由用电信息采集系统写入用户日冻结示数
2) 通过接口产生记录。
3) 该实体主要由综合展示日用电量分析使用。';

comment on column OMAC.CP_CONSREAD_DAY.DATA_ID is
'数据标识';

comment on column OMAC.CP_CONSREAD_DAY.PRO_ORG_NO is
'省市编号';

comment on column OMAC.CP_CONSREAD_DAY.ORG_NO is
'创建供电单位的唯一编码。';

comment on column OMAC.CP_CONSREAD_DAY.STAT_DATE is
'日冻结数据的日期';

comment on column OMAC.CP_CONSREAD_DAY.CONS_NO is
'用户编号';

comment on column OMAC.CP_CONSREAD_DAY.CONS_NAME is
'用户名称';

comment on column OMAC.CP_CONSREAD_DAY.FROZEN_TIME is
'默认0点,精确到秒';

comment on column OMAC.CP_CONSREAD_DAY.ASSET_NO is
'表计的唯一资产编号，应与营销系统一致';

comment on column OMAC.CP_CONSREAD_DAY.BAR_CODE is
'表计的唯一条形码，应与营销系统一致';

comment on column OMAC.CP_CONSREAD_DAY.READ_TYPE_CODE is
'11 正向有功总，只传递正向有功总示数';

comment on column OMAC.CP_CONSREAD_DAY.MR_READ is
'示数值';

comment on column OMAC.CP_CONSREAD_DAY.SUCC_FLAG is
'1采集成功，2采集失败';

comment on column OMAC.CP_CONSREAD_DAY.MR_SPECIAL_FLAG is
'01 无
02 表计翻转
';

comment on column OMAC.CP_CONSREAD_DAY.REMARK is
'说明字段';

comment on column OMAC.CP_CONSREAD_DAY.TIME_STAMP is
'时间戳';
