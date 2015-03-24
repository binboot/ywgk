CREATE OR REPLACE PACKAGE PKG_YWGK_DW_AC IS

  -- AUTHOR  : LILEILEI
  -- CREATED : 2014/2/28 14:02:38
  -- PURPOSE : 业务管控数据仓库程序包-电费

  PROCEDURE P_ENT_DW_BASE_AC(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_BASE_AC(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_BASE_AC(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_E_MR_SECT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_MR_SECT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_MR_SECT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_E_PF_AMT(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_PF_AMT(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_PF_AMT(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_E_AMT_COMP_DAY(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_AMT_COMP_DAY(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_AMT_COMP_DAY(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_E_AMT_COMP_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_AMT_COMP_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_AMT_COMP_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_E_BASE_AMT(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_BASE_AMT(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_BASE_AMT(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_E_KWH_AMT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_KWH_AMT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_KWH_AMT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_E_PL_AMT(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_PL_AMT(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_PL_AMT(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_E_CONS_PRC_AMT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_CONS_PRC_AMT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_CONS_PRC_AMT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  /*PROCEDURE P_ENT_DW_E_LOW_PRC_AMT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);*/

  /*PROCEDURE P_INS_DW_E_LOW_PRC_AMT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);*/

  /*PROCEDURE P_ETL_DW_E_LOW_PRC_AMT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);*/

  PROCEDURE P_ENT_DW_E_PQPA_ERR_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_PQPA_ERR_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_PQPA_ERR_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_E_PAPQ_ERR(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_PAPQ_ERR(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_PAPQ_ERR(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_E_DIFF_PAPQ_DET(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_DIFF_PAPQ_DET(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_DIFF_PAPQ_DET(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_E_DMD_RE_CAP(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_DMD_RE_CAP(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_DMD_RE_CAP(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_C_CONT_INFO(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_C_CONT_INFO(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_C_CONT_INFO(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_E_CONT_FEE(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_CONT_FEE(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_CONT_FEE(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2);

  --月度并表口径特殊用户电量电费明细,按月运行      
  PROCEDURE P_ENT_DW_O_BULK_USER_AMT(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_O_BULK_USER_AMT(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_O_BULK_USER_AMT(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_E_SPECIAL_PRC_CC(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_E_SPECIAL_PRC_CC(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_E_SPECIAL_PRC_CC(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
                                      
                                      
  PROCEDURE P_ENT_DW_E_DIFF_PAPQ_PL_DET(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  
  PROCEDURE P_INS_DW_E_DIFF_PAPQ_PL_DET(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  
  PROCEDURE P_ETL_DW_E_DIFF_PAPQ_PL_DET(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
                                      
  --月度电量电费代征统计,按月运行                                   
  PROCEDURE P_ENT_DW_E_AMT_COMP_PL_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  
  PROCEDURE P_INS_DW_E_AMT_COMP_PL_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  
  PROCEDURE P_ETL_DW_E_AMT_COMP_PL_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
END PKG_YWGK_DW_AC;
/
CREATE OR REPLACE PACKAGE BODY PKG_YWGK_DW_AC IS

  PROCEDURE P_ENT_DW_BASE_AC(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_BASE_AC', I_DATA);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_BASE_AC(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_BASE_AC(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_BASE_AC  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_BASE_AC  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /*
         抽取基本表：
         DW_E_BILL_PARA_VER（电费计算参数版本）
         DW_E_CAT_PRC（目录电价）
         DW_E_CAT_PRC_DET（目录电价明细）
         DW_E_PL_PRC（代征电价）
         DW_E_PL_ITEM（代征项）
         DW_E_ADD_PL_PRC（加收代征单价）
         DW_E_BASE_PRC（基本电价）
         DW_E_PRC_SCOPE（执行范围）
         抽取频率：月
  */
  PROCEDURE P_INS_DW_BASE_AC(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_BASE_AC', I_DATA);
  
    --1.开始抽取   DW_E_BILL_PARA_VER（电费计算参数版本）
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_E_BILL_PARA_VER X;
  
    --开始数据抽取,插入到稽查管理库OMAC的DW_E_BILL_PARA_VER
    INSERT INTO DW_E_BILL_PARA_VER
      (DATA_ID,
       PRO_ORG_NO,
       PARA_VN,
       APP_NO,
       PAR_VER_TYPE,
       PAR_BGN_DATE,
       PAR_END_DATE,
       DOC_NO,
       DOC_CONTENT,
       BRIEF,
       RELEASE_FLAG,
       RELEASE_DATE,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             PARA_VN,
             APP_NO,
             PAR_VER_TYPE,
             PAR_BGN_DATE,
             PAR_END_DATE,
             DOC_NO,
             DOC_CONTENT,
             BRIEF,
             PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', RELEASE_FLAG),
             RELEASE_DATE,
             SYSDATE
        FROM SY_SG_E_BILL_PARA_VER;
  
    --2.开始抽取 DW_E_CAT_PRC（目录电价）
    DELETE FROM DW_E_CAT_PRC;
  
    INSERT INTO DW_E_CAT_PRC
      (DATA_ID,
       PRO_ORG_NO,
       CAT_PRC_ID,
       PARA_VN,
       PRC_CODE,
       ORG_NO,
       PRC_VOLT_CODE,
       DISC_MODE,
       CAT_PRC_ABBR,
       CAT_PRC_NAME,
       RANGE_FLAG,
       TS_NUM,
       ELEC_TYPE_CODE,
       PF_QTY_FLAG,
       PFAA_FLAG,
       IDU_FLAG,
       MAINT_MODE_CODE,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             CAT_PRC_ID,
             PARA_VN,
             PRC_CODE,
             ORG_NO,
             PKG_GK_PUBLIC.F_TRANS_CODE('PRC_VOLT_CODE', PRC_VOLT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('DISC_MODE', DISC_MODE),
             CAT_PRC_ABBR,
             CAT_PRC_NAME,
             PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', RANGE_FLAG),
             TS_NUM,
             PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', PF_QTY_FLAG),
             PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', PFAA_FLAG),
             PKG_GK_PUBLIC.F_TRANS_CODE('ADJ_TYPE_CODE', IDU_FLAG),
             PKG_GK_PUBLIC.F_TRANS_CODE('MAINT_MODE_CODE', MAINT_MODE_CODE),
             SYSDATE
        FROM SY_SG_E_CAT_PRC;
  
    --3.开始抽取    DW_E_CAT_PRC_DET（目录电价明细）
    DELETE FROM DW_E_CAT_PRC_DET;
  
    INSERT INTO DW_E_CAT_PRC_DET
      (DATA_ID,
       PRO_ORG_NO,
       DET_ID,
       CAT_PRC_ID,
       RANGE_TYPE_CODE,
       CAT_KWH_PRC,
       KWH_PRC,
       PRC_TI_CODE,
       REF_TS_FLAG,
       IDU_FLAG,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             DET_ID,
             CAT_PRC_ID,
             PKG_GK_PUBLIC.F_TRANS_CODE('RANGE_TYPE_CODE', RANGE_TYPE_CODE),
             CAT_KWH_PRC,
             KWH_PRC,
             PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TI_CODE', PRC_TI_CODE),
             REF_TS_FLAG,
             PKG_GK_PUBLIC.F_TRANS_CODE('ADJ_TYPE_CODE', IDU_FLAG),
             SYSDATE
        FROM SY_SG_E_CAT_PRC_DET;
  
    --4.开始抽取      DW_E_PL_PRC（代征电价）
    DELETE FROM DW_E_PL_PRC;
  
    INSERT INTO DW_E_PL_PRC
      (DATA_ID,
       PRO_ORG_NO,
       PL_PRC_ID,
       PL_ID,
       PL_PRC,
       PRC_TS_REMARK,
       PRC_TI_CODE,
       IDU_FLAG,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             PL_PRC_ID,
             PL_ID,
             PL_PRC,
             PRC_TS_REMARK,
             PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TI_CODE', PRC_TI_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('ADJ_TYPE_CODE', IDU_FLAG),
             SYSDATE
        FROM SY_SG_E_PL_PRC;
  
    --5.开始抽取      DW_E_PL_ITEM（代征项）
    DELETE FROM DW_E_PL_ITEM;
  
    INSERT INTO DW_E_PL_ITEM
      (DATA_ID,
       PRO_ORG_NO,
       PL_ID,
       PARA_VN,
       PL_CODE,
       PL_NAME,
       PL_ABBR,
       PRC_IO_FLAG,
       DISP_SN,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             PL_ID,
             PARA_VN,
             PL_CODE,
             PL_NAME,
             PL_ABBR,
             PRC_IO_FLAG,
             DISP_SN,
             SYSDATE
        FROM SY_SG_E_PL_ITEM;
  
    --6.开始抽取      DW_E_ADD_PL_PRC（加收代征单价）
    DELETE FROM DW_E_ADD_PL_PRC;
  
    INSERT INTO DW_E_ADD_PL_PRC
      (DATA_ID,
       PRO_ORG_NO,
       ADDED_PRC_ID,
       DET_ID,
       PL_CODE,
       PL_ABBR,
       PL_NAME,
       PL_PRC,
       PRC_IO_FLAG,
       DISP_SN,
       IDU_FLAG,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             ADDED_PRC_ID,
             DET_ID,
             PL_CODE,
             PL_ABBR,
             PL_NAME,
             PL_PRC,
             PRC_IO_FLAG,
             DISP_SN,
             PKG_GK_PUBLIC.F_TRANS_CODE('ADJ_TYPE_CODE', IDU_FLAG),
             SYSDATE
        FROM SY_SG_E_ADD_PL_PRC;
  
    --7.开始抽取      DW_E_BASE_PRC（基本电价）
    DELETE FROM DW_E_BASE_PRC;
  
    INSERT INTO DW_E_BASE_PRC
      (DATA_ID,
       PRO_ORG_NO,
       PRC_ID,
       CAT_PRC_ID,
       CAP_PRC,
       DMD_PRC,
       IDU_FLAG,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             PRC_ID,
             CAT_PRC_ID,
             CAP_PRC,
             DMD_PRC,
             PKG_GK_PUBLIC.F_TRANS_CODE('ADJ_TYPE_CODE', IDU_FLAG),
             SYSDATE
        FROM SY_SG_E_BASE_PRC;
  
    --8.开始抽取      DW_E_PRC_SCOPE（执行范围）
    DELETE FROM DW_E_PRC_SCOPE;
  
    INSERT INTO DW_E_PRC_SCOPE
      (DATA_ID,
       PRO_ORG_NO,
       RANGE_ID,
       CAT_PRC_ID,
       POLICY_TYPE_CODE,
       RANGE_TYPE_CODE,
       BGN_VALUE,
       END_VALUE,
       REF_RANGE_FLAG,
       RANGE_REMARK,
       IDU_FLAG,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             RANGE_ID,
             CAT_PRC_ID,
             PKG_GK_PUBLIC.F_TRANS_CODE('POLICY_TYPE_CODE',
                                        POLICY_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('RANGE_TYPE_CODE', RANGE_TYPE_CODE),
             BGN_VALUE,
             END_VALUE,
             PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', REF_RANGE_FLAG),
             RANGE_REMARK,
             IDU_FLAG,
             SYSDATE
        FROM SY_SG_E_PRC_SCOPE;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_BASE_AC  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_BASE_AC  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /*
  DW_E_BILL_PARA_VER（电费计算参数版本）
         DW_E_CAT_PRC（目录电价）
         DW_E_CAT_PRC_DET（目录电价明细）
         DW_E_PL_PRC（代征电价）
         DW_E_PL_ITEM（代征项）
         DW_E_ADD_PL_PRC（加收代征单价）
         DW_E_BASE_PRC（基本电价）
         DW_E_PRC_SCOPE（执行范围）
  
  */
  PROCEDURE P_ETL_DW_BASE_AC(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_BASE_AC', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_E_BILL_PARA_VER;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_E_BILL_PARA_VER
      (DATA_ID,
       PRO_ORG_NO,
       PARA_VN,
       APP_NO,
       PAR_VER_TYPE,
       PAR_BGN_DATE,
       PAR_END_DATE,
       DOC_NO,
       DOC_CONTENT,
       BRIEF,
       RELEASE_FLAG,
       RELEASE_DATE,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             PARA_VN,
             APP_NO,
             PAR_VER_TYPE,
             PAR_BGN_DATE,
             PAR_END_DATE,
             DOC_NO,
             DOC_CONTENT,
             BRIEF,
             RELEASE_FLAG,
             RELEASE_DATE,
             TIME_STAMP
        FROM DW_E_BILL_PARA_VER;
  
    --2.
    DELETE FROM SY_OM_DW_E_CAT_PRC;
  
    INSERT INTO SY_OM_DW_E_CAT_PRC
      (DATA_ID,
       PRO_ORG_NO,
       CAT_PRC_ID,
       PARA_VN,
       PRC_CODE,
       ORG_NO,
       PRC_VOLT_CODE,
       DISC_MODE,
       CAT_PRC_ABBR,
       CAT_PRC_NAME,
       RANGE_FLAG,
       TS_NUM,
       ELEC_TYPE_CODE,
       PF_QTY_FLAG,
       PFAA_FLAG,
       IDU_FLAG,
       MAINT_MODE_CODE,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             CAT_PRC_ID,
             PARA_VN,
             PRC_CODE,
             ORG_NO,
             PRC_VOLT_CODE,
             DISC_MODE,
             CAT_PRC_ABBR,
             CAT_PRC_NAME,
             RANGE_FLAG,
             TS_NUM,
             ELEC_TYPE_CODE,
             PF_QTY_FLAG,
             PFAA_FLAG,
             IDU_FLAG,
             MAINT_MODE_CODE,
             TIME_STAMP
        FROM DW_E_CAT_PRC;
  
    --3.
    DELETE FROM SY_OM_DW_E_CAT_PRC_DET;
  
    INSERT INTO SY_OM_DW_E_CAT_PRC_DET
      (DATA_ID,
       PRO_ORG_NO,
       DET_ID,
       CAT_PRC_ID,
       RANGE_TYPE_CODE,
       CAT_KWH_PRC,
       KWH_PRC,
       PRC_TI_CODE,
       REF_TS_FLAG,
       IDU_FLAG,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             DET_ID,
             CAT_PRC_ID,
             RANGE_TYPE_CODE,
             CAT_KWH_PRC,
             KWH_PRC,
             PRC_TI_CODE,
             REF_TS_FLAG,
             IDU_FLAG,
             TIME_STAMP
        FROM DW_E_CAT_PRC_DET;
  
    --4.
    DELETE FROM SY_OM_DW_E_PL_PRC;
  
    INSERT INTO SY_OM_DW_E_PL_PRC
      (DATA_ID,
       PRO_ORG_NO,
       PL_PRC_ID,
       PL_ID,
       PL_PRC,
       PRC_TS_REMARK,
       PRC_TI_CODE,
       IDU_FLAG,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             PL_PRC_ID,
             PL_ID,
             PL_PRC,
             PRC_TS_REMARK,
             PRC_TI_CODE,
             IDU_FLAG,
             TIME_STAMP
        FROM DW_E_PL_PRC;
  
    --5.
    DELETE FROM SY_OM_DW_E_PL_ITEM;
  
    INSERT INTO SY_OM_DW_E_PL_ITEM
      (DATA_ID,
       PRO_ORG_NO,
       PL_ID,
       PARA_VN,
       PL_CODE,
       PL_NAME,
       PL_ABBR,
       PRC_IO_FLAG,
       DISP_SN,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             PL_ID,
             PARA_VN,
             PL_CODE,
             PL_NAME,
             PL_ABBR,
             PRC_IO_FLAG,
             DISP_SN,
             TIME_STAMP
        FROM DW_E_PL_ITEM;
  
    --6.
    DELETE FROM SY_OM_DW_E_ADD_PL_PRC;
  
    INSERT INTO SY_OM_DW_E_ADD_PL_PRC
      (DATA_ID,
       PRO_ORG_NO,
       ADDED_PRC_ID,
       DET_ID,
       PL_CODE,
       PL_ABBR,
       PL_NAME,
       PL_PRC,
       PRC_IO_FLAG,
       DISP_SN,
       IDU_FLAG,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ADDED_PRC_ID,
             DET_ID,
             PL_CODE,
             PL_ABBR,
             PL_NAME,
             PL_PRC,
             PRC_IO_FLAG,
             DISP_SN,
             IDU_FLAG,
             TIME_STAMP
        FROM DW_E_ADD_PL_PRC;
  
    --7
    DELETE FROM SY_OM_DW_E_BASE_PRC;
  
    INSERT INTO SY_OM_DW_E_BASE_PRC
      (DATA_ID,
       PRO_ORG_NO,
       PRC_ID,
       CAT_PRC_ID,
       CAP_PRC,
       DMD_PRC,
       IDU_FLAG,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             PRC_ID,
             CAT_PRC_ID,
             CAP_PRC,
             DMD_PRC,
             IDU_FLAG,
             TIME_STAMP
        FROM DW_E_BASE_PRC;
  
    --8
    DELETE FROM SY_OM_DW_E_PRC_SCOPE;
  
    INSERT INTO SY_OM_DW_E_PRC_SCOPE
      (DATA_ID,
       PRO_ORG_NO,
       RANGE_ID,
       CAT_PRC_ID,
       POLICY_TYPE_CODE,
       RANGE_TYPE_CODE,
       BGN_VALUE,
       END_VALUE,
       REF_RANGE_FLAG,
       RANGE_REMARK,
       IDU_FLAG,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             RANGE_ID,
             CAT_PRC_ID,
             POLICY_TYPE_CODE,
             RANGE_TYPE_CODE,
             BGN_VALUE,
             END_VALUE,
             REF_RANGE_FLAG,
             RANGE_REMARK,
             IDU_FLAG,
             TIME_STAMP
        FROM DW_E_PRC_SCOPE;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_BASE_AC  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_BASE_AC  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ENT_DW_E_MR_SECT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_MR_SECT', I_DATA);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_MR_SECT(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_MR_SECT(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_MR_SECT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_MR_SECT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_MR_SECT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_MR_SECT', I_DATA);
  
    DELETE FROM DW_E_MR_SECT A WHERE A.AMT_YM = V_TIME;
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_E_MR_SECT
        (DATA_ID,
         PRO_ORG_NO,
         MR_SECT_NO,
         ORG_NO,
         SECT_ATTR_CODE,
         MR_MODE,
         CYC_CODE,
         READER_NO,
         CALC_EMP_NO,
         CR_EMP_NO,
         AMT_YM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               B.MR_SECT_NO,
               A.ORG_NO,
               A.ATTR,
               PKG_GK_PUBLIC.F_TRANS_CODE('MR_MODE', B.MR_MODE_CODE),
               (SELECT PKG_GK_PUBLIC.F_TRANS_CODE('MR_PERIOD', PERIOD_CODE)
                  FROM SY_SG_R_PLAN_DAY D
                 WHERE B.MR_SECT_NO = D.MR_SECT_NO
                   AND ROWNUM = 1),
               C.READ_NO,
               C.CALC_NO,
               C.CFY,
               V_TIME,
               SYSDATE
          FROM SY_SG_R_SECT A,
               SY_SG_ARC_R_PLAN B,
               (SELECT MR_SECT_NO,
                       MAX(DECODE(ACT_CODE, '03', OPERATOR_NO)) READ_NO,
                       MAX(DECODE(ACT_CODE, '08', OPERATOR_NO)) CALC_NO,
                       MAX(DECODE(ACT_CODE, '22', OPERATOR_NO)) CFY
                  FROM SY_SG_R_OPER_ACTIVITY
                 WHERE EFFECT_FLAG = '1'
                 GROUP BY MR_SECT_NO) C
         WHERE B.MR_SECT_NO = C.MR_SECT_NO
           AND B.MR_SECT_NO = A.MR_SECT_NO
           AND A.ORG_NO = B.ORG_NO
           AND B.AMT_YM = V_TIME
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
              --按照网省在gk_dw_code_tans中配置的抄表事件类型进行排除,默认不排除。
           AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('CBSJLX', 'CBSJLX'),
                     B.EVENT_TYPE) <= 0
              --按照网省在gk_dw_code_tans中配置的抄表计划类型进行排除,默认不排除。
           AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('CBJHLX', 'CBJHLX'),
                     B.PLAN_TYPE_CODE) <= 0;
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_MR_SECT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_MR_SECT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_MR_SECT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_MR_SECT', I_DATA);
  
    DELETE FROM SY_OM_DW_E_MR_SECT A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_MR_SECT
      (DATA_ID,
       PRO_ORG_NO,
       MR_SECT_NO,
       ORG_NO,
       SECT_ATTR_CODE,
       MR_MODE,
       CYC_CODE,
       READER_NO,
       CALC_EMP_NO,
       CR_EMP_NO,
       AMT_YM,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             MR_SECT_NO,
             ORG_NO,
             SECT_ATTR_CODE,
             MR_MODE,
             CYC_CODE,
             READER_NO,
             CALC_EMP_NO,
             CR_EMP_NO,
             AMT_YM,
             TIME_STAMP
        FROM DW_E_MR_SECT B
       WHERE B.AMT_YM = V_TIME;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_MR_SECT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_MR_SECT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_PF_AMT(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_PF_AMT', I_DATA);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_PF_AMT(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_PF_AMT(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_PF_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_PF_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_PF_AMT(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_PF_AMT', I_DATA);
  
    DELETE FROM DW_E_PF_AMT WHERE AMT_YM = V_TIME;
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_E_PF_AMT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PRC_AMT_ID,
         AMT_YM,
         ADJ_AMT,
         ADJ_FACTOR,
         PF_AMT_ADD,
         PF_AMT_SUB,
         TIME_STAMP)
        SELECT
        /*+PARALLEL(A 4) PARALLEL(B 4) */ --并发语句，增加数据库内并发进程.
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         A.PRC_AMT_ID,
         A.YM,
         SUM(B.ADJ_AMT),
         B.ADJ_FACTOR,
         (CASE
           WHEN B.PF_ADJ_AMT > 0 THEN
            SUM(B.PF_ADJ_AMT)
           ELSE
            0
         END),
         (CASE
           WHEN B.PF_ADJ_AMT < 0 THEN
            SUM(B.PF_ADJ_AMT)
           ELSE
            0
         END),
         SYSDATE
          FROM SY_SG_ARC_E_CONS_PRC_AMT A, SY_SG_ARC_E_PF_AMT B
         WHERE A.PRC_AMT_ID = B.PRC_AMT_ID
           AND A.YM = B.YM
           AND A.ORG_NO = B.ORG_NO
           AND EXISTS (SELECT 1
                  FROM SY_SG_ARC_E_CONS_SNAP T
                 WHERE T.CALC_ID = A.CALC_ID
                   AND T.CONS_SORT_CODE LIKE '01%'
                   AND T.YM = A.YM
                   AND T.ORG_NO = A.ORG_NO)
           AND A.YM = V_TIME
           AND B.YM = V_TIME
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY A.ORG_NO, A.PRC_AMT_ID, A.YM, B.ADJ_FACTOR, B.PF_ADJ_AMT;
    
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_PF_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_PF_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_PF_AMT(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_PF_AMT', I_DATA);
  
    DELETE FROM SY_OM_DW_E_PF_AMT WHERE AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_PF_AMT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PRC_AMT_ID,
       AMT_YM,
       ADJ_AMT,
       ADJ_FACTOR,
       PF_AMT_ADD,
       PF_AMT_SUB,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             PRC_AMT_ID,
             AMT_YM,
             ADJ_AMT,
             ADJ_FACTOR,
             PF_AMT_ADD,
             PF_AMT_SUB,
             TIME_STAMP
        FROM DW_E_PF_AMT A
       WHERE A.AMT_YM = V_TIME;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_PF_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_PF_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_AMT_COMP_DAY(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_TIME     VARCHAR(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_AMT_COMP_DAY', V_TIME);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_AMT_COMP_DAY(V_TIME, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_AMT_COMP_DAY(V_TIME, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_E_AMT_COMP_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_TIME;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_AMT_COMP_DAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_AMT_COMP_DAY  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_AMT_COMP_DAY(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_TIME DATE := TO_DATE(SUBSTR(I_DATA, 1, 8), 'YYYYMMDD');
  
    V_NXT_TIME DATE := TO_DATE(SUBSTR(I_DATA, 1, 8), 'YYYYMMDD') + 1;
  
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  
    V_PRE_YM VARCHAR2(6);
  
    V_NXT_YM VARCHAR2(6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_AMT_COMP_DAY', I_DATA);
  
    SELECT TO_CHAR(ADD_MONTHS(V_TIME, -1), 'YYYYMM'),
           TO_CHAR(ADD_MONTHS(V_TIME, 1), 'YYYYMM')
      INTO V_PRE_YM, V_NXT_YM
      FROM DUAL;
  
    DELETE FROM DW_E_AMT_COMP_DAY A
     WHERE A.STAT_YMD = TO_CHAR(V_TIME, 'YYYYMMDD');
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_E_AMT_COMP_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         AMT_YM,
         STAT_YMD,
         ELEC_TYPE_CODE,
         CONS_SORT_CODE,
         TRADE_CODE,
         VOLT_CODE,
         HEC_TRADE_CODE,
         SPQ,
         RCVBL_AMT,
         TIME_STAMP)
        SELECT
        /*+PARALLEL(A 4) PARALLEL(B 4) PARALLEL(C 4)*/ --并发语句，增加数据库内并发进程.
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         '',
         A.YM,
         TO_CHAR(V_TIME, 'YYYYMMDD'),
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', B.ELEC_TYPE_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_TYPE_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', A.HEC_TRADE_CODE),
         SUM(B.T_SETTLE_PQ),
         SUM(B.T_AMT),
         SYSDATE
          FROM SY_SG_ARC_E_CONS_SNAP    A,
               SY_SG_ARC_E_CONS_PRC_AMT B,
               SY_SG_E_CAT_PRC          C
         WHERE B.PARA_VN = C.PARA_VN
           AND B.PRC_CODE = C.PRC_CODE
           AND B.CALC_ID = A.CALC_ID
           AND A.SEND_DATE < V_NXT_TIME
           AND A.SEND_DATE >= V_TIME
           AND A.YM IN (V_YM, V_PRE_YM, V_NXT_YM)
           AND B.YM IN (V_YM, V_PRE_YM, V_NXT_YM)
              --          AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY A.ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             B.ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             A.CONS_SORT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                             B.TRADE_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             A.HEC_TRADE_CODE),
                  A.YM;
    
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_AMT_COMP_DAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_AMT_COMP_DAY  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_AMT_COMP_DAY(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(8) := SUBSTR(I_DATA, 1, 8);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_AMT_COMP_DAY', I_DATA);
  
    DELETE FROM SY_OM_DW_E_AMT_COMP_DAY A WHERE A.STAT_YMD = V_TIME;
  
    INSERT INTO SY_OM_DW_E_AMT_COMP_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       AMT_YM,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       SPQ,
       RCVBL_AMT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       AMT_YM,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       SPQ,
       RCVBL_AMT,
       TIME_STAMP
        FROM DW_E_AMT_COMP_DAY A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YMD = V_TIME
         AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_AMT_COMP_DAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_AMT_COMP_DAY  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_AMT_COMP_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_TIME     VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_AMT_COMP_MON', V_TIME);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_AMT_COMP_MON(V_TIME, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_AMT_COMP_MON(V_TIME, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_E_AMT_COMP_MON A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_TIME, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.AMT_YM = V_TIME;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_AMT_COMP_MON  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_AMT_COMP_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_AMT_COMP_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
    V_NUM NUMBER;
  
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    V_STEP_AMT_CODE VARCHAR2(2);
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_AMT_COMP_MON', I_DATA);
  
    FOR I IN 1 .. 13 LOOP
      SELECT NVL(MAX(CONT1), 'NODATA'), NVL(MAX(CONT2), '0') --content2='1'的为特殊代征
        INTO V_PL_CODE(I), V_NUM
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'PrtPlItem'
         AND LPAD(TRANS_VALUE, 2, '0') = LPAD(I, 2, '0'); --TRANS_VALUE存放的就是SGPM_OUT.ARC_E_PL_AMT的PL_AMT__字段的序号
      IF V_NUM = '1' THEN
        V_SP_PL_CODE := V_SP_PL_CODE || V_PL_CODE(I);
      END IF;
    END LOOP;
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --尖峰电量年月计算标识
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    SELECT CONT1
      INTO V_STEP_AMT_CODE
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'stepAmtCode';
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      DELETE FROM DW_E_AMT_COMP_MON A
       WHERE A.AMT_YM = V_YM
         AND A.ORG_NO LIKE TSS.ORG_NO || '%';
    
      INSERT INTO DW_E_AMT_COMP_MON
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         AMT_YM,
         ELEC_TYPE_CODE,
         PRC_CODE,
         PRC_PARA_VN,
         MR_SECT_NO,
         CONS_SORT_CODE,
         TRADE_CODE,
         VOLT_CODE,
         HEC_TRADE_CODE,
         EXEC_PV_FLAG,
         TWO_PRC_FLAG,
         PF_EVAL_MODE,
         LADDER_TYPE,
         SPQ,
         SPA,
         ACME_PQ,
         PEAK_PQ,
         FLAT_PQ,
         VALLEY_PQ,
         NADIR_PQ,
         FIRST_LADDER_PQ,
         SECOND_LADDER_PQ,
         THIRD_LADDER_PQ,
         ACME_KWH_PA,
         PEAK_KWH_PA,
         FLAT_KWH_PA,
         VALLEY_KWH_PA,
         NADIR_KWH_PA,
         BILL_CAP,
         BILL_DMD,
         CAP_PA,
         DMD_PA,
         PEAKADD_PA,
         VALLEYSUB_PA,
         PF_PA_I,
         PF_PA_D,
         FIRST_LADDER_AMT,
         SECOND_LADDER_AMT,
         THIRD_LADDER_AMT,
         H_AND_L_PA,
         TIME_STAMP)
        SELECT /*+PARALLEL(A 4) PARALLEL(B 4) PARALLEL(C 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         '',
         V_YM AMT_YM,
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', C.ELEC_TYPE_CODE),
         C.PRC_CODE,
         C.PARA_VN,
         A.MR_SECT_NO,
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_TYPE_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', A.HEC_TRADE_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG) EXEC_PV_FLAG,
         PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
         PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02'), --各单位自行确定可在GK_DW_CODE_TANS表内配置,00无  01年阶梯  02月阶梯       
         SUM(C.T_SETTLE_PQ) SPQ,
         SUM(C.T_AMT) SPA,
         SUM(ACME_PQ),
         SUM(PEAK_PQ),
         SUM(FLAT_PQ),
         SUM(VALLEY_PQ),
         SUM(NADIR_PQ),
         SUM(NVL(T_SETTLE_PQ, 0)) FIRST_LADDER_PQ,
         SUM(DECODE(C.LEVEL_NUM,
                    '2',
                    DECODE(V_JTCFLX,
                           '1',
                           NVL(T_SETTLE_PQ, 0),
                           NVL(LEVEL_INC_PQ, 0)),
                    0)) SECOND_LADDER_PQ,
         SUM(DECODE(C.LEVEL_NUM,
                    '3',
                    DECODE(V_JTCFLX,
                           '1',
                           NVL(T_SETTLE_PQ, 0),
                           NVL(LEVEL_INC_PQ, 0)),
                    0)) THIRD_LADDER_PQ,
         SUM(ACME_KWH_AMT),
         SUM(PEAK_KWH_AMT),
         SUM(FLAT_KWH_AMT),
         SUM(VALLEY_KWH_AMT),
         SUM(NADIR_KWH_AMT),
         SUM(BILL_CAP),
         SUM(BILL_DMD),
         SUM(CAP_PA),
         SUM(DMD_PA),
         SUM(ROUND((NVL(ACME_CATKWH_PRC, 0) -
                   DECODE(NVL(FLAT_CATKWH_PRC, 0),
                           0,
                           (SELECT NVL(MAX(CAT_KWH_PRC), 0)
                              FROM SY_SG_E_CAT_PRC AA, SY_SG_E_CAT_PRC_DET BB
                             WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                               AND AA.PRC_CODE = C.PRC_CODE
                               AND AA.PARA_VN = C.PARA_VN
                               AND BB.PRC_TI_CODE = '03'),
                           FLAT_CATKWH_PRC)) * NVL(ACME_PQ, 0),
                   2) +
             ROUND((NVL(PEAK_CATKWH_PRC, 0) -
                   DECODE(NVL(FLAT_CATKWH_PRC, 0),
                           0,
                           (SELECT NVL(MAX(CAT_KWH_PRC), 0)
                              FROM SY_SG_E_CAT_PRC AA, SY_SG_E_CAT_PRC_DET BB
                             WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                               AND AA.PRC_CODE = C.PRC_CODE
                               AND AA.PARA_VN = C.PARA_VN
                               AND BB.PRC_TI_CODE = '03'),
                           FLAT_CATKWH_PRC)) * NVL(PEAK_PQ, 0),
                   2)) PEAKADD_PA, --峰增加
         SUM(ROUND((DECODE(NVL(FLAT_CATKWH_PRC, 0),
                           0,
                           (SELECT NVL(MAX(CAT_KWH_PRC), 0)
                              FROM SY_SG_E_CAT_PRC AA, SY_SG_E_CAT_PRC_DET BB
                             WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                               AND AA.PRC_CODE = C.PRC_CODE
                               AND AA.PARA_VN = C.PARA_VN
                               AND BB.PRC_TI_CODE = '03'),
                           FLAT_CATKWH_PRC) - NVL(VALLEY_CATKWH_PRC, 0)) *
                   NVL(VALLEY_PQ, 0),
                   2) +
             ROUND((DECODE(NVL(FLAT_CATKWH_PRC, 0),
                           0,
                           (SELECT NVL(MAX(CAT_KWH_PRC), 0)
                              FROM SY_SG_E_CAT_PRC AA, SY_SG_E_CAT_PRC_DET BB
                             WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                               AND AA.PRC_CODE = C.PRC_CODE
                               AND AA.PARA_VN = C.PARA_VN
                               AND BB.PRC_TI_CODE = '03'),
                           FLAT_CATKWH_PRC) - NVL(NADIR_CATKWH_PRC, 0)) *
                   NVL(NADIR_PQ, 0),
                   2)) VALLEYSUB_PA, --谷减少
         SUM(PF_AMT_ADD),
         SUM(PF_AMT_SUB),
         --电费获取按照网省数据为分档法存放,第二档,第三档电价重新计算后与对应档位的电量相乘,递增法的网省需要再反馈测试
         DECODE(V_JTCFLX,
                '1',
                SUM(NVL(T_SETTLE_PQ, 0) *
                    (SELECT MAX(AA.CAT_KWH_PRC)
                       FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                      WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                        AND BB.PARA_VN = C.PARA_VN
                        AND BB.PRC_CODE = C.PRC_CODE
                        AND AA.RANGE_TYPE_CODE = '31')),
                SUM(DECODE(C.LEVEL_NUM, '1', NVL(T_AMT, 0), 0))) FIRST_LADDER_AMT, --31
         DECODE(V_JTCFLX,
                '1',
                SUM(DECODE(C.LEVEL_NUM, 2, NVL(T_SETTLE_PQ, 0), 0) *
                    (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                       FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                      WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                        AND BB.PARA_VN = C.PARA_VN
                        AND BB.PRC_CODE = C.PRC_CODE
                        AND AA.RANGE_TYPE_CODE IN ('31', '32'))),
                SUM(DECODE(C.LEVEL_NUM, '2', NVL(T_AMT, 0), 0))) SECOND_LADDER_AMT, --32-31
         DECODE(V_JTCFLX,
                '1',
                SUM(DECODE(C.LEVEL_NUM, 3, NVL(T_SETTLE_PQ, 0), 0) *
                    (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                       FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                      WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                        AND BB.PARA_VN = C.PARA_VN
                        AND BB.PRC_CODE = C.PRC_CODE
                        AND AA.RANGE_TYPE_CODE IN ('31', '33'))),
                SUM(DECODE(C.LEVEL_NUM, '3', NVL(T_AMT, 0), 0))) THIRD_LADDER_AMT, --33-32-31
         0 H_AND_L_PA, --丰枯电费
         SYSDATE TIME_STAMP
          FROM SY_SG_ARC_E_CONS_SNAP A,
               SY_SG_ARC_E_CONSPRC_SNAP B,
               SY_SG_ARC_E_CONS_PRC_AMT C,
               (SELECT PRC_TACTIC_SNAP_ID,
                       CALC_ID,
                       TACTIC_ID,
                       YM,
                       ORG_NO,
                       SP_ID,
                       TYPE_CODE,
                       BA_CALC_MODE,
                       DMD_SPEC_VALUE,
                       PF_EVAL_MODE,
                       DATA_SRC,
                       RELA_APP_NO,
                       CHG_DATE,
                       RUN_STATUS_CODE
                  FROM SY_SG_ARC_E_CONSPRC_TACTIC_SGA
                 WHERE YM = V_YM) D,
               (SELECT /*+ PARALLEL(B,8)*/
                 B.PRC_AMT_ID,
                 B.YM AMT_YM,
                 0 CONS_ID,
                 '0' EXEC_PV_FLAG,
                 '0' REF_TS_CODE,
                 SUM(NVL(DECODE(V_TOPPK_YM_FLAG,
                                '1',
                                DECODE(PRC_TS_CODE, '01', SETTLE_APQ, 0),
                                0),
                         0)) ACME_PQ,
                 SUM(NVL(DECODE(V_TOPPK_YM_FLAG,
                                '1',
                                DECODE(PRC_TS_CODE, '02', SETTLE_APQ, 0),
                                DECODE(PRC_TS_CODE,
                                       '01',
                                       SETTLE_APQ,
                                       '02',
                                       SETTLE_APQ,
                                       0)),
                         0)) PEAK_PQ,
                 SUM(NVL(DECODE(PRC_TS_CODE, '03', SETTLE_APQ), 0)) FLAT_PQ,
                 SUM(NVL(DECODE(PRC_TS_CODE, '04', SETTLE_APQ), 0)) VALLEY_PQ,
                 SUM(NVL(DECODE(PRC_TS_CODE, '05', SETTLE_APQ), 0)) NADIR_PQ,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '01',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) ACME_CATKWH_AMT, ---20110808加上调尾
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '02',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) PEAK_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '03',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) FLAT_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '04',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) VALLEY_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '05',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) NADIR_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '01', B.KWH_AMT, 0)), 0) ACME_KWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '02', B.KWH_AMT, 0)), 0) PEAK_KWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '03', B.KWH_AMT, 0)), 0) FLAT_KWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '04', B.KWH_AMT, 0)), 0) VALLEY_KWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '05', B.KWH_AMT, 0)), 0) NADIR_KWH_AMT,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '01', B.CAT_KWH_PRC, 0)), 0) ACME_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '02', B.CAT_KWH_PRC, 0)), 0) PEAK_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '03', B.CAT_KWH_PRC, 0)), 0) FLAT_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '04', B.CAT_KWH_PRC, 0)), 0) VALLEY_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '05', B.CAT_KWH_PRC, 0)), 0) NADIR_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '01', B.KWH_PRC, 0)), 0) ACME_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '02', B.KWH_PRC, 0)), 0) PEAK_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '03', B.KWH_PRC, 0)), 0) FLAT_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '04', B.KWH_PRC, 0)), 0) VALLEY_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '05', B.KWH_PRC, 0)), 0) NADIR_KWH_PRC,
                 0 PEAKADD_PA,
                 0 VALLEYSUB_PA,
                 B.ORG_NO
                  FROM SY_SG_ARC_E_KWH_AMT B
                 WHERE B.YM = V_YM
                   AND ORG_NO LIKE TSS.ORG_NO || '%'
                 GROUP BY B.PRC_AMT_ID, B.YM, B.ORG_NO) E,
               (SELECT PRC_AMT_ID,
                       NVL(SUM(DECODE(BA_TYPE_CODE, '1', BA_VALUE, 0)), 0) BILL_CAP,
                       NVL(SUM(DECODE(BA_TYPE_CODE, '1', BA, 0)), 0) CAP_PA,
                       NVL(SUM(DECODE(BA_TYPE_CODE, '2', BA_VALUE, 0)), 0) BILL_DMD,
                       NVL(SUM(DECODE(BA_TYPE_CODE, '2', BA,) 0), 0) DMD_PA
                  FROM SY_SG_ARC_E_BASE_AMT
                 WHERE ORG_NO LIKE TSS.ORG_NO || '%'
                   AND YM = V_YM
                 GROUP BY PRC_AMT_ID) F,
               (SELECT /*+PARALLEL(A,8) PARALLEL(B,8)*/
                 PRC_AMT_ID,
                 SUM(ADJ_AMT) ADJ_AMT,
                 SUM(ADJ_FACTOR) ADJ_FACTOR,
                 SUM(DECODE(SIGN(PF_ADJ_AMT), 1, PF_ADJ_AMT, 0)) PF_AMT_ADD,
                 SUM(DECODE(SIGN(PF_ADJ_AMT), -1, PF_ADJ_AMT, 0)) PF_AMT_SUB
                  FROM SY_SG_ARC_E_PF_AMT
                 WHERE YM = V_YM
                   AND ORG_NO LIKE TSS.ORG_NO || '%'
                 GROUP BY PRC_AMT_ID) G
         WHERE A.CALC_ID = B.CALC_ID
           AND B.PRC_SNAP_ID = C.PRC_SNAP_ID
           AND B.PRC_TACTIC_SNAP_ID = D.PRC_TACTIC_SNAP_ID(+) --山东存在有电费但无电价策略快照的情况
           AND B.CALC_ID = D.CALC_ID(+)
           AND C.PRC_AMT_ID = E.PRC_AMT_ID(+)
           AND C.PRC_AMT_ID = F.PRC_AMT_ID(+)
           AND C.PRC_AMT_ID = G.PRC_AMT_ID(+)
           AND A.ORG_NO = B.ORG_NO
           AND A.ORG_NO = C.ORG_NO
           AND A.YM = V_YM
           AND B.YM = V_YM
           AND C.YM = V_YM
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY A.ORG_NO,
                  --'01' PS_BUSI_AREA_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             C.ELEC_TYPE_CODE),
                  C.PRC_CODE,
                  C.PARA_VN,
                  A.MR_SECT_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             A.CONS_SORT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                             C.TRADE_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             A.HEC_TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG),
                  PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE);
    
      COMMIT;
    
    END LOOP;
  
    --将执行非阶梯电价的第一,二,三阶梯电量电价改为0
    UPDATE DW_E_AMT_COMP_MON A
       SET A.FIRST_LADDER_AMT  = 0,
           A.SECOND_LADDER_AMT = 0,
           A.THIRD_LADDER_AMT  = 0,
           A.FIRST_LADDER_PQ   = 0,
           A.SECOND_LADDER_PQ  = 0,
           A.THIRD_LADDER_PQ   = 0
     WHERE A.AMT_YM = V_YM
       AND EXISTS
     (SELECT 1
              FROM SY_SG_E_CAT_PRC B, SY_SG_E_PRC_SCOPE C
             WHERE B.PRC_CODE = A.PRC_CODE
               AND B.PARA_VN = A.PRC_PARA_VN
               AND C.CAT_PRC_ID = B.CAT_PRC_ID
               AND INSTR('31/32/33', C.RANGE_TYPE_CODE) <= 0);
    COMMIT;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_AMT_COMP_MON  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_AMT_COMP_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
    
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_AMT_COMP_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_AMT_COMP_MON', I_DATA);
  
    DELETE FROM SY_OM_DW_E_AMT_COMP_MON A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_AMT_COMP_MON
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       AMT_YM,
       ELEC_TYPE_CODE,
       PRC_CODE,
       PRC_PARA_VN,
       MR_SECT_NO,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       EXEC_PV_FLAG,
       TWO_PRC_FLAG,
       PF_EVAL_MODE,
       LADDER_TYPE,
       SPQ,
       SPA,
       ACME_PQ,
       PEAK_PQ,
       FLAT_PQ,
       VALLEY_PQ,
       NADIR_PQ,
       FIRST_LADDER_PQ,
       SECOND_LADDER_PQ,
       THIRD_LADDER_PQ,
       ACME_KWH_PA,
       PEAK_KWH_PA,
       FLAT_KWH_PA,
       VALLEY_KWH_PA,
       NADIR_KWH_PA,
       BILL_CAP,
       BILL_DMD,
       CAP_PA,
       DMD_PA,
       PEAKADD_PA,
       VALLEYSUB_PA,
       PF_PA_I,
       PF_PA_D,
       FIRST_LADDER_AMT,
       SECOND_LADDER_AMT,
       THIRD_LADDER_AMT,
       PL_AMT11,
       PL_AMT08,
       PL_AMT01,
       PL_AMT02,
       PL_AMT03,
       PL_AMT04,
       PL_AMT05,
       PL_AMT06,
       PL_AMT07,
       PL_AMT09,
       PL_AMT12,
       PL_AMT13,
       PL_AMT10,
       H_AND_L_PA,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       AMT_YM,
       ELEC_TYPE_CODE,
       PRC_CODE,
       PRC_PARA_VN,
       MR_SECT_NO,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       EXEC_PV_FLAG,
       TWO_PRC_FLAG,
       PF_EVAL_MODE,
       LADDER_TYPE,
       SPQ,
       SPA,
       ACME_PQ,
       PEAK_PQ,
       FLAT_PQ,
       VALLEY_PQ,
       NADIR_PQ,
       FIRST_LADDER_PQ,
       SECOND_LADDER_PQ,
       THIRD_LADDER_PQ,
       ACME_KWH_PA,
       PEAK_KWH_PA,
       FLAT_KWH_PA,
       VALLEY_KWH_PA,
       NADIR_KWH_PA,
       BILL_CAP,
       BILL_DMD,
       CAP_PA,
       DMD_PA,
       PEAKADD_PA,
       VALLEYSUB_PA,
       PF_PA_I,
       PF_PA_D,
       FIRST_LADDER_AMT,
       SECOND_LADDER_AMT,
       THIRD_LADDER_AMT,
       PL_AMT11,
       PL_AMT08,
       PL_AMT01,
       PL_AMT02,
       PL_AMT03,
       PL_AMT04,
       PL_AMT05,
       PL_AMT06,
       PL_AMT07,
       PL_AMT09,
       PL_AMT12,
       PL_AMT13,
       PL_AMT10,
       H_AND_L_PA,
       TIME_STAMP
        FROM DW_E_AMT_COMP_MON A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.AMT_YM = V_TIME
         AND TO_CHAR(LAST_DAY(TO_DATE(V_TIME, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_AMT_COMP_MON  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_AMT_COMP_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_BASE_AMT(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_BASE_AMT', I_DATA);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_BASE_AMT(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_BASE_AMT(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_BASE_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_BASE_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_BASE_AMT(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
    V_MAX_LEVEL NUMBER;
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_BASE_AMT', I_DATA);
  
    SELECT MAX(ORG_TYPE)
      INTO V_MAX_LEVEL
      FROM SY_SG_O_ORG
     WHERE ORG_TYPE <> '06';
  
    DELETE FROM DW_E_BASE_AMT D WHERE D.AMT_YM = V_TIME;
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_E_BASE_AMT
        (DATA_ID,
         PRO_ORG_NO,
         PRC_AMT_ID,
         AMT_YM,
         BILL_CAP,
         CAP_PA,
         BILL_DMD,
         DMD_PA,
         ORG_NO,
         TIME_STAMP)
        SELECT
        /*+PARALLEL(A 4) PARALLEL(B 4) */ --并发语句，增加数据库内并发进程.
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.PRC_AMT_ID,
         A.YM,
         NVL(SUM(DECODE(B.BA_TYPE_CODE, '1', B.BA_VALUE, 0)), 0) BILL_CAP,
         NVL(SUM(DECODE(B.BA_TYPE_CODE, '1', B.BA, 0)), 0) CAP_PA,
         NVL(SUM(DECODE(B.BA_TYPE_CODE, '2', B.BA_VALUE, 0)), 0) BILL_DMD,
         NVL(SUM(DECODE(B.BA_TYPE_CODE, '2', B.BA, 0)), 0) DMD_PA,
         A.ORG_NO,
         SYSDATE
          FROM SY_SG_ARC_E_CONS_PRC_AMT A, SY_SG_ARC_E_BASE_AMT B
         WHERE A.ORG_NO = B.ORG_NO
           AND A.PRC_AMT_ID = B.PRC_AMT_ID
           AND A.YM = B.YM
           AND A.YM = V_TIME
           AND B.YM = V_TIME
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY A.PRC_AMT_ID, A.YM, A.ORG_NO;
    
    END LOOP;
  
    /*    FOR I IN V_MAX_LEVEL..2 LOOP
      FOR TSS IN (SELECT ORG_NO FROM SY_SG_O_ORG WHERE ORG_TYPE = '0' || I) LOOP
        UPDATE DW_E_BASE_AMT A
           SET BILL_CAP =
               (SELECT SUM(BILL_CAP)
                  FROM DW_E_BASE_AMT B
                 WHERE EXISTS (SELECT 1
                          FROM SY_SG_O_ORG C
                         WHERE C.ORG_NO = B.ORG_NO
                           AND C.P_ORG_NO = TSS.ORG_NO)),
               CAP_PA  =
               (SELECT SUM(CAP_PA)
                  FROM DW_E_BASE_AMT B
                 WHERE EXISTS (SELECT 1
                          FROM SY_SG_O_ORG C
                         WHERE C.ORG_NO = B.ORG_NO
                           AND C.P_ORG_NO = TSS.ORG_NO)),
               BILL_DMD =
               (SELECT SUM(BILL_DMD)
                  FROM DW_E_BASE_AMT B
                 WHERE EXISTS (SELECT 1
                          FROM SY_SG_O_ORG C
                         WHERE C.ORG_NO = B.ORG_NO
                           AND C.P_ORG_NO = TSS.ORG_NO)),
               DMD_PA  =
               (SELECT SUM(DMD_PA)
                  FROM DW_E_BASE_AMT B
                 WHERE EXISTS (SELECT 1
                          FROM SY_SG_O_ORG C
                         WHERE C.ORG_NO = B.ORG_NO
                           AND C.P_ORG_NO = TSS.ORG_NO))
         WHERE A.AMT_YM = V_TIME
           AND A.ORG_NO = TSS.ORG_NO;
      END LOOP;
    END LOOP;*/
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_BASE_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_BASE_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_BASE_AMT(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_BASE_AMT', I_DATA);
  
    DELETE FROM SY_OM_DW_E_BASE_AMT A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_BASE_AMT
      (DATA_ID,
       PRO_ORG_NO,
       PRC_AMT_ID,
       AMT_YM,
       BILL_CAP,
       CAP_PA,
       BILL_DMD,
       DMD_PA,
       ORG_NO,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             PRC_AMT_ID,
             AMT_YM,
             BILL_CAP,
             CAP_PA,
             BILL_DMD,
             DMD_PA,
             ORG_NO,
             TIME_STAMP
        FROM DW_E_BASE_AMT A
       WHERE A.AMT_YM = V_TIME;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_BASE_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_BASE_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_KWH_AMT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_KWH_AMT', I_DATA);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_KWH_AMT(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_KWH_AMT(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_KWH_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_KWH_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_KWH_AMT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM            VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_KWH_AMT', I_DATA);
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --尖峰电量年月计算标识
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      DELETE FROM DW_E_KWH_AMT X
       WHERE X.AMT_YM = V_YM
         AND X.ORG_NO LIKE TSS.ORG_NO || '%';
    
      INSERT INTO DW_E_KWH_AMT
        (DATA_ID,
         PRO_ORG_NO,
         PRC_AMT_ID,
         AMT_YM,
         RELEASE_YMD,
         CONS_ID,
         PRC_CODE,
         PRC_PARA_VN,
         EXEC_PV_FLAG,
         REF_TS_CODE,
         ACME_PQ,
         PEAK_PQ,
         FLAT_PQ,
         VALLEY_PQ,
         NADIR_PQ,
         ACME_CATKWH_AMT,
         PEAK_CATKWH_AMT,
         FLAT_CATKWH_AMT,
         VALLEY_CATKWH_AMT,
         NADIR_CATKWH_AMT,
         ACME_KWH_PA,
         PEAK_KWH_PA,
         FLAT_KWH_PA,
         VALLEY_KWH_PA,
         NADIR_KWH_PA,
         ACME_CATKWH_PRC,
         PEAK_CATKWH_PRC,
         FLAT_CATKWH_PRC,
         VALLEY_CATKWH_PRC,
         NADIR_CATKWH_PRC,
         ACME_KWH_PRC,
         PEAK_KWH_PRC,
         FLAT_KWH_PRC,
         VALLEY_KWH_PRC,
         NADIR_KWH_PRC,
         PEAKADD_PA,
         VALLEYSUB_PA,
         ORG_NO,
         TIME_STAMP)
        SELECT
        /*+PARALLEL(A 4) PARALLEL(B 4) */ --并发语句，增加数据库内并发进程.
         OMAC.PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.PRC_AMT_ID,
         B.YM,
         TO_CHAR(B.SEND_DATE, 'YYYYMMDD'),
         B.CONS_ID,
         A.PRC_CODE,
         A.PARA_VN,
         PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', D.TS_FLAG),
         E.REF_TS_CODE,
         ACME_PQ,
         PEAK_PQ,
         FLAT_PQ,
         VALLEY_PQ,
         NADIR_PQ,
         ACME_CATKWH_AMT,
         PEAK_CATKWH_AMT,
         FLAT_CATKWH_AMT,
         VALLEY_CATKWH_AMT,
         NADIR_CATKWH_AMT,
         ACME_KWH_PA,
         PEAK_KWH_PA,
         FLAT_KWH_PA,
         VALLEY_KWH_PA,
         NADIR_KWH_PA,
         ACME_CATKWH_PRC,
         PEAK_CATKWH_PRC,
         FLAT_CATKWH_PRC,
         VALLEY_CATKWH_PRC,
         NADIR_CATKWH_PRC,
         ACME_KWH_PRC,
         PEAK_KWH_PRC,
         FLAT_KWH_PRC,
         VALLEY_KWH_PRC,
         NADIR_KWH_PRC,
         (ACME_KWH_PRC - FLAT_KWH_PRC) * ACME_PQ +
         (PEAK_KWH_PRC - FLAT_KWH_PRC) * PEAK_PQ,
         (FLAT_KWH_PRC - VALLEY_KWH_PRC) * VALLEY_PQ +
         (FLAT_KWH_PRC - NADIR_KWH_PRC) * NADIR_PQ,
         C.ORG_NO,
         SYSDATE
          FROM SY_SG_ARC_E_CONS_PRC_AMT A,
               SY_SG_ARC_E_CONS_SNAP B,
               (SELECT /*+ PARALLEL(B,8)*/
                 B.PRC_AMT_ID,
                 B.YM AMT_YM,
                 '0' EXEC_PV_FLAG,
                 '0' REF_TS_CODE,
                 SUM(NVL(DECODE(V_TOPPK_YM_FLAG,
                                '1',
                                DECODE(PRC_TS_CODE, '01', SETTLE_APQ, 0),
                                0),
                         0)) ACME_PQ,
                 SUM(NVL(DECODE(V_TOPPK_YM_FLAG,
                                '1',
                                DECODE(PRC_TS_CODE, '02', SETTLE_APQ, 0),
                                DECODE(PRC_TS_CODE,
                                       '01',
                                       SETTLE_APQ,
                                       '02',
                                       SETTLE_APQ,
                                       0)),
                         0)) PEAK_PQ,
                 SUM(NVL(DECODE(PRC_TS_CODE, '03', SETTLE_APQ), 0)) FLAT_PQ,
                 SUM(NVL(DECODE(PRC_TS_CODE, '04', SETTLE_APQ), 0)) VALLEY_PQ,
                 SUM(NVL(DECODE(PRC_TS_CODE, '05', SETTLE_APQ), 0)) NADIR_PQ,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '01',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) ACME_CATKWH_AMT, ---20110808加上调尾
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '02',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) PEAK_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '03',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) FLAT_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '04',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) VALLEY_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '05',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) NADIR_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '01', B.KWH_AMT, 0)), 0) ACME_KWH_PA,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '02', B.KWH_AMT, 0)), 0) PEAK_KWH_PA,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '03', B.KWH_AMT, 0)), 0) FLAT_KWH_PA,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '04', B.KWH_AMT, 0)), 0) VALLEY_KWH_PA,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '05', B.KWH_AMT, 0)), 0) NADIR_KWH_PA,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '01', B.CAT_KWH_PRC, 0)), 0) ACME_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '02', B.CAT_KWH_PRC, 0)), 0) PEAK_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '03', B.CAT_KWH_PRC, 0)), 0) FLAT_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '04', B.CAT_KWH_PRC, 0)), 0) VALLEY_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '05', B.CAT_KWH_PRC, 0)), 0) NADIR_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '01', B.KWH_PRC, 0)), 0) ACME_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '02', B.KWH_PRC, 0)), 0) PEAK_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '03', B.KWH_PRC, 0)), 0) FLAT_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '04', B.KWH_PRC, 0)), 0) VALLEY_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '05', B.KWH_PRC, 0)), 0) NADIR_KWH_PRC,
                 0 PEAKADD_PA,
                 0 VALLEYSUB_PA,
                 B.ORG_NO
                  FROM SY_SG_ARC_E_KWH_AMT B
                 WHERE B.YM = V_YM
                   AND ORG_NO LIKE TSS.ORG_NO || '%'
                 GROUP BY B.PRC_AMT_ID, B.YM, B.ORG_NO) C,
               (SELECT PRC_SNAP_ID, MAX(NVL(TS_FLAG, 0)) TS_FLAG
                  FROM SY_SG_ARC_E_CONSPRC_SNAP
                 WHERE YM = V_YM
                   AND ORG_NO LIKE TSS.ORG_NO || '%'
                 GROUP BY PRC_SNAP_ID) D,
               (SELECT G.PARA_VN,
                       G.PRC_CODE,
                       MAX(NVL(REF_TS_FLAG, 0)) REF_TS_CODE
                  FROM SY_SG_E_CAT_PRC_DET F, SY_SG_E_CAT_PRC G
                 WHERE F.CAT_PRC_ID = G.CAT_PRC_ID
                 GROUP BY G.PARA_VN, G.PRC_CODE) E
         WHERE B.CALC_ID = A.CALC_ID
           AND A.PRC_AMT_ID = C.PRC_AMT_ID
           AND A.PRC_SNAP_ID = D.PRC_SNAP_ID
           AND A.PARA_VN = E.PARA_VN
           AND A.PRC_CODE = E.PRC_CODE
           AND A.ORG_NO = C.ORG_NO
           AND A.YM = B.YM
           AND A.YM = C.AMT_YM
           AND B.CONS_SORT_CODE LIKE '01%'
           AND A.YM = V_YM
           AND B.YM = V_YM
           AND C.AMT_YM = V_YM
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND C.ORG_NO LIKE TSS.ORG_NO || '%';
    
      COMMIT;
    
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_KWH_AMT  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_KWH_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_KWH_AMT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_KWH_AMT', I_DATA);
  
    DELETE FROM SY_OM_DW_E_KWH_AMT A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_KWH_AMT
      (DATA_ID,
       PRO_ORG_NO,
       PRC_AMT_ID,
       AMT_YM,
       RELEASE_YMD,
       CONS_ID,
       PRC_CODE,
       PRC_PARA_VN,
       EXEC_PV_FLAG,
       REF_TS_CODE,
       ACME_PQ,
       PEAK_PQ,
       FLAT_PQ,
       VALLEY_PQ,
       NADIR_PQ,
       ACME_CATKWH_AMT,
       PEAK_CATKWH_AMT,
       FLAT_CATKWH_AMT,
       VALLEY_CATKWH_AMT,
       NADIR_CATKWH_AMT,
       ACME_KWH_PA,
       PEAK_KWH_PA,
       FLAT_KWH_PA,
       VALLEY_KWH_PA,
       NADIR_KWH_PA,
       ACME_CATKWH_PRC,
       PEAK_CATKWH_PRC,
       FLAT_CATKWH_PRC,
       VALLEY_CATKWH_PRC,
       NADIR_CATKWH_PRC,
       ACME_KWH_PRC,
       PEAK_KWH_PRC,
       FLAT_KWH_PRC,
       VALLEY_KWH_PRC,
       NADIR_KWH_PRC,
       PEAKADD_PA,
       VALLEYSUB_PA,
       ORG_NO,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             PRC_AMT_ID,
             AMT_YM,
             RELEASE_YMD,
             CONS_ID,
             PRC_CODE,
             PRC_PARA_VN,
             EXEC_PV_FLAG,
             REF_TS_CODE,
             ACME_PQ,
             PEAK_PQ,
             FLAT_PQ,
             VALLEY_PQ,
             NADIR_PQ,
             ACME_CATKWH_AMT,
             PEAK_CATKWH_AMT,
             FLAT_CATKWH_AMT,
             VALLEY_CATKWH_AMT,
             NADIR_CATKWH_AMT,
             ACME_KWH_PA,
             PEAK_KWH_PA,
             FLAT_KWH_PA,
             VALLEY_KWH_PA,
             NADIR_KWH_PA,
             ACME_CATKWH_PRC,
             PEAK_CATKWH_PRC,
             FLAT_CATKWH_PRC,
             VALLEY_CATKWH_PRC,
             NADIR_CATKWH_PRC,
             ACME_KWH_PRC,
             PEAK_KWH_PRC,
             FLAT_KWH_PRC,
             VALLEY_KWH_PRC,
             NADIR_KWH_PRC,
             PEAKADD_PA,
             VALLEYSUB_PA,
             ORG_NO,
             TIME_STAMP
        FROM DW_E_KWH_AMT A
       WHERE A.AMT_YM = V_TIME;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_KWH_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_KWH_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_PL_AMT(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_PL_AMT', I_DATA);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_PL_AMT(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_PL_AMT(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_PL_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_PL_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_PL_AMT(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE    PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE VARCHAR2(64) := 'XXX';
    V_YM         VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
    V_NUM        NUMBER;
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_PL_AMT', I_DATA);
  
    DELETE FROM DW_E_PL_AMT D WHERE D.AMT_YM = V_YM;
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_E_PL_AMT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PRC_AMT_ID,
         AMT_YM,
         PL_CODE,
         PL_PQ,
         PL_AMT,
         PRC_IO_FLAG,
         PRC_TS_CODE,
         PL_PRC,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               E.ORG_NO,
               E.PRC_AMT_ID,
               E.AMT_YM,
               F.HEAD_PL_CODE,
               SUM(E.PL_PQ) PL_PQ,
               SUM(E.PL_AMT) PL_AMT,
               F.PRC_IO_FLAG,
               E.PRC_TS_CODE,
               SUM(E.PL_PRC) PL_PRC,
               SYSDATE
          FROM (SELECT
                /*+PARALLEL(A 4)(B 4)(C 4) */ --并发语句，增加数据库内并发进程.
                 A.ORG_NO,
                 A.PRC_AMT_ID,
                 --电费年月
                 A.YM AMT_YM,
                 --代征项代码
                 B.PL_CODE,
                 --代征电量
                 B.PL_PQ,
                 --代征电费金额
                 B.PL_AMT,
                 --价内价外标志
                 --B.PRC_IO_FLAG,
                 --电价时段代码
                 B.PRC_TS_CODE,
                 --代征单价
                 B.PL_PRC
                  FROM SY_SG_ARC_E_CONS_PRC_AMT A,
                       SY_SG_ARC_E_PL_AMT       B,
                       SY_SG_ARC_E_CONS_SNAP    C
                 WHERE C.YM = V_YM
                   AND A.YM = V_YM
                   AND B.YM = V_YM
                   AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND C.CONS_SORT_CODE LIKE '01%'
                   AND A.CALC_ID = C.CALC_ID
                   AND A.PRC_AMT_ID = B.PRC_AMT_ID
                   AND A.YM = C.YM
                   AND A.ORG_NO = C.ORG_NO) E,
               DW_O_PL_PARA F
         WHERE E.PL_CODE = F.PL_CODE
         GROUP BY E.ORG_NO,
                  E.PRC_AMT_ID,
                  E.AMT_YM,
                  F.HEAD_PL_CODE,
                  F.PRC_IO_FLAG,
                  E.PRC_TS_CODE;
      COMMIT;
    
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_PL_AMT  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_PL_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_PL_AMT(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_PL_AMT', I_DATA);
  
    DELETE FROM SY_OM_DW_E_PL_AMT A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_PL_AMT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PRC_AMT_ID,
       AMT_YM,
       PL_CODE,
       PL_PQ,
       PL_AMT,
       PRC_IO_FLAG,
       PRC_TS_CODE,
       PL_PRC,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             PRC_AMT_ID,
             AMT_YM,
             PL_CODE,
             PL_PQ,
             PL_AMT,
             PRC_IO_FLAG,
             PRC_TS_CODE,
             PL_PRC,
             TIME_STAMP
        FROM DW_E_PL_AMT A
       WHERE A.AMT_YM = V_TIME;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_PL_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_PL_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_CONS_PRC_AMT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_CONS_PRC_AMT', I_DATA);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_CONS_PRC_AMT(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_CONS_PRC_AMT(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_CONS_PRC_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_CONS_PRC_AMT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_CONS_PRC_AMT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_CONS_PRC_AMT', I_DATA);
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      DELETE FROM DW_E_CONS_PRC_AMT A
       WHERE A.AMT_YM = V_YM
         AND A.ORG_NO LIKE TSS.ORG_NO || '%';
    
      INSERT INTO DW_E_CONS_PRC_AMT
        (DATA_ID,
         PRO_ORG_NO,
         PRC_AMT_ID,
         ORG_NO,
         APP_NO,
         AMT_YM,
         RELEASE_YMD,
         CONS_ID,
         CONS_NO,
         CONS_NAME,
         PRC_ID,
         CALC_ID,
         VOLT_CODE,
         ELEC_TYPE_CODE,
         TRADE_CODE,
         HEC_TRADE_CODE,
         TRANSFER_FLAG,
         POWERON_DATE,
         CONS_STATUS_CODE,
         GP_CODE,
         DISC_MODE,
         MR_SECT_NO,
         PRC_CODE,
         PRC_PARA_VN,
         EXEC_PV_FLAG,
         PF_STD_CODE,
         ACTUAL_PF,
         TACTIC_TYPE_CODE,
         BA_CALC_MODE,
         PF_EVAL_MODE,
         LEVEL_NUM,
         RELA_APP_NO,
         DATA_SRC,
         T_PQ,
         T_AMT,
         T_CATKWH_AMT,
         T_PL_AMT,
         TIME_STAMP)
        SELECT
        /*+PARALLEL(A 8) PARALLEL(B 8) PARALLEL(C 8) PARALLEL(D 8) PARALLEL(E 8) */ --并发语句，增加数据库内并发进程.
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.PRC_AMT_ID,
         A.ORG_NO,
         A.APP_CODE,
         B.YM,
         TO_CHAR(B.SEND_DATE, 'YYYYMMDD'),
         B.CONS_ID,
         B.CONS_NO,
         B.CONS_NAME,
         E.PRC_ID,
         A.CALC_ID,
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', C.ELEC_TYPE_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', A.TRADE_TYPE_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', B.HEC_TRADE_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('TRANSFER_CODE', B.TRANSFER_FLAG),
         B.POWERON_DATE,
         PKG_GK_PUBLIC.F_TRANS_CODE('CONS_STATUS_CODE', B.STATUS_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('GP_CODE', B.GP_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('DISC_MODE', C.DISC_MODE),
         B.MR_SECT_NO,
         A.PRC_CODE,
         A.PARA_VN,
         PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', E.TS_FLAG),
         PKG_GK_PUBLIC.F_TRANS_CODE('PF_STD_CODE', E.PF_STD_CODE),
         E.ACTUAL_PF,
         (SELECT PKG_GK_PUBLIC.F_TRANS_CODE('TACTIC_TYPE_CODE', G.TYPE_CODE)
            FROM SY_SG_ARC_E_CONSPRC_TACTIC_SGA G
           WHERE G.PRC_TACTIC_SNAP_ID = E.PRC_TACTIC_SNAP_ID
             AND G.CALC_ID = E.CALC_ID
             AND G.YM = E.YM
             AND G.ORG_NO = E.ORG_NO),
         (SELECT PKG_GK_PUBLIC.F_TRANS_CODE('BA_CALC_MODE', G.BA_CALC_MODE)
            FROM SY_SG_ARC_E_CONSPRC_TACTIC_SGA G
           WHERE G.PRC_TACTIC_SNAP_ID = E.PRC_TACTIC_SNAP_ID
             AND G.CALC_ID = E.CALC_ID
             AND G.YM = E.YM
             AND G.ORG_NO = E.ORG_NO),
         (SELECT PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', G.PF_EVAL_MODE)
            FROM SY_SG_ARC_E_CONSPRC_TACTIC_SGA G
           WHERE G.PRC_TACTIC_SNAP_ID = E.PRC_TACTIC_SNAP_ID
             AND G.CALC_ID = E.CALC_ID
             AND G.YM = E.YM
             AND G.ORG_NO = E.ORG_NO),
         A.LEVEL_NUM,
         E.RELA_APP_NO,
         (SELECT DISTINCT G.DATA_SRC
            FROM SY_SG_ARC_E_MP_PARA_SNAP G
           WHERE E.CALC_ID = G.CALC_ID
             AND G.YM = E.YM
             AND G.ORG_NO = E.ORG_NO
             AND ROWNUM = 1),
         A.T_SETTLE_PQ,
         A.T_AMT,
         A.T_CAT_KWH_AMT,
         A.T_PL_AMT,
         SYSDATE
          FROM SY_SG_ARC_E_CONS_PRC_AMT A,
               SY_SG_ARC_E_CONS_SNAP    B,
               SY_SG_E_CAT_PRC          C,
               SY_SG_ARC_E_CONSPRC_SNAP E
         WHERE A.PARA_VN = C.PARA_VN
           AND A.PRC_CODE = C.PRC_CODE
           AND A.PRC_SNAP_ID = E.PRC_SNAP_ID
           AND A.CALC_ID = B.CALC_ID
           AND A.CALC_ID = E.CALC_ID
           AND A.YM = B.YM
           AND A.YM = E.YM
              --AND A.ORG_NO = B.ORG_NO
           AND B.CONS_SORT_CODE LIKE '01%'
           AND A.YM = V_YM
           AND B.YM = V_YM
           AND E.YM = V_YM
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND E.ORG_NO LIKE TSS.ORG_NO || '%';
    
      COMMIT;
    
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_CONS_PRC_AMT  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_CONS_PRC_AMT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_CONS_PRC_AMT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_CONS_PRC_AMT', I_DATA);
  
    DELETE FROM SY_OM_DW_E_CONS_PRC_AMT A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_CONS_PRC_AMT
      (DATA_ID,
       PRO_ORG_NO,
       PRC_AMT_ID,
       ORG_NO,
       APP_NO,
       AMT_YM,
       RELEASE_YMD,
       CONS_ID,
       CONS_NO,
       CONS_NAME,
       PRC_ID,
       CALC_ID,
       VOLT_CODE,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       TRANSFER_FLAG,
       POWERON_DATE,
       CONS_STATUS_CODE,
       GP_CODE,
       DISC_MODE,
       MR_SECT_NO,
       PRC_CODE,
       PRC_PARA_VN,
       EXEC_PV_FLAG,
       PF_STD_CODE,
       ACTUAL_PF,
       TACTIC_TYPE_CODE,
       BA_CALC_MODE,
       PF_EVAL_MODE,
       LEVEL_NUM,
       RELA_APP_NO,
       DATA_SRC,
       T_PQ,
       T_AMT,
       T_CATKWH_AMT,
       T_PL_AMT,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             PRC_AMT_ID,
             ORG_NO,
             APP_NO,
             AMT_YM,
             RELEASE_YMD,
             CONS_ID,
             CONS_NO,
             CONS_NAME,
             PRC_ID,
             CALC_ID,
             VOLT_CODE,
             ELEC_TYPE_CODE,
             TRADE_CODE,
             HEC_TRADE_CODE,
             TRANSFER_FLAG,
             POWERON_DATE,
             CONS_STATUS_CODE,
             GP_CODE,
             DISC_MODE,
             MR_SECT_NO,
             PRC_CODE,
             PRC_PARA_VN,
             EXEC_PV_FLAG,
             PF_STD_CODE,
             ACTUAL_PF,
             TACTIC_TYPE_CODE,
             BA_CALC_MODE,
             PF_EVAL_MODE,
             LEVEL_NUM,
             RELA_APP_NO,
             DATA_SRC,
             T_PQ,
             T_AMT,
             T_CATKWH_AMT,
             T_PL_AMT,
             TIME_STAMP
        FROM DW_E_CONS_PRC_AMT C
       WHERE C.AMT_YM = V_TIME;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_CONS_PRC_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_CONS_PRC_AMT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /*PROCEDURE P_ENT_DW_E_LOW_PRC_AMT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_TIME     VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_LOW_PRC_AMT', V_TIME);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_LOW_PRC_AMT(V_TIME, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_LOW_PRC_AMT(V_TIME, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_E_LOW_PRC_AMT A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT \*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*\
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
               AND TO_CHAR(LAST_DAY(TO_DATE(V_TIME,'YYYYMM')),'YYYYMMDD') BETWEEN B.BGN_YMD AND NVL(B.END_YMD,'99991231'))
       WHERE A.AMT_YM = V_TIME;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_LOW_PRC_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_LOW_PRC_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;*/

  /*PROCEDURE P_INS_DW_E_LOW_PRC_AMT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
    V_NUM NUMBER;
  
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    V_STEP_AMT_CODE VARCHAR2(2);
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_LOW_PRC_AMT', I_DATA);
  
    FOR I IN 1 .. 13 LOOP
      SELECT NVL(MAX(CONT1), 'NODATA'), NVL(MAX(CONT2), '0') --content2='1'的为特殊代征
        INTO V_PL_CODE(I), V_NUM
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'PrtPlItem'
         AND LPAD(TRANS_VALUE, 2, '0') = LPAD(I, 2, '0'); --TRANS_VALUE存放的就是SGPM_OUT.ARC_E_PL_AMT的PL_AMT__字段的序号
      IF V_NUM = '1' THEN
        V_SP_PL_CODE := V_SP_PL_CODE || V_PL_CODE(I);
      END IF;
    END LOOP;
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --尖峰电量年月计算标识
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    SELECT CONT1
      INTO V_STEP_AMT_CODE
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'stepAmtCode';
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      DELETE FROM DW_E_LOW_PRC_AMT A
       WHERE A.AMT_YM = V_YM
         AND A.ORG_NO LIKE TSS.ORG_NO || '%';
    
      INSERT INTO DW_E_LOW_PRC_AMT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         AMT_YM,
         ELEC_TYPE_CODE,
         PRC_CODE,
         PRC_PARA_VN,
         MR_SECT_NO,
         CONS_SORT_CODE,
         TRADE_CODE,
         VOLT_CODE,
         HEC_TRADE_CODE,
         EXEC_PV_FLAG,
         TWO_PRC_FLAG,
         PF_EVAL_MODE,
         LADDER_TYPE,
         SPQ,
         SPA,
         ACME_PQ,
         PEAK_PQ,
         FLAT_PQ,
         VALLEY_PQ,
         NADIR_PQ,
         FIRST_LADDER_PQ,
         SECOND_LADDER_PQ,
         THIRD_LADDER_PQ,
         ACME_KWH_PA,
         PEAK_KWH_PA,
         FLAT_KWH_PA,
         VALLEY_KWH_PA,
         NADIR_KWH_PA,
         BILL_CAP,
         BILL_DMD,
         CAP_PA,
         DMD_PA,
         PEAKADD_PA,
         VALLEYSUB_PA,
         PF_PA_I,
         PF_PA_D,
         FIRST_LADDER_AMT,
         SECOND_LADDER_AMT,
         THIRD_LADDER_AMT,
         PL_AMT11,
         PL_AMT08,
         PL_AMT01,
         PL_AMT02,
         PL_AMT03,
         PL_AMT04,
         PL_AMT05,
         PL_AMT06,
         PL_AMT07,
         PL_AMT09,
         PL_AMT12,
         PL_AMT13,
         PL_AMT10,
         H_AND_L_PA,
         TIME_STAMP)
        SELECT \*+PARALLEL(A 4) PARALLEL(B 4) PARALLEL(C 4) *\
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         '',
         V_YM AMT_YM,
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', C.ELEC_TYPE_CODE),
         C.PRC_CODE,
         C.PARA_VN,
         A.MR_SECT_NO,
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_TYPE_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', A.HEC_TRADE_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG),
         PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
         PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02') LADDER_TYPE, --各单位自行确定
         
         SUM(C.T_SETTLE_PQ) SPQ,
         SUM(C.T_AMT) SPA,
         SUM(ACME_PQ),
         SUM(PEAK_PQ),
         SUM(FLAT_PQ),
         SUM(VALLEY_PQ),
         SUM(NADIR_PQ),
         SUM(NVL(T_SETTLE_PQ, 0)) FIRST_LADDER_PQ,
         SUM(DECODE(C.LEVEL_NUM,
                    '2',
                    DECODE(V_JTCFLX,
                           '1',
                           NVL(T_SETTLE_PQ, 0),
                           NVL(LEVEL_INC_PQ, 0)),
                    0)) SECOND_LADDER_PQ,
         SUM(DECODE(C.LEVEL_NUM,
                    '3',
                    DECODE(V_JTCFLX,
                           '1',
                           NVL(T_SETTLE_PQ, 0),
                           NVL(LEVEL_INC_PQ, 0)),
                    0)) THIRD_LADDER_PQ,
         SUM(ACME_KWH_AMT),
         SUM(PEAK_KWH_AMT),
         SUM(FLAT_KWH_AMT),
         SUM(VALLEY_KWH_AMT),
         SUM(NADIR_KWH_AMT),
         SUM(BILL_CAP),
         SUM(BILL_DMD),
         SUM(CAP_PA),
         SUM(DMD_PA),
         SUM(ROUND((NVL(ACME_CATKWH_PRC, 0) -
                   DECODE(NVL(FLAT_CATKWH_PRC, 0),
                           0,
                           (SELECT NVL(MAX(CAT_KWH_PRC), 0)
                              FROM SY_SG_E_CAT_PRC AA, SY_SG_E_CAT_PRC_DET BB
                             WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                               AND AA.PRC_CODE = C.PRC_CODE
                               AND AA.PARA_VN = C.PARA_VN
                               AND BB.PRC_TI_CODE = '03'),
                           FLAT_CATKWH_PRC)) * NVL(ACME_PQ, 0),
                   2) +
             ROUND((NVL(PEAK_CATKWH_PRC, 0) -
                   DECODE(NVL(FLAT_CATKWH_PRC, 0),
                           0,
                           (SELECT NVL(MAX(CAT_KWH_PRC), 0)
                              FROM SY_SG_E_CAT_PRC AA, SY_SG_E_CAT_PRC_DET BB
                             WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                               AND AA.PRC_CODE = C.PRC_CODE
                               AND AA.PARA_VN = C.PARA_VN
                               AND BB.PRC_TI_CODE = '03'),
                           FLAT_CATKWH_PRC)) * NVL(PEAK_PQ, 0),
                   2)) PEAKADD_PA, --峰增加
         SUM(ROUND((DECODE(NVL(FLAT_CATKWH_PRC, 0),
                           0,
                           (SELECT NVL(MAX(CAT_KWH_PRC), 0)
                              FROM SY_SG_E_CAT_PRC AA, SY_SG_E_CAT_PRC_DET BB
                             WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                               AND AA.PRC_CODE = C.PRC_CODE
                               AND AA.PARA_VN = C.PARA_VN
                               AND BB.PRC_TI_CODE = '03'),
                           FLAT_CATKWH_PRC) - NVL(VALLEY_CATKWH_PRC, 0)) *
                   NVL(VALLEY_PQ, 0),
                   2) +
             ROUND((DECODE(NVL(FLAT_CATKWH_PRC, 0),
                           0,
                           (SELECT NVL(MAX(CAT_KWH_PRC), 0)
                              FROM SY_SG_E_CAT_PRC AA, SY_SG_E_CAT_PRC_DET BB
                             WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                               AND AA.PRC_CODE = C.PRC_CODE
                               AND AA.PARA_VN = C.PARA_VN
                               AND BB.PRC_TI_CODE = '03'),
                           FLAT_CATKWH_PRC) - NVL(NADIR_CATKWH_PRC, 0)) *
                   NVL(NADIR_PQ, 0),
                   2)) VALLEYSUB_PA, --谷减少
         SUM(PF_AMT_ADD),
         SUM(PF_AMT_SUB),
         --电费获取按照网省数据为分档法存放,第二档,第三档电价重新计算后与对应档位的电量相乘,递增法的网省需要再反馈测试
         DECODE(V_JTCFLX,
                '1',
                SUM(NVL(T_SETTLE_PQ, 0) *
                    (SELECT MAX(AA.CAT_KWH_PRC)
                       FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                      WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                        AND BB.PARA_VN = C.PARA_VN
                        AND BB.PRC_CODE = C.PRC_CODE
                        AND AA.RANGE_TYPE_CODE = '31')),
                SUM(DECODE(C.LEVEL_NUM, '1', NVL(T_AMT, 0), 0))) FIRST_LADDER_AMT, --31
         DECODE(V_JTCFLX,
                '1',
                SUM(DECODE(C.LEVEL_NUM, 2, NVL(T_SETTLE_PQ, 0), 0) *
                    (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                       FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                      WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                        AND BB.PARA_VN = C.PARA_VN
                        AND BB.PRC_CODE = C.PRC_CODE
                        AND AA.RANGE_TYPE_CODE IN ('31', '32'))),
                SUM(DECODE(C.LEVEL_NUM, '2', NVL(T_AMT, 0), 0))) SECOND_LADDER_AMT, --32-31
         DECODE(V_JTCFLX,
                '1',
                SUM(DECODE(C.LEVEL_NUM, 3, NVL(T_SETTLE_PQ, 0), 0) *
                    (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                       FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                      WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                        AND BB.PARA_VN = C.PARA_VN
                        AND BB.PRC_CODE = C.PRC_CODE
                        AND AA.RANGE_TYPE_CODE IN ('31', '33'))),
                SUM(DECODE(C.LEVEL_NUM, '3', NVL(T_AMT, 0), 0))) THIRD_LADDER_AMT,
         SUM(PL_AMT11),
         SUM(PL_AMT08),
         SUM(PL_AMT01),
         SUM(PL_AMT02),
         SUM(PL_AMT03),
         SUM(PL_AMT04),
         SUM(PL_AMT05),
         SUM(PL_AMT06),
         SUM(PL_AMT07),
         SUM(PL_AMT09),
         SUM(PL_AMT12),
         SUM(PL_AMT13),
         SUM(PL_AMT10),
         0 H_AND_L_PA, --丰枯电费
         SYSDATE TIME_STAMP
          FROM SY_SG_ARC_E_CONS_SNAP A,
               SY_SG_ARC_E_CONSPRC_SNAP B,
               SY_SG_ARC_E_CONS_PRC_AMT C,
               (SELECT PRC_TACTIC_SNAP_ID,
                       CALC_ID,
                       TACTIC_ID,
                       YM,
                       ORG_NO,
                       SP_ID,
                       TYPE_CODE,
                       BA_CALC_MODE,
                       DMD_SPEC_VALUE,
                       PF_EVAL_MODE,
                       DATA_SRC,
                       RELA_APP_NO,
                       CHG_DATE,
                       RUN_STATUS_CODE
                  FROM SY_SG_ARC_E_CONSPRC_TACTIC_SGA
                 WHERE YM = V_YM
                   AND ORG_NO LIKE TSS.ORG_NO || '%') D,
               (SELECT \*+ PARALLEL(B,8)*\
                 B.PRC_AMT_ID,
                 B.YM AMT_YM,
                 0 CONS_ID,
                 '0' EXEC_PV_FLAG,
                 '0' REF_TS_CODE,
                 SUM(NVL(DECODE(V_TOPPK_YM_FLAG,
                                '1',
                                DECODE(PRC_TS_CODE, '01', SETTLE_APQ, 0),
                                0),
                         0)) ACME_PQ,
                 SUM(NVL(DECODE(V_TOPPK_YM_FLAG,
                                '1',
                                DECODE(PRC_TS_CODE, '02', SETTLE_APQ, 0),
                                DECODE(PRC_TS_CODE,
                                       '01',
                                       SETTLE_APQ,
                                       '02',
                                       SETTLE_APQ,
                                       0)),
                         0)) PEAK_PQ,
                 SUM(NVL(DECODE(PRC_TS_CODE, '03', SETTLE_APQ), 0)) FLAT_PQ,
                 SUM(NVL(DECODE(PRC_TS_CODE, '04', SETTLE_APQ), 0)) VALLEY_PQ,
                 SUM(NVL(DECODE(PRC_TS_CODE, '05', SETTLE_APQ), 0)) NADIR_PQ,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '01',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) ACME_CATKWH_AMT, ---20110808加上调尾
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '02',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) PEAK_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '03',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) FLAT_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '04',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) VALLEY_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '05',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) NADIR_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '01', B.KWH_AMT, 0)), 0) ACME_KWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '02', B.KWH_AMT, 0)), 0) PEAK_KWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '03', B.KWH_AMT, 0)), 0) FLAT_KWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '04', B.KWH_AMT, 0)), 0) VALLEY_KWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '05', B.KWH_AMT, 0)), 0) NADIR_KWH_AMT,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '01', B.CAT_KWH_PRC, 0)), 0) ACME_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '02', B.CAT_KWH_PRC, 0)), 0) PEAK_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '03', B.CAT_KWH_PRC, 0)), 0) FLAT_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '04', B.CAT_KWH_PRC, 0)), 0) VALLEY_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '05', B.CAT_KWH_PRC, 0)), 0) NADIR_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '01', B.KWH_PRC, 0)), 0) ACME_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '02', B.KWH_PRC, 0)), 0) PEAK_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '03', B.KWH_PRC, 0)), 0) FLAT_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '04', B.KWH_PRC, 0)), 0) VALLEY_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '05', B.KWH_PRC, 0)), 0) NADIR_KWH_PRC,
                 0 PEAKADD_PA,
                 0 VALLEYSUB_PA,
                 B.ORG_NO
                  FROM SY_SG_ARC_E_KWH_AMT B
                 WHERE B.YM = V_YM
                   AND ORG_NO LIKE TSS.ORG_NO || '%'
                 GROUP BY B.PRC_AMT_ID, B.YM, B.ORG_NO) E,
               (SELECT PRC_AMT_ID,
                       NVL(SUM(DECODE(BA_TYPE_CODE, '1', BA_VALUE, 0)), 0) BILL_CAP,
                       NVL(SUM(DECODE(BA_TYPE_CODE, '1', BA, 0)), 0) CAP_PA,
                       NVL(SUM(DECODE(BA_TYPE_CODE, '2', BA_VALUE, 0)), 0) BILL_DMD,
                       NVL(SUM(DECODE(BA_TYPE_CODE, '2', BA, 0)), 0) DMD_PA
                  FROM SY_SG_ARC_E_BASE_AMT
                 WHERE ORG_NO LIKE TSS.ORG_NO || '%'
                   AND YM = V_YM
                 GROUP BY PRC_AMT_ID) F,
               (SELECT \*+PARALLEL(A,8) PARALLEL(B,8)*\
                 PRC_AMT_ID,
                 SUM(ADJ_AMT) ADJ_AMT,
                 SUM(ADJ_FACTOR) ADJ_FACTOR,
                 SUM(DECODE(SIGN(PF_ADJ_AMT), 1, PF_ADJ_AMT, 0)) PF_AMT_ADD,
                 SUM(DECODE(SIGN(PF_ADJ_AMT), -1, PF_ADJ_AMT, 0)) PF_AMT_SUB
                  FROM SY_SG_ARC_E_PF_AMT
                 WHERE YM = V_YM
                   AND ORG_NO LIKE TSS.ORG_NO || '%'
                 GROUP BY PRC_AMT_ID) G,
               (SELECT PRC_AMT_ID,
                       NVL(SUM(CASE
                                 WHEN INSTR(V_PL_CODE(1), '/' || PL_CODE || '/') > 0 THEN
                                  PL_AMT
                                 ELSE
                                  0
                               END),
                           0) PL_AMT01,
                       NVL(SUM(CASE
                                 WHEN INSTR(V_PL_CODE(2), '/' || PL_CODE || '/') > 0 THEN
                                  PL_AMT
                                 ELSE
                                  0
                               END),
                           0) PL_AMT02,
                       NVL(SUM(CASE
                                 WHEN INSTR(V_PL_CODE(3), '/' || PL_CODE || '/') > 0 THEN
                                  PL_AMT
                                 ELSE
                                  0
                               END),
                           0) PL_AMT03,
                       NVL(SUM(CASE
                                 WHEN INSTR(V_PL_CODE(4), '/' || PL_CODE || '/') > 0 THEN
                                  PL_AMT
                                 ELSE
                                  0
                               END),
                           0) PL_AMT04,
                       NVL(SUM(CASE
                                 WHEN INSTR(V_PL_CODE(5), '/' || PL_CODE || '/') > 0 THEN
                                  PL_AMT
                                 ELSE
                                  0
                               END),
                           0) PL_AMT05,
                       NVL(SUM(CASE
                                 WHEN INSTR(V_PL_CODE(6), '/' || PL_CODE || '/') > 0 THEN
                                  PL_AMT
                                 ELSE
                                  0
                               END),
                           0) PL_AMT06,
                       NVL(SUM(CASE
                                 WHEN INSTR(V_PL_CODE(7), '/' || PL_CODE || '/') > 0 THEN
                                  PL_AMT
                                 ELSE
                                  0
                               END),
                           0) PL_AMT07,
                       NVL(SUM(CASE
                                 WHEN INSTR(V_PL_CODE(8), '/' || PL_CODE || '/') > 0 THEN
                                  PL_AMT
                                 ELSE
                                  0
                               END),
                           0) PL_AMT08,
                       NVL(SUM(CASE
                                 WHEN INSTR(V_PL_CODE(9), '/' || PL_CODE || '/') > 0 THEN
                                  PL_AMT
                                 ELSE
                                  0
                               END),
                           0) PL_AMT09,
                       NVL(SUM(CASE
                                 WHEN INSTR(V_PL_CODE(10), '/' || PL_CODE || '/') > 0 THEN
                                  PL_AMT
                                 ELSE
                                  0
                               END),
                           0) PL_AMT10,
                       NVL(SUM(CASE
                                 WHEN INSTR(V_PL_CODE(11), '/' || PL_CODE || '/') > 0 THEN
                                  PL_AMT
                                 ELSE
                                  0
                               END),
                           0) PL_AMT11,
                       NVL(SUM(CASE
                                 WHEN INSTR(V_PL_CODE(12), '/' || PL_CODE || '/') > 0 THEN
                                  PL_AMT
                                 ELSE
                                  0
                               END),
                           0) PL_AMT12,
                       NVL(SUM(CASE
                                 WHEN INSTR(V_PL_CODE(13), '/' || PL_CODE || '/') > 0 THEN
                                  PL_AMT
                                 ELSE
                                  0
                               END),
                           0) PL_AMT13
                  FROM SY_SG_ARC_E_PL_AMT
                 WHERE ORG_NO LIKE TSS.ORG_NO || '%'
                   AND YM = V_YM
                 GROUP BY PRC_AMT_ID) H
         WHERE A.CALC_ID = B.CALC_ID
           AND B.PRC_SNAP_ID = C.PRC_SNAP_ID
           AND B.PRC_TACTIC_SNAP_ID = D.PRC_TACTIC_SNAP_ID(+) --山东存在有电费但无电价策略快照的情况
           AND B.CALC_ID = D.CALC_ID(+)
           AND C.PRC_AMT_ID = E.PRC_AMT_ID(+)
           AND C.PRC_AMT_ID = F.PRC_AMT_ID(+)
           AND C.PRC_AMT_ID = G.PRC_AMT_ID(+)
           AND C.PRC_AMT_ID = H.PRC_AMT_ID(+)
           AND A.CONS_SORT_CODE >= '02'
           AND A.YM = V_YM
           AND B.YM = V_YM
           AND C.YM = V_YM
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.ORG_NO = B.ORG_NO
           AND A.ORG_NO = C.ORG_NO
        \* AND A.CALC_ID =  I.CALC_ID(+)
        AND B.PRC_ID = I.PRC_ID(+)
        AND D.PRC_TACTIC_SNAP_ID = I.PRC_TACTIC_SNAP_ID(+)
        AND D.RELA_APP_NO = I.RELA_APP_NO(+)
        AND D.SP_ID = I.SP_ID(+) *\
         GROUP BY A.ORG_NO,
                  --'01' PS_BUSI_AREA_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             C.ELEC_TYPE_CODE),
                  C.PRC_CODE,
                  C.PARA_VN,
                  A.MR_SECT_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             A.CONS_SORT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                             C.TRADE_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             A.HEC_TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG),
                  PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02');
    
      COMMIT;
    
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_LOW_PRC_AMT  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_LOW_PRC_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;*/

  /*PROCEDURE P_ETL_DW_E_LOW_PRC_AMT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_LOW_PRC_AMT', I_DATA);
  
    DELETE FROM SY_OM_DW_E_LOW_PRC_AMT A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_LOW_PRC_AMT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       AMT_YM,
       ELEC_TYPE_CODE,
       PRC_CODE,
       PRC_PARA_VN,
       MR_SECT_NO,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       EXEC_PV_FLAG,
       TWO_PRC_FLAG,
       PF_EVAL_MODE,
       LADDER_TYPE,
       SPQ,
       SPA,
       ACME_PQ,
       PEAK_PQ,
       FLAT_PQ,
       VALLEY_PQ,
       NADIR_PQ,
       FIRST_LADDER_PQ,
       SECOND_LADDER_PQ,
       THIRD_LADDER_PQ,
       ACME_KWH_PA,
       PEAK_KWH_PA,
       FLAT_KWH_PA,
       VALLEY_KWH_PA,
       NADIR_KWH_PA,
       BILL_CAP,
       BILL_DMD,
       CAP_PA,
       DMD_PA,
       PEAKADD_PA,
       VALLEYSUB_PA,
       PF_PA_I,
       PF_PA_D,
       FIRST_LADDER_AMT,
       SECOND_LADDER_AMT,
       THIRD_LADDER_AMT,
       PL_AMT11,
       PL_AMT08,
       PL_AMT01,
       PL_AMT02,
       PL_AMT03,
       PL_AMT04,
       PL_AMT05,
       PL_AMT06,
       PL_AMT07,
       PL_AMT09,
       PL_AMT12,
       PL_AMT13,
       PL_AMT10,
       H_AND_L_PA,
       TIME_STAMP)
      SELECT \*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*\
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       AMT_YM,
       ELEC_TYPE_CODE,
       PRC_CODE,
       PRC_PARA_VN,
       MR_SECT_NO,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       EXEC_PV_FLAG,
       TWO_PRC_FLAG,
       PF_EVAL_MODE,
       LADDER_TYPE,
       SPQ,
       SPA,
       ACME_PQ,
       PEAK_PQ,
       FLAT_PQ,
       VALLEY_PQ,
       NADIR_PQ,
       FIRST_LADDER_PQ,
       SECOND_LADDER_PQ,
       THIRD_LADDER_PQ,
       ACME_KWH_PA,
       PEAK_KWH_PA,
       FLAT_KWH_PA,
       VALLEY_KWH_PA,
       NADIR_KWH_PA,
       BILL_CAP,
       BILL_DMD,
       CAP_PA,
       DMD_PA,
       PEAKADD_PA,
       VALLEYSUB_PA,
       PF_PA_I,
       PF_PA_D,
       FIRST_LADDER_AMT,
       SECOND_LADDER_AMT,
       THIRD_LADDER_AMT,
       PL_AMT11,
       PL_AMT08,
       PL_AMT01,
       PL_AMT02,
       PL_AMT03,
       PL_AMT04,
       PL_AMT05,
       PL_AMT06,
       PL_AMT07,
       PL_AMT09,
       PL_AMT12,
       PL_AMT13,
       PL_AMT10,
       H_AND_L_PA,
       TIME_STAMP
        FROM DW_E_LOW_PRC_AMT A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.AMT_YM = V_TIME
         AND TO_CHAR(LAST_DAY(TO_DATE(V_TIME,'YYYYMM')),'YYYYMMDD') BETWEEN B.BGN_YMD AND NVL(B.END_YMD,'99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_LOW_PRC_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_LOW_PRC_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;*/

  PROCEDURE P_ENT_DW_E_PQPA_ERR_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_PQPA_ERR_DET', I_DATA);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_PQPA_ERR_DET(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_PQPA_ERR_DET(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_PQPA_ERR_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_PQPA_ERR_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /*
  PROCEDURE P_INS_DW_E_PQPA_ERR_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_PQPA_ERR_DET', I_DATA);
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      DELETE FROM DW_E_PQPA_ERR_DET A
       WHERE A.AMT_YM = V_YM
         AND A.ORG_NO LIKE TSS.ORG_NO || '%';
    
      INSERT INTO DW_E_PQPA_ERR_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         AMT_YM,
         CONS_NO,
         CONS_NAME,
         RS_DATE,
         MR_SECT_NO,
         ELEC_TYPE_CODE,
         READER_NO,
         CALC_EMP_NO,
         APP_NO,
         CALC_ID,
         SORT_CODE,
         ORGN_PRC_CODE,
         ORGN_PRC_VN,
         RS_PRC_CODE,
         RS_PRC_VN,
         ERR_PQ,
         ERR_PA,
         TIME_STAMP)
        SELECT
        /*+PARALLEL(A 4) PARALLEL(B 4) PARALLEL(C 4) */
  /*PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         A.YM,
         A.CONS_NO,
         A.CONS_NAME,
         B.RS_DATE,
         A.MR_SECT_NO,
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', A.ELEC_TYPE_CODE),
         E.READ_NO,
         E.CALC_NO,
         A.APP_CODE,
         A.CALC_ID,
         PKG_GK_PUBLIC.F_TRANS_CODE('WORK_MISTAKE_TYPE', D.TYPE_CODE),
         B.ORGN_PRC_CODE,
         B.ORGN_PRC_VN,
         C.PRC_CODE,
         C.RS_PARA_VN,
         SUM(NVL(C.T_SETTLE_PQ, 0)),
         SUM(NVL(T_AMT, 0)),
         SYSDATE
          FROM SY_SG_ARC_E_CONS_SNAP A,
               SY_SG_E_RS_PRC_AMT C,
               (SELECT MR_SECT_NO,
                       MAX(DECODE(ACT_CODE, '03', OPERATOR_NO)) READ_NO,
                       MAX(DECODE(ACT_CODE, '08', OPERATOR_NO)) CALC_NO
                  FROM SY_SG_R_OPER_ACTIVITY
                 WHERE EFFECT_FLAG = '1'
                 GROUP BY MR_SECT_NO) E,
               SY_SG_E_RS_SORT_RELA D,
               SY_SG_E_RS_LOG B
         WHERE A.CONS_ID = B.CONS_ID
              --统计时将正常的用电检查工作工单排除,用电检查类发起的退补一般退补分类都是空的。
           AND D.TYPE_CODE IS NOT NULL
           AND D.RS_TYPE = '1'
           AND B.RS_ID = C.RS_ID
           AND B.RS_ID = D.RS_ID
           AND A.MR_SECT_NO = E.MR_SECT_NO
           AND A.YM = V_YM
           AND B.MERGE_MON = V_YM
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY A.ORG_NO,
                  A.YM,
                  A.CALC_ID,
                  A.MR_SECT_NO,
                  C.RS_PARA_VN,
                  C.PRC_CODE,
                  B.ORGN_PRC_VN,
                  A.APP_CODE,
                  B.ORGN_PRC_CODE,
                  A.CONS_NO,
                  A.CONS_NAME,
                  B.RS_DATE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             A.ELEC_TYPE_CODE),
                  E.READ_NO,
                  E.CALC_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('WORK_MISTAKE_TYPE',
                                             D.TYPE_CODE);
    
      COMMIT;
    
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_PQPA_ERR_DET  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_PQPA_ERR_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  */

  PROCEDURE P_INS_DW_E_PQPA_ERR_DET(I_DATA VARCHAR2,
                                    
                                    OUT_CODE OUT NUMBER,
                                    
                                    OUT_MSG OUT VARCHAR2) IS
  
    --日志ID
  
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
  
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
  
    --记录开始日志
  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_PQPA_ERR_DET', I_DATA);
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       
                                       1,
                                       
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                
                  FROM SY_SG_O_ORG
                
                 WHERE ORG_NO <> '00000'
                      
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      DELETE FROM DW_E_PQPA_ERR_DET A
      
       WHERE A.AMT_YM = V_YM
            
         AND A.ORG_NO LIKE TSS.ORG_NO || '%';
    
      INSERT INTO DW_E_PQPA_ERR_DET
      
        (DATA_ID,
         
         PRO_ORG_NO,
         
         ORG_NO,
         
         AMT_YM,
         
         CONS_NO,
         
         CONS_NAME,
         
         RS_DATE,
         
         MR_SECT_NO,
         
         ELEC_TYPE_CODE,
         
         READER_NO,
         
         CALC_EMP_NO,
         
         APP_NO,
         
         CALC_ID,
         
         SORT_CODE,
         
         ORGN_PRC_CODE,
         
         ORGN_PRC_VN,
         
         RS_PRC_CODE,
         
         RS_PRC_VN,
         
         ERR_PQ,
         
         ERR_PA,
         
         TIME_STAMP)
      
        SELECT
        
        /*+PARALLEL(A 4) PARALLEL(B 4) PARALLEL(C 4) */
        
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         
         V_PRO_ORG_NO,
         
         A.ORG_NO,
         
         A.YM,
         
         A.CONS_NO,
         
         A.CONS_NAME,
         
         B.RS_DATE,
         
         A.MR_SECT_NO,
         
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', A.ELEC_TYPE_CODE),
         
         E.READ_NO,
         
         E.CALC_NO,
         
         A.APP_CODE,
         
         A.CALC_ID,
         
         PKG_GK_PUBLIC.F_TRANS_CODE('WORK_MISTAKE_TYPE', D.TYPE_CODE),
         
         B.ORGN_PRC_CODE,
         
         B.ORGN_PRC_VN,
         
         C.PRC_CODE,
         
         C.RS_PARA_VN,
         
         SUM(NVL(C.T_SETTLE_PQ, 0)),
         
         SUM(NVL(T_AMT, 0)),
         
         SYSDATE
        
          FROM SY_SG_ARC_E_CONS_SNAP A,
               
               SY_SG_E_RS_PRC_AMT C,
               
               (SELECT MR_SECT_NO,
                       
                       MAX(DECODE(ACT_CODE, '03', OPERATOR_NO)) READ_NO,
                       
                       MAX(DECODE(ACT_CODE, '08', OPERATOR_NO)) CALC_NO
                
                  FROM SY_SG_R_OPER_ACTIVITY
                
                 GROUP BY MR_SECT_NO) E,
               
               SY_SG_E_RS_SORT_RELA D,
               
               SY_SG_E_RS_LOG B
        
         WHERE A.CONS_ID = B.CONS_ID
              
              --统计时将正常的用电检查工作工单排除,用电检查类发起的退补一般退补分类都是空的。
              
           AND D.TYPE_CODE IS NOT NULL
              
           AND D.RS_TYPE = '1'
              
           AND B.RS_ID = C.RS_ID
              
           AND B.RS_ID = D.RS_ID
              
           AND A.CALC_ID = C.CALC_ID
              
           AND A.MR_SECT_NO = E.MR_SECT_NO
              
           AND A.YM = V_YM
              
           AND B.MERGE_MON = V_YM
              
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
              
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
              
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
        
         GROUP BY A.ORG_NO,
                  
                  A.YM,
                  
                  A.CALC_ID,
                  
                  A.MR_SECT_NO,
                  
                  C.RS_PARA_VN,
                  
                  C.PRC_CODE,
                  
                  B.ORGN_PRC_VN,
                  
                  A.APP_CODE,
                  
                  B.ORGN_PRC_CODE,
                  
                  A.CONS_NO,
                  
                  A.CONS_NAME,
                  
                  B.RS_DATE,
                  
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             
                                             A.ELEC_TYPE_CODE),
                  
                  E.READ_NO,
                  
                  E.CALC_NO,
                  
                  PKG_GK_PUBLIC.F_TRANS_CODE('WORK_MISTAKE_TYPE',
                                             
                                             D.TYPE_CODE);
    
      COMMIT;
    
    END LOOP;
  
    OUT_CODE := 1;
  
    OUT_MSG := '执行 P_INS_DW_E_PQPA_ERR_DET  成功';
  
    --记录正常结束日志
  
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  
  EXCEPTION
  
    WHEN OTHERS THEN
    
      --OUT_CODE为0代表运行失败,回滚事务
    
      OUT_CODE := 0;
    
      OUT_MSG := '执行 P_INS_DW_E_PQPA_ERR_DET  出现异常' || ',异常信息为：' ||
                
                 SQLCODE || ',' || SQLERRM;
    
      ROLLBACK;
    
      --记录异常结束日志
    
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_E_PQPA_ERR_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_PQPA_ERR_DET', I_DATA);
  
    DELETE FROM SY_OM_DW_E_PQPA_ERR_DET A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_PQPA_ERR_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       AMT_YM,
       CONS_NO,
       CONS_NAME,
       RS_DATE,
       MR_SECT_NO,
       ELEC_TYPE_CODE,
       READER_NO,
       CALC_EMP_NO,
       APP_NO,
       CALC_ID,
       SORT_CODE,
       ORGN_PRC_CODE,
       ORGN_PRC_VN,
       RS_PRC_CODE,
       RS_PRC_VN,
       ERR_PQ,
       ERR_PA,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             AMT_YM,
             CONS_NO,
             CONS_NAME,
             RS_DATE,
             MR_SECT_NO,
             ELEC_TYPE_CODE,
             READER_NO,
             CALC_EMP_NO,
             APP_NO,
             CALC_ID,
             SORT_CODE,
             ORGN_PRC_CODE,
             ORGN_PRC_VN,
             RS_PRC_CODE,
             RS_PRC_VN,
             ERR_PQ,
             ERR_PA,
             TIME_STAMP
        FROM DW_E_PQPA_ERR_DET A
       WHERE A.AMT_YM = V_TIME;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_PQPA_ERR_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_PQPA_ERR_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_PAPQ_ERR(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_TIME     VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_PAPQ_ERR', V_TIME);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_PAPQ_ERR(V_TIME, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_PAPQ_ERR(V_TIME, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_E_PAPQ_ERR A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_TIME, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.AMT_YM = V_TIME;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_PAPQ_ERR  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_PAPQ_ERR  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /*
  PROCEDURE P_INS_DW_E_PAPQ_ERR(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_PAPQ_ERR', I_DATA);
  
    DELETE FROM DW_E_PAPQ_ERR A WHERE A.AMT_YM = V_YM;
    /*
      FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                         1,
                                         DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                    FROM SY_SG_O_ORG
                   WHERE ORG_NO <> '00000'
                     AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    */
  /* INSERT INTO DW_E_PAPQ_ERR
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         AMT_YM,
         MR_SECT_NO,
         ELEC_TYPE_CODE,
         TRADE_CODE,
         VOLT_CODE,
         READER_NO,
         --CALC_EMP_NO,
         SORT_CODE,
         ERR_CC,
         ERR_PQ,
         ERR_PA,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               A.ORG_NO,
               '',
               C.YM,
               D.MR_SECT_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', D.ELEC_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                          C.TRADE_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', D.VOLT_CODE),
               E.READ_NO,
               --E.CALC_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('WORK_MISTAKE_TYPE', F.TYPE_CODE),
               COUNT(A.CONS_ID),
               SUM(NVL(G.T_SETTLE_PQ, 0)),
               SUM(NVL(G.T_AMT, 0)),
               SYSDATE
          FROM SY_SG_E_RS_LOG A,
               SY_SG_R_SECT B,
               SY_SG_ARC_E_CONS_PRC_AMT C,
               SY_SG_ARC_E_CONS_SNAP D,
               (SELECT MR_SECT_NO,
                       MAX(DECODE(ACT_CODE, '03', OPERATOR_NO)) READ_NO,
                       MAX(DECODE(ACT_CODE, '08', OPERATOR_NO)) CALC_NO
                  FROM SY_SG_R_OPER_ACTIVITY
                 WHERE EFFECT_FLAG = '1'
                 GROUP BY MR_SECT_NO) E,
               SY_SG_E_RS_SORT_RELA F,
               SY_SG_E_RS_PRC_AMT G
         WHERE A.CONS_ID = D.CONS_ID
              --统计时将正常的用电检查工作工单排除,用电检查类发起的退补一般退补分类都是空的。
           AND F.TYPE_CODE IS NOT NULL
           AND F.RS_TYPE = '1'
           AND C.CALC_ID = D.CALC_ID
           AND A.RS_ID = F.RS_ID
           AND A.RS_ID = G.RS_ID
           AND B.MR_SECT_NO = D.MR_SECT_NO
           AND B.MR_SECT_NO = E.MR_SECT_NO
           AND C.CALC_ID = D.CALC_ID
           AND A.ORG_NO = B.ORG_NO
           AND A.ORG_NO = C.ORG_NO
           AND A.ORG_NO = D.ORG_NO
           AND A.MERGE_MON = V_YM
           AND C.YM = V_YM
           AND D.YM = V_YM
         GROUP BY A.ORG_NO,
                  C.YM,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             D.ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                             C.TRADE_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', D.VOLT_CODE),
                  E.READ_NO,
                  --E.CALC_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('WORK_MISTAKE_TYPE', F.TYPE_CODE),
                  D.MR_SECT_NO;
    
      --END LOOP;
    
      OUT_CODE := 1;
      OUT_MSG  := '执行 P_INS_DW_E_PAPQ_ERR  成功';
      COMMIT;
    
      --记录正常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
      --异常处理
    EXCEPTION
      WHEN OTHERS THEN
        --OUT_CODE为0代表运行失败,回滚事务
        OUT_CODE := 0;
        OUT_MSG  := '执行 P_INS_DW_E_PAPQ_ERR  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                    SQLERRM;
        ROLLBACK;
        --记录异常结束日志
        PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    END;
  */

  PROCEDURE P_INS_DW_E_PAPQ_ERR(I_DATA VARCHAR2,
                                
                                OUT_CODE OUT NUMBER,
                                
                                OUT_MSG OUT VARCHAR2) IS
  
    --日志ID
  
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
  
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
  
    --记录开始日志
  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_PAPQ_ERR', I_DATA);
  
    DELETE FROM DW_E_PAPQ_ERR A WHERE A.AMT_YM = V_YM;
  
    INSERT INTO DW_E_PAPQ_ERR
    
      (DATA_ID,
       
       PRO_ORG_NO,
       
       ORG_NO,
       
       PS_BUSI_AREA_CODE,
       
       AMT_YM,
       
       MR_SECT_NO,
       
       ELEC_TYPE_CODE,
       
       TRADE_CODE,
       
       VOLT_CODE,
       
       READER_NO,
       
       --CALC_EMP_NO,
       
       SORT_CODE,
       
       ERR_CC,
       
       ERR_PQ,
       
       ERR_PA,
       
       TIME_STAMP)
    
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             
             V_PRO_ORG_NO,
             
             A.ORG_NO,
             
             '',
             
             C.YM,
             
             A.MR_SECT_NO,
             
             PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', A.ELEC_TYPE_CODE),
             
             PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                        
                                        C.TRADE_TYPE_CODE),
             
             PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE),
             
             E.READ_NO,
             
             --E.CALC_NO,
             
             PKG_GK_PUBLIC.F_TRANS_CODE('WORK_MISTAKE_TYPE', D.TYPE_CODE),
             
             COUNT(A.CONS_ID),
             
             SUM(NVL(C.T_SETTLE_PQ, 0)),
             
             SUM(NVL(C.T_AMT, 0)),
             
             SYSDATE
      
        FROM SY_SG_ARC_E_CONS_SNAP A,
             
             SY_SG_E_RS_PRC_AMT C,
             
             (SELECT MR_SECT_NO,
                     
                     MAX(DECODE(ACT_CODE, '03', OPERATOR_NO)) READ_NO,
                     
                     MAX(DECODE(ACT_CODE, '08', OPERATOR_NO)) CALC_NO
              
                FROM SY_SG_R_OPER_ACTIVITY
              
               GROUP BY MR_SECT_NO) E,
             
             SY_SG_E_RS_SORT_RELA D,
             
             SY_SG_E_RS_LOG B
      
       WHERE A.CONS_ID = B.CONS_ID
            
            --统计时将正常的用电检查工作工单排除,用电检查类发起的退补一般退补分类都是空的。
            
         AND D.TYPE_CODE IS NOT NULL
            
         AND D.RS_TYPE = '1'
            
         AND B.RS_ID = C.RS_ID
            
         AND B.RS_ID = D.RS_ID
            
         AND A.CALC_ID = C.CALC_ID
            
         AND A.MR_SECT_NO = E.MR_SECT_NO
            
         AND A.YM = V_YM
            
         AND B.MERGE_MON = V_YM
      
       GROUP BY A.ORG_NO,
                
                C.YM,
                
                PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                           
                                           A.ELEC_TYPE_CODE),
                
                PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                           
                                           C.TRADE_TYPE_CODE),
                
                PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE),
                
                E.READ_NO,
                
                --E.CALC_NO,
                
                PKG_GK_PUBLIC.F_TRANS_CODE('WORK_MISTAKE_TYPE', D.TYPE_CODE),
                
                A.MR_SECT_NO;
  
    OUT_CODE := 1;
  
    OUT_MSG := '执行 P_INS_DW_E_PAPQ_ERR  成功';
  
    COMMIT;
  
    --记录正常结束日志
  
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  
  EXCEPTION
  
    WHEN OTHERS THEN
    
      --OUT_CODE为0代表运行失败,回滚事务
    
      OUT_CODE := 0;
    
      OUT_MSG := '执行 P_INS_DW_E_PAPQ_ERR  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                
                 SQLERRM;
    
      ROLLBACK;
    
      --记录异常结束日志
    
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_E_PAPQ_ERR(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_PAPQ_ERR', I_DATA);
  
    DELETE FROM SY_OM_DW_E_PAPQ_ERR A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_PAPQ_ERR
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       AMT_YM,
       MR_SECT_NO,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       VOLT_CODE,
       READER_NO,
       --CALC_EMP_NO,
       SORT_CODE,
       ERR_CC,
       ERR_PQ,
       ERR_PA,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       AMT_YM,
       MR_SECT_NO,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       VOLT_CODE,
       READER_NO,
       --CALC_EMP_NO,
       SORT_CODE,
       ERR_CC,
       ERR_PQ,
       ERR_PA,
       TIME_STAMP
        FROM DW_E_PAPQ_ERR A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.AMT_YM = V_TIME
         AND TO_CHAR(LAST_DAY(TO_DATE(V_TIME, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_PAPQ_ERR  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_PAPQ_ERR  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_DIFF_PAPQ_DET(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_DIFF_PAPQ_DET', I_DATA);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_DIFF_PAPQ_DET(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_DIFF_PAPQ_DET(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_DIFF_PAPQ_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_DIFF_PAPQ_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_DIFF_PAPQ_DET(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
    V_NUM NUMBER;
  
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    V_DIFF_PRC_CODE VARCHAR2(4000);
    V_STEP_AMT_CODE VARCHAR2(2);
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_DIFF_PAPQ_DET', I_DATA);
  
    FOR I IN 1 .. 13 LOOP
      SELECT NVL(MAX(CONT1), 'NODATA'), NVL(MAX(CONT2), '0') --content2='1'的为特殊代征
        INTO V_PL_CODE(I), V_NUM
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'PrtPlItem'
         AND LPAD(TRANS_VALUE, 2, '0') = LPAD(I, 2, '0'); --TRANS_VALUE存放的就是SGPM_OUT.ARC_E_PL_AMT的PL_AMT__字段的序号
      IF V_NUM = '1' THEN
        V_SP_PL_CODE := V_SP_PL_CODE || V_PL_CODE(I);
      END IF;
    END LOOP;
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --尖峰电量年月计算标识
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    SELECT CONT1
      INTO V_DIFF_PRC_CODE
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'difPrcCode';
  
    SELECT CONT1
      INTO V_STEP_AMT_CODE
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'stepAmtCode';
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      DELETE FROM DW_E_DIFF_PAPQ_DET A
       WHERE A.AMT_YM = V_YM
         AND A.ORG_NO LIKE TSS.ORG_NO || '%';
    
      INSERT INTO DW_E_DIFF_PAPQ_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         AMT_YM,
         CONS_ID,
         CONS_NO,
         ELEC_TYPE_CODE,
         PRC_CODE,
         MR_SECT_NO,
         CONS_SORT_CODE,
         TRADE_CODE,
         VOLT_CODE,
         HEC_TRADE_CODE,
         EXEC_PV_FLAG,
         TWO_PRC_FLAG,
         PF_EVAL_MODE,
         LADDER_TYPE,
         SPQ,
         SPA,
         ACME_PQ,
         PEAK_PQ,
         FLAT_PQ,
         VALLEY_PQ,
         NADIR_PQ,
         FIRST_LADDER_PQ,
         SECOND_LADDER_PQ,
         THIRD_LADDER_PQ,
         ACME_KWH_PA,
         PEAK_KWH_PA,
         FLAT_KWH_PA,
         VALLEY_KWH_PA,
         NADIR_KWH_PA,
         BILL_CAP,
         BILL_DMD,
         CAP_PA,
         DMD_PA,
         PEAKADD_PA,
         VALLEYSUB_PA,
         PF_PA_I,
         PF_PA_D,
         FIRST_LADDER_AMT,
         SECOND_LADDER_AMT,
         THIRD_LADDER_AMT,
         H_AND_L_PA,
         TIME_STAMP)
        SELECT /*+PARALLEL(A 4) PARALLEL(B 4) PARALLEL(C 4) */
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         V_YM AMT_YM,
         A.CONS_ID,
         A.CONS_NO,
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', C.ELEC_TYPE_CODE),
         C.PRC_CODE,
         A.MR_SECT_NO,
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_TYPE_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', A.HEC_TRADE_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG) EXEC_PV_FLAG,
         PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
         PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02') LADDER_TYPE, --各单位自行确定
         SUM(C.T_SETTLE_PQ) SPQ,
         SUM(C.T_AMT) SPA,
         SUM(ACME_PQ),
         SUM(PEAK_PQ),
         SUM(FLAT_PQ),
         SUM(VALLEY_PQ),
         SUM(NADIR_PQ),
         SUM(NVL(T_SETTLE_PQ, 0)) FIRST_LADDER_PQ,
         SUM(DECODE(C.LEVEL_NUM,
                    '2',
                    DECODE(V_JTCFLX,
                           '1',
                           NVL(T_SETTLE_PQ, 0),
                           NVL(LEVEL_INC_PQ, 0)),
                    0)) SECOND_LADDER_PQ,
         SUM(DECODE(C.LEVEL_NUM,
                    '3',
                    DECODE(V_JTCFLX,
                           '1',
                           NVL(T_SETTLE_PQ, 0),
                           NVL(LEVEL_INC_PQ, 0)),
                    0)) THIRD_LADDER_PQ,
         SUM(ACME_KWH_AMT),
         SUM(PEAK_KWH_AMT),
         SUM(FLAT_KWH_AMT),
         SUM(VALLEY_KWH_AMT),
         SUM(NADIR_KWH_AMT),
         SUM(BILL_CAP),
         SUM(BILL_DMD),
         SUM(CAP_PA),
         SUM(DMD_PA),
         SUM(ROUND((NVL(ACME_CATKWH_PRC, 0) -
                   DECODE(NVL(FLAT_CATKWH_PRC, 0),
                           0,
                           (SELECT NVL(MAX(CAT_KWH_PRC), 0)
                              FROM SY_SG_E_CAT_PRC AA, SY_SG_E_CAT_PRC_DET BB
                             WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                               AND AA.PRC_CODE = C.PRC_CODE
                               AND AA.PARA_VN = C.PARA_VN
                               AND BB.PRC_TI_CODE = '03'),
                           FLAT_CATKWH_PRC)) * NVL(ACME_PQ, 0),
                   2) +
             ROUND((NVL(PEAK_CATKWH_PRC, 0) -
                   DECODE(NVL(FLAT_CATKWH_PRC, 0),
                           0,
                           (SELECT NVL(MAX(CAT_KWH_PRC), 0)
                              FROM SY_SG_E_CAT_PRC AA, SY_SG_E_CAT_PRC_DET BB
                             WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                               AND AA.PRC_CODE = C.PRC_CODE
                               AND AA.PARA_VN = C.PARA_VN
                               AND BB.PRC_TI_CODE = '03'),
                           FLAT_CATKWH_PRC)) * NVL(PEAK_PQ, 0),
                   2)) PEAKADD_PA, --峰增加
         SUM(ROUND((DECODE(NVL(FLAT_CATKWH_PRC, 0),
                           0,
                           (SELECT NVL(MAX(CAT_KWH_PRC), 0)
                              FROM SY_SG_E_CAT_PRC AA, SY_SG_E_CAT_PRC_DET BB
                             WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                               AND AA.PRC_CODE = C.PRC_CODE
                               AND AA.PARA_VN = C.PARA_VN
                               AND BB.PRC_TI_CODE = '03'),
                           FLAT_CATKWH_PRC) - NVL(VALLEY_CATKWH_PRC, 0)) *
                   NVL(VALLEY_PQ, 0),
                   2) +
             ROUND((DECODE(NVL(FLAT_CATKWH_PRC, 0),
                           0,
                           (SELECT NVL(MAX(CAT_KWH_PRC), 0)
                              FROM SY_SG_E_CAT_PRC AA, SY_SG_E_CAT_PRC_DET BB
                             WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                               AND AA.PRC_CODE = C.PRC_CODE
                               AND AA.PARA_VN = C.PARA_VN
                               AND BB.PRC_TI_CODE = '03'),
                           FLAT_CATKWH_PRC) - NVL(NADIR_CATKWH_PRC, 0)) *
                   NVL(NADIR_PQ, 0),
                   2)) VALLEYSUB_PA, --谷减少
         SUM(PF_AMT_ADD),
         SUM(PF_AMT_SUB),
         --电费获取按照网省数据为分档法存放,第二档,第三档电价重新计算后与对应档位的电量相乘,递增法的网省需要再反馈测试
         DECODE(V_JTCFLX,
                '1',
                SUM(NVL(T_SETTLE_PQ, 0) *
                    (SELECT MAX(AA.CAT_KWH_PRC)
                       FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                      WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                        AND BB.PARA_VN = C.PARA_VN
                        AND BB.PRC_CODE = C.PRC_CODE
                        AND AA.RANGE_TYPE_CODE = '31')),
                SUM(DECODE(C.LEVEL_NUM, '1', NVL(T_AMT, 0), 0))) FIRST_LADDER_AMT, --31
         DECODE(V_JTCFLX,
                '1',
                SUM(DECODE(C.LEVEL_NUM, 2, NVL(T_SETTLE_PQ, 0), 0) *
                    (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                       FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                      WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                        AND BB.PARA_VN = C.PARA_VN
                        AND BB.PRC_CODE = C.PRC_CODE
                        AND AA.RANGE_TYPE_CODE IN ('31', '32'))),
                SUM(DECODE(C.LEVEL_NUM, '2', NVL(T_AMT, 0), 0))) SECOND_LADDER_AMT, --32-31
         DECODE(V_JTCFLX,
                '1',
                SUM(DECODE(C.LEVEL_NUM, 3, NVL(T_SETTLE_PQ, 0), 0) *
                    (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                       FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                      WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                        AND BB.PARA_VN = C.PARA_VN
                        AND BB.PRC_CODE = C.PRC_CODE
                        AND AA.RANGE_TYPE_CODE IN ('31', '33'))),
                SUM(DECODE(C.LEVEL_NUM, '3', NVL(T_AMT, 0), 0))) THIRD_LADDER_AMT, --33-32-31
         0 H_AND_L_PA, --丰枯电费
         SYSDATE TIME_STAMP
          FROM SY_SG_ARC_E_CONS_SNAP A,
               SY_SG_ARC_E_CONSPRC_SNAP B,
               SY_SG_ARC_E_CONS_PRC_AMT C,
               (SELECT PRC_TACTIC_SNAP_ID,
                       CALC_ID,
                       TACTIC_ID,
                       YM,
                       ORG_NO,
                       SP_ID,
                       TYPE_CODE,
                       BA_CALC_MODE,
                       DMD_SPEC_VALUE,
                       PF_EVAL_MODE,
                       DATA_SRC,
                       RELA_APP_NO,
                       CHG_DATE,
                       RUN_STATUS_CODE
                  FROM SY_SG_ARC_E_CONSPRC_TACTIC_SGA
                 WHERE YM = V_YM
                   AND ORG_NO LIKE TSS.ORG_NO || '%') D,
               (SELECT /*+ PARALLEL(B,8)*/
                 B.PRC_AMT_ID,
                 B.YM AMT_YM,
                 0 CONS_ID,
                 '0' EXEC_PV_FLAG,
                 '0' REF_TS_CODE,
                 SUM(NVL(DECODE(V_TOPPK_YM_FLAG,
                                '1',
                                DECODE(PRC_TS_CODE, '01', SETTLE_APQ, 0),
                                0),
                         0)) ACME_PQ,
                 SUM(NVL(DECODE(V_TOPPK_YM_FLAG,
                                '1',
                                DECODE(PRC_TS_CODE, '02', SETTLE_APQ, 0),
                                DECODE(PRC_TS_CODE,
                                       '01',
                                       SETTLE_APQ,
                                       '02',
                                       SETTLE_APQ,
                                       0)),
                         0)) PEAK_PQ,
                 SUM(NVL(DECODE(PRC_TS_CODE, '03', SETTLE_APQ), 0)) FLAT_PQ,
                 SUM(NVL(DECODE(PRC_TS_CODE, '04', SETTLE_APQ), 0)) VALLEY_PQ,
                 SUM(NVL(DECODE(PRC_TS_CODE, '05', SETTLE_APQ), 0)) NADIR_PQ,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '01',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) ACME_CATKWH_AMT, ---20110808加上调尾
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '02',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) PEAK_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '03',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) FLAT_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '04',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) VALLEY_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE,
                                '05',
                                NVL(B.CAT_KWH_AMT, 0) + NVL(B.FLAT_BAL, 0),
                                0)),
                     0) NADIR_CATKWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '01', B.KWH_AMT, 0)), 0) ACME_KWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '02', B.KWH_AMT, 0)), 0) PEAK_KWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '03', B.KWH_AMT, 0)), 0) FLAT_KWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '04', B.KWH_AMT, 0)), 0) VALLEY_KWH_AMT,
                 NVL(SUM(DECODE(B.PRC_TS_CODE, '05', B.KWH_AMT, 0)), 0) NADIR_KWH_AMT,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '01', B.CAT_KWH_PRC, 0)), 0) ACME_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '02', B.CAT_KWH_PRC, 0)), 0) PEAK_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '03', B.CAT_KWH_PRC, 0)), 0) FLAT_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '04', B.CAT_KWH_PRC, 0)), 0) VALLEY_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '05', B.CAT_KWH_PRC, 0)), 0) NADIR_CATKWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '01', B.KWH_PRC, 0)), 0) ACME_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '02', B.KWH_PRC, 0)), 0) PEAK_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '03', B.KWH_PRC, 0)), 0) FLAT_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '04', B.KWH_PRC, 0)), 0) VALLEY_KWH_PRC,
                 NVL(MAX(DECODE(B.PRC_TS_CODE, '05', B.KWH_PRC, 0)), 0) NADIR_KWH_PRC,
                 0 PEAKADD_PA,
                 0 VALLEYSUB_PA,
                 B.ORG_NO
                  FROM SY_SG_ARC_E_KWH_AMT B
                 WHERE B.YM = V_YM
                   AND ORG_NO LIKE TSS.ORG_NO || '%'
                 GROUP BY B.PRC_AMT_ID, B.YM, B.ORG_NO) E,
               (SELECT PRC_AMT_ID,
                       NVL(SUM(DECODE(BA_TYPE_CODE, '1', BA_VALUE, 0)), 0) BILL_CAP,
                       NVL(SUM(DECODE(BA_TYPE_CODE, '1', BA, 0)), 0) CAP_PA,
                       NVL(SUM(DECODE(BA_TYPE_CODE, '2', BA_VALUE, 0)), 0) BILL_DMD,
                       NVL(SUM(DECODE(BA_TYPE_CODE, '2', BA, 0)), 0) DMD_PA
                  FROM SY_SG_ARC_E_BASE_AMT
                 WHERE ORG_NO LIKE TSS.ORG_NO || '%'
                   AND YM = V_YM
                 GROUP BY PRC_AMT_ID) F,
               (SELECT /*+PARALLEL(A,8) PARALLEL(B,8)*/
                 PRC_AMT_ID,
                 SUM(ADJ_AMT) ADJ_AMT,
                 SUM(ADJ_FACTOR) ADJ_FACTOR,
                 SUM(DECODE(SIGN(PF_ADJ_AMT), 1, PF_ADJ_AMT, 0)) PF_AMT_ADD,
                 SUM(DECODE(SIGN(PF_ADJ_AMT), -1, PF_ADJ_AMT, 0)) PF_AMT_SUB
                  FROM SY_SG_ARC_E_PF_AMT
                 WHERE YM = V_YM
                   AND ORG_NO LIKE TSS.ORG_NO || '%'
                 GROUP BY PRC_AMT_ID) G
         WHERE A.CALC_ID = B.CALC_ID
           AND B.PRC_SNAP_ID = C.PRC_SNAP_ID
           AND B.PRC_TACTIC_SNAP_ID = D.PRC_TACTIC_SNAP_ID(+) --山东存在有电费但无电价策略快照的情况
           AND B.CALC_ID = D.CALC_ID(+)
           AND C.PRC_AMT_ID = E.PRC_AMT_ID(+)
           AND C.PRC_AMT_ID = F.PRC_AMT_ID(+)
           AND C.PRC_AMT_ID = G.PRC_AMT_ID(+)
           AND A.YM = V_YM
           AND B.YM = V_YM
           AND C.YM = V_YM
           AND INSTR(V_DIFF_PRC_CODE, C.PRC_CODE, 1) > 0
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY A.ORG_NO,
                  --'01' PS_BUSI_AREA_CODE,
                  A.CONS_ID,
                  A.CONS_NO,
                  C.PRC_CODE,
                  A.MR_SECT_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             A.CONS_SORT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                             C.TRADE_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             A.HEC_TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG),
                  PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02'),
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             C.ELEC_TYPE_CODE);
    
      COMMIT;
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_DIFF_PAPQ_DET  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_DIFF_PAPQ_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_DIFF_PAPQ_DET(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_DIFF_PAPQ_DET', I_DATA);
  
    DELETE FROM SY_OM_DW_E_DIFF_PAPQ_DET A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_DIFF_PAPQ_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       AMT_YM,
       CONS_ID,
       CONS_NO,
       ELEC_TYPE_CODE,
       PRC_CODE,
       MR_SECT_NO,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       EXEC_PV_FLAG,
       TWO_PRC_FLAG,
       PF_EVAL_MODE,
       LADDER_TYPE,
       SPQ,
       SPA,
       ACME_PQ,
       PEAK_PQ,
       FLAT_PQ,
       VALLEY_PQ,
       NADIR_PQ,
       FIRST_LADDER_PQ,
       SECOND_LADDER_PQ,
       THIRD_LADDER_PQ,
       ACME_KWH_PA,
       PEAK_KWH_PA,
       FLAT_KWH_PA,
       VALLEY_KWH_PA,
       NADIR_KWH_PA,
       BILL_CAP,
       BILL_DMD,
       CAP_PA,
       DMD_PA,
       PEAKADD_PA,
       VALLEYSUB_PA,
       PF_PA_I,
       PF_PA_D,
       FIRST_LADDER_AMT,
       SECOND_LADDER_AMT,
       THIRD_LADDER_AMT,
       PL_AMT11,
       PL_AMT08,
       PL_AMT01,
       PL_AMT02,
       PL_AMT03,
       PL_AMT04,
       PL_AMT05,
       PL_AMT06,
       PL_AMT07,
       PL_AMT09,
       PL_AMT12,
       PL_AMT13,
       PL_AMT10,
       H_AND_L_PA,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             AMT_YM,
             CONS_ID,
             CONS_NO,
             ELEC_TYPE_CODE,
             PRC_CODE,
             MR_SECT_NO,
             CONS_SORT_CODE,
             TRADE_CODE,
             VOLT_CODE,
             HEC_TRADE_CODE,
             EXEC_PV_FLAG,
             TWO_PRC_FLAG,
             PF_EVAL_MODE,
             LADDER_TYPE,
             SPQ,
             SPA,
             ACME_PQ,
             PEAK_PQ,
             FLAT_PQ,
             VALLEY_PQ,
             NADIR_PQ,
             FIRST_LADDER_PQ,
             SECOND_LADDER_PQ,
             THIRD_LADDER_PQ,
             ACME_KWH_PA,
             PEAK_KWH_PA,
             FLAT_KWH_PA,
             VALLEY_KWH_PA,
             NADIR_KWH_PA,
             BILL_CAP,
             BILL_DMD,
             CAP_PA,
             DMD_PA,
             PEAKADD_PA,
             VALLEYSUB_PA,
             PF_PA_I,
             PF_PA_D,
             FIRST_LADDER_AMT,
             SECOND_LADDER_AMT,
             THIRD_LADDER_AMT,
             PL_AMT11,
             PL_AMT08,
             PL_AMT01,
             PL_AMT02,
             PL_AMT03,
             PL_AMT04,
             PL_AMT05,
             PL_AMT06,
             PL_AMT07,
             PL_AMT09,
             PL_AMT12,
             PL_AMT13,
             PL_AMT10,
             H_AND_L_PA,
             TIME_STAMP
        FROM DW_E_DIFF_PAPQ_DET A
       WHERE A.AMT_YM = V_TIME;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_DIFF_PAPQ_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_DIFF_PAPQ_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_DMD_RE_CAP(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_DMD_RE_CAP', I_DATA);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_DMD_RE_CAP(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_DMD_RE_CAP(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_DMD_RE_CAP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_DMD_RE_CAP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_DMD_RE_CAP(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
    /*    V_DAYS NUMBER := TO_NUMBER(TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE, 'MM'), 1) - 1,
    'DD')); */
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_DMD_RE_CAP', I_DATA);
  
    DELETE FROM DW_E_DMD_RE_CAP A WHERE A.AMT_YM = V_YM;
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_E_DMD_RE_CAP
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         AMT_YM,
         STAT_YM,
         CUR_BILL_CAP,
         CUR_BILL_DMD,
         DMD_PA,
         RECKON_CAP_PA,
         TIME_STAMP)
        SELECT OMAC.PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               A.ORG_NO,
               A.YM,
               V_YM,
               SUM(BILL_CAP) CUR_BILL_CAP, --容量
               NVL(SUM(BA_VALUE), 0) CUR_BILL_DMD, --需量
               NVL(SUM(BA), 0) DMD_PA, --需量电费
               SUM(BILL_CAP * 28) RECKON_CAP_PA,
               SYSDATE
          FROM SY_SG_ARC_E_CONS_PRC_AMT A,
               SY_SG_ARC_E_BASE_AMT B,
               (SELECT C.ORG_NO,
                       C.YM,
                       C.CALC_ID,
                       ROUND(SUM(C.BA_TRANS_RUN_DAYS * C.BRAND_CAP / 30), 0) BILL_CAP
                  FROM SY_SG_ARC_E_TRAN_SNAP C
                 WHERE C.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND C.YM = V_YM
                 GROUP BY C.ORG_NO, C.YM, C.CALC_ID) D
         WHERE A.PRC_AMT_ID = B.PRC_AMT_ID
           AND A.ORG_NO = B.ORG_NO
           AND A.YM = V_YM
           AND B.YM = V_YM
           AND B.BA_TYPE_CODE = '2'
           AND A.ORG_NO = D.ORG_NO
           AND A.YM = D.YM
           AND A.CALC_ID = D.CALC_ID
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY A.ORG_NO, A.YM;
    
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_DMD_RE_CAP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_DMD_RE_CAP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_DMD_RE_CAP(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_DMD_RE_CAP', I_DATA);
  
    DELETE FROM SY_OM_DW_E_DMD_RE_CAP A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_DMD_RE_CAP
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       AMT_YM,
       STAT_YM,
       CUR_BILL_CAP,
       CUR_BILL_DMD,
       DMD_PA,
       RECKON_CAP_PA,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             AMT_YM,
             STAT_YM,
             CUR_BILL_CAP,
             CUR_BILL_DMD,
             DMD_PA,
             RECKON_CAP_PA,
             TIME_STAMP
        FROM DW_E_DMD_RE_CAP A
       WHERE A.AMT_YM = V_TIME;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_DMD_RE_CAP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_DMD_RE_CAP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_C_CONT_INFO(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_C_CONT_INFO', I_DATA);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_C_CONT_INFO(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_C_CONT_INFO(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_C_CONT_INFO  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_C_CONT_INFO  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_C_CONT_INFO(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_CONT_INFO', I_DATA);
  
    DELETE FROM DW_C_CONT_INFO A WHERE A.STAT_YM = V_YM;
  
    INSERT INTO DW_C_CONT_INFO
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       CONT_ID,
       CONS_NO,
       APP_NO,
       MR_SECT_NO,
       STAT_YM,
       CONT_NAME,
       CONT_TYPE,
       CONT_NO,
       CONT_PQ,
       CERT_NO,
       CONTACT_NAME,
       CONT_TEL,
       CONT_ADDR,
       CENTRAL,
       EFECT_DATE,
       REG_NO,
       BGN_DATE,
       END_DATE,
       CHG_DATE,
       EFFECT_FLAG,
       REMARK,
       TIME_STAMP)
      SELECT OMAC.PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             B.ORG_NO,
             A.CONT_ID,
             A.CONS_NO,
             D.APP_CODE, --app_no 申请编号
             A.MR_SECT_NO,
             V_YM,
             A.CONT_NAME,
             A.CONT_TYPE,
             A.CONT_ACC,
             A.CONT_PQ,
             A.CERT_NO,
             A.CONTACT_NAME,
             A.CONTACT_TEL,
             A.CONTACT_ADDR,
             A.CENTRAL,
             TO_CHAR(C.EFFECT_DATE, 'YYYYMMDD'), --efect_date  民政局生效时间
             A.REG_NO,
             A.BEG_YEAR,
             A.END_YEAR,
             A.DOC_DATE, --chg_date 变更时间
             C.EFFECT_FLAG, --effect_flag 生效标志
             REMARK,
             SYSDATE
        FROM SY_SG_C_CONS B,
             SY_SG_CONT_INFO A,
             SY_SG_CONT_FEE C,
             (SELECT CALC_ID, APP_CODE, CONS_NO
                FROM SY_SG_ARC_E_CONS_SNAP
               WHERE YM = V_YM) D
       WHERE A.CONS_NO = B.CONS_NO
         AND A.CONS_NO = C.CONS_NO
         AND A.CONS_NO = D.CONS_NO
         AND C.CALC_ID = D.CALC_ID
            --AND TO_CHAR(A.APPR_DATE, 'YYYYMM') = V_YM
         AND TO_CHAR(DECODE(V_PRO_ORG_NO, '12101', V_YM, A.APPR_DATE),
                     'YYYYMM') = V_YM
         AND C.YM = V_YM;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_C_CONT_INFO  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_C_CONT_INFO  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_C_CONT_INFO(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_C_CONT_INFO', I_DATA);
  
    DELETE FROM SY_OM_DW_C_CONT_INFO A WHERE A.STAT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_C_CONT_INFO
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       CONT_ID,
       CONS_NO,
       APP_NO,
       MR_SECT_NO,
       STAT_YM,
       CONT_NAME,
       CONT_TYPE,
       CONT_NO,
       CONT_PQ,
       CERT_NO,
       CONTACT_NAME,
       CONT_TEL,
       CONT_ADDR,
       CENTRAL,
       EFECT_DATE,
       REG_NO,
       BGN_DATE,
       END_DATE,
       CHG_DATE,
       EFFECT_FLAG,
       REMARK,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             CONT_ID,
             CONS_NO,
             APP_NO,
             MR_SECT_NO,
             STAT_YM,
             CONT_NAME,
             CONT_TYPE,
             CONT_NO,
             CONT_PQ,
             CERT_NO,
             CONTACT_NAME,
             CONT_TEL,
             CONT_ADDR,
             CENTRAL,
             EFECT_DATE,
             REG_NO,
             BGN_DATE,
             END_DATE,
             CHG_DATE,
             EFFECT_FLAG,
             REMARK,
             TIME_STAMP
        FROM DW_C_CONT_INFO A
       WHERE A.STAT_YM = V_TIME;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_C_CONT_INFO  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_C_CONT_INFO  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_CONT_FEE(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_CONT_FEE', I_DATA);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_E_CONT_FEE(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_CONT_FEE(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_CONT_FEE  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_CONT_FEE  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_CONT_FEE(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_CONT_FEE', I_DATA);
  
    DELETE FROM DW_E_CONT_FEE A WHERE A.AMT_YM = V_YM;
  
    INSERT INTO DW_E_CONT_FEE
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       AMT_YM,
       CONT_CALC_ID,
       PRC_AMT_ID,
       CALC_ID,
       CONS_NO,
       CONT_NUM,
       CONT_PQ,
       THIS_CONT_PQ,
       THIS_CONT_AMT,
       REMARK,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             B.ORG_NO,
             A.YM,
             A.CALC_ID,
             D.PRC_AMT_ID,
             A.CALC_ID,
             B.CONS_NO,
             COUNT(C.CONT_NAME),
             C.CONT_PQ,
             A.THIS_CONT_PQ,
             A.THIS_CONT_AMT,
             C.REMARK,
             SYSDATE
        FROM SY_SG_CONT_FEE A,
             SY_SG_C_CONS B,
             SY_SG_CONT_INFO C,
             (SELECT PRC_AMT_ID, CALC_ID
                FROM SY_SG_ARC_E_CONS_PRC_AMT
               WHERE YM = V_YM) D
       WHERE A.CONS_NO = B.CONS_NO
         AND A.CONS_NO = C.CONS_NO
         AND A.CALC_ID = D.CALC_ID
         AND A.YM = V_YM
       GROUP BY B.ORG_NO,
                A.YM,
                A.CALC_ID,
                D.PRC_AMT_ID,
                A.CALC_ID,
                B.CONS_NO,
                C.CONT_PQ,
                A.THIS_CONT_PQ,
                A.THIS_CONT_AMT,
                C.REMARK;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_CONT_FEE  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_CONT_FEE  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_CONT_FEE(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_CONT_FEE', I_DATA);
  
    DELETE FROM SY_OM_DW_E_CONT_FEE A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_CONT_FEE
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       AMT_YM,
       CONT_CALC_ID,
       PRC_AMT_ID,
       CALC_ID,
       CONS_NO,
       CONT_NUM,
       CONT_PQ,
       THIS_CONT_PQ,
       THIS_CONT_AMT,
       REMARK,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             AMT_YM,
             CONT_CALC_ID,
             PRC_AMT_ID,
             CALC_ID,
             CONS_NO,
             CONT_NUM,
             CONT_PQ,
             THIS_CONT_PQ,
             THIS_CONT_AMT,
             REMARK,
             TIME_STAMP
        FROM DW_E_CONT_FEE A
       WHERE A.AMT_YM = V_TIME;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_CONT_FEE  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_CONT_FEE  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_O_BULK_USER_AMT(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_BULK_USER_AMT', V_YM);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_O_BULK_USER_AMT(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_O_BULK_USER_AMT(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_O_BULK_USER_AMT A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.AMT_YM = V_YM;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_O_BULK_USER_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_O_BULK_USER_AMT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_O_BULK_USER_AMT(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_BULK_USER_AMT', V_YM);
  
    --删除上次运行结果
    DELETE FROM DW_O_BULK_USER_AMT T WHERE T.AMT_YM = V_YM;
  
    INSERT INTO DW_O_BULK_USER_AMT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_TYPE,
       AMT_YM,
       RELEASE_YMD,
       CONS_ID,
       CONS_NO,
       PRC_ID,
       CALC_ID,
       PRC_VOLT_CODE,
       ELEC_TYPE_CODE,
       PRC_CODE,
       PRC_PARA_VN,
       MR_SECT_NO,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       EXEC_PV_FLAG,
       TWO_PRC_FLAG,
       PF_EVAL_MODE,
       LADDER_TYPE,
       LEVEL_NUM,
       SPECIAL_HANDL_TYPE,
       SPECIAL_PL_CODE,
       SPECIAL_PQ,
       SPECIAL_AMT,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             NVL(C.ORG_NO, V_PRO_ORG_NO),
             NULL,
             C.SPECIAL_TYPE,
             V_YM,
             TO_CHAR(A.SEND_DATE, 'YYYYMMDD'),
             C.CONS_ID,
             C.CONS_NO,
             B.PRC_ID,
             B.CALC_ID,
             PKG_GK_PUBLIC.F_TRANS_CODE('PRC_VOLT_CODE', F.PRC_VOLT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', A.ELEC_TYPE_CODE),
             B.PRC_CODE,
             E.PARA_VN,
             A.MR_SECT_NO,
             PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                        A.TRADE_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                        A.HEC_TRADE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG),
             PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
             PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE) PF_EVAL_MODE,
             PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02'), --各单位自行确定可在GK_DW_CODE_TANS表内配置,00无  01年阶梯  02月阶梯,
             E.LEVEL_NUM,
             C.SPECIAL_HANDL_TYPE,
             C.SPECIAL_PL_CODE,
             SUM(NVL(E.T_SETTLE_PQ, 0)) SPECIAL_PQ,
             SUM(NVL(E.T_AMT, 0)) SPECIAL_AMT,
             SYSDATE
        FROM SY_SG_ARC_E_CONS_SNAP          A,
             SY_SG_ARC_E_CONSPRC_SNAP       B,
             DW_O_BULK_USER                 C,
             SY_SG_ARC_E_CONS_PRC_AMT       E,
             SY_SG_E_CAT_PRC                F,
             SY_SG_ARC_E_CONSPRC_TACTIC_SGA D
       WHERE A.CALC_ID = B.CALC_ID
         AND A.CALC_ID = D.CALC_ID
         AND A.ORG_NO = B.ORG_NO
         AND A.YM = B.YM
         AND A.CONS_ID = C.CONS_ID
         AND A.ORG_NO = C.ORG_NO
         AND A.YM = C.AMT_YM
         AND B.PRC_SNAP_ID = E.PRC_SNAP_ID
         AND B.ORG_NO = E.ORG_NO
         AND B.YM = E.YM
         AND B.CALC_ID = E.CALC_ID
         AND E.PARA_VN = F.PARA_VN
         AND E.PRC_CODE = F.PRC_CODE
         AND A.YM = V_YM
       GROUP BY NVL(C.ORG_NO, V_PRO_ORG_NO),
                C.SPECIAL_TYPE,
                TO_CHAR(A.SEND_DATE, 'YYYYMMDD'),
                C.CONS_ID,
                C.CONS_NO,
                B.PRC_ID,
                B.CALC_ID,
                PKG_GK_PUBLIC.F_TRANS_CODE('PRC_VOLT_CODE', F.PRC_VOLT_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                           A.ELEC_TYPE_CODE),
                B.PRC_CODE,
                E.PARA_VN,
                A.MR_SECT_NO,
                PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                           A.CONS_SORT_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                           A.TRADE_TYPE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                           A.HEC_TRADE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG),
                PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02'), --各单位自行确定可在GK_DW_CODE_TANS表内配置,00无  01年阶梯  02月阶梯,
                E.LEVEL_NUM,
                C.SPECIAL_HANDL_TYPE,
                C.SPECIAL_PL_CODE;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_O_BULK_USER_AMT  成功';
    COMMIT;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_O_BULK_USER_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_O_BULK_USER_AMT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_O_BULK_USER_AMT(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_O_BULK_USER_AMT', V_YM);
  
    --删除上次运行结果
    DELETE FROM SY_OM_DW_O_BULK_USER_AMT T WHERE T.AMT_YM = V_YM;
  
    INSERT INTO SY_OM_DW_O_BULK_USER_AMT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_TYPE,
       AMT_YM,
       RELEASE_YMD,
       CONS_ID,
       --MP_ID,
       CONS_NO,
       PRC_ID,
       CALC_ID,
       PRC_VOLT_CODE,
       ELEC_TYPE_CODE,
       PRC_CODE,
       PRC_PARA_VN,
       MR_SECT_NO,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       EXEC_PV_FLAG,
       TWO_PRC_FLAG,
       PF_EVAL_MODE,
       LADDER_TYPE,
       LEVEL_NUM,
       SPECIAL_HANDL_TYPE,
       SPECIAL_PL_CODE,
       SPECIAL_PQ,
       SPECIAL_AMT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       SPECIAL_TYPE,
       AMT_YM,
       RELEASE_YMD,
       CONS_ID,
       --MP_ID,
       CONS_NO,
       PRC_ID,
       CALC_ID,
       PRC_VOLT_CODE,
       ELEC_TYPE_CODE,
       PRC_CODE,
       PRC_PARA_VN,
       MR_SECT_NO,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       EXEC_PV_FLAG,
       TWO_PRC_FLAG,
       PF_EVAL_MODE,
       LADDER_TYPE,
       LEVEL_NUM,
       SPECIAL_HANDL_TYPE,
       SPECIAL_PL_CODE,
       SPECIAL_PQ,
       SPECIAL_AMT,
       TIME_STAMP
        FROM DW_O_BULK_USER_AMT A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.AMT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_O_BULK_USER_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_O_BULK_USER_AMT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_SPECIAL_PRC_CC(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_SPECIAL_PRC_CC', I_DATA);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_E_SPECIAL_PRC_CC(I_DATA, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_E_SPECIAL_PRC_CC(I_DATA, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_E_SPECIAL_PRC_CC A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(SUBSTR(I_DATA, 1, 6), 'YYYYMM')),
                             'YYYYMMDD') BETWEEN B.BGN_YMD AND
                     NVL(B.END_YMD, '99991231'))
       WHERE A.AMT_YM = SUBSTR(I_DATA, 1, 6);
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_SPECIAL_PRC_CC  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_SPECIAL_PRC_CC  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_SPECIAL_PRC_CC(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_CONT_INFO', I_DATA);
  
    DELETE FROM DW_E_SPECIAL_PRC_CC A WHERE A.AMT_YM = V_YM;
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      --执行年阶梯电价户数
      INSERT INTO DW_E_SPECIAL_PRC_CC
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         AMT_YM,
         FIRST_CC,
         SECOND_CC,
         THIRD_CC,
         FIRST_CC_YEAR,
         SECOND_CC_YEAR,
         THIRD_CC_YEAR,
         TIME_STAMP)
        SELECT OMAC.PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               A.ORG_NO,
               V_YM,
               SUM(DECODE(D.PRC_ID, NULL, 0, DECODE(C.LEVEL_NUM, 1, 1, 0))) FIRST_CC, --无年阶梯记录且最大档次1级
               SUM(DECODE(D.PRC_ID, NULL, 0, DECODE(C.LEVEL_NUM, 2, 1, 0))) SECOND_CC, --无年阶梯记录且最大档次2级
               SUM(DECODE(D.PRC_ID, NULL, 0, DECODE(C.LEVEL_NUM, 3, 1, 0))) THIRD_CC, --无年阶梯记录且最大档次3级
               SUM(DECODE(LEV_TWO_PQ_SUM, 0, 1, 0)) FIRST_CC_YEAR, --二挡为0则代表一档用户数
               SUM(DECODE(LEV_TWO_PQ_SUM,
                          0,
                          0,
                          DECODE(LEV_THREE_PQ_SUM, 0, 1, 0))) SECOND_CC_YEAR, -- 二档不为0且三档为0
               SUM(DECODE(LEV_THREE_PQ_SUM, NULL, 0, 0, 0, 1)) THIRD_CC_YEAR, --三档不为0
               SYSDATE
          FROM SY_SG_ARC_E_CONS_SNAP A,
               SY_SG_ARC_E_CONSPRC_SNAP B,
               (SELECT PRC_SNAP_ID, MAX(LEVEL_NUM) LEVEL_NUM
                  FROM SY_SG_ARC_E_CONS_PRC_AMT A
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.YM = V_YM
                 GROUP BY PRC_SNAP_ID) C,
               (SELECT *
                  FROM SY_SG_E_CONS_ACCU_PQ D
                 WHERE ORG_NO LIKE TSS.ORG_NO || '%') D
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.YM = V_YM
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.YM = V_YM
           AND A.CALC_ID = B.CALC_ID
           AND B.PRC_SNAP_ID = C.PRC_SNAP_ID
           AND B.PRC_ID = D.PRC_ID(+)
         GROUP BY A.ORG_NO;
    
      /*--执行年阶梯电价户数
      INSERT INTO DW_E_SPECIAL_PRC_CC
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         AMT_YM,
         FIRST_CC,
         SECOND_CC,
         THIRD_CC,
         FIRST_CC_YEAR,
         SECOND_CC_YEAR,
         THIRD_CC_YEAR,
         TIME_STAMP)
        SELECT OMAC.PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               A.ORG_NO,
               A.YM,
               0,
               0,
               0,
               COUNT(DISTINCT CASE
                       WHEN A.RANGE_TYPE_CODE = '00' THEN
                        A.CALC_ID
                       ELSE
                        NULL
                     END),
               COUNT(DISTINCT CASE
                       WHEN A.RANGE_TYPE_CODE = '31' THEN
                        A.CALC_ID
                       ELSE
                        NULL
                     END),
               COUNT(DISTINCT CASE
                       WHEN A.RANGE_TYPE_CODE = '32' THEN
                        A.CALC_ID
                       ELSE
                        NULL
                     END),
               SYSDATE
          FROM SY_SG_ARC_E_CONS_PRC_AMT A,
               (SELECT DISTINCT PRC_CODE
                  FROM DW_E_DIFF_PAPQ_DET
                 WHERE AMT_YM = V_YM) B,
               SY_SG_E_CAT_PRC C
         WHERE A.PARA_VN = C.PARA_VN
           AND A.PRC_CODE = C.PRC_CODE
           AND A.PRC_CODE = C.PRC_CODE
           AND A.ELEC_TYPE_CODE LIKE '2%'
           AND A.YM = V_YM
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY A.ORG_NO, A.YM;
      
      UPDATE DW_E_SPECIAL_PRC_CC K
         SET K.SECOND_CC = K.SECOND_CC - K.THIRD_CC
       WHERE K.AMT_YM = V_YM;
      
      UPDATE DW_E_SPECIAL_PRC_CC K
         SET K.FIRST_CC = K.FIRST_CC - K.SECOND_CC - K.THIRD_CC
       WHERE K.AMT_YM = V_YM;
      
      COMMIT;*/
    
      --执行峰谷户数
      INSERT INTO DW_E_SPECIAL_PRC_CC
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         AMT_YM,
         PEAK_VALLE_PRC_CC,
         TIME_STAMP)
        SELECT OMAC.PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               A.ORG_NO,
               A.YM,
               COUNT(DISTINCT B.CONS_NO),
               SYSDATE
          FROM SY_SG_ARC_E_CONSPRC_SNAP A, SY_SG_ARC_E_CONS_SNAP B
         WHERE A.ORG_NO = B.ORG_NO
           AND A.YM = B.YM
           AND A.CALC_ID = B.CALC_ID
           AND A.TS_FLAG = '1'
           AND B.ELEC_TYPE_CODE >= '100'
           AND A.YM = V_YM
           AND B.YM = V_YM
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY A.ORG_NO, A.YM;
      COMMIT;
    
      --执行合表电价户数
      INSERT INTO DW_E_SPECIAL_PRC_CC
        (DATA_ID, PRO_ORG_NO, ORG_NO, AMT_YM, MERGE_PRC_CC, TIME_STAMP)
        SELECT OMAC.PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               A.ORG_NO,
               A.YM,
               COUNT(DISTINCT B.CONS_NO),
               SYSDATE
          FROM SY_SG_ARC_E_CONSPRC_SNAP A,
               SY_SG_ARC_E_CONS_SNAP    B,
               DW_E_PRC_MERGE           C
         WHERE A.ORG_NO = B.ORG_NO
              --根据甘肃反馈:由于甘肃电价表中，单位均为62101-甘肃省电力公司，DW_E_PRC_MERGE表中org_no均为62101,故取消
              --AND A.ORG_NO = C.ORG_NO
           AND A.PRC_CODE = C.MERGE_PRC_CODE
           AND A.YM = B.YM
           AND A.CALC_ID = B.CALC_ID
           AND B.ELEC_TYPE_CODE >= '100'
           AND A.YM = V_YM
           AND B.YM = V_YM
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY A.ORG_NO, A.YM;
      COMMIT;
    
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 DW_E_SPECIAL_PRC_CC  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 DW_E_SPECIAL_PRC_CC  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_SPECIAL_PRC_CC(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_SPECIAL_PRC_CC', I_DATA);
    --当月
    V_YM := SUBSTR(I_DATA, 1, 6);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_E_SPECIAL_PRC_CC A WHERE A.AMT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_E_SPECIAL_PRC_CC
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       AMT_YM,
       FIRST_CC,
       SECOND_CC,
       THIRD_CC,
       FIRST_CC_YEAR,
       SECOND_CC_YEAR,
       THIRD_CC_YEAR,
       PEAK_VALLE_PRC_CC,
       MERGE_PRC_CC,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.AMT_YM,
       A.FIRST_CC,
       A.SECOND_CC,
       A.THIRD_CC,
       A.FIRST_CC_YEAR,
       A.SECOND_CC_YEAR,
       A.THIRD_CC_YEAR,
       A.PEAK_VALLE_PRC_CC,
       A.MERGE_PRC_CC,
       A.TIME_STAMP
        FROM DW_E_SPECIAL_PRC_CC A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.AMT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_SPECIAL_PRC_CC  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_SPECIAL_PRC_CC  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_DIFF_PAPQ_PL_DET(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_DIFF_PAPQ_PL_DET',
                                        I_DATA);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_E_DIFF_PAPQ_PL_DET表
    P_INS_DW_E_DIFF_PAPQ_PL_DET(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_E_DIFF_PAPQ_PL_DET表取数据插入到稽查库OMAC用户下的DW_E_DIFF_PAPQ_PL_DET表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_DIFF_PAPQ_PL_DET(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_DIFF_PAPQ_PL_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_DIFF_PAPQ_PL_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_DIFF_PAPQ_PL_DET(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
    V_NUM NUMBER;
  
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    V_DIFF_PRC_CODE VARCHAR2(4000);
    V_STEP_AMT_CODE VARCHAR2(2);
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_DIFF_PAPQ_PL_DET',
                                        I_DATA);
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --尖峰电量年月计算标识
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    SELECT CONT1
      INTO V_DIFF_PRC_CODE
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'difPrcCode';
  
    SELECT CONT1
      INTO V_STEP_AMT_CODE
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'stepAmtCode';
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      DELETE FROM DW_E_DIFF_PAPQ_PL_DET A
       WHERE A.AMT_YM = V_YM
         AND A.ORG_NO LIKE TSS.ORG_NO || '%';
    
      INSERT INTO DW_E_DIFF_PAPQ_PL_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         AMT_YM,
         CONS_ID,
         CONS_NO,
         ELEC_TYPE_CODE,
         PRC_CODE,
         PRC_PARA_VN,
         MR_SECT_NO,
         CONS_SORT_CODE,
         TRADE_CODE,
         VOLT_CODE,
         HEC_TRADE_CODE,
         EXEC_PV_FLAG,
         TWO_PRC_FLAG,
         PF_EVAL_MODE,
         LADDER_TYPE,
         PL_CODE,
         PL_PQ,
         PL_AMT,
         PRC_IO_FLAG,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               E.ORG_NO,
               E.AMT_YM,
               E.CONS_ID,
               E.CONS_NO,
               E.ELEC_TYPE_CODE,
               E.PRC_CODE,
               E.PRC_PARA_VN,
               E.MR_SECT_NO,
               E.CONS_SORT_CODE,
               E.TRADE_CODE,
               E.VOLT_CODE,
               E.HEC_TRADE_CODE,
               E.EXEC_PV_FLAG,
               E.TWO_PRC_FLAG,
               E.PF_EVAL_MODE,
               E.LADDER_TYPE,
               F.HEAD_PL_CODE,
               SUM(E.PL_PQ),
               SUM(E.PL_AMT),
               F.PRC_IO_FLAG,
               SYSDATE
          FROM (SELECT /*+PARALLEL(A 4)(B 4)(C 4)(D 4)(E 4) */
                 A.ORG_NO ORG_NO,
                 V_YM AMT_YM,
                 A.CONS_ID CONS_ID,
                 A.CONS_NO CONS_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            C.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 C.PRC_CODE PRC_CODE,
                 C.PARA_VN PRC_PARA_VN,
                 A.MR_SECT_NO MR_SECT_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                            A.CONS_SORT_CODE) CONS_SORT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                            C.TRADE_TYPE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_TRADE_CODE) HEC_TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG) EXEC_PV_FLAG,
                 PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
                 PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE) PF_EVAL_MODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02') LADDER_TYPE, --各单位自行确定
                 --代征项代码
                 E.PL_CODE PL_CODE,
                 --代征电量
                 SUM(E.PL_PQ) PL_PQ,
                 --代征电费金额
                 SUM(E.PL_AMT) PL_AMT,
                 --价内价外标志
                 --B.PRC_IO_FLAG,
                 --电价时段代码
                 E.PRC_TS_CODE PRC_TS_CODE,
                 --代征单价
                 SUM(E.PL_PRC) PL_PRC
                  FROM SY_SG_ARC_E_CONS_SNAP          A,
                       SY_SG_ARC_E_CONSPRC_SNAP       B,
                       SY_SG_ARC_E_CONS_PRC_AMT       C,
                       SY_SG_ARC_E_CONSPRC_TACTIC_SGA D,
                       SY_SG_ARC_E_PL_AMT             E
                 WHERE A.CALC_ID = B.CALC_ID
                   AND B.PRC_SNAP_ID = C.PRC_SNAP_ID
                   AND B.PRC_TACTIC_SNAP_ID = D.PRC_TACTIC_SNAP_ID(+) --山东存在有电费但无电价策略快照的情况
                   AND B.CALC_ID = D.CALC_ID(+)
                   AND C.PRC_AMT_ID = E.PRC_AMT_ID
                   AND A.YM = V_YM
                   AND B.YM = V_YM
                   AND C.YM = V_YM
                   AND D.YM = V_YM
                   AND E.YM = V_YM
                   AND INSTR(V_DIFF_PRC_CODE, C.PRC_CODE, 1) > 0
                   AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND D.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND E.ORG_NO LIKE TSS.ORG_NO || '%'
                 GROUP BY A.ORG_NO,
                          --'01' PS_BUSI_AREA_CODE,
                          A.CONS_ID,
                          A.CONS_NO,
                          C.PRC_CODE,
                          C.PARA_VN,
                          A.MR_SECT_NO,
                          PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                                     A.CONS_SORT_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                                     C.TRADE_TYPE_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE',
                                                     A.VOLT_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                                     A.HEC_TRADE_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG',
                                                     B.TS_FLAG),
                          PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE',
                                                     D.TYPE_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE',
                                                     D.PF_EVAL_MODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02'),
                          PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                                     C.ELEC_TYPE_CODE),
                          E.PL_CODE,
                          E.PRC_TS_CODE) E,
               DW_O_PL_PARA F
         WHERE E.PL_CODE = F.PL_CODE
         GROUP BY E.ORG_NO,
                  E.AMT_YM,
                  E.CONS_ID,
                  E.CONS_NO,
                  E.ELEC_TYPE_CODE,
                  E.PRC_CODE,
                  E.PRC_PARA_VN,
                  E.MR_SECT_NO,
                  E.CONS_SORT_CODE,
                  E.TRADE_CODE,
                  E.VOLT_CODE,
                  E.HEC_TRADE_CODE,
                  E.EXEC_PV_FLAG,
                  E.TWO_PRC_FLAG,
                  E.PF_EVAL_MODE,
                  E.LADDER_TYPE,
                  F.HEAD_PL_CODE,
                  F.PRC_IO_FLAG;
      COMMIT;
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_DIFF_PAPQ_PL_DET  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_DIFF_PAPQ_PL_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_DIFF_PAPQ_PL_DET(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_DIFF_PAPQ_PL_DET',
                                        I_DATA);
  
    DELETE FROM SY_OM_DW_E_DIFF_PAPQ_PL_DET A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_DIFF_PAPQ_PL_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       AMT_YM,
       CONS_ID,
       CONS_NO,
       ELEC_TYPE_CODE,
       PRC_CODE,
       PRC_PARA_VN,
       MR_SECT_NO,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       EXEC_PV_FLAG,
       TWO_PRC_FLAG,
       PF_EVAL_MODE,
       LADDER_TYPE,
       PL_CODE,
       PL_PQ,
       PL_AMT,
       PRC_IO_FLAG,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             AMT_YM,
             CONS_ID,
             CONS_NO,
             ELEC_TYPE_CODE,
             PRC_CODE,
             PRC_PARA_VN,
             MR_SECT_NO,
             CONS_SORT_CODE,
             TRADE_CODE,
             VOLT_CODE,
             HEC_TRADE_CODE,
             EXEC_PV_FLAG,
             TWO_PRC_FLAG,
             PF_EVAL_MODE,
             LADDER_TYPE,
             PL_CODE,
             PL_PQ,
             PL_AMT,
             PRC_IO_FLAG,
             TIME_STAMP
        FROM DW_E_DIFF_PAPQ_PL_DET A
       WHERE A.AMT_YM = V_TIME;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_DIFF_PAPQ_PL_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_DIFF_PAPQ_PL_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_E_AMT_COMP_PL_MON(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_TIME     VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_AMT_COMP_PL_MON',
                                        V_TIME);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_E_AMT_COMP_PL_MON表
    P_INS_DW_E_AMT_COMP_PL_MON(V_TIME, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_E_AMT_COMP_PL_MON表取数据插入到稽查库OMAC用户下的DW_E_AMT_COMP_PL_MON表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_AMT_COMP_PL_MON(V_TIME, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_E_AMT_COMP_PL_MON A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_TIME, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.AMT_YM = V_TIME;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_AMT_COMP_PL_MON  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_AMT_COMP_PL_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_AMT_COMP_PL_MON(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    V_YM VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
    V_NUM NUMBER;
  
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    V_STEP_AMT_CODE VARCHAR2(2);
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_AMT_COMP_PL_MON',
                                        I_DATA);
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --尖峰电量年月计算标识
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    SELECT CONT1
      INTO V_STEP_AMT_CODE
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'stepAmtCode';
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      DELETE FROM DW_E_AMT_COMP_PL_MON A
       WHERE A.AMT_YM = V_YM
         AND A.ORG_NO LIKE TSS.ORG_NO || '%';
    
      INSERT INTO DW_E_AMT_COMP_PL_MON
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         AMT_YM,
         ELEC_TYPE_CODE,
         PRC_CODE,
         PRC_PARA_VN,
         MR_SECT_NO,
         CONS_SORT_CODE,
         TRADE_CODE,
         VOLT_CODE,
         HEC_TRADE_CODE,
         EXEC_PV_FLAG,
         TWO_PRC_FLAG,
         PF_EVAL_MODE,
         LADDER_TYPE,
         PL_CODE,
         PL_PQ,
         PL_AMT,
         PRC_IO_FLAG,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               E.ORG_NO,
               '',
               E.AMT_YM,
               E.ELEC_TYPE_CODE,
               E.PRC_CODE,
               E.PRC_PARA_VN,
               E.MR_SECT_NO,
               E.CONS_SORT_CODE,
               E.TRADE_CODE,
               E.VOLT_CODE,
               E.HEC_TRADE_CODE,
               E.EXEC_PV_FLAG,
               E.TWO_PRC_FLAG,
               E.PF_EVAL_MODE,
               E.LADDER_TYPE,
               F.HEAD_PL_CODE,
               SUM(E.PL_PQ) PL_PQ,
               SUM(E.PL_AMT) PL_AMT,
               F.PRC_IO_FLAG,
               SYSDATE
          FROM (SELECT /*+PARALLEL(A 4)(B 4)(C 4)(D 4)(E 4)*/
                 A.ORG_NO ORG_NO,
                 V_YM AMT_YM,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            C.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 C.PRC_CODE PRC_CODE,
                 C.PARA_VN PRC_PARA_VN,
                 A.MR_SECT_NO MR_SECT_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                            A.CONS_SORT_CODE) CONS_SORT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                            C.TRADE_TYPE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_TRADE_CODE) HEC_TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG) EXEC_PV_FLAG,
                 PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
                 PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE) PF_EVAL_MODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02') LADDER_TYPE, --各单位自行确定可在GK_DW_CODE_TANS表内配置,00无  01年阶梯  02月阶梯       
                 --代征项代码
                 E.PL_CODE PL_CODE,
                 --代征电量
                 SUM(E.PL_PQ) PL_PQ,
                 --代征电费金额
                 SUM(E.PL_AMT) PL_AMT,
                 --价内价外标志
                 --B.PRC_IO_FLAG,
                 --电价时段代码
                 E.PRC_TS_CODE PRC_TS_CODE,
                 --代征单价
                 SUM(E.PL_PRC) PL_PRC
                  FROM SY_SG_ARC_E_CONS_SNAP          A,
                       SY_SG_ARC_E_CONSPRC_SNAP       B,
                       SY_SG_ARC_E_CONS_PRC_AMT       C,
                       SY_SG_ARC_E_CONSPRC_TACTIC_SGA D,
                       SY_SG_ARC_E_PL_AMT             E
                 WHERE A.CALC_ID = B.CALC_ID
                   AND B.PRC_SNAP_ID = C.PRC_SNAP_ID
                   AND B.PRC_TACTIC_SNAP_ID = D.PRC_TACTIC_SNAP_ID(+) --山东存在有电费但无电价策略快照的情况
                   AND B.CALC_ID = D.CALC_ID(+)
                   AND C.PRC_AMT_ID = E.PRC_AMT_ID
                   AND A.ORG_NO = B.ORG_NO
                   AND A.ORG_NO = C.ORG_NO
                   AND A.YM = V_YM
                   AND D.YM = V_YM
                   AND B.YM = V_YM
                   AND C.YM = V_YM
                   AND E.YM = V_YM
                   AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND D.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND E.ORG_NO LIKE TSS.ORG_NO || '%'
                 GROUP BY A.ORG_NO,
                          --'01' PS_BUSI_AREA_CODE,
                          PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                                     C.ELEC_TYPE_CODE),
                          C.PRC_CODE,
                          C.PARA_VN,
                          A.MR_SECT_NO,
                          PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                                     A.CONS_SORT_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                                     C.TRADE_TYPE_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE',
                                                     A.VOLT_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                                     A.HEC_TRADE_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG',
                                                     B.TS_FLAG),
                          PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE',
                                                     D.TYPE_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE',
                                                     D.PF_EVAL_MODE),
                          E.PL_CODE,
                          E.PRC_TS_CODE) E,
               DW_O_PL_PARA F
         WHERE E.PL_CODE = F.PL_CODE
         GROUP BY E.ORG_NO,
                  E.AMT_YM,
                  E.ELEC_TYPE_CODE,
                  E.PRC_CODE,
                  E.PRC_PARA_VN,
                  E.MR_SECT_NO,
                  E.CONS_SORT_CODE,
                  E.TRADE_CODE,
                  E.VOLT_CODE,
                  E.HEC_TRADE_CODE,
                  E.EXEC_PV_FLAG,
                  E.TWO_PRC_FLAG,
                  E.PF_EVAL_MODE,
                  E.LADDER_TYPE,
                  F.HEAD_PL_CODE,
                  F.PRC_IO_FLAG;
    
      COMMIT;
    
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_AMT_COMP_PL_MON  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_AMT_COMP_PL_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
    
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_E_AMT_COMP_PL_MON(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_AMT_COMP_PL_MON',
                                        I_DATA);
  
    DELETE FROM SY_OM_DW_E_AMT_COMP_PL_MON A WHERE A.AMT_YM = V_TIME;
  
    INSERT INTO SY_OM_DW_E_AMT_COMP_PL_MON
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       AMT_YM,
       ELEC_TYPE_CODE,
       PRC_CODE,
       PRC_PARA_VN,
       MR_SECT_NO,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       EXEC_PV_FLAG,
       TWO_PRC_FLAG,
       PF_EVAL_MODE,
       LADDER_TYPE,
       PL_CODE,
       PL_PQ,
       PL_AMT,
       PRC_IO_FLAG,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.AMT_YM,
       A.ELEC_TYPE_CODE,
       A.PRC_CODE,
       A.PRC_PARA_VN,
       A.MR_SECT_NO,
       A.CONS_SORT_CODE,
       A.TRADE_CODE,
       A.VOLT_CODE,
       A.HEC_TRADE_CODE,
       A.EXEC_PV_FLAG,
       A.TWO_PRC_FLAG,
       A.PF_EVAL_MODE,
       A.LADDER_TYPE,
       A.PL_CODE,
       A.PL_PQ,
       A.PL_AMT,
       A.PRC_IO_FLAG,
       A.TIME_STAMP
        FROM DW_E_AMT_COMP_PL_MON A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.AMT_YM = V_TIME
         AND TO_CHAR(LAST_DAY(TO_DATE(V_TIME, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_AMT_COMP_PL_MON  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_AMT_COMP_PL_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

END PKG_YWGK_DW_AC;
/
