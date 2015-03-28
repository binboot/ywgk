CREATE OR REPLACE PACKAGE "PKG_YWGK_DW_CA" IS

  --当小于等于5日为上上个月,当大于5日为上个月
  FUNCTION F_GETSUM_MONTH(V_DATE VARCHAR2) RETURN VARCHAR2;

  /**
    过程名称：P_ENT_DW_A_INTIEM_RCVED/实时收费统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：按48时点统计各层级单位实时缴费汇总情况,被数据库JOB调用
    统计频度：按30分钟抽取
    入参格式：I_DATA ：YYYYMMDD    
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_A_INTIEM_RCVED(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_A_INTIEM_RCVED(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_A_INTIEM_RCVED(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  /**
    过程名称：P_ENT_DW_A_RCVED_STAT/日缴费统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：按日统计各层级单位缴费汇总情况,被数据库JOB调用
    统计频度：按日抽取,次日零点
    入参格式：I_DATA ：YYYYMMDD    
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_A_RCVED_STAT(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_A_RCVED_STAT(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_A_RCVED_STAT(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);

  --日在途资金统计
  PROCEDURE P_ENT_DW_A_TRANSIT_STAT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  --日欠费用户明细
  PROCEDURE P_ENT_DW_A_OWE_AMT_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  --日电费回收监控统计
  PROCEDURE P_ENT_DW_A_OWE_AMT_MONIT(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  --月度日累计欠费明细统计
  PROCEDURE P_ENT_DW_A_OWE_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  --月度欠费明细统计
  PROCEDURE P_ENT_DW_A_OWE_AMT_STAT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  --月度日累计电费应收统计
  PROCEDURE P_ENT_DW_A_ACCU_DAY_RCVBL(I_DATA   VARCHAR2,
                                      I_RCVBL_YM  VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  --月度电费应收统计
  PROCEDURE P_ENT_DW_A_RCVBL_AMT_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  --月度电费结存统计
  PROCEDURE P_ENT_DW_A_PRERCV_STAT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  --月度业务费收取统计
  PROCEDURE P_ENT_DW_A_BUSI_RCVED_DET(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  --月度临时用电收费情况
  PROCEDURE P_ENT_DW_A_TEMP_PQ(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);

  --月度呆坏账统计
  PROCEDURE P_ENT_DW_A_BAD_PA_STAT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  --月度柜台现金缴费冲正统计
  PROCEDURE P_ENT_DW_A_REVERSE_MO(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);

  --年冻结陈欠电费统计
  PROCEDURE P_ENT_DW_A_OLD_PA_RCVED(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  --月度高压分次划拨情况统计
  PROCEDURE P_ENT_DW_A_HV_GP_PAYBACK(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  --月度缴费超期情况统计
  PROCEDURE P_ENT_DW_A_OVER_PAY_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  --日在途资金统计
  PROCEDURE P_ETL_DW_A_TRANSIT_STAT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  --日欠费用户明细
  PROCEDURE P_ETL_DW_A_OWE_AMT_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  --日电费回收监控统计
  PROCEDURE P_ETL_DW_A_OWE_AMT_MONIT(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  --月度日累计欠费明细统计
  PROCEDURE P_ETL_DW_A_OWE_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  --月度欠费明细统计
  PROCEDURE P_ETL_DW_A_OWE_AMT_STAT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  --月度日累计电费应收统计
  PROCEDURE P_ETL_DW_A_ACCU_DAY_RCVBL(I_DATA   VARCHAR2,
                                      I_RCVBL_YM  VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  --月度电费应收统计
  PROCEDURE P_ETL_DW_A_RCVBL_AMT_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  --月度电费结存统计
  PROCEDURE P_ETL_DW_A_PRERCV_STAT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  --月度业务费收取统计
  PROCEDURE P_ETL_DW_A_BUSI_RCVED_DET(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  --月度临时用电收费情况
  PROCEDURE P_ETL_DW_A_TEMP_PQ(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);

  --月度呆坏账统计
  PROCEDURE P_ETL_DW_A_BAD_PA_STAT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  --月度柜台现金缴费冲正统计
  PROCEDURE P_ETL_DW_A_REVERSE_MO(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);

  --年冻结陈欠电费统计
  PROCEDURE P_ETL_DW_A_OLD_PA_RCVED(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  --月度高压分次划拨情况统计
  PROCEDURE P_ETL_DW_A_HV_GP_PAYBACK(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  ---月度缴费超期情况统计
  PROCEDURE P_ETL_DW_A_OVER_PAY_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_A_TRANSIT_STAT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_A_OWE_AMT_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);


  PROCEDURE P_INS_DW_A_OWE_AMT_MONIT(I_PRO_ORG_NO VARCHAR2,
                                     I_DATE       VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  --月度日累计欠费明细统计
  PROCEDURE P_INS_DW_A_OWE_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  --月度欠费明细统计
  PROCEDURE P_INS_DW_A_OWE_AMT_STAT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  --月度日累计电费应收统计
  PROCEDURE P_INS_DW_A_ACCU_DAY_RCVBL(I_DATA   VARCHAR2,
                                      I_RCVBL_YM  VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  --月度电费应收统计
  PROCEDURE P_INS_DW_A_RCVBL_AMT_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  --月度电费结存统计
  PROCEDURE P_INS_DW_A_PRERCV_STAT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  --月度业务费收取统计
  PROCEDURE P_INS_DW_A_BUSI_RCVED_DET(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  --月度临时用电收费情况
  PROCEDURE P_INS_DW_A_TEMP_PQ(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);

  --月度呆坏账统计
  PROCEDURE P_INS_DW_A_BAD_PA_STAT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  --月度柜台现金缴费冲正统计
  PROCEDURE P_INS_DW_A_REVERSE_MO(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);

  --年冻结陈欠电费统计
  PROCEDURE P_INS_DW_A_OLD_PA_RCVED(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  --月度高压分次划拨情况统计
  PROCEDURE P_INS_DW_A_HV_GP_PAYBACK(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  --月度缴费超期情况统计
  PROCEDURE P_INS_DW_A_OVER_PAY_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  --日欠费百万以上用户统计,只统计给定时间的上月数据.I_DATA的传入为20140620日则统计201405月数据。
  PROCEDURE P_ENT_DW_A_OWE_MILLION_STAT(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_A_OWE_MILLION_STAT(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_A_OWE_MILLION_STAT(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  --日欠电费统计情况,统计给定时间当月和上月的数据,如I_DATA为20140624日则统计2014005,201406的数据
  PROCEDURE P_ENT_DW_A_OWE_AMT_DAY_STAT(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_A_OWE_AMT_DAY_STAT(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_A_OWE_AMT_DAY_STAT(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

END "PKG_YWGK_DW_CA";
/
CREATE OR REPLACE PACKAGE BODY "PKG_YWGK_DW_CA" IS

  -- Author  : ADMINISTRATOR
  -- Created : 2014-7-19 20:23:14
  -- Purpose : 
  FUNCTION F_GETSUM_MONTH(V_DATE VARCHAR2) RETURN VARCHAR2 IS
    RESULT VARCHAR2(6);
  BEGIN
    IF (5 >= TO_NUMBER(SUBSTR(V_DATE, 7, 2))) THEN
      --当小于等于5日为上上个月。
      RESULT := TO_CHAR(ADD_MONTHS(TO_DATE(SUBSTR(V_DATE, 1, 6), 'yyyymm'),
                                   -2),
                        'yyyymm');
    ELSE
      --当大于5日为上个月
      RESULT := TO_CHAR(ADD_MONTHS(TO_DATE(SUBSTR(V_DATE, 1, 6), 'yyyymm'),
                                   -1),
                        'yyyymm');
    END IF;
    RETURN(RESULT);
  END F_GETSUM_MONTH;

  /**
    过程名称：P_ENT_DW_A_INTIEM_RCVED/实时收费统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：按48时点统计各层级单位实时缴费汇总情况,被数据库JOB调用
    统计频度：按30分钟抽取
    入参格式：I_DATA ：YYYYMMDD    
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_A_INTIEM_RCVED(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_INTIEM_RCVED', I_DATA);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_A_INTIEM_RCVED(I_DATA, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_A_INTIEM_RCVED(I_DATA, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_INTIEM_RCVED A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND I_DATA BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YM = SUBSTR(I_DATA, 1, 6)
         AND A.YMD = I_DATA;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_A_INTIEM_RCVED  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_INTIEM_RCVED  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_INTIEM_RCVED(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_START_TIME DATE;
    V_END_TIME   DATE;
    V_YMD        VARCHAR2(8);
  BEGIN
    --开始记录日志  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_INTIEM_RCVED', I_DATA);
    --当月
    V_YM  := SUBSTR(I_DATA, 1, 6);
    V_YMD := SUBSTR(I_DATA, 1, 8);
    --统计开始时间（统计日期零点）
    V_START_TIME := TO_DATE(I_DATA, 'YYYYMMDD');
    --统计截止时间
    V_END_TIME := TO_DATE(I_DATA, 'YYYYMMDD') + 1;
    DELETE FROM DW_A_INTIEM_RCVED;
    INSERT INTO DW_A_INTIEM_RCVED
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       PS_BUSI_AREA_CODE,
       YMD,
       STAT_TIME_POINT,
       RCVED_NUM,
       PAY_FEE,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             ORG_NO,
             V_YM,
             '01',
             I_DATA,
             STAT_POINT,
             SUM(RCVED_NUM),
             SUM(PAY_FEE),
             SYSDATE
        FROM (SELECT ORG_NO,
                     STAT_POINT,
                     PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', PAY_MODE) PAY_MODE,
                     COUNT(CHARGE_ID) RCVED_NUM,
                     SUM(RCV_AMT) PAY_FEE
                FROM (SELECT A.CHARGE_ID,
                             A.ORG_NO,
                             FLOOR((TO_NUMBER(TO_CHAR(A.CHARGE_DATE, 'hh24')) * 60 +
                                   TO_NUMBER(TO_CHAR(A.CHARGE_DATE, 'mi'))) / 30) STAT_POINT,
                             A.PAY_MODE,
                             A.RCV_AMT
                        FROM SY_SG_A_PAY_FLOW A
                       WHERE A.RCVED_DATE = V_YMD
                         AND A.CHARGE_DATE >= V_START_TIME
                         AND A.CHARGE_DATE < V_END_TIME
                         AND A.CHARGE_YM = V_YM)
               GROUP BY ORG_NO, STAT_POINT, PAY_MODE)
       GROUP BY ORG_NO, STAT_POINT;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_INTIEM_RCVED  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_INTIEM_RCVED  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_A_INTIEM_RCVED(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_INTIEM_RCVED', I_DATA);
    --当月
    V_YM := SUBSTR(I_DATA, 1, 6);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_INTIEM_RCVED X
     WHERE X.STAT_YM = V_YM
       AND X.YMD = I_DATA;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_INTIEM_RCVED
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       PS_BUSI_AREA_CODE,
       YMD,
       STAT_TIME_POINT,
       RCVED_NUM,
       PAY_FEE,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       B.BUSI_AREA_STAT_CODE,
       YMD,
       STAT_TIME_POINT,
       RCVED_NUM,
       PAY_FEE,
       TIME_STAMP
        FROM DW_A_INTIEM_RCVED A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE STAT_YM = V_YM
         AND YMD = I_DATA
         AND I_DATA BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_INTIEM_RCVED  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_INTIEM_RCVED  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /**
    过程名称：P_ENT_DW_A_RCVED_STAT/日缴费统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：按日统计各层级单位缴费汇总情况,被数据库JOB调用
    统计频度：按日抽取,次日零点
    入参格式：I_DATA ：YYYYMMDD    
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_A_RCVED_STAT(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_RCVED_STAT', I_DATA);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_A_RCVED_STAT(I_DATA, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_A_RCVED_STAT(I_DATA, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_RCVED_STAT A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND I_DATA BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE STAT_YM = SUBSTR(I_DATA, 1, 6)
         AND CHARGE_DATE = I_DATA;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_A_RCVED_STAT  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_RCVED_STAT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --日实收缴费
  PROCEDURE P_INS_DW_A_RCVED_STAT(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --开始记录日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_RCVED_STAT', I_DATA);
    DELETE FROM DW_A_RCVED_STAT
     WHERE STAT_YM = V_YM
       AND CHARGE_DATE = V_YMD;
    --开始数据统计,插入到稽查管理库OMAC的DW_C_CONS_COMP
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      INSERT INTO DW_A_RCVED_STAT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         CHARGE_DATE,
         STAT_YM,
         RCVBL_YM,
         PAY_MODE,
         TYPE_CODE,
         RCVED_NUM,
         PAY_FEE,
         SETTLE_CODE,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '01',
               V_YMD,
               V_YM,
               RCVBL_YM,
               PAY_MODE,
               TYPE_CODE,
               RCVED_NUM,
               PAY_FEE,
               SETTLE_CODE,
               SYSDATE
          FROM (SELECT /*+parallel(a 4) parallel(b 4)*/
                 A.ORG_NO,
                 B.RCVBL_YM,
                 PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', PAY_MODE) PAY_MODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('CHARGE_TYPE_CODE', TYPE_CODE) TYPE_CODE,
                 COUNT(A.CHARGE_ID) RCVED_NUM,
                 SUM(A.RCV_AMT) PAY_FEE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('SETTLE_MODE', A.SETTLE_MODE) SETTLE_CODE
                  FROM SY_SG_A_PAY_FLOW A, SY_SG_A_RCVED_FLOW B
                 WHERE A.CHARGE_ID = B.CHARGE_ID
                   AND A.RCVED_DATE = V_YMD
                   AND A.CHARGE_YM = V_YM
                   AND B.RCVED_YM = V_YM
                   AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                 GROUP BY A.ORG_NO,
                          B.RCVBL_YM,
                          PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', PAY_MODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('CHARGE_TYPE_CODE',
                                                     TYPE_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('SETTLE_MODE',
                                                     A.SETTLE_MODE));
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_RCVED_STAT  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_RCVED_STAT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_A_RCVED_STAT(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_RCVED_STAT', I_DATA);
    --当月
    V_YM := SUBSTR(I_DATA, 1, 6);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_RCVED_STAT X
     WHERE X.STAT_YM = V_YM
       AND X.CHARGE_DATE = I_DATA;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_RCVED_STAT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       CHARGE_DATE,
       STAT_YM,
       RCVBL_YM,
       PAY_MODE,
       TYPE_CODE,
       RCVED_NUM,
       PAY_FEE,
       SETTLE_CODE,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       CHARGE_DATE,
       STAT_YM,
       RCVBL_YM,
       PAY_MODE,
       TYPE_CODE,
       RCVED_NUM,
       PAY_FEE,
       SETTLE_CODE,
       TIME_STAMP
        FROM DW_A_RCVED_STAT A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE STAT_YM = V_YM
         AND CHARGE_DATE = I_DATA
         AND CHARGE_DATE BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_RCVED_STAT  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_RCVED_STAT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --日在途资金统计
  PROCEDURE P_ENT_DW_A_TRANSIT_STAT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_transit_stat', I_DATA);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_TRANSIT_STAT(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_TRANSIT_STAT(I_DATA, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_TRANSIT_STAT X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.RCV_YM = V_YM
         AND X.RCV_YMD = V_YMD;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ent_dw_a_transit_stat 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ent_dw_a_transit_stat 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --日欠费用户明细
  PROCEDURE P_ENT_DW_A_OWE_AMT_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_owe_amt_det', V_YMD);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_OWE_AMT_DET(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_OWE_AMT_DET(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_OWE_AMT_DET X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YMD = V_YMD;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ent_dw_a_owe_amt_det 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ent_dw_a_owe_amt_det 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --日电费回收监控统计
  PROCEDURE P_ENT_DW_A_OWE_AMT_MONIT(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID    VARCHAR2(24);
    V_DATAMODE   VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_owe_amt_monit', V_YMD);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_OWE_AMT_MONIT(V_PRO_ORG_NO, V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_OWE_AMT_MONIT(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_OWE_AMT_MONIT X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YMD = V_YMD;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ent_dw_a_owe_amt_monit 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行p_ent_dw_a_owe_amt_monit出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度日累计欠费明细统计
  PROCEDURE P_ENT_DW_A_OWE_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_owe_amt_day', V_YMD);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_OWE_AMT_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_OWE_AMT_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_OWE_AMT_DAY X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YMD = V_YMD;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行p_ent_dw_a_owe_amt_day成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行p_ent_dw_a_owe_amt_day出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度欠费明细统计
  PROCEDURE P_ENT_DW_A_OWE_AMT_STAT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_owe_amt_stat', V_YM);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_OWE_AMT_STAT(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_OWE_AMT_STAT(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_OWE_AMT_STAT X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行p_ent_dw_a_owe_amt_stat成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行p_ent_dw_a_owe_amt_stat出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度日累计电费应收统计
  /**
    1-10日每天需要统计两次.
    第一次统计为:应收年月为当月。
    第二次统计为:应收年月为上月.
   11日开始到月底每天只统计一次:
    应收年月为当月
  -------------------------------
  I_DATA 为统计日期请传递统计日期YYYYMMDD
  I_RCVBL_YM 为应收年月，请按照上面的规则传入格式为YYYYMM  
    
  */
  PROCEDURE P_ENT_DW_A_ACCU_DAY_RCVBL(I_DATA     VARCHAR2,
                                      I_RCVBL_YM VARCHAR2,
                                      OUT_CODE   OUT NUMBER,
                                      OUT_MSG    OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --应收年月
    V_RCVBL_YM VARCHAR2(6) := SUBSTR(I_RCVBL_YM, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_accu_day_rcvbl', I_DATA);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_ACCU_DAY_RCVBL(I_DATA, V_RCVBL_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_ACCU_DAY_RCVBL(I_DATA, V_RCVBL_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_ACCU_DAY_RCVBL X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YMD = V_YMD
         AND X.RCVBL_YM = V_RCVBL_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行p_ent_dw_a_accu_day_rcvbl成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行p_ent_dw_a_accu_day_rcvbl出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度电费应收统计
  PROCEDURE P_ENT_DW_A_RCVBL_AMT_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_rcvbl_amt_mon', V_YM);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_RCVBL_AMT_MON(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_RCVBL_AMT_MON(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_RCVBL_AMT_MON X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行p_ent_dw_a_rcvbl_amt_mon成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行p_ent_dw_a_rcvbl_amt_mon出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度电费结存统计
  PROCEDURE P_ENT_DW_A_PRERCV_STAT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_prercv_stat', V_YM);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_PRERCV_STAT(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_PRERCV_STAT(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_PRERCV_STAT X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行p_ent_dw_a_prercv_stat成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行p_ent_dw_a_prercv_stat出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度业务费收取统计
  PROCEDURE P_ENT_DW_A_BUSI_RCVED_DET(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_busi_rcved_det', V_YM);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_BUSI_RCVED_DET(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_BUSI_RCVED_DET(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_BUSI_RCVED_DET X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行p_ent_dw_a_busi_rcved_det成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行p_ent_dw_a_busi_rcved_det出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度临时用电收费情况
  PROCEDURE P_ENT_DW_A_TEMP_PQ(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_temp_pq', V_YM);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_TEMP_PQ(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_TEMP_PQ(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_TEMP_PQ X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ent_dw_a_temp_pq 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ent_dw_a_temp_pq 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度呆坏账统计
  PROCEDURE P_ENT_DW_A_BAD_PA_STAT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_bad_pa_stat', V_YM);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_BAD_PA_STAT(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_BAD_PA_STAT(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_BAD_PA_STAT X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ent_dw_a_bad_pa_stat 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ent_dw_a_bad_pa_stat 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度柜台现金缴费冲正统计
  PROCEDURE P_ENT_DW_A_REVERSE_MO(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_reverse_mo', V_YM);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_REVERSE_MO(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_REVERSE_MO(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_REVERSE_MO X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ent_dw_a_reverse_mo 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ent_dw_a_reverse_mo 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --年冻结陈欠电费统计
  PROCEDURE P_ENT_DW_A_OLD_PA_RCVED(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YEAR     VARCHAR2(6) := SUBSTR(I_DATA, 1, 4); --统计年
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_old_pa_rcved', I_DATA);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_OLD_PA_RCVED(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_OLD_PA_RCVED(I_DATA, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_OLD_PA_RCVED X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YEAR || '12', 'YYYYMM')),
                             'YYYYMMDD') BETWEEN B.BGN_YMD AND
                     NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YEAR = V_YEAR;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ent_dw_a_old_pa_rcved 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ent_dw_a_old_pa_rcved 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度高压分次划拨情况统计
  PROCEDURE P_ENT_DW_A_HV_GP_PAYBACK(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_DW_A_HV_GP_PAYBACK', V_YM);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_HV_GP_PAYBACK(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_HV_GP_PAYBACK(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_HV_GP_PAYBACK X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ent_DW_A_HV_GP_PAYBACK 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ent_DW_A_HV_GP_PAYBACK 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度缴费超期情况统计
  PROCEDURE P_ENT_DW_A_OVER_PAY_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_a_over_pay_mon', V_YM);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_OVER_PAY_MON(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_OVER_PAY_MON(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_OVER_PAY_MON X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ent_dw_a_over_pay_mon 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ent_dw_a_over_pay_mon 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --日在途资金统计
  PROCEDURE P_ETL_DW_A_TRANSIT_STAT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_DW_A_TRANSIT_STAT', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_TRANSIT_STAT X
     WHERE X.RCV_YM = V_YM
       AND X.RCV_YMD = V_YMD;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_TRANSIT_STAT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       RCV_YMD,
       RCV_YM,
       STAT_YMD,
       PAY_MODE,
       SETTLE_CODE,
       TRANSIT_AMT,
       TRANSIT_NUM,
       INTIME_CASHCHK_AMT,
       ARRIVAL_AMT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       RCV_YMD,
       RCV_YM,
       STAT_YMD,
       PAY_MODE,
       SETTLE_CODE,
       TRANSIT_AMT,
       TRANSIT_NUM,
       INTIME_CASHCHK_AMT,
       ARRIVAL_AMT,
       TIME_STAMP
        FROM DW_A_TRANSIT_STAT X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.RCV_YM = V_YM
         AND X.RCV_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_DW_A_TRANSIT_STAT 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_DW_A_TRANSIT_STAT 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --日欠费用户明细
  PROCEDURE P_ETL_DW_A_OWE_AMT_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_owe_amt_det', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_OWE_AMT_DET X WHERE X.STAT_YMD = V_YMD;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_OWE_AMT_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       CONS_NO,
       CONS_NAME,
       RCVBL_YM,
       RCVBL_AMT,
       RCVED_AMT,
       OWE_AMT,
       RCVBL_PL_AMT,
       RCVBL_INPRICE_AMT,
       RCVED_IN_PRICE_AMT,
       RCVED_PL_AMT,
       VOLT_CODE,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       CONS_NO,
       CONS_NAME,
       RCVBL_YM,
       RCVBL_AMT,
       RCVED_AMT,
       OWE_AMT,
       RCVBL_PL_AMT,
       RCVBL_INPRICE_AMT,
       RCVED_IN_PRICE_AMT,
       RCVED_PL_AMT,
       VOLT_CODE,
       TIME_STAMP
        FROM DW_A_OWE_AMT_DET X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_owe_amt_det 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_owe_amt_det 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --日电费回收监控统计
  PROCEDURE P_ETL_DW_A_OWE_AMT_MONIT(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_owe_amt_monit', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_OWE_AMT_MONIT X WHERE X.STAT_YMD = V_YMD;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_OWE_AMT_MONIT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       LAST_OWE_NUM,
       LAST_OWE_AMT,
       CUR_YEAR_OWE_NUM,
       CUR_YEAR_OWE_AMT,
       OLD_OWE_NUM,
       OLD_OWE_AMT,
       LAST_RCVBL_AMT,
       CUR_YEAR_RCVBL_AMT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       LAST_OWE_NUM,
       LAST_OWE_AMT,
       CUR_YEAR_OWE_NUM,
       CUR_YEAR_OWE_AMT,
       OLD_OWE_NUM,
       OLD_OWE_AMT,
       LAST_RCVBL_AMT,
       CUR_YEAR_RCVBL_AMT,
       TIME_STAMP
        FROM DW_A_OWE_AMT_MONIT X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_owe_amt_monit 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_owe_amt_monit 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度日累计欠费明细统计
  PROCEDURE P_ETL_DW_A_OWE_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_owe_amt_day', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_OWE_AMT_DAY X WHERE X.STAT_YMD = V_YMD;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_OWE_AMT_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       MR_SECT_NO,
       RCVBL_YM,
       OWE_NUM,
       OWE_AMT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       MR_SECT_NO,
       RCVBL_YM,
       OWE_NUM,
       OWE_AMT,
       TIME_STAMP
        FROM DW_A_OWE_AMT_DAY X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_owe_amt_day 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_owe_amt_day 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度欠费明细统计
  PROCEDURE P_ETL_DW_A_OWE_AMT_STAT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_owe_amt_stat', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_OWE_AMT_STAT X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_OWE_AMT_STAT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       MR_SECT_NO,
       RCVBL_YM,
       OWE_AMT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       MR_SECT_NO,
       RCVBL_YM,
       OWE_AMT,
       TIME_STAMP
        FROM DW_A_OWE_AMT_STAT X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_owe_amt_stat 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_owe_amt_stat 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度日累计电费应收统计
  PROCEDURE P_ETL_DW_A_ACCU_DAY_RCVBL(I_DATA     VARCHAR2,
                                      I_RCVBL_YM VARCHAR2,
                                      OUT_CODE   OUT NUMBER,
                                      OUT_MSG    OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_accu_day_rcvbl', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_ACCU_DAY_RCVBL X
     WHERE X.STAT_YMD = V_YMD
       AND X.RCVBL_YM = I_RCVBL_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_ACCU_DAY_RCVBL
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       STAT_YM,
       RCVBL_YM,
       MR_SECT_NO,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       VOLT_CODE,
       RCVBL_AMT,
       RCVBL_CC,
       RCVBL_NUM,
       RCVBL_PQ,
       RS_PA,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YMD,
       STAT_YM,
       RCVBL_YM,
       MR_SECT_NO,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       VOLT_CODE,
       RCVBL_AMT,
       RCVBL_CC,
       RCVBL_NUM,
       RCVBL_PQ,
       RS_PA,
       TIME_STAMP
        FROM DW_A_ACCU_DAY_RCVBL X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.RCVBL_YM = I_RCVBL_YM
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_accu_day_rcvbl 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_accu_day_rcvbl 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度电费应收统计
  PROCEDURE P_ETL_DW_A_RCVBL_AMT_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_rcvbl_amt_mon', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_RCVBL_AMT_MON X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_RCVBL_AMT_MON
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       RCVBL_YM,
       MR_SECT_NO,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       AMT_TYPE,
       VOLT_CODE,
       RCVBL_AMT,
       RCVBL_CC,
       RCVBL_NUM,
       RCVBL_PQ,
       RS_PA,
       RCVED_AMT,
       RCVBL_INPRICE_AMT,
       RCVBL_PL_AMT,
       RCVED_IN_PRICE_AMT,
       RCVED_PL_AMT,
       RCVBL_PENALTY,
       RCVED_PENALTY,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       X.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       X.STAT_YM,
       X.RCVBL_YM,
       X.MR_SECT_NO,
       X.ELEC_TYPE_CODE,
       X.CONS_SORT_CODE,
       X.TRADE_CODE,
       X.HEC_TRADE_CODE,
       X.AMT_TYPE,
       X.VOLT_CODE,
       X.RCVBL_AMT,
       X.RCVBL_CC,
       X.RCVBL_NUM,
       X.RCVBL_PQ,
       X.RS_PA,
       X.RCVED_AMT,
       X.RCVBL_INPRICE_AMT,
       X.RCVBL_PL_AMT,
       X.RCVED_IN_PRICE_AMT,
       X.RCVED_PL_AMT,
       X.RCVBL_PENALTY,
       X.RCVED_PENALTY,
       X.TIME_STAMP
        FROM DW_A_RCVBL_AMT_MON X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_rcvbl_amt_mon 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_rcvbl_amt_mon 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度电费结存统计
  PROCEDURE P_ETL_DW_A_PRERCV_STAT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_prercv_stat', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_PRERCV_STAT X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_PRERCV_STAT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       BAL_CC,
       BAL_FEE,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       VOLT_CODE,
       BAL_CC,
       BAL_FEE,
       TIME_STAMP
        FROM DW_A_PRERCV_STAT X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_prercv_stat 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_prercv_stat 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度业务费收取统计
  PROCEDURE P_ETL_DW_A_BUSI_RCVED_DET(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_busi_rcved_det', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_BUSI_RCVED_DET X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_BUSI_RCVED_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       CTRT_CAP,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       BUSI_COST_TYPE,
       RCVBL_AMT,
       RCVED_AMT,
       REFUND_AMT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       CTRT_CAP,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       BUSI_COST_TYPE,
       RCVBL_AMT,
       RCVED_AMT,
       REFUND_AMT,
       TIME_STAMP
        FROM DW_A_BUSI_RCVED_DET X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_busi_rcved_det 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_busi_rcved_det 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度临时用电收费情况
  PROCEDURE P_ETL_DW_A_TEMP_PQ(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_temp_pq', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_TEMP_PQ X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_TEMP_PQ
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       TMP_FLAG,
       TMP_CONS_NUM,
       TMP_CAP,
       RCVBL_AMT,
       RCVED,
       REFUND_AMT,
       TIMES_TAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       TMP_FLAG,
       TMP_CONS_NUM,
       TMP_CAP,
       RCVBL_AMT,
       RCVED,
       REFUND_AMT,
       TIMES_TAMP
        FROM DW_A_TEMP_PQ X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_temp_pq 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_temp_pq 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度呆坏账统计
  PROCEDURE P_ETL_DW_A_BAD_PA_STAT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_bad_pa_stat', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_BAD_PA_STAT X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_BAD_PA_STAT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       RCVBL_YM,
       TRADE_CODE,
       INC_DEBT_NUM,
       INC_DEBT_AMOUNT,
       DULL_DEBT_NUM,
       DULL_DEBT_AMOUNT,
       ACCU_DEBT_AMOUNT,
       RCV_DEBT_NUM,
       DULL_PA_PBR,
       ACCU_RCV_DEBT_AMOUNT,
       ACCU_BAD_AMOUNT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       RCVBL_YM,
       TRADE_CODE,
       INC_DEBT_NUM,
       INC_DEBT_AMOUNT,
       DULL_DEBT_NUM,
       DULL_DEBT_AMOUNT,
       ACCU_DEBT_AMOUNT,
       RCV_DEBT_NUM,
       DULL_PA_PBR,
       ACCU_RCV_DEBT_AMOUNT,
       ACCU_BAD_AMOUNT,
       TIME_STAMP
        FROM DW_A_BAD_PA_STAT X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_bad_pa_stat 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_bad_pa_stat 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度柜台现金缴费冲正统计
  PROCEDURE P_ETL_DW_A_REVERSE_MO(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_reverse_mo', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_REVERSE_MO X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_REVERSE_MO
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       NEXT_DAY_REVERSE_NUM,
       NEXT_DAY_REVERSE_AMT,
       DAY_REVERSE_NUM,
       DAY_REVERSE_AMT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       NEXT_DAY_REVERSE_NUM,
       NEXT_DAY_REVERSE_AMT,
       DAY_REVERSE_NUM,
       DAY_REVERSE_AMT,
       TIME_STAMP
        FROM DW_A_REVERSE_MO X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_reverse_mo 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_reverse_mo 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --年冻结陈欠电费统计
  PROCEDURE P_ETL_DW_A_OLD_PA_RCVED(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YEAR VARCHAR2(8) := SUBSTR(I_DATA, 1, 4);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_old_pa_rcved', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_OLD_PA_RCVED X WHERE X.STAT_YEAR = V_YEAR;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_OLD_PA_RCVED
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YEAR,
       MR_SECT_NO,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       YEAR,
       RCVBL_OLD_NUM,
       RCVBL_OLD_AMT,
       RCVBL_OLD_CC,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YEAR,
       MR_SECT_NO,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       X.YEAR,
       RCVBL_OLD_NUM,
       RCVBL_OLD_AMT,
       RCVBL_OLD_CC,
       TIME_STAMP
        FROM DW_A_OLD_PA_RCVED X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YEAR = V_YEAR
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YEAR || '12', 'YYYYMM')),
                     'YYYYMMDD') BETWEEN B.BGN_YMD AND
             NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_old_pa_rcved 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_old_pa_rcved 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度高压分次划拨情况统计
  PROCEDURE P_ETL_DW_A_HV_GP_PAYBACK(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_hv_gp_payback', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_HV_GP_PAYBACK X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_HV_GP_PAYBACK
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       RCVBL_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       HV_CC,
       GP_CC_NUM,
       GP_EXEC_NUM,
       GP_MON_BAL,
       GP_RCVED_AMT,
       RCVBL_AMT,
       TIMES_TAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       RCVBL_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       HV_CC,
       GP_CC_NUM,
       GP_EXEC_NUM,
       GP_MON_BAL,
       GP_RCVED_AMT,
       RCVBL_AMT,
       TIMES_TAMP
        FROM DW_A_HV_GP_PAYBACK X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_hv_gp_payback 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_hv_gp_payback 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  ---月度缴费超期情况统计
  PROCEDURE P_ETL_DW_A_OVER_PAY_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_a_over_pay_mon', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_OVER_PAY_MON X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_OVER_PAY_MON
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       ONTIME_PAY_CC,
       ONTIME_PAY_AMT,
       ONTIME_UN_PAY_CC,
       ONTIME_UN_PAY_AMT,
       OVER_PAY_CC,
       OVER_PAY_AMT,
       OVER_UN_PAY_CC,
       OVER_UN_PAY_AMT,
       POWEROFF_PAY_CC,
       POWEROFF_PAY_AMT,
       POWEROFF_UN_PAY_CC,
       POWEROFF_UN_PAY_AMT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       ONTIME_PAY_CC,
       ONTIME_PAY_AMT,
       ONTIME_UN_PAY_CC,
       ONTIME_UN_PAY_AMT,
       OVER_PAY_CC,
       OVER_PAY_AMT,
       OVER_UN_PAY_CC,
       OVER_UN_PAY_AMT,
       POWEROFF_PAY_CC,
       POWEROFF_PAY_AMT,
       POWEROFF_UN_PAY_CC,
       POWEROFF_UN_PAY_AMT,
       TIME_STAMP
        FROM DW_A_OVER_PAY_MON X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_a_hv_gp_payback 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_a_hv_gp_payback 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --日在途资金统计
  PROCEDURE P_INS_DW_A_TRANSIT_STAT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_transit_stat', I_DATA);
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_TRANSIT_STAT X
     WHERE X.RCV_YM = V_YM
       AND X.RCV_YMD = V_YMD;
    --开始数据统计,插入到稽查管理库OMAC
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO,
                                              '12101',
                                              5,
                                              '35101',
                                              5,
                                              7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >=
                       DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
      IF V_PRO_ORG_NO = '37101' THEN
        INSERT INTO DW_A_TRANSIT_STAT
          (DATA_ID,
           PRO_ORG_NO,
           ORG_NO,
           PS_BUSI_AREA_CODE,
           RCV_YMD,
           RCV_YM,
           STAT_YMD,
           PAY_MODE,
           SETTLE_CODE,
           TRANSIT_AMT,
           TRANSIT_NUM,
           INTIME_CASHCHK_AMT,
           ARRIVAL_AMT,
           TIME_STAMP)
          SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
                 V_PRO_ORG_NO,
                 A.ORG_NO,
                 '01',
                 V_YMD,
                 V_YM,
                 V_YMD,
                 PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', A.PAY_MODE) PAY_MODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('SETTLE_MODE', A.SETTLE_MODE) SETTLE_MODE,
                 TRANSIT_AMT,
                 TRANSIT_NUM,
                 INTIME_CASHCHK_AMT,
                 ARRIVAL_AMT,
                 SYSDATE
            FROM (SELECT /*+parallel(a 4) parallel(b 4)**/
                   A.ORG_NO,
                   A.SETTLE_MODE,
                   NVL(SUM(A.RCV_AMT), 0) TRANSIT_AMT,
                   COUNT(1) TRANSIT_NUM,
                   0 INTIME_CASHCHK_AMT,
                   0 ARRIVAL_AMT,
                   A.PAY_MODE
                    FROM SY_SG_A_PAY_FLOW A
                   WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND A.RCVED_DATE = V_YMD
                     AND A.CHARGE_YM = V_YM
                     AND A.STATUS_CODE = '01'
                     AND A.RELATE_ID IS NULL
                     AND A.PAY_MODE IN
                         ('010201', '020311', '020351', '020221')
                   GROUP BY A.ORG_NO, A.SETTLE_MODE, A.PAY_MODE
                  UNION ALL
                  SELECT /*+parallel(a 4) parallel(c 4)**/
                   A.ORG_NO,
                   A.SETTLE_MODE,
                   0 TRANSIT_AMT,
                   0 TRANSIT_NUM,
                   NVL(SUM(C.CASHCHK_AMT), 0) INTIME_CASHCHK_AMT,
                   NVL(SUM(CASE
                             WHEN C.DISPOSE_DATE IS NOT NULL THEN
                              C.CASHCHK_AMT
                             ELSE
                              0
                           END),
                       0) ARRIVAL_AMT,
                   A.PAY_MODE
                    FROM SY_SG_A_PAY_FLOW A, SY_SG_A_CASHCHK_FLOW C
                   WHERE A.CASHCHK_ID = C.CASHCHK_ID
                     AND C.CASHCHK_DATE IS NOT NULL --已解款
                     AND A.SETTLE_MODE IN ('02', '03', '04', '0401', '0402') --票据
                     AND A.ORG_NO = C.ORG_NO
                     AND A.RCVED_DATE = V_YMD
                     AND A.CHARGE_YM = V_YM
                     AND A.STATUS_CODE = '01'
                     AND A.RELATE_ID IS NULL
                     AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                   GROUP BY A.ORG_NO, A.SETTLE_MODE, A.PAY_MODE) A;
      ELSE
        INSERT INTO DW_A_TRANSIT_STAT
          (DATA_ID,
           PRO_ORG_NO,
           ORG_NO,
           PS_BUSI_AREA_CODE,
           RCV_YMD,
           RCV_YM,
           STAT_YMD,
           PAY_MODE,
           SETTLE_CODE,
           TRANSIT_AMT,
           TRANSIT_NUM,
           INTIME_CASHCHK_AMT,
           ARRIVAL_AMT,
           TIME_STAMP)
          SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
                 V_PRO_ORG_NO,
                 A.ORG_NO,
                 '01',
                 V_YMD,
                 V_YM,
                 V_YMD,
                 PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', PAY_MODE) PAY_MODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('SETTLE_MODE', A.SETTLE_MODE) SETTLE_MODE,
                 TRANSIT_AMT,
                 TRANSIT_NUM,
                 INTIME_CASHCHK_AMT,
                 ARRIVAL_AMT,
                 SYSDATE
            FROM (SELECT /*+parallel(a 4) parallel(b 4)**/
                   A.ORG_NO,
                   A.SETTLE_MODE,
                   NVL(SUM(B.TRANSIT_AMT), 0) TRANSIT_AMT,
                   COUNT(1) TRANSIT_NUM,
                   0 INTIME_CASHCHK_AMT,
                   0 ARRIVAL_AMT,
                   A.PAY_MODE
                    FROM SY_SG_A_PAY_FLOW A, SY_SG_A_TRANSIT_DET B
                   WHERE A.ORG_NO = B.ORG_NO
                     AND A.CHARGE_ID = B.CHARGE_ID
                     AND B.RCVED_STATUS_CODE <> '01' --01已销账
                     AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND A.RCVED_DATE = V_YMD
                     AND A.CHARGE_YM = V_YM
                     AND A.STATUS_CODE = '01'
                     AND B.TRANSIT_YM = V_YM --
                   GROUP BY A.ORG_NO, A.SETTLE_MODE, A.PAY_MODE
                  UNION ALL
                  SELECT /*+parallel(a 4) parallel(c 4)**/
                   A.ORG_NO,
                   A.SETTLE_MODE,
                   0 TRANSIT_AMT,
                   0 TRANSIT_NUM,
                   NVL(SUM(C.CASHCHK_AMT), 0) INTIME_CASHCHK_AMT,
                   NVL(SUM(CASE
                             WHEN C.DISPOSE_DATE IS NOT NULL THEN
                              C.CASHCHK_AMT
                             ELSE
                              0
                           END),
                       0) ARRIVAL_AMT,
                   A.PAY_MODE
                    FROM SY_SG_A_PAY_FLOW A, SY_SG_A_CASHCHK_FLOW C
                   WHERE A.CASHCHK_ID = C.CASHCHK_ID
                     AND C.CASHCHK_DATE IS NOT NULL --已解款
                     AND A.SETTLE_MODE IN ('02', '03', '04', '0401', '0402') --票据
                     AND A.ORG_NO = C.ORG_NO
                     AND A.RCVED_DATE = V_YMD
                     AND A.CHARGE_YM = V_YM
                     AND A.STATUS_CODE = '01'
                     AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                   GROUP BY A.ORG_NO, A.SETTLE_MODE, A.PAY_MODE) A;
      END IF;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_transit_stat 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_transit_stat 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_A_TRANSIT_STAT;

  --日欠费用户明细
  PROCEDURE P_INS_DW_A_OWE_AMT_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    V_USE_DATE   VARCHAR2(6) := SUBSTR(I_DATA, 1, 6); --统计年月
    V_LC_YM      VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_USE_DATE,
                                                           'yyyymm'),
                                                   -1),
                                        'yyyymm');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_owe_amt_det', I_DATA);
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_OWE_AMT_DET X WHERE X.STAT_YMD = V_YMD;
    --开始数据统计,插入到稽查管理库OMAC
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO,
                                              '12101',
                                              5,
                                              '35101',
                                              5,
                                              7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >=
                       DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
      IF (V_YMD = TO_CHAR(SYSDATE - 1, 'YYYYMMDD')) THEN
        --统计往月、陈欠欠费情况
        INSERT INTO DW_A_OWE_AMT_DET
          (DATA_ID,
           PRO_ORG_NO,
           ORG_NO,
           PS_BUSI_AREA_CODE,
           STAT_YMD,
           ELEC_TYPE_CODE,
           CONS_SORT_CODE,
           TRADE_CODE,
           HEC_TRADE_CODE,
           CONS_NO,
           CONS_NAME,
           VOLT_CODE,
           MR_SECT_NO,
           RCVBL_YM,
           RCVBL_AMT,
           RCVED_AMT,
           OWE_AMT,
           RCVBL_PL_AMT,
           RCVBL_INPRICE_AMT,
           RCVED_IN_PRICE_AMT,
           RCVED_PL_AMT,
           TIME_STAMP)
          SELECT /*+parallel(a 4) parallel(b 4)**/
           PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
           V_PRO_ORG_NO,
           A.ORG_NO,
           '01',
           V_YMD,
           PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
           PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', B.CONS_SORT_CODE) CONS_SORT_CODE,
           PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_TYPE_CODE) TRADE_CODE,
           PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                      B.HEC_TRADE_CODE) HEC_TRADE_CODE,
           A.CONS_NO,
           B.CONS_NAME,
           PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE) VOLT_CODE,
           B.MR_SECT_NO,
           A.RCVBL_YM,
           NVL(SUM(RCVBL_AMT), 0),
           NVL(SUM(RCVED_AMT), 0),
           NVL(SUM(RCVBL_AMT - RCVED_AMT), 0),
           NVL(SUM(RCVBL_PL_AMT), 0),
           NVL(SUM(RCVBL_INPRICE_AMT), 0),
           NVL(SUM(RCVED_IN_PRICE_AMT), 0),
           NVL(SUM(RCVED_PL_AMT), 0),
           SYSDATE
            FROM SY_SG_A_RCVBL_FLOW A, SY_SG_ARC_E_CONS_SNAP B
           WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
             AND A.AMT_TYPE NOT IN ('04', '05', '11', '12')
             AND A.SETTLE_FLAG IN ('01', '02')
             AND A.RCVBL_YM <= V_LC_YM
             AND A.RCVBL_AMT - A.RCVED_AMT > 0
             AND A.ORG_NO = B.ORG_NO
             AND A.CONS_NO = B.CONS_NO
             AND A.CALC_ID = B.CALC_ID
           GROUP BY A.ORG_NO,
                    A.CONS_NO,
                    A.RCVBL_YM,
                    B.ELEC_TYPE_CODE,
                    B.CONS_SORT_CODE,
                    B.TRADE_TYPE_CODE,
                    B.HEC_TRADE_CODE,
                    B.CONS_NAME,
                    B.VOLT_CODE,
                    B.MR_SECT_NO;
      ELSE
        INSERT INTO DW_A_OWE_AMT_DET
          (DATA_ID,
           PRO_ORG_NO,
           ORG_NO,
           PS_BUSI_AREA_CODE,
           STAT_YMD,
           ELEC_TYPE_CODE,
           CONS_SORT_CODE,
           TRADE_CODE,
           HEC_TRADE_CODE,
           CONS_NO,
           CONS_NAME,
           VOLT_CODE,
           MR_SECT_NO,
           RCVBL_YM,
           RCVBL_AMT,
           RCVED_AMT,
           OWE_AMT,
           RCVBL_PL_AMT,
           RCVBL_INPRICE_AMT,
           RCVED_IN_PRICE_AMT,
           RCVED_PL_AMT,
           TIME_STAMP)
          SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
                 V_PRO_ORG_NO PRO_ORG_NO,
                 ORG_NO,
                 '01' PS_BUSI_AREA_CODE,
                 STAT_YMD,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                            CONS_SORT_CODE) CONS_SORT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            HEC_TRADE_CODE) HEC_TRADE_CODE,
                 CONS_NO,
                 CONS_NAME,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE) VOLT_CODE,
                 MR_SECT_NO,
                 RCVBL_YM,
                 SUM(RCVBL_AMT),
                 SUM(RCVED_AMT),
                 SUM(OWE_AMT),
                 SUM(RCVBL_PL_AMT),
                 SUM(RCVBL_INPRICE_AMT),
                 SUM(RCVED_IN_PRICE_AMT),
                 SUM(RCVED_PL_AMT),
                 SYSDATE
            FROM (SELECT /*+PARALLEL(A 4)(B 4)(C 4)*/
                   A.ORG_NO ORG_NO,
                   V_YMD STAT_YMD,
                   B.ELEC_TYPE_CODE ELEC_TYPE_CODE,
                   B.CONS_SORT_CODE CONS_SORT_CODE,
                   B.TRADE_TYPE_CODE TRADE_CODE,
                   B.HEC_TRADE_CODE HEC_TRADE_CODE,
                   A.CONS_NO CONS_NO,
                   B.CONS_NAME CONS_NAME,
                   B.VOLT_CODE VOLT_CODE,
                   B.MR_SECT_NO MR_SECT_NO,
                   A.RCVBL_YM RCVBL_YM,
                   NVL(SUM(A.RCVBL_AMT), 0) RCVBL_AMT,
                   NVL(SUM(C.THIS_RCVED_AMT), 0) RCVED_AMT,
                   NVL(SUM(A.RCVBL_AMT - C.THIS_RCVED_AMT), 0) OWE_AMT,
                   NVL(SUM(A.RCVBL_PL_AMT), 0) RCVBL_PL_AMT,
                   NVL(SUM(A.RCVBL_INPRICE_AMT), 0) RCVBL_INPRICE_AMT,
                   NVL(SUM(C.THIS_IN_PRICE_AMT), 0) RCVED_IN_PRICE_AMT,
                   NVL(SUM(C.THIS_PL_AMT), 0) RCVED_PL_AMT
                    FROM SY_SG_A_RCVBL_FLOW    A,
                         SY_SG_A_RCVED_FLOW    C,
                         SY_SG_ARC_E_CONS_SNAP B
                   WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND A.AMT_TYPE NOT IN ('04', '05', '11', '12')
                     AND A.SETTLE_FLAG IN ('01', '02', '03')
                     AND A.RCVBL_YM <= V_LC_YM
                     AND C.RCVED_DATE <= V_YMD
                     AND A.RCVBL_AMT_ID = C.RCVBL_AMT_ID
                     AND A.RCVBL_AMT - C.THIS_RCVED_AMT > 0
                     AND A.ORG_NO = B.ORG_NO
                     AND A.CONS_NO = B.CONS_NO
                     AND A.CALC_ID = B.CALC_ID
                   GROUP BY A.ORG_NO,
                            A.CONS_NO,
                            A.RCVBL_YM,
                            B.ELEC_TYPE_CODE,
                            B.CONS_SORT_CODE,
                            B.TRADE_TYPE_CODE,
                            B.HEC_TRADE_CODE,
                            B.CONS_NAME,
                            B.VOLT_CODE,
                            B.MR_SECT_NO
                  UNION ALL
                  SELECT /*+PARALLEL(A 4)(B 4)(C 4)*/
                   A.ORG_NO ORG_NO,
                   V_YMD STAT_YMD,
                   B.ELEC_TYPE_CODE ELEC_TYPE_CODE,
                   B.CONS_SORT_CODE CONS_SORT_CODE,
                   B.TRADE_TYPE_CODE TRADE_CODE,
                   B.HEC_TRADE_CODE HEC_TRADE_CODE,
                   A.CONS_NO CONS_NO,
                   B.CONS_NAME CONS_NAME,
                   B.VOLT_CODE VOLT_CODE,
                   B.MR_SECT_NO MR_SECT_NO,
                   A.RCVBL_YM RCVBL_YM,
                   NVL(SUM(A.RCVBL_AMT), 0) RCVBL_AMT,
                   NVL(SUM(C.THIS_RCVED_AMT), 0) RCVED_AMT,
                   NVL(SUM(A.RCVBL_AMT - C.THIS_RCVED_AMT), 0) OWE_AMT,
                   NVL(SUM(A.RCVBL_PL_AMT), 0) RCVBL_PL_AMT,
                   NVL(SUM(A.RCVBL_INPRICE_AMT), 0) RCVBL_INPRICE_AMT,
                   NVL(SUM(C.THIS_IN_PRICE_AMT), 0) RCVED_IN_PRICE_AMT,
                   NVL(SUM(C.THIS_PL_AMT), 0) RCVED_PL_AMT
                    FROM SY_SG_ARC_A_RCVBL_FLOW A,
                         SY_SG_A_RCVED_FLOW     C,
                         SY_SG_ARC_E_CONS_SNAP  B
                   WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND A.AMT_TYPE NOT IN ('04', '05', '11', '12')
                     AND A.SETTLE_FLAG = '03'
                     AND A.RCVBL_YM <= V_LC_YM
                     AND C.RCVED_DATE <= V_YMD
                     AND A.RCVBL_AMT_ID = C.RCVBL_AMT_ID
                     AND A.RCVBL_AMT - C.THIS_RCVED_AMT > 0
                     AND A.ORG_NO = B.ORG_NO
                     AND A.CONS_NO = B.CONS_NO
                     AND A.CALC_ID = B.CALC_ID
                   GROUP BY A.ORG_NO,
                            A.CONS_NO,
                            A.RCVBL_YM,
                            B.ELEC_TYPE_CODE,
                            B.CONS_SORT_CODE,
                            B.TRADE_TYPE_CODE,
                            B.HEC_TRADE_CODE,
                            B.CONS_NAME,
                            B.VOLT_CODE,
                            B.MR_SECT_NO)
           GROUP BY ORG_NO,
                    CONS_NO,
                    STAT_YMD,
                    RCVBL_YM,
                    PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                               ELEC_TYPE_CODE),
                    PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                               CONS_SORT_CODE),
                    PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                               TRADE_CODE),
                    PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                               HEC_TRADE_CODE),
                    CONS_NAME,
                    PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
                    MR_SECT_NO;
      
      END IF;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_owe_amt_det 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_owe_amt_det 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_A_OWE_AMT_DET;

  --日电费回收监控统计
  --从表dw_a_owe_amt_det抽取数据
  /*PROCEDURE P_INS_DW_A_OWE_AMT_MONIT(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    V_USE_DATE   VARCHAR2(6) := SUBSTR(I_DATA, 1, 6); --统计年月
    V_YEAR       VARCHAR2(4) := SUBSTR(I_DATA, 1, 4); --统计年
    V_LAST_YEAR  VARCHAR2(4) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YEAR, 'yyyy'),
                                                   -12),
                                        'yyyy'); --上年
    V_LC_YM      VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_USE_DATE,
                                                           'yyyymm'),
                                                   -1),
                                        'yyyymm');
    --本年年初
    V_BEGIN_YM VARCHAR2(6) := V_YEAR || '01';
    --v_sum_ym   VARCHAR2(6);
    V_DAY VARCHAR2(2) := SUBSTR(I_DATA, 7, 2);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_OWE_AMT_MONIT', I_DATA);
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_OWE_AMT_MONIT X WHERE X.STAT_YMD = V_YMD;
    --统计上月、本年、陈欠欠费情况
    INSERT INTO DW_A_OWE_AMT_MONIT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       LAST_OWE_NUM,
       LAST_OWE_AMT,
       CUR_YEAR_OWE_NUM,
       CUR_YEAR_OWE_AMT,
       OLD_OWE_NUM,
       OLD_OWE_AMT,
       LAST_RCVBL_AMT,
       CUR_YEAR_RCVBL_AMT,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             A.ORG_NO,
             '01',
             V_YMD,
             ELEC_TYPE_CODE,
             CONS_SORT_CODE,
             TRADE_CODE,
             HEC_TRADE_CODE,
             NVL(SUM(CASE
                       WHEN A.RCVBL_YM = V_LC_YM THEN
                        1
                       ELSE
                        0
                     END),
                 0),
             NVL(SUM(CASE
                       WHEN A.RCVBL_YM = V_LC_YM THEN
                        OWE_AMT
                       ELSE
                        0
                     END),
                 0),
             NVL(SUM(CASE
                       WHEN SUBSTR(A.RCVBL_YM, 1, 4) = V_YEAR AND
                            A.RCVBL_YM <= V_LC_YM THEN
                        1
                       ELSE
                        0
                     END),
                 0),
             NVL(SUM(CASE
                       WHEN SUBSTR(A.RCVBL_YM, 1, 4) = V_YEAR AND
                            A.RCVBL_YM <= V_LC_YM THEN
                        OWE_AMT
                       ELSE
                        0
                     END),
                 0),
             NVL(SUM(CASE
                       WHEN SUBSTR(A.RCVBL_YM, 1, 4) <= V_LAST_YEAR THEN
                        1
                       ELSE
                        0
                     END),
                 0),
             NVL(SUM(CASE
                       WHEN SUBSTR(A.RCVBL_YM, 1, 4) <= V_LAST_YEAR THEN
                        OWE_AMT
                       ELSE
                        0
                     END),
                 0),
             0 LAST_RCVBL_AMT,
             0 CUR_YEAR_RCVBL_AMT,
             SYSDATE
        FROM DW_A_OWE_AMT_DET A
       WHERE A.STAT_YMD = V_YMD
       GROUP BY A.ORG_NO,
                ELEC_TYPE_CODE,
                CONS_SORT_CODE,
                TRADE_CODE,
                HEC_TRADE_CODE;
  
    --上月应收金额获取日累计应收统计（dw_a_accu_day_rcvbl）中的金额
    --不从dw_a_rcvbl_amt_mon取，因为它的应收年月是变动的，分割日期是10日。而这里是6日。
    UPDATE DW_A_OWE_AMT_MONIT A
       SET A.LAST_RCVBL_AMT =
           (SELECT SUM(NVL(B.RCVBL_AMT, 0))
              FROM DW_A_ACCU_DAY_RCVBL B
             WHERE ((V_DAY > 6 AND B.STAT_YMD = V_USE_DATE || '06') OR
                   (V_DAY <= 6 AND B.STAT_YMD = V_YMD))
               AND A.ORG_NO = B.ORG_NO
               AND A.ELEC_TYPE_CODE = B.ELEC_TYPE_CODE
               AND A.CONS_SORT_CODE = B.CONS_SORT_CODE
               AND A.TRADE_CODE = B.TRADE_CODE
               AND NVL(A.HEC_TRADE_CODE, 1) = NVL(B.HEC_TRADE_CODE, 1))
     WHERE A.STAT_YMD = V_YMD;
  
    --dw_a_accu_day_rcvbl 1月的应收+..+上月的应收(last_rcvbl_amt)
  
    UPDATE DW_A_OWE_AMT_MONIT A
       SET A.CUR_YEAR_RCVBL_AMT =
           (WITH TMP_YEAR_RCVBL_AMT AS (SELECT ORG_NO,
                                               ELEC_TYPE_CODE,
                                               TRADE_CODE,
                                               NVL(HEC_TRADE_CODE, 1) AS HEC_TRADE_CODE,
                                               CONS_SORT_CODE,
                                               SUM(NVL(B.RCVBL_AMT, 0)) AS RCVBL_AMT
                                          FROM DW_A_ACCU_DAY_RCVBL B
                                         WHERE ((V_DAY > 6 AND
                                               B.STAT_YMD =
                                               V_USE_DATE || '06') OR
                                               (V_DAY <= 6 AND
                                               B.STAT_YMD = V_YMD) OR
                                               (B.STAT_YM > V_BEGIN_YM AND
                                               B.STAT_YM <= V_LC_YM AND
                                               SUBSTR(B.STAT_YMD, 7, 2) = '06'))
                                         GROUP BY ORG_NO,
                                                  ELEC_TYPE_CODE,
                                                  TRADE_CODE,
                                                  NVL(HEC_TRADE_CODE, 1),
                                                  CONS_SORT_CODE)
             SELECT SUM(NVL(B.RCVBL_AMT, 0))
               FROM TMP_YEAR_RCVBL_AMT B
              WHERE A.ORG_NO = B.ORG_NO
                AND A.ELEC_TYPE_CODE = B.ELEC_TYPE_CODE
                AND A.CONS_SORT_CODE = B.CONS_SORT_CODE
                AND A.TRADE_CODE = B.TRADE_CODE
                AND NVL(A.HEC_TRADE_CODE, 1) = NVL(B.HEC_TRADE_CODE, 1))
              WHERE A.STAT_YMD = V_YMD;
  
  
    UPDATE DW_A_OWE_AMT_MONIT A
       SET A.LAST_RCVBL_AMT = 0
     WHERE A.STAT_YMD = V_YMD
       AND A.LAST_RCVBL_AMT IS NULL;
    UPDATE DW_A_OWE_AMT_MONIT A
       SET A.CUR_YEAR_RCVBL_AMT = 0
     WHERE A.STAT_YMD = V_YMD
       AND A.CUR_YEAR_RCVBL_AMT IS NULL;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_owe_amt_monit 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_owe_amt_monit 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;*/

  PROCEDURE P_INS_DW_A_OWE_AMT_MONIT(I_PRO_ORG_NO VARCHAR2,
                                     I_DATE       VARCHAR2,
                                     OUT_CODE     OUT NUMBER,
                                     OUT_MSG      OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := I_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    V_USE_DATE   VARCHAR2(6) := SUBSTR(I_DATE, 1, 6); --统计年月
    V_YEAR       VARCHAR2(4) := SUBSTR(I_DATE, 1, 4); --统计年
    V_LAST_YEAR  VARCHAR2(4) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YEAR, 'yyyy'),
                                                   -12),
                                        'yyyy'); --上年
    V_LC_YM      VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_USE_DATE,
                                                           'yyyymm'),
                                                   -1),
                                        'yyyymm');
    --本年年初
    V_BEGIN_YM VARCHAR2(6) := V_YEAR || '01';
    --v_sum_ym   VARCHAR2(6);
    V_DAY VARCHAR2(2) := SUBSTR(I_DATE, 7, 2);
  
  BEGIN
  
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_OWE_AMT_MONIT X WHERE X.STAT_YMD = V_YMD;
  
    INSERT INTO DW_A_OWE_AMT_MONIT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       LAST_OWE_NUM,
       LAST_OWE_AMT,
       CUR_YEAR_OWE_NUM,
       CUR_YEAR_OWE_AMT,
       OLD_OWE_NUM,
       OLD_OWE_AMT,
       LAST_RCVBL_AMT,
       CUR_YEAR_RCVBL_AMT,
       TIME_STAMP)
      WITH TMPA AS
       (SELECT /*PARALLEL(A 14)*/
         A.ORG_NO,
         A.ELEC_TYPE_CODE,
         A.CONS_SORT_CODE,
         A.TRADE_CODE,
         A.HEC_TRADE_CODE
          FROM DW_A_ACCU_DAY_RCVBL A
         WHERE A.STAT_YMD = V_YMD
         GROUP BY A.ORG_NO,
                  A.ELEC_TYPE_CODE,
                  A.CONS_SORT_CODE,
                  A.TRADE_CODE,
                  A.HEC_TRADE_CODE)
      SELECT /*+PARALLEL(A 14) (B 14)*/
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
       V_PRO_ORG_NO,
       A.ORG_NO,
       '01',
       V_YMD,
       A.ELEC_TYPE_CODE,
       A.CONS_SORT_CODE,
       A.TRADE_CODE,
       A.HEC_TRADE_CODE,
       NVL(SUM(CASE
                 WHEN B.RCVBL_YM = V_LC_YM THEN
                  1
                 ELSE
                  0
               END),
           0) LAST_OWE_NUM,
       NVL(SUM(CASE
                 WHEN B.RCVBL_YM = V_LC_YM THEN
                  OWE_AMT
                 ELSE
                  0
               END),
           0) LAST_OWE_AMT,
       NVL(SUM(CASE
                 WHEN SUBSTR(B.RCVBL_YM, 1, 4) = V_YEAR AND B.RCVBL_YM <= V_LC_YM THEN
                  1
                 ELSE
                  0
               END),
           0) CUR_YEAR_OWE_NUM,
       NVL(SUM(CASE
                 WHEN SUBSTR(B.RCVBL_YM, 1, 4) = V_YEAR AND B.RCVBL_YM <= V_LC_YM THEN
                  OWE_AMT
                 ELSE
                  0
               END),
           0) CUR_YEAR_OWE_AMT,
       NVL(SUM(CASE
                 WHEN SUBSTR(B.RCVBL_YM, 1, 4) <= V_LAST_YEAR THEN
                  1
                 ELSE
                  0
               END),
           0) OLD_OWE_NUM,
       NVL(SUM(CASE
                 WHEN SUBSTR(B.RCVBL_YM, 1, 4) <= V_LAST_YEAR THEN
                  OWE_AMT
                 ELSE
                  0
               END),
           0) OLD_OWE_AMT,
       0 LAST_RCVBL_AMT,
       0 CUR_YEAR_RCVBL_AMT,
       SYSDATE
        FROM TMPA A, DW_A_OWE_AMT_DET B
       WHERE B.STAT_YMD = V_YMD
         AND A.ORG_NO = B.ORG_NO(+)
         AND A.ELEC_TYPE_CODE = B.ELEC_TYPE_CODE(+)
         AND A.CONS_SORT_CODE = B.CONS_SORT_CODE(+)
         AND A.TRADE_CODE = B.TRADE_CODE(+)
         AND NVL(A.HEC_TRADE_CODE, 0) = NVL(B.HEC_TRADE_CODE(+), 0)
       GROUP BY A.ORG_NO,
                A.ELEC_TYPE_CODE,
                A.CONS_SORT_CODE,
                A.TRADE_CODE,
                A.HEC_TRADE_CODE;
  
    COMMIT;
  
    --上月应收金额获取日累计应收统计（dw_a_accu_day_rcvbl）中的金额
    --不从dw_a_rcvbl_amt_mon取，因为它的应收年月是变动的，分割日期是10日。而这里是6日。
    UPDATE DW_A_OWE_AMT_MONIT A
       SET A.LAST_RCVBL_AMT =
           (WITH TMP_LAST_RCVBL_AMT AS (SELECT /*+PARALLEL(B 14)*/
                                         ORG_NO,
                                         ELEC_TYPE_CODE,
                                         TRADE_CODE,
                                         NVL(HEC_TRADE_CODE, 1) AS HEC_TRADE_CODE,
                                         CONS_SORT_CODE,
                                         SUM(NVL(B.RCVBL_AMT, 0)) AS RCVBL_AMT
                                          FROM DW_A_ACCU_DAY_RCVBL B
                                         WHERE ((V_DAY > 6 AND
                                               B.STAT_YMD =
                                               V_USE_DATE || '06') OR
                                               (V_DAY <= 6 AND
                                               B.STAT_YMD = V_YMD))
                                         GROUP BY ORG_NO,
                                                  ELEC_TYPE_CODE,
                                                  TRADE_CODE,
                                                  NVL(HEC_TRADE_CODE, 1),
                                                  CONS_SORT_CODE)
             SELECT /*+PARALLEL(B 14)*/
              SUM(NVL(B.RCVBL_AMT, 0))
               FROM TMP_LAST_RCVBL_AMT B
              WHERE A.ORG_NO = B.ORG_NO
                AND A.ELEC_TYPE_CODE = B.ELEC_TYPE_CODE
                AND A.CONS_SORT_CODE = B.CONS_SORT_CODE
                AND A.TRADE_CODE = B.TRADE_CODE
                AND NVL(A.HEC_TRADE_CODE, 1) = NVL(B.HEC_TRADE_CODE, 1))
              WHERE A.STAT_YMD = V_YMD;
  
  
    COMMIT;
    --dw_a_accu_day_rcvbl 1月的应收+..+上月的应收(last_rcvbl_amt)
  
    UPDATE DW_A_OWE_AMT_MONIT A
       SET A.CUR_YEAR_RCVBL_AMT =
           (WITH TMP_YEAR_RCVBL_AMT AS (SELECT /*+PARALLEL(B 14)*/
                                         ORG_NO,
                                         ELEC_TYPE_CODE,
                                         TRADE_CODE,
                                         NVL(HEC_TRADE_CODE, 1) AS HEC_TRADE_CODE,
                                         CONS_SORT_CODE,
                                         SUM(NVL(B.RCVBL_AMT, 0)) AS RCVBL_AMT
                                          FROM DW_A_ACCU_DAY_RCVBL B
                                         WHERE ((V_DAY > 6 AND
                                               B.STAT_YMD =
                                               V_USE_DATE || '06') OR
                                               (V_DAY <= 6 AND
                                               B.STAT_YMD = V_YMD) OR
                                               (B.STAT_YM > V_BEGIN_YM AND
                                               B.STAT_YM <= V_LC_YM AND
                                               SUBSTR(B.STAT_YMD, 7, 2) = '06'))
                                         GROUP BY ORG_NO,
                                                  ELEC_TYPE_CODE,
                                                  TRADE_CODE,
                                                  NVL(HEC_TRADE_CODE, 1),
                                                  CONS_SORT_CODE)
             SELECT /*+PARALLEL(B 14)*/
              SUM(NVL(B.RCVBL_AMT, 0))
               FROM TMP_YEAR_RCVBL_AMT B
              WHERE A.ORG_NO = B.ORG_NO
                AND A.ELEC_TYPE_CODE = B.ELEC_TYPE_CODE
                AND A.CONS_SORT_CODE = B.CONS_SORT_CODE
                AND A.TRADE_CODE = B.TRADE_CODE
                AND NVL(A.HEC_TRADE_CODE, 1) = NVL(B.HEC_TRADE_CODE, 1))
              WHERE A.STAT_YMD = V_YMD;
  
  
    COMMIT;
  
    UPDATE DW_A_OWE_AMT_MONIT A
       SET A.LAST_RCVBL_AMT = 0
     WHERE A.STAT_YMD = V_YMD
       AND A.LAST_RCVBL_AMT IS NULL;
    UPDATE DW_A_OWE_AMT_MONIT A
       SET A.CUR_YEAR_RCVBL_AMT = 0
     WHERE A.STAT_YMD = V_YMD
       AND A.CUR_YEAR_RCVBL_AMT IS NULL;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_owe_amt_monit 成功';
    COMMIT;
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_owe_amt_monit 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
    
  END P_INS_DW_A_OWE_AMT_MONIT;

  --月度日累计欠费明细统计
  PROCEDURE P_INS_DW_A_OWE_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    V_STAT_YM    VARCHAR2(6);
    V_USE_DATE   VARCHAR2(6) := SUBSTR(I_DATA, 1, 6); --统计年月
    V_LC_YM      VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_USE_DATE,
                                                           'yyyymm'),
                                                   -1),
                                        'yyyymm');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_owe_amt_day', I_DATA);
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_OWE_AMT_DAY X WHERE X.STAT_YMD = V_YMD;
    IF (SUBSTR(I_DATA, 7, 2) >= 1 AND SUBSTR(I_DATA, 7, 2) <= 10) THEN
      V_STAT_YM := V_LC_YM;
    ELSIF SUBSTR(I_DATA, 7, 2) >= 11 THEN
      V_STAT_YM := V_USE_DATE;
    END IF;
    --开始数据统计,插入到稽查管理库OMAC
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO,
                                              '12101',
                                              5,
                                              '35101',
                                              5,
                                              7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >=
                       DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
    
      --统计上月累计欠费、或者当月累计欠费
      INSERT INTO DW_A_OWE_AMT_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         ELEC_TYPE_CODE,
         CONS_SORT_CODE,
         TRADE_CODE,
         HEC_TRADE_CODE,
         MR_SECT_NO,
         RCVBL_YM,
         OWE_NUM,
         OWE_AMT,
         TIME_STAMP)
        WITH TMPA AS
         (SELECT /*+parallel(a 4) **/
           A.CONS_NO,
           A.CALC_ID,
           NVL(SUM(A.RCVBL_AMT - A.RCVED_AMT), 0) IDX_VALUE,
           A.ORG_NO,
           A.RCVBL_YM
            FROM SY_SG_A_RCVBL_FLOW A
           WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
             AND A.AMT_TYPE NOT IN ('04', '05', '11', '12')
             AND A.SETTLE_FLAG IN ('01', '02')
             AND A.RCVBL_YM = V_STAT_YM
             AND A.RCVBL_AMT - A.RCVED_AMT > 0
           GROUP BY A.ORG_NO, A.CALC_ID, A.CONS_NO, A.RCVBL_YM)
        SELECT /*+parallel(a 4) parallel(b 4)**/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         '01',
         V_YMD,
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', B.CONS_SORT_CODE) CONS_SORT_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_TYPE_CODE) TRADE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', B.HEC_TRADE_CODE) HEC_TRADE_CODE,
         B.MR_SECT_NO,
         A.RCVBL_YM RCVBL_YM,
         COUNT(1),
         NVL(SUM(A.IDX_VALUE), 0),
         SYSDATE
          FROM TMPA A, SY_SG_ARC_E_CONS_SNAP B
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.CALC_ID = B.CALC_ID
           AND A.CONS_NO = B.CONS_NO
         GROUP BY A.ORG_NO,
                  A.RCVBL_YM,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             B.ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             B.CONS_SORT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                             B.TRADE_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             B.HEC_TRADE_CODE),
                  B.MR_SECT_NO;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_owe_amt_day 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_owe_amt_day 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度欠费明细统计
  PROCEDURE P_INS_DW_A_OWE_AMT_STAT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO  VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_USE_DATE    VARCHAR2(6) := SUBSTR(I_DATA, 1, 6); --统计年月
    V_CONSIST_DAY VARCHAR2(2) := '06';
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_owe_amt_stat', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_A_OWE_AMT_STAT X WHERE X.STAT_YM = V_USE_DATE;
    --开始数据统计,插入到稽查管理库OMAC
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO,
                                              '12101',
                                              5,
                                              '35101',
                                              5,
                                              7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >=
                       DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
      --根据考核日取值
      INSERT INTO DW_A_OWE_AMT_STAT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ELEC_TYPE_CODE,
         CONS_SORT_CODE,
         TRADE_CODE,
         HEC_TRADE_CODE,
         MR_SECT_NO,
         RCVBL_YM,
         OWE_AMT,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '01',
               V_USE_DATE,
               ELEC_TYPE_CODE,
               CONS_SORT_CODE,
               TRADE_CODE,
               HEC_TRADE_CODE,
               MR_SECT_NO,
               RCVBL_YM,
               OWE_AMT,
               SYSDATE
          FROM DW_A_OWE_AMT_DAY A
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.STAT_YMD = V_USE_DATE || V_CONSIST_DAY;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_owe_amt_stat 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_owe_amt_stat 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度日累计电费应收统计
  PROCEDURE P_INS_DW_A_ACCU_DAY_RCVBL(I_DATA     VARCHAR2,
                                      I_RCVBL_YM VARCHAR2,
                                      OUT_CODE   OUT NUMBER,
                                      OUT_MSG    OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    V_STAT_YM    VARCHAR2(6);
    V_USE_DATE   VARCHAR2(6) := SUBSTR(I_DATA, 1, 6); --统计年月
    V_LC_YM      VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_USE_DATE,
                                                           'yyyymm'),
                                                   -1),
                                        'yyyymm');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_accu_day_rcvbl', I_DATA);
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_ACCU_DAY_RCVBL X
     WHERE X.STAT_YMD = V_YMD
       AND X.RCVBL_YM = I_RCVBL_YM;
  
    /*
    IF (SUBSTR(I_DATA, 7, 2) >= 1 AND SUBSTR(I_DATA, 7, 2) <= 10) THEN
      V_STAT_YM := V_LC_YM;
    ELSIF SUBSTR(I_DATA, 7, 2) >= 11 THEN
      V_STAT_YM := V_USE_DATE;
    END IF;
    */
    --开始数据统计,插入到稽查管理库OMAC
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO,
                                              '12101',
                                              5,
                                              '35101',
                                              5,
                                              7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >=
                       DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
      --当前应收
      INSERT INTO DW_A_ACCU_DAY_RCVBL
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         STAT_YM,
         RCVBL_YM,
         MR_SECT_NO,
         ELEC_TYPE_CODE,
         CONS_SORT_CODE,
         TRADE_CODE,
         HEC_TRADE_CODE,
         VOLT_CODE,
         RCVBL_AMT,
         RCVBL_CC,
         RCVBL_NUM,
         RCVBL_PQ,
         RS_PA,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '01',
               V_YMD,
               V_USE_DATE,
               RCVBL_YM,
               MR_SECT_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE) ELEC_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE) CONS_SORT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                          TRADE_TYPE_CODE) TRADE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          HEC_TRADE_CODE) HEC_TRADE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE) VOLT_CODE,
               SUM(RCVBL_AMT),
               SUM(RCVBL_CC),
               SUM(RCVBL_NUM),
               SUM(RCVBL_PQ),
               SUM(RS_PA),
               SYSDATE
          FROM (SELECT /*+parallel(a 4) parallel(b 4)**/
                 A.ORG_NO,
                 A.RCVBL_YM,
                 B.MR_SECT_NO,
                 B.ELEC_TYPE_CODE,
                 B.CONS_SORT_CODE,
                 B.TRADE_TYPE_CODE,
                 B.HEC_TRADE_CODE,
                 B.VOLT_CODE,
                 NVL(SUM(A.RCVBL_AMT), 0) RCVBL_AMT,
                 COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                 COUNT(1) RCVBL_NUM,
                 NVL(SUM(T_PQ), 0) RCVBL_PQ,
                 NVL(SUM(CASE
                           WHEN A.AMT_TYPE IN ('02', '0201', '0202', '0203', '0204') THEN
                            RCVBL_AMT
                           ELSE
                            0
                         END),
                     0) RS_PA
                  FROM SY_SG_A_RCVBL_FLOW A, SY_SG_ARC_E_CONS_SNAP B
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                      --AND a.org_no = b.org_no
                   AND A.CONS_NO = B.CONS_NO
                   AND A.CALC_ID = B.CALC_ID
                   AND A.AMT_TYPE IN ('01',
                                      '02',
                                      '0201',
                                      '0202',
                                      '0203',
                                      '0204',
                                      '03',
                                      '05',
                                      '08',
                                      '09',
                                      '10',
                                      '13',
                                      '99',
                                      '07',
                                      '9902',
                                      '9903')
                   AND A.RCVBL_YM = I_RCVBL_YM
                   AND A.RELEASE_DATE <= V_YMD
                 GROUP BY A.ORG_NO,
                          A.RCVBL_YM,
                          B.MR_SECT_NO,
                          B.ELEC_TYPE_CODE,
                          B.CONS_SORT_CODE,
                          B.TRADE_TYPE_CODE,
                          B.HEC_TRADE_CODE,
                          B.VOLT_CODE
                UNION ALL
                SELECT /*+parallel(a 4) parallel(b 4)**/
                 A.ORG_NO,
                 A.RCVBL_YM,
                 B.MR_SECT_NO,
                 B.ELEC_TYPE_CODE,
                 B.CONS_SORT_CODE,
                 B.TRADE_TYPE_CODE,
                 B.HEC_TRADE_CODE,
                 B.VOLT_CODE,
                 NVL(SUM(A.RCVBL_AMT), 0) RCVBL_AMT,
                 COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                 COUNT(1) RCVBL_NUM,
                 NVL(SUM(T_PQ), 0) RCVBL_PQ,
                 NVL(SUM(CASE
                           WHEN A.AMT_TYPE IN ('02', '0201', '0202', '0203', '0204') THEN
                            RCVBL_AMT
                           ELSE
                            0
                         END),
                     0) RS_PA
                  FROM SY_SG_ARC_A_RCVBL_FLOW A, SY_SG_ARC_E_CONS_SNAP B
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                      --AND a.org_no = b.org_no
                   AND A.CONS_NO = B.CONS_NO
                   AND A.CALC_ID = B.CALC_ID
                   AND A.AMT_TYPE IN ('01',
                                      '02',
                                      '0201',
                                      '0202',
                                      '0203',
                                      '0204',
                                      '03',
                                      '05',
                                      '08',
                                      '09',
                                      '10',
                                      '13',
                                      '99',
                                      '07',
                                      '9902',
                                      '9903')
                   AND A.RCVBL_YM = I_RCVBL_YM
                   AND A.RELEASE_DATE <= V_YMD
                 GROUP BY A.ORG_NO,
                          A.RCVBL_YM,
                          B.MR_SECT_NO,
                          B.ELEC_TYPE_CODE,
                          B.CONS_SORT_CODE,
                          B.TRADE_TYPE_CODE,
                          B.HEC_TRADE_CODE,
                          B.VOLT_CODE)
         GROUP BY ORG_NO,
                  RCVBL_YM,
                  MR_SECT_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             CONS_SORT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                             TRADE_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             HEC_TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE);
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_accu_day_rcvbl 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_accu_day_rcvbl 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度电费应收统计
  --从表dw_a_accu_day_rcvbl抽取数据
  PROCEDURE P_INS_DW_A_RCVBL_AMT_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO  VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_USE_DATE    VARCHAR2(6) := SUBSTR(I_DATA, 1, 6); --统计年月
    V_CONSIST_DAY VARCHAR2(2) := '06';
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_rcvbl_amt_mon', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_A_RCVBL_AMT_MON X WHERE X.STAT_YM = V_USE_DATE;
  
    
      --开始数据统计,插入到稽查管理库OMAC
      FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                         1,
                                         DECODE(V_PRO_ORG_NO,
                                                '12101',
                                                5,
                                                '35101',
                                                5,
                                                7)) ORG_NO
                    FROM SY_SG_O_ORG
                   WHERE ORG_NO <> '00000'
                     AND LENGTH(ORG_NO) >=
                         DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
      
        INSERT INTO DW_A_RCVBL_AMT_MON
          (DATA_ID,
           PRO_ORG_NO,
           ORG_NO,
           PS_BUSI_AREA_CODE,
           STAT_YM,
           RCVBL_YM,
           MR_SECT_NO,
           ELEC_TYPE_CODE,
           CONS_SORT_CODE,
           TRADE_CODE,
           HEC_TRADE_CODE,
           AMT_TYPE,
           VOLT_CODE,
           RCVBL_AMT,
           RCVBL_CC,
           RCVBL_NUM,
           RCVBL_PQ,
           RS_PA,
           RCVED_AMT,
           RCVBL_INPRICE_AMT,
           RCVBL_PL_AMT,
           RCVED_IN_PRICE_AMT,
           RCVED_PL_AMT,
           RCVBL_PENALTY,
           RCVED_PENALTY,
           TIME_STAMP)
          SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
                 V_PRO_ORG_NO,
                 ORG_NO,
                 '01',
                 V_USE_DATE,
                 RCVBL_YM,
                 MR_SECT_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                            CONS_SORT_CODE) CONS_SORT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                            TRADE_TYPE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            HEC_TRADE_CODE) HEC_TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE) AMT_TYPE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE) VOLT_CODE,
                 SUM(RCVBL_AMT),
                 SUM(RCVBL_CC),
                 SUM(RCVBL_NUM),
                 SUM(RCVBL_PQ),
                 SUM(RS_PA),
                 SUM(RCVED_AMT),
                 SUM(RCVBL_INPRICE_AMT),
                 SUM(RCVBL_PL_AMT),
                 SUM(RCVED_IN_PRICE_AMT),
                 SUM(RCVED_PL_AMT),
                 SUM(RCVBL_PENALTY),
                 SUM(RCVED_PENALTY),
                 SYSDATE
            FROM (SELECT /*+parallel(a 4) parallel(b 4)**/
                   A.ORG_NO,
                   A.RCVBL_YM,
                   B.MR_SECT_NO,
                   B.ELEC_TYPE_CODE,
                   B.CONS_SORT_CODE,
                   B.TRADE_CODE TRADE_TYPE_CODE,
                   B.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                   A.AMT_TYPE,
                   B.VOLT_CODE,
                   NVL(SUM(A.RCVBL_AMT), 0) RCVBL_AMT,
                   COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                   COUNT(1) RCVBL_NUM,
                   NVL(SUM(T_PQ), 0) RCVBL_PQ,
                   NVL(SUM(CASE
                             WHEN A.AMT_TYPE IN
                                  ('02', '0201', '0202', '0203', '0204') THEN
                              RCVBL_AMT
                             ELSE
                              0
                           END),
                       0) RS_PA,
                   SUM(RCVED_AMT) RCVED_AMT,
                   SUM(RCVBL_INPRICE_AMT) RCVBL_INPRICE_AMT,
                   SUM(RCVBL_PL_AMT) RCVBL_PL_AMT,
                   SUM(RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                   SUM(RCVED_PL_AMT) RCVED_PL_AMT,
                   SUM(RCVBL_PENALTY) RCVBL_PENALTY,
                   SUM(RCVED_PENALTY) RCVED_PENALTY
                    FROM SY_SG_A_RCVBL_FLOW A, SY_SG_C_CONS B
                   WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                        --AND a.org_no = b.org_no
                     AND A.CONS_NO = B.CONS_NO
                     AND A.AMT_TYPE IN ('05', '08')
                     AND A.RCVBL_YM = V_USE_DATE
                   GROUP BY A.ORG_NO,
                            A.RCVBL_YM,
                            B.MR_SECT_NO,
                            B.ELEC_TYPE_CODE,
                            B.CONS_SORT_CODE,
                            B.TRADE_CODE        TRADE_TYPE_CODE,
                            B.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                            A.AMT_TYPE,
                            B.VOLT_CODE
                  UNION ALL
                  SELECT /*+parallel(a 4) parallel(b 4)**/
                   A.ORG_NO,
                   A.RCVBL_YM,
                   B.MR_SECT_NO,
                   B.ELEC_TYPE_CODE,
                   B.CONS_SORT_CODE,
                   B.TRADE_CODE TRADE_TYPE_CODE,
                   B.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                   A.AMT_TYPE,
                   B.VOLT_CODE,
                   NVL(SUM(A.RCVBL_AMT), 0) RCVBL_AMT,
                   COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                   COUNT(1) RCVBL_NUM,
                   NVL(SUM(T_PQ), 0) RCVBL_PQ,
                   NVL(SUM(CASE
                             WHEN A.AMT_TYPE IN
                                  ('02', '0201', '0202', '0203', '0204') THEN
                              RCVBL_AMT
                             ELSE
                              0
                           END),
                       0) RS_PA,
                   SUM(RCVED_AMT) RCVED_AMT,
                   SUM(RCVBL_INPRICE_AMT) RCVBL_INPRICE_AMT,
                   SUM(RCVBL_PL_AMT) RCVBL_PL_AMT,
                   SUM(RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                   SUM(RCVED_PL_AMT) RCVED_PL_AMT,
                   SUM(RCVBL_PENALTY) RCVBL_PENALTY,
                   SUM(RCVED_PENALTY) RCVED_PENALTY
                    FROM SY_SG_ARC_A_RCVBL_FLOW A, SY_SG_C_CONS B
                   WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND A.CONS_NO = B.CONS_NO
                     AND A.AMT_TYPE IN ('05', '08')
                     AND A.RCVBL_YM = V_USE_DATE
                   GROUP BY A.ORG_NO,
                            A.RCVBL_YM,
                            B.MR_SECT_NO,
                            B.ELEC_TYPE_CODE,
                            B.CONS_SORT_CODE,
                            B.TRADE_CODE        TRADE_TYPE_CODE,
                            B.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                            A.AMT_TYPE,
                            B.VOLT_CODE)
           GROUP BY ORG_NO,
                    RCVBL_YM,
                    MR_SECT_NO,
                    PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                               ELEC_TYPE_CODE),
                    PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                               CONS_SORT_CODE),
                    PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                               TRADE_TYPE_CODE),
                    PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                               HEC_TRADE_CODE),
                    PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE),
                    PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE);
      
        INSERT INTO DW_A_RCVBL_AMT_MON
          (DATA_ID,
           PRO_ORG_NO,
           ORG_NO,
           PS_BUSI_AREA_CODE,
           STAT_YM,
           RCVBL_YM,
           MR_SECT_NO,
           ELEC_TYPE_CODE,
           CONS_SORT_CODE,
           TRADE_CODE,
           HEC_TRADE_CODE,
           AMT_TYPE,
           VOLT_CODE,
           RCVBL_AMT,
           RCVBL_CC,
           RCVBL_NUM,
           RCVBL_PQ,
           RS_PA,
           RCVED_AMT,
           RCVBL_INPRICE_AMT,
           RCVBL_PL_AMT,
           RCVED_IN_PRICE_AMT,
           RCVED_PL_AMT,
           RCVBL_PENALTY,
           RCVED_PENALTY,
           TIME_STAMP)
          SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
                 V_PRO_ORG_NO,
                 ORG_NO,
                 '01',
                 V_USE_DATE,
                 RCVBL_YM,
                 MR_SECT_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                            CONS_SORT_CODE) CONS_SORT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                            TRADE_TYPE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            HEC_TRADE_CODE) HEC_TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE) AMT_TYPE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE) VOLT_CODE,
                 SUM(RCVBL_AMT),
                 SUM(RCVBL_CC),
                 SUM(RCVBL_NUM),
                 SUM(RCVBL_PQ),
                 SUM(RS_PA),
                 SUM(RCVED_AMT),
                 SUM(RCVBL_INPRICE_AMT),
                 SUM(RCVBL_PL_AMT),
                 SUM(RCVED_IN_PRICE_AMT),
                 SUM(RCVED_PL_AMT),
                 SUM(RCVBL_PENALTY),
                 SUM(RCVED_PENALTY),
                 SYSDATE
            FROM (SELECT /*+parallel(a 4) parallel(b 4)**/
                   A.ORG_NO,
                   A.RCVBL_YM,
                   B.MR_SECT_NO,
                   B.ELEC_TYPE_CODE,
                   B.CONS_SORT_CODE,
                   B.TRADE_TYPE_CODE,
                   B.HEC_TRADE_CODE,
                   A.AMT_TYPE,
                   B.VOLT_CODE,
                   NVL(SUM(A.RCVBL_AMT), 0) RCVBL_AMT,
                   COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                   COUNT(1) RCVBL_NUM,
                   NVL(SUM(T_PQ), 0) RCVBL_PQ,
                   NVL(SUM(CASE
                             WHEN A.AMT_TYPE IN
                                  ('02', '0201', '0202', '0203', '0204') THEN
                              RCVBL_AMT
                             ELSE
                              0
                           END),
                       0) RS_PA,
                   SUM(RCVED_AMT) RCVED_AMT,
                   SUM(RCVBL_INPRICE_AMT) RCVBL_INPRICE_AMT,
                   SUM(RCVBL_PL_AMT) RCVBL_PL_AMT,
                   SUM(RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                   SUM(RCVED_PL_AMT) RCVED_PL_AMT,
                   SUM(RCVBL_PENALTY) RCVBL_PENALTY,
                   SUM(RCVED_PENALTY) RCVED_PENALTY
                    FROM SY_SG_A_RCVBL_FLOW A, SY_SG_ARC_E_CONS_SNAP B
                   WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                        --AND a.org_no = b.org_no
                     AND A.CONS_NO = B.CONS_NO
                     AND A.CALC_ID = B.CALC_ID
                     AND A.AMT_TYPE IN ('01',
                                        '02',
                                        '0201',
                                        '0202',
                                        '0203',
                                        '0204',
                                        '03',
                                        '09',
                                        '10',
                                        '13',
                                        '99',
                                        '07',
                                        '9902',
                                        '9903')
                     AND A.RCVBL_YM = V_USE_DATE
                   GROUP BY A.ORG_NO,
                            A.RCVBL_YM,
                            B.MR_SECT_NO,
                            B.ELEC_TYPE_CODE,
                            B.CONS_SORT_CODE,
                            B.TRADE_TYPE_CODE,
                            B.HEC_TRADE_CODE,
                            A.AMT_TYPE,
                            B.VOLT_CODE
                  UNION ALL
                  SELECT /*+parallel(a 4) parallel(b 4)**/
                   A.ORG_NO,
                   A.RCVBL_YM,
                   B.MR_SECT_NO,
                   B.ELEC_TYPE_CODE,
                   B.CONS_SORT_CODE,
                   B.TRADE_TYPE_CODE,
                   B.HEC_TRADE_CODE,
                   A.AMT_TYPE,
                   B.VOLT_CODE,
                   NVL(SUM(A.RCVBL_AMT), 0) RCVBL_AMT,
                   COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                   COUNT(1) RCVBL_NUM,
                   NVL(SUM(T_PQ), 0) RCVBL_PQ,
                   NVL(SUM(CASE
                             WHEN A.AMT_TYPE IN
                                  ('02', '0201', '0202', '0203', '0204') THEN
                              RCVBL_AMT
                             ELSE
                              0
                           END),
                       0) RS_PA,
                   SUM(RCVED_AMT) RCVED_AMT,
                   SUM(RCVBL_INPRICE_AMT) RCVBL_INPRICE_AMT,
                   SUM(RCVBL_PL_AMT) RCVBL_PL_AMT,
                   SUM(RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                   SUM(RCVED_PL_AMT) RCVED_PL_AMT,
                   SUM(RCVBL_PENALTY) RCVBL_PENALTY,
                   SUM(RCVED_PENALTY) RCVED_PENALTY
                    FROM SY_SG_ARC_A_RCVBL_FLOW A, SY_SG_ARC_E_CONS_SNAP B
                   WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                        --AND a.org_no = b.org_no
                     AND A.CONS_NO = B.CONS_NO
                     AND A.CALC_ID = B.CALC_ID
                     AND A.AMT_TYPE IN ('01',
                                        '02',
                                        '0201',
                                        '0202',
                                        '0203',
                                        '0204',
                                        '03',
                                        '09',
                                        '10',
                                        '13',
                                        '99',
                                        '07',
                                        '9902',
                                        '9903')
                     AND A.RCVBL_YM = V_USE_DATE
                   GROUP BY A.ORG_NO,
                            A.RCVBL_YM,
                            B.MR_SECT_NO,
                            B.ELEC_TYPE_CODE,
                            B.CONS_SORT_CODE,
                            B.TRADE_TYPE_CODE,
                            B.HEC_TRADE_CODE,
                            A.AMT_TYPE,
                            B.VOLT_CODE)
           GROUP BY ORG_NO,
                    RCVBL_YM,
                    MR_SECT_NO,
                    PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                               ELEC_TYPE_CODE),
                    PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                               CONS_SORT_CODE),
                    PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                               TRADE_TYPE_CODE),
                    PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                               HEC_TRADE_CODE),
                    PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE),
                    PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE);
        COMMIT;
      
      END LOOP;
 
  
    DELETE FROM TEMP_CONSPRC_CALCID WHERE YM = V_USE_DATE;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_rcvbl_amt_mon 成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_rcvbl_amt_mon 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度电费结存统计
  PROCEDURE P_INS_DW_A_PRERCV_STAT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_USE_DATE   VARCHAR2(6) := SUBSTR(I_DATA, 1, 6); --统计年月
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_prercv_stat', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_A_PRERCV_STAT X WHERE X.STAT_YM = V_USE_DATE;
    --开始数据统计,插入到稽查管理库OMAC
  
    IF (V_USE_DATE <> TO_CHAR(ADD_MONTHS(SYSDATE, -1), 'YYYYMM')) THEN
      --判断是否要统计历史月份的数据,如果为历史月则重新从预收表中计算 
      FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                         1,
                                         DECODE(V_PRO_ORG_NO,
                                                '12101',
                                                5,
                                                '35101',
                                                5,
                                                7)) ORG_NO
                    FROM SY_SG_O_ORG
                   WHERE ORG_NO <> '00000'
                     AND LENGTH(ORG_NO) >=
                         DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
        INSERT INTO DW_A_PRERCV_STAT
          (DATA_ID,
           PRO_ORG_NO,
           ORG_NO,
           PS_BUSI_AREA_CODE,
           STAT_YM,
           ELEC_TYPE_CODE,
           CONS_SORT_CODE,
           TRADE_CODE,
           VOLT_CODE,
           BAL_CC,
           BAL_FEE,
           TIME_STAMP)
          SELECT /*+parallel(a 4) parallel(b 4)**/
           PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
           V_PRO_ORG_NO,
           A.ORG_NO,
           '01',
           V_USE_DATE,
           PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
           PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', B.CONS_SORT_CODE) CONS_SORT_CODE,
           PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE) TRADE_CODE,
           PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE) VOLT_CODE,
           COUNT(DISTINCT A.CONS_NO),
           NVL(SUM(NVL(A.PREPAY_AMT, 0)), 0),
           SYSDATE
            FROM SY_SG_A_PREPAY_FLOW A, SY_SG_C_CONS B
           WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                --AND A.ORG_NO = B.ORG_NO
             AND B.ORG_NO LIKE TSS.ORG_NO || '%'
             AND A.CONS_NO = B.CONS_NO
             AND A.PREPAY_YM <= V_USE_DATE
           GROUP BY A.ORG_NO,
                    ELEC_TYPE_CODE,
                    CONS_SORT_CODE,
                    TRADE_CODE,
                    VOLT_CODE;
      END LOOP;
    
    ELSE
    
      --如果为正常月份则直接获取账户余额表 
      FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                         1,
                                         DECODE(V_PRO_ORG_NO,
                                                '12101',
                                                5,
                                                '35101',
                                                5,
                                                7)) ORG_NO
                    FROM SY_SG_O_ORG
                   WHERE ORG_NO <> '00000'
                     AND LENGTH(ORG_NO) >=
                         DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
        INSERT INTO DW_A_PRERCV_STAT
          (DATA_ID,
           PRO_ORG_NO,
           ORG_NO,
           PS_BUSI_AREA_CODE,
           STAT_YM,
           ELEC_TYPE_CODE,
           CONS_SORT_CODE,
           TRADE_CODE,
           VOLT_CODE,
           BAL_CC,
           BAL_FEE,
           TIME_STAMP)
          SELECT /*+parallel(a 4) parallel(b 4)**/
           PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
           V_PRO_ORG_NO,
           A.ORG_NO,
           '01',
           V_USE_DATE,
           PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
           PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', B.CONS_SORT_CODE) CONS_SORT_CODE,
           PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE) TRADE_CODE,
           PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE) VOLT_CODE,
           COUNT(DISTINCT A.CONS_NO),
           NVL(SUM(NVL(A.PREPAY_BAL, 0)), 0),
           SYSDATE
            FROM SY_SG_A_ACCT_BAL A, SY_SG_C_CONS B
           WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                --AND A.ORG_NO = B.ORG_NO
             AND B.ORG_NO LIKE TSS.ORG_NO || '%'
             AND A.CONS_NO = B.CONS_NO
           GROUP BY A.ORG_NO,
                    ELEC_TYPE_CODE,
                    CONS_SORT_CODE,
                    TRADE_CODE,
                    VOLT_CODE;
      END LOOP;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_prercv_stat 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_prercv_stat 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度业务费收取统计
  PROCEDURE P_INS_DW_A_BUSI_RCVED_DET(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_USE_DATE   VARCHAR2(6) := SUBSTR(I_DATA, 1, 6); --统计年月
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_busi_rcved_det', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_A_BUSI_RCVED_DET X WHERE X.STAT_YM = V_USE_DATE;
    --开始数据统计,插入到稽查管理库OMAC
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO,
                                              '12101',
                                              5,
                                              '35101',
                                              5,
                                              7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >=
                       DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
      INSERT INTO DW_A_BUSI_RCVED_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         CTRT_CAP,
         ELEC_TYPE_CODE,
         TRADE_CODE,
         BUSI_COST_TYPE,
         RCVBL_AMT,
         RCVED_AMT,
         REFUND_AMT,
         TIME_STAMP)
        WITH TMP_TABLE AS
         (SELECT /*+parallel(a 4) parallel(b 4) **/
           A.CAP,
           A.RCVBL_AMT,
           A.TYPE_CODE,
           A.CONS_NO,
           A.ORG_NO,
           THIS_RCVED_AMT RCVED_AMT,
           B.CHARGE_ID,
           A.RCVBL_YM
            FROM SY_SG_A_BUSI_RCVBL_FLOW A, SY_SG_A_BUSI_RCVED_FLOW B
           WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
             AND A.RCVBL_ID = B.RCVBL_ID
             AND A.ORG_NO = B.ORG_NO
             AND B.ORG_NO LIKE TSS.ORG_NO || '%'
             AND A.RCVBL_YM = V_USE_DATE
             AND B.RCVBL_YM = V_USE_DATE
          UNION ALL
          SELECT /*+parallel(a 4) parallel(b 4) **/
           A.CAP,
           A.RCVBL_AMT,
           A.TYPE_CODE,
           A.CONS_NO,
           A.ORG_NO,
           THIS_RCVED_AMT RCVED_AMT,
           B.CHARGE_ID,
           A.RCVBL_YM
            FROM SY_SG_ARC_A_BUSI_RCVBL_FLOW A, SY_SG_A_BUSI_RCVED_FLOW B
           WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
             AND A.RCVBL_ID = B.RCVBL_ID
             AND A.ORG_NO = B.ORG_NO
             AND B.ORG_NO LIKE TSS.ORG_NO || '%'
             AND A.RCVBL_YM = V_USE_DATE
             AND B.RCVBL_YM = V_USE_DATE
          UNION ALL
          --福建
          SELECT /*+parallel(a 4) parallel(b 4) **/
           A.CAP,
           A.RCVBL_AMT,
           A.TYPE_CODE,
           A.CONS_NO,
           A.PS_ORG_NO ORG_NO,
           B.RCVED_AMT,
           CHARGE_ID,
           RCVBL_YM
            FROM SY_SG_S_BUSI_AMT_RCVBL A, SY_SG_S_BUSI_AMT_RCVED B
           WHERE A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
             AND B.RCVBL_ID = A.RCVBL_ID
             AND B.PS_ORG_NO = A.PS_ORG_NO
             AND B.PS_ORG_NO LIKE TSS.ORG_NO || '%'
             AND A.RCVBL_YM = V_USE_DATE
          UNION ALL
          SELECT /*+parallel(a 4) parallel(b 4) **/
           A.CAP,
           A.RCVBL_AMT,
           A.TYPE_CODE,
           A.CONS_NO,
           A.PS_ORG_NO ORG_NO,
           B.RCVED_AMT,
           CHARGE_ID,
           RCVBL_YM
            FROM SY_SG_ARC_S_BUSI_AMT_RCVBL A, SY_SG_S_BUSI_AMT_RCVED B
           WHERE A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
             AND B.RCVBL_ID = A.RCVBL_ID
             AND B.PS_ORG_NO = A.PS_ORG_NO
             AND B.PS_ORG_NO LIKE TSS.ORG_NO || '%'
             AND A.RCVBL_YM = V_USE_DATE
             AND B.RCVED_YM >= V_USE_DATE),
        REFUND_AMT_TABLE AS
         (SELECT /*+parallel(c 4)**/
           NVL(C.RCV_AMT, 0) REFUND_AMT, C.ORG_NO, C.CONS_NO
            FROM SY_SG_A_PAY_FLOW C, TMP_TABLE D
           WHERE C.TYPE_CODE LIKE '08%'
             AND C.CHARGE_ID = D.CHARGE_ID
             AND C.ORG_NO = D.ORG_NO
             AND C.ORG_NO LIKE TSS.ORG_NO || '%')
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               A.ORG_NO,
               '01',
               V_USE_DATE,
               NVL(SUM(A.CAP), 0) CTRT_CAP,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                          B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE) TRADE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('S_OPER_TYPE_CODE', A.TYPE_CODE) BUSI_COST_TYPE,
               NVL(SUM(A.RCVBL_AMT), 0),
               NVL(SUM(A.RCVED_AMT), 0),
               NVL(SUM(C.REFUND_AMT), 0) REFUND_AMT,
               SYSDATE
          FROM TMP_TABLE A, REFUND_AMT_TABLE C, SY_SG_C_CONS B
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.ORG_NO = B.ORG_NO
           AND A.CONS_NO = B.CONS_NO
           AND A.ORG_NO = C.ORG_NO(+)
           AND A.CONS_NO = C.CONS_NO(+)
           AND A.RCVBL_YM = V_USE_DATE
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY A.ORG_NO, B.ELEC_TYPE_CODE, B.TRADE_CODE, A.TYPE_CODE;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_busi_rcved_det 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_busi_rcved_det 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度临时用电收费情况
  PROCEDURE P_INS_DW_A_TEMP_PQ(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_USE_DATE   VARCHAR2(6) := SUBSTR(I_DATA, 1, 6); --统计年月
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_temp_pq', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_A_TEMP_PQ X WHERE X.STAT_YM = V_USE_DATE;
    --开始数据统计,插入到稽查管理库OMAC
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO,
                                              '12101',
                                              5,
                                              '35101',
                                              5,
                                              7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >=
                       DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
      INSERT INTO DW_A_TEMP_PQ
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         TMP_FLAG,
         TMP_CONS_NUM,
         TMP_CAP,
         RCVBL_AMT,
         RCVED,
         REFUND_AMT,
         TIMES_TAMP)
      --临时用户
        WITH TMP_CONS_TABLE AS
         (SELECT B.TMP_FLAG, B.CONS_NO, B.ORG_NO, B.CONTRACT_CAP
            FROM SY_SG_C_CONS B
           WHERE B.TMP_FLAG IN ('01', '02')
             AND B.DUE_DATE IS NOT NULL
             AND B.ORG_NO LIKE TSS.ORG_NO || '%')
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '01',
               V_USE_DATE,
               PKG_GK_PUBLIC.F_TRANS_CODE('TMP_FLAG', TMP_FLAG) TMP_FLAG,
               TMP_CONS_NUM,
               TMP_CAP,
               RCVBL_AMT,
               RCVED,
               REFUND_AMT,
               SYSDATE
          FROM (SELECT /*+parallel(a 4) parallel(b 4)**/
                 A.ORG_NO,
                 B.TMP_FLAG,
                 COUNT(DISTINCT B.CONS_NO) TMP_CONS_NUM,
                 NVL(SUM(B.CONTRACT_CAP), 0) TMP_CAP,
                 NVL(SUM(A.RCVBL_AMT), 0) RCVBL_AMT,
                 NVL(SUM(A.RCVED_AMT), 0) RCVED,
                 0 REFUND_AMT
                  FROM SY_SG_A_RCVBL_FLOW A, TMP_CONS_TABLE B
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.CONS_NO = B.CONS_NO
                   AND A.RCVBL_YM = V_USE_DATE
                 GROUP BY A.ORG_NO, B.TMP_FLAG
                UNION ALL
                SELECT /*+parallel(a 4) parallel(b 4)**/
                 A.ORG_NO,
                 B.TMP_FLAG,
                 0 TMP_CONS_NUM,
                 0 TMP_CAP,
                 0 RCVBL_AMT,
                 0 RCVED,
                 NVL(SUM(A.RCV_AMT), 0) REFUND_AMT
                  FROM SY_SG_A_PAY_FLOW A, TMP_CONS_TABLE B
                 WHERE A.TYPE_CODE IN ('05', '20')
                   AND A.CHARGE_YM = V_USE_DATE
                   AND A.RCVED_DATE LIKE V_USE_DATE || '%'
                   AND A.CONS_NO = B.CONS_NO
                   AND A.STATUS_CODE = '01'
                 GROUP BY A.ORG_NO, B.TMP_FLAG);
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_temp_pq 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_temp_pq 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度呆坏账统计
  PROCEDURE P_INS_DW_A_BAD_PA_STAT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_USE_DATE   VARCHAR2(6) := SUBSTR(I_DATA, 1, 6); --统计年月
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_bad_pa_stat', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_A_BAD_PA_STAT X WHERE X.STAT_YM = V_USE_DATE;
    --开始数据统计,插入到稽查管理库OMAC
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO,
                                              '12101',
                                              5,
                                              '35101',
                                              5,
                                              7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >=
                       DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
      INSERT INTO DW_A_BAD_PA_STAT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         RCVBL_YM,
         TRADE_CODE,
         INC_DEBT_NUM,
         INC_DEBT_AMOUNT,
         DULL_DEBT_NUM,
         DULL_DEBT_AMOUNT,
         ACCU_DEBT_AMOUNT,
         RCV_DEBT_NUM,
         DULL_PA_PBR,
         ACCU_RCV_DEBT_AMOUNT,
         ACCU_BAD_AMOUNT,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               T.ORG_NO,
               '01',
               V_USE_DATE,
               T.RCVBL_YM,
               TRADE_CODE,
               INC_DEBT_NUM,
               INC_DEBT_AMOUNT,
               DULL_DEBT_NUM,
               DULL_DEBT_AMOUNT,
               ACCU_DEBT_AMOUNT,
               RCV_DEBT_NUM,
               DULL_PA_PBR,
               ACCU_RCV_DEBT_AMOUNT,
               ACCU_BAD_AMOUNT,
               SYSDATE
          FROM (SELECT /*+parallel(a 4)*/
                 A.ORG_NO,
                 A.RCVBL_YM,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_CODE) TRADE_CODE,
                 NVL(SUM(CASE
                           WHEN TO_CHAR(A.APPR_DATE, 'YYYYMM') = V_USE_DATE THEN
                            1
                           ELSE
                            0
                         END),
                     0) INC_DEBT_NUM,
                 NVL(SUM(CASE
                           WHEN TO_CHAR(A.APPR_DATE, 'YYYYMM') = V_USE_DATE THEN
                            A.OWE_AMT
                           ELSE
                            0
                         END),
                     0) INC_DEBT_AMOUNT,
                 NVL(SUM(CASE
                           WHEN A.CANCEL_DATE IS NULL THEN
                            1
                           ELSE
                            0
                         END),
                     0) DULL_DEBT_NUM,
                 NVL(SUM(CASE
                           WHEN A.CANCEL_DATE IS NULL THEN
                            A.OWE_AMT
                           ELSE
                            0
                         END),
                     0) DULL_DEBT_AMOUNT,
                 NVL(SUM(CASE
                           WHEN TO_CHAR(A.CANCEL_DATE, 'YYYYMM') <= V_USE_DATE THEN
                            A.OWE_AMT
                           ELSE
                            0
                         END),
                     0) ACCU_DEBT_AMOUNT,
                 0 RCV_DEBT_NUM,
                 0 DULL_PA_PBR,
                 0 ACCU_RCV_DEBT_AMOUNT,
                 NVL(SUM(A.OWE_AMT), 0) ACCU_BAD_AMOUNT
                  FROM SY_SG_A_BAD_DEBT A, SY_SG_C_CONS C
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.CONS_NO = C.CONS_NO
                   AND APPR_RSLT = '01'
                 GROUP BY A.ORG_NO,
                          A.RCVBL_YM,
                          PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                                     C.TRADE_CODE)
                UNION ALL
                SELECT
                /*+parallel(m 4) parallel(n 4)*/
                 N.ORG_NO,
                 N.RCVBL_YM,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_CODE) TRADE_CODE,
                 0 INC_DEBT_NUM,
                 0 INC_DEBT_AMOUNT,
                 0 DULL_DEBT_NUM,
                 0 DULL_DEBT_AMOUNT,
                 0 ACCU_DEBT_AMOUNT,
                 NVL(SUM(CASE
                           WHEN M.RCVED_YM = V_USE_DATE THEN
                            1
                           ELSE
                            0
                         END),
                     0) RCV_DEBT_NUM,
                 NVL(SUM(CASE
                           WHEN M.RCVED_YM = V_USE_DATE THEN
                            M.THIS_RCVED_AMT
                           ELSE
                            0
                         END),
                     0) DULL_PA_PBR,
                 SUM(M.THIS_RCVED_AMT) ACCU_RCV_DEBT_AMOUNT,
                 0 ACCU_BAD_AMOUNT
                  FROM SY_SG_A_RCVED_FLOW M,
                       SY_SG_A_BAD_DEBT   N,
                       SY_SG_C_CONS       C
                 WHERE M.ORG_NO = N.ORG_NO
                   AND N.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND M.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND M.RCVBL_AMT_ID = N.RCVBL_AMT_ID
                   AND N.CONS_NO = C.CONS_NO
                 GROUP BY N.ORG_NO,
                          N.RCVBL_YM,
                          PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                                     C.TRADE_CODE)) T;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_bad_pa_stat 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_bad_pa_stat 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度柜台现金缴费冲正统计
  PROCEDURE P_INS_DW_A_REVERSE_MO(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_USE_DATE   VARCHAR2(6) := SUBSTR(I_DATA, 1, 6); --统计年月
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_reverse_mo', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_A_REVERSE_MO X WHERE X.STAT_YM = V_USE_DATE;
    --开始数据统计,插入到稽查管理库OMAC
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO,
                                              '12101',
                                              5,
                                              '35101',
                                              5,
                                              7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >=
                       DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
      INSERT INTO DW_A_REVERSE_MO
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ELEC_TYPE_CODE,
         CONS_SORT_CODE,
         TRADE_CODE,
         HEC_TRADE_CODE,
         NEXT_DAY_REVERSE_NUM,
         NEXT_DAY_REVERSE_AMT,
         DAY_REVERSE_NUM,
         DAY_REVERSE_AMT,
         TIME_STAMP)
        WITH TMPA AS
         ( --取出该月所有冲正的记录，并且是现金/柜台
          SELECT CONS_NO,
                  ORG_NO,
                  SUM(NEXT_DAY_REVERSE_NUM) NEXT_DAY_REVERSE_NUM,
                  SUM(NEXT_DAY_REVERSE_AMT) NEXT_DAY_REVERSE_AMT,
                  SUM(DAY_REVERSE_NUM) DAY_REVERSE_NUM,
                  SUM(DAY_REVERSE_AMT) DAY_REVERSE_AMT
            FROM (SELECT C.ORG_NO,
                          C.CONS_NO,
                          C.CZRQ,
                          C.BCZRQ,
                          --隔日冲正笔数                          
                          CASE
                            WHEN C.CZRQ <> C.BCZRQ THEN
                             COUNT(1)
                            ELSE
                             0
                          END NEXT_DAY_REVERSE_NUM,
                          --隔日冲正金额                          
                          CASE
                            WHEN C.CZRQ <> C.BCZRQ THEN
                             SUM(C.RCV_AMT)
                            ELSE
                             0
                          END NEXT_DAY_REVERSE_AMT,
                          --当日冲正笔数                          
                          CASE
                            WHEN CZRQ = BCZRQ THEN
                             COUNT(1)
                            ELSE
                             0
                          END DAY_REVERSE_NUM,
                          --当日冲正金额                          
                          CASE
                            WHEN CZRQ = BCZRQ THEN
                             SUM(C.RCV_AMT)
                            ELSE
                             0
                          END DAY_REVERSE_AMT
                     FROM (SELECT A.ORG_NO,
                                  A.CONS_NO,
                                  A.RCV_AMT,
                                  A.RELATE_ID,
                                  A.CHARGE_DATE CZRQ,
                                  B.CHARGE_DATE BCZRQ
                             FROM (
                                   --冲正的记录                                    
                                   SELECT /*+PARALLEL(A 14)*/
                                    ORG_NO,
                                     CONS_NO,
                                     RCV_AMT,
                                     RELATE_ID,
                                     CHARGE_DATE
                                     FROM SY_SG_A_PAY_FLOW A
                                    WHERE A.TYPE_CODE IN ('09', '14')
                                         --按照收费日期在本月进行筛选
                                      AND (A.CHARGE_DATE >=
                                          TO_DATE(V_USE_DATE || '01', 'YYYYMMDD') AND
                                          A.CHARGE_DATE <
                                          ADD_MONTHS(TO_DATE(V_USE_DATE || '01',
                                                              'YYYYMMDD'),
                                                      1))
                                      AND A.PAY_MODE = '010101'
                                      AND A.SETTLE_MODE = '01'
                                      AND A.RELATE_ID IS NOT NULL
                                      AND A.ORG_NO LIKE TSS.ORG_NO || '%') A,
                                  --被冲正的记录                                  
                                  SY_SG_A_PAY_FLOW B
                            WHERE B.ORG_NO LIKE TSS.ORG_NO || '%'
                              AND A.RELATE_ID = B.CHARGE_ID) C
                    GROUP BY C.ORG_NO, C.CONS_NO, C.CZRQ, C.BCZRQ)
           GROUP BY ORG_NO, CONS_NO)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               A.ORG_NO,
               '01',
               V_USE_DATE,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                          B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                          B.CONS_SORT_CODE) CONS_SORT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE) TRADE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          B.HEC_INDUSTRY_CODE) HEC_TRADE_CODE,
               SUM(NEXT_DAY_REVERSE_NUM),
               SUM(NEXT_DAY_REVERSE_AMT),
               SUM(DAY_REVERSE_NUM),
               SUM(DAY_REVERSE_AMT),
               SYSDATE
          FROM TMPA A, SY_SG_C_CONS B
         WHERE A.CONS_NO = B.CONS_NO
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY A.ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             B.ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             B.CONS_SORT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                             B.TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             B.HEC_INDUSTRY_CODE);
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_reverse_mo 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_reverse_mo 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --年冻结陈欠电费统计
  PROCEDURE P_INS_DW_A_OLD_PA_RCVED(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YEAR       VARCHAR2(6) := SUBSTR(I_DATA, 1, 4); --统计年
    V_LAST_YEAR  VARCHAR2(4) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YEAR, 'yyyy'),
                                                   -12),
                                        'yyyy'); --同期 上期
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_old_pa_rcved', I_DATA);
    --删除原有的抽取的记录，维度为年
    DELETE FROM DW_A_OLD_PA_RCVED X WHERE X.STAT_YEAR = V_YEAR;
    --开始数据统计,插入到稽查管理库OMAC
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO,
                                              '12101',
                                              5,
                                              '35101',
                                              5,
                                              7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >=
                       DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
      INSERT INTO DW_A_OLD_PA_RCVED
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YEAR,
         MR_SECT_NO,
         ELEC_TYPE_CODE,
         CONS_SORT_CODE,
         TRADE_CODE,
         YEAR,
         RCVBL_OLD_NUM,
         RCVBL_OLD_AMT,
         RCVBL_OLD_CC,
         TIME_STAMP)
        SELECT /*+parallel(a 4) parallel(b 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         '01',
         V_YEAR,
         B.MR_SECT_NO,
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', B.CONS_SORT_CODE) CONS_SORT_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE) TRADE_CODE,
         V_LAST_YEAR,
         COUNT(1),
         NVL(SUM(A.RCVBL_AMT), 0),
         COUNT(DISTINCT A.CONS_NO),
         SYSDATE
          FROM SY_SG_A_RCVBL_FLOW A, SY_SG_C_CONS B
         WHERE A.CONS_NO = B.CONS_NO
           AND A.AMT_TYPE NOT IN ('04', '11', '12')
           AND A.SETTLE_FLAG IN ('01', '02')
           AND RCVBL_AMT - RCVED_AMT > 0
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.ORG_NO = B.ORG_NO
           AND A.RCVBL_YM < V_YEAR || '01' --往年的应收
         GROUP BY A.ORG_NO,
                  B.MR_SECT_NO,
                  B.ELEC_TYPE_CODE,
                  B.CONS_SORT_CODE,
                  B.TRADE_CODE;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_old_pa_rcved 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_old_pa_rcved 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度高压分次划拨情况统计  
  PROCEDURE P_INS_DW_A_HV_GP_PAYBACK(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_USE_DATE   VARCHAR2(6) := SUBSTR(I_DATA, 1, 6); --统计年月
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_USE_DATE || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_hv_gp_payback', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_A_HV_GP_PAYBACK X WHERE X.STAT_YM = V_USE_DATE;
    --开始数据统计,插入到稽查管理库OMAC
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO,
                                              '12101',
                                              5,
                                              '35101',
                                              5,
                                              7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >=
                       DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
      --高压用户总数、实际签订户数、计划执行户数
      INSERT INTO DW_A_HV_GP_PAYBACK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         RCVBL_YM,
         ELEC_TYPE_CODE,
         CONS_SORT_CODE,
         TRADE_CODE,
         HEC_TRADE_CODE,
         HV_CC,
         GP_CC_NUM,
         GP_EXEC_NUM,
         GP_MON_BAL,
         GP_RCVED_AMT,
         RCVBL_AMT,
         TIMES_TAMP)
      --高压用户  
        WITH HV_CONS_TABLE AS
         (SELECT A.ELEC_TYPE_CODE,
                 A.CONS_SORT_CODE,
                 A.TRADE_CODE,
                 A.HEC_INDUSTRY_CODE,
                 A.CONS_NO,
                 A.ORG_NO
            FROM SY_SG_C_CONS A
           WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                --排除已销户用户
             AND (A.CANCEL_DATE >= V_BEGIN_MONTH OR
                 (A.CANCEL_DATE IS NULL AND A.STATUS_CODE <> '9'))
             AND A.CONS_SORT_CODE LIKE '01%')
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '01',
               V_USE_DATE,
               V_USE_DATE RCVBL_YM,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE) ELEC_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE) CONS_SORT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE) TRADE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          HEC_INDUSTRY_CODE) HEC_TRADE_CODE,
               SUM(HV_CC),
               SUM(GP_CC_NUM),
               SUM(GP_EXEC_NUM),
               SUM(GP_MON_BAL),
               SUM(GP_RCVED_AMT),
               SUM(RCVBL_AMT),
               SYSDATE
          FROM (SELECT ORG_NO,
                       COUNT(T.CONS_NO) HV_CC,
                       0 GP_CC_NUM,
                       0 GP_EXEC_NUM,
                       0 GP_MON_BAL,
                       0 GP_RCVED_AMT,
                       0 RCVBL_AMT,
                       ELEC_TYPE_CODE,
                       CONS_SORT_CODE,
                       TRADE_CODE,
                       HEC_INDUSTRY_CODE
                  FROM HV_CONS_TABLE T
                 GROUP BY T.ORG_NO,
                          T.ELEC_TYPE_CODE,
                          T.CONS_SORT_CODE,
                          T.TRADE_CODE,
                          T.HEC_INDUSTRY_CODE
                UNION ALL
                SELECT A.ORG_NO,
                       0 HV_CC,
                       COUNT(B.CONS_NO) GP_CC_NUM,
                       0 GP_EXEC_NUM,
                       0 GP_MON_BAL,
                       0 GP_RCVED_AMT,
                       0 RCVBL_AMT,
                       A.ELEC_TYPE_CODE,
                       A.CONS_SORT_CODE,
                       A.TRADE_CODE,
                       A.HEC_INDUSTRY_CODE
                  FROM HV_CONS_TABLE A, SY_SG_A_GP_AGREEMENT B
                 WHERE V_USE_DATE BETWEEN EFFECTYM AND EXPIRE_YM
                   AND A.CONS_NO = B.CONS_NO
                   AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.ORG_NO = B.ORG_NO
                 GROUP BY A.ORG_NO,
                          A.ELEC_TYPE_CODE,
                          A.CONS_SORT_CODE,
                          A.TRADE_CODE,
                          A.HEC_INDUSTRY_CODE
                UNION ALL
                SELECT A.ORG_NO,
                       0 HV_CC,
                       0 GP_CC_NUM,
                       COUNT(B.CONS_NO) GP_EXEC_NUM,
                       0 GP_MON_BAL,
                       0 GP_RCVED_AMT,
                       0 RCVBL_AMT,
                       A.ELEC_TYPE_CODE,
                       A.CONS_SORT_CODE,
                       A.TRADE_CODE,
                       A.HEC_INDUSTRY_CODE
                  FROM HV_CONS_TABLE A, SY_SG_A_GP_PLAN B
                 WHERE B.RCVBL_YM = V_USE_DATE
                   AND A.CONS_NO = B.CONS_NO
                   AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.ORG_NO = B.ORG_NO
                 GROUP BY A.ORG_NO,
                          A.ELEC_TYPE_CODE,
                          A.CONS_SORT_CODE,
                          A.TRADE_CODE,
                          A.HEC_INDUSTRY_CODE
                UNION ALL
                SELECT /*+parallel(a 4) */
                 A.ORG_NO,
                 0 HV_CC,
                 0 GP_CC_NUM,
                 0 GP_EXEC_NUM,
                 NVL(SUM(CASE
                           WHEN A.AMT_TYPE NOT IN ('04', '11', '12') THEN
                            A.RCVBL_AMT
                           ELSE
                            0
                         END),
                     0) GP_MON_BAL,
                 NVL(SUM(CASE
                           WHEN A.AMT_TYPE IN ('04', '11', '12') THEN
                            A.RCVED_AMT
                           ELSE
                            0
                         END),
                     0) GP_RCVED_AMT,
                 NVL(SUM(CASE
                           WHEN A.AMT_TYPE IN ('04', '11', '12') THEN
                            A.RCVBL_AMT
                           ELSE
                            0
                         END),
                     0) RCVBL_AMT,
                 B.ELEC_TYPE_CODE,
                 B.CONS_SORT_CODE,
                 B.TRADE_CODE,
                 B.HEC_INDUSTRY_CODE
                  FROM SY_SG_A_RCVBL_FLOW A, HV_CONS_TABLE B
                 WHERE A.CONS_NO = B.CONS_NO
                   AND A.RCVBL_YM = V_USE_DATE
                   AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.ORG_NO = B.ORG_NO
                 GROUP BY A.ORG_NO,
                          B.ELEC_TYPE_CODE,
                          B.CONS_SORT_CODE,
                          B.TRADE_CODE,
                          B.HEC_INDUSTRY_CODE
                UNION ALL
                SELECT /*+parallel(a 4) */
                 A.ORG_NO,
                 0 HV_CC,
                 0 GP_CC_NUM,
                 0 GP_EXEC_NUM,
                 NVL(SUM(CASE
                           WHEN A.AMT_TYPE NOT IN ('04', '11', '12') THEN
                            A.RCVBL_AMT
                           ELSE
                            0
                         END),
                     0) GP_MON_BAL,
                 NVL(SUM(CASE
                           WHEN A.AMT_TYPE IN ('04', '11', '12') THEN
                            A.RCVED_AMT
                           ELSE
                            0
                         END),
                     0) GP_RCVED_AMT,
                 NVL(SUM(CASE
                           WHEN A.AMT_TYPE IN ('04', '11', '12') THEN
                            A.RCVBL_AMT
                           ELSE
                            0
                         END),
                     0) RCVBL_AMT,
                 B.ELEC_TYPE_CODE,
                 B.CONS_SORT_CODE,
                 B.TRADE_CODE,
                 B.HEC_INDUSTRY_CODE
                  FROM SY_SG_ARC_A_RCVBL_FLOW A, HV_CONS_TABLE B
                 WHERE A.CONS_NO = B.CONS_NO
                   AND A.RCVBL_YM = V_USE_DATE
                   AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.ORG_NO = B.ORG_NO
                 GROUP BY A.ORG_NO,
                          B.ELEC_TYPE_CODE,
                          B.CONS_SORT_CODE,
                          B.TRADE_CODE,
                          B.HEC_INDUSTRY_CODE)
         GROUP BY ORG_NO,
                  ELEC_TYPE_CODE,
                  CONS_SORT_CODE,
                  TRADE_CODE,
                  HEC_INDUSTRY_CODE;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_hv_gp_payback 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_hv_gp_payback 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --月度缴费超期情况统计
  PROCEDURE P_INS_DW_A_OVER_PAY_MON(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_a_over_pay_mon', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_A_OVER_PAY_MON WHERE STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO,
                                              '12101',
                                              5,
                                              '35101',
                                              5,
                                              7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >=
                       DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
      INSERT INTO DW_A_OVER_PAY_MON
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         CONS_SORT_CODE,
         ONTIME_PAY_CC,
         ONTIME_PAY_AMT,
         ONTIME_UN_PAY_CC,
         ONTIME_UN_PAY_AMT,
         OVER_PAY_CC,
         OVER_PAY_AMT,
         OVER_UN_PAY_CC,
         OVER_UN_PAY_AMT,
         POWEROFF_PAY_CC,
         POWEROFF_PAY_AMT,
         POWEROFF_UN_PAY_CC,
         POWEROFF_UN_PAY_AMT,
         TIME_STAMP)
        SELECT /*+parallel(a 4) parallel(b 4) parallel(c 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         '01',
         V_YM,
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE),
         COUNT(CASE
                 WHEN B.RCVBL_PENALTY = 0 AND B.SETTLE_FLAG = '03' THEN
                  B.CONS_NO
                 ELSE
                  NULL
               END),
         SUM(CASE
               WHEN B.RCVBL_PENALTY = 0 AND B.SETTLE_FLAG = '03' THEN
                B.RCVED_AMT
               ELSE
                0
             END),
         COUNT(CASE
                 WHEN B.RCVBL_PENALTY = 0 AND B.SETTLE_FLAG IN ('01', '02') THEN
                  B.CONS_NO
                 ELSE
                  NULL
               END),
         SUM(CASE
               WHEN B.RCVBL_PENALTY = 0 AND B.SETTLE_FLAG IN ('01', '02') THEN
                B.RCVED_AMT
               ELSE
                0
             END),
         COUNT(CASE
                 WHEN B.RCVBL_PENALTY <> 0 AND B.SETTLE_FLAG = '03' THEN
                  B.CONS_NO
                 ELSE
                  NULL
               END),
         SUM(CASE
               WHEN B.RCVBL_PENALTY <> 0 AND B.SETTLE_FLAG = '03' THEN
                B.RCVED_AMT
               ELSE
                0
             END),
         COUNT(CASE
                 WHEN B.RCVBL_PENALTY <> 0 AND B.SETTLE_FLAG IN ('01', '02') THEN
                  B.CONS_NO
                 ELSE
                  NULL
               END),
         SUM(CASE
               WHEN B.RCVBL_PENALTY <> 0 AND B.SETTLE_FLAG IN ('01', '02') THEN
                B.RCVBL_AMT - B.RCVED_AMT
               ELSE
                0
             END),
         COUNT(CASE
                 WHEN B.SETTLE_FLAG = '03' AND EXISTS
                  (SELECT 1
                         FROM SY_SG_S_OUTAGE
                        WHERE SUBSTR(ACTUAL_DATE, 1, 6) = V_YM
                          AND CONS_NO = B.CONS_NO) THEN
                  B.CONS_NO
                 ELSE
                  NULL
               END),
         SUM(CASE
               WHEN B.SETTLE_FLAG = '03' AND EXISTS
                (SELECT 1
                       FROM SY_SG_S_OUTAGE
                      WHERE SUBSTR(ACTUAL_DATE, 1, 6) = V_YM
                        AND CONS_NO = B.CONS_NO) THEN
                B.RCVED_AMT
               ELSE
                0
             END),
         COUNT(CASE
                 WHEN B.SETTLE_FLAG IN ('01', '02') AND EXISTS
                  (SELECT 1
                         FROM SY_SG_S_OUTAGE
                        WHERE SUBSTR(ACTUAL_DATE, 1, 6) = V_YM
                          AND CONS_NO = B.CONS_NO) THEN
                  B.CONS_NO
                 ELSE
                  NULL
               END),
         SUM(CASE
               WHEN B.SETTLE_FLAG IN ('01', '02') AND EXISTS
                (SELECT 1
                       FROM SY_SG_S_OUTAGE M
                      WHERE SUBSTR(ACTUAL_DATE, 1, 6) = V_YM
                        AND CONS_NO = B.CONS_NO) THEN
                B.RCVBL_AMT - B.RCVED_AMT
               ELSE
                0
             END),
         SYSDATE
          FROM SY_SG_C_CONS A, SY_SG_A_RCVBL_FLOW B
         WHERE A.CONS_NO = B.CONS_NO
           AND A.ORG_NO = B.ORG_NO
              --要排除的电费类别,个别网省电费类别存在分次结算的情况.默认不排除
           AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('PCDFLB', 'PCDFLB'),
                     B.AMT_TYPE) <= 0
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.RCVBL_YM = V_YM
         GROUP BY A.ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             A.CONS_SORT_CODE)
        UNION ALL
        SELECT /*+parallel(a 4) parallel(b 4) parallel(c 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         '01',
         V_YM,
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE),
         COUNT(CASE
                 WHEN B.RCVBL_PENALTY = 0 AND B.SETTLE_FLAG = '03' THEN
                  B.CONS_NO
                 ELSE
                  NULL
               END),
         SUM(CASE
               WHEN B.RCVBL_PENALTY = 0 AND B.SETTLE_FLAG = '03' THEN
                B.RCVED_AMT
               ELSE
                0
             END),
         COUNT(CASE
                 WHEN B.RCVBL_PENALTY = 0 AND B.SETTLE_FLAG IN ('01', '02') THEN
                  B.CONS_NO
                 ELSE
                  NULL
               END),
         SUM(CASE
               WHEN B.RCVBL_PENALTY = 0 AND B.SETTLE_FLAG IN ('01', '02') THEN
                B.RCVED_AMT
               ELSE
                0
             END),
         COUNT(CASE
                 WHEN B.RCVBL_PENALTY <> 0 AND B.SETTLE_FLAG = '03' THEN
                  B.CONS_NO
                 ELSE
                  NULL
               END),
         SUM(CASE
               WHEN B.RCVBL_PENALTY <> 0 AND B.SETTLE_FLAG = '03' THEN
                B.RCVED_AMT
               ELSE
                0
             END),
         COUNT(CASE
                 WHEN B.RCVBL_PENALTY <> 0 AND B.SETTLE_FLAG IN ('01', '02') THEN
                  B.CONS_NO
                 ELSE
                  NULL
               END),
         SUM(CASE
               WHEN B.RCVBL_PENALTY <> 0 AND B.SETTLE_FLAG IN ('01', '02') THEN
                B.RCVBL_AMT - B.RCVED_AMT
               ELSE
                0
             END),
         COUNT(CASE
                 WHEN B.SETTLE_FLAG = '03' AND EXISTS
                  (SELECT 1
                         FROM SY_SG_S_OUTAGE
                        WHERE SUBSTR(ACTUAL_DATE, 1, 6) = V_YM
                          AND CONS_NO = B.CONS_NO) THEN
                  B.CONS_NO
                 ELSE
                  NULL
               END),
         SUM(CASE
               WHEN B.SETTLE_FLAG = '03' AND EXISTS
                (SELECT 1
                       FROM SY_SG_S_OUTAGE
                      WHERE SUBSTR(ACTUAL_DATE, 1, 6) = V_YM
                        AND CONS_NO = B.CONS_NO) THEN
                B.RCVED_AMT
               ELSE
                0
             END),
         COUNT(CASE
                 WHEN B.SETTLE_FLAG IN ('01', '02') AND EXISTS
                  (SELECT 1
                         FROM SY_SG_S_OUTAGE
                        WHERE SUBSTR(ACTUAL_DATE, 1, 6) = V_YM
                          AND CONS_NO = B.CONS_NO) THEN
                  B.CONS_NO
                 ELSE
                  NULL
               END),
         SUM(CASE
               WHEN B.SETTLE_FLAG IN ('01', '02') AND EXISTS
                (SELECT 1
                       FROM SY_SG_S_OUTAGE M
                      WHERE SUBSTR(ACTUAL_DATE, 1, 6) = V_YM
                        AND CONS_NO = B.CONS_NO) THEN
                B.RCVBL_AMT - B.RCVED_AMT
               ELSE
                0
             END),
         SYSDATE
          FROM SY_SG_C_CONS A, SY_SG_ARC_A_RCVBL_FLOW B
         WHERE A.CONS_NO = B.CONS_NO
           AND A.ORG_NO = B.ORG_NO
              --要排除的电费类别,个别网省电费类别存在分次结算的情况.默认不排除
           AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('PCDFLB', 'PCDFLB'),
                     B.AMT_TYPE) <= 0
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.RCVBL_YM = V_YM
         GROUP BY A.ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             A.CONS_SORT_CODE);
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_a_over_pay_mon 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_a_over_pay_mon 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --日欠费百万以上用户统计,只统计给定时间的上月数据.I_DATA的传入为20140620日则统计201405月数据。
  PROCEDURE P_ENT_DW_A_OWE_MILLION_STAT(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_OWE_MILLION_STAT',
                                        V_YMD);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_OWE_MILLION_STAT(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_OWE_MILLION_STAT(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_OWE_MILLION_STAT X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YMD = V_YMD;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_A_OWE_MILLION_STAT 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_OWE_MILLION_STAT 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_OWE_MILLION_STAT(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --v_stat_ym    VARCHAR2(6) := substr(i_data, 1, 6);
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    /* v_ym         VARCHAR2(6) := to_char(add_months(to_date(v_stat_ym, 'YYYYMM'), -1),
    'YYYYMM');*/
    V_YEAR VARCHAR2(4) := SUBSTR(I_DATA, 1, 4); --统计年
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_OWE_MILLION_STAT',
                                        I_DATA);
    DELETE FROM DW_A_OWE_MILLION_STAT A WHERE A.STAT_YMD = V_YMD;
    --开始数据统计,插入到稽查管理库OMAC
    /* FOR tss IN (SELECT DISTINCT substr(org_no,
                                        1,
                                        decode(v_pro_org_no, '12101', 5, '35101', 5, 7)) org_no
                  FROM sy_sg_o_org
                 WHERE org_no <> '00000'
                       AND length(org_no) >=
                       decode(v_pro_org_no, '12101', 5, '35101', 5, 7))
    LOOP*/
    /* DELETE FROM tmp_k_ca_data;
    --取得欠费总额超过百万的用户
    INSERT INTO tmp_k_ca_data
        (idx_code1, idx_value, org_no)
        SELECT \*+parallel(a 4) **\
        DISTINCT a.cons_no, 0 idx_value, a.org_no,
          FROM sy_sg_a_rcvbl_flow a
         WHERE a.org_no LIKE tss.org_no || '%'
               AND a.amt_type NOT IN ('04', '11', '12')
               AND a.settle_flag IN ('01', '02')
               AND a.rcvbl_ym <= v_stat_ym
               AND a.rcvbl_amt - a.rcved_amt > 0
         GROUP BY a.org_no, a.cons_no
        HAVING SUM(a.rcvbl_amt - a.rcved_amt) >= 1000000;*/
    --
    INSERT INTO DW_A_OWE_MILLION_STAT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       RCVBL_YM,
       RCVBL_AMT,
       OWE_AMT,
       OLD_AMT,
       PAYBACK_OLD_PA,
       RCVED_AMT,
       TIME_STAMP,
       OWE_CC,
       TRADE_CODE)
    --取得欠费总额超过百万的用户    
      WITH TMP_TABLE1 AS
       (SELECT A.ORG_NO, A.CONS_NO, A.STAT_YMD
          FROM (SELECT T.ORG_NO, T.CONS_NO, T.OWE_AMT, T.STAT_YMD
                  FROM DW_A_OWE_AMT_DET T
                 WHERE T.STAT_YMD = V_YMD
                --AND rownum = 1
                 ORDER BY T.STAT_YMD DESC) A
         GROUP BY A.ORG_NO, A.CONS_NO, A.STAT_YMD
        HAVING SUM(A.OWE_AMT) > 1000000)
      SELECT OMAC.PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             A.ORG_NO,
             '01',
             V_YMD,
             B.RCVBL_YM,
             SUM(B.RCVBL_AMT) RCVBL_AMT,
             SUM(CASE
                   WHEN B.RCVBL_YM >= V_YEAR || '01' THEN
                    B.OWE_AMT
                   ELSE
                    0
                 END) OWE_AMT,
             SUM(CASE
                   WHEN B.RCVBL_YM < V_YEAR || '01' THEN
                    B.OWE_AMT
                   ELSE
                    0
                 END) OLD_AMT,
             0 PAYBACK_OLD_PA,
             SUM(B.RCVED_AMT) RCVED_AMT,
             SYSDATE,
             (SELECT COUNT(DISTINCT T.CONS_NO)
                FROM TMP_TABLE1 T
               WHERE T.ORG_NO = A.ORG_NO) OWE_CC,
             B.TRADE_CODE
        FROM TMP_TABLE1 A, DW_A_OWE_AMT_DET B
       WHERE A.CONS_NO = B.CONS_NO(+)
         AND A.ORG_NO = B.ORG_NO(+)
         AND A.STAT_YMD = B.STAT_YMD
       GROUP BY A.ORG_NO, B.RCVBL_YM, B.TRADE_CODE;
    --END LOOP;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_OWE_MILLION_STAT  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_OWE_MILLION_STAT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_A_OWE_MILLION_STAT(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_OWE_MILLION_STAT',
                                        I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_OWE_MILLION_STAT A WHERE A.STAT_YMD = V_YMD;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_OWE_MILLION_STAT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       RCVBL_YM,
       RCVBL_AMT,
       OWE_AMT,
       OLD_AMT,
       PAYBACK_OLD_PA,
       RCVED_AMT,
       TIME_STAMP,
       OWE_CC,
       TRADE_CODE)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       X.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YMD,
       RCVBL_YM,
       RCVBL_AMT,
       OWE_AMT,
       OLD_AMT,
       PAYBACK_OLD_PA,
       RCVED_AMT,
       TIME_STAMP,
       OWE_CC,
       TRADE_CODE
        FROM DW_A_OWE_MILLION_STAT X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_OWE_MILLION_STAT 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_OWE_MILLION_STAT 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --日欠电费统计情况,统计给定时间当月和上月的数据,如I_DATA为20140624日则统计2014005,201406的数据
  PROCEDURE P_ENT_DW_A_OWE_AMT_DAY_STAT(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_OWE_AMT_DAY_STAT',
                                        V_YMD);
    --调用抽取过程，进行数据抽取
    P_INS_DW_A_OWE_AMT_DAY_STAT(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_A_OWE_AMT_DAY_STAT(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_OWE_AMT_DAY_STAT X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YMD = V_YMD;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_A_OWE_AMT_DAY_STAT 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_OWE_AMT_DAY_STAT 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_OWE_AMT_DAY_STAT(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_STAT_YM    VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_OWE_AMT_DAY_STAT',
                                        I_DATA);
    DELETE FROM DW_A_OWE_AMT_DAY_STAT A WHERE A.STAT_YMD = V_YMD;
    --本年往月、往年陈欠电费根据日欠费用户明细（DW_A_OWE_AMT_DET）进行欠费信息统计。
    INSERT INTO DW_A_OWE_AMT_DAY_STAT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       RCVBL_YM,
       RCVBL_AMT,
       OWE_AMT,
       OWE_CC,
       TIME_STAMP)
      SELECT OMAC.PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             T.ORG_NO,
             T.PS_BUSI_AREA_CODE,
             V_YMD,
             T.ELEC_TYPE_CODE,
             T.CONS_SORT_CODE,
             T.TRADE_CODE,
             T.RCVBL_YM,
             SUM(T.RCVBL_AMT) RCVBL_AMT,
             SUM(T.OWE_AMT) OWE_AMT,
             COUNT(DISTINCT CONS_NO) OWE_CC,
             SYSDATE
        FROM DW_A_OWE_AMT_DET T
       WHERE T.STAT_YMD = V_YMD
       GROUP BY T.ORG_NO,
                T.PS_BUSI_AREA_CODE,
                T.ELEC_TYPE_CODE,
                T.CONS_SORT_CODE,
                T.TRADE_CODE,
                T.RCVBL_YM,
                T.CONS_NO;
    COMMIT;
    --本年当月根据营销应收表当月欠费情况统计
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO,
                                              '12101',
                                              5,
                                              '35101',
                                              5,
                                              7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >=
                       DECODE(V_PRO_ORG_NO, '12101', 5, '35101', 5, 7)) LOOP
      INSERT INTO DW_A_OWE_AMT_DAY_STAT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         ELEC_TYPE_CODE,
         CONS_SORT_CODE,
         TRADE_CODE,
         RCVBL_YM,
         RCVBL_AMT,
         OWE_AMT,
         OWE_CC,
         TIME_STAMP)
        SELECT OMAC.PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               A.ORG_NO,
               '01',
               V_YMD,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                          B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                          B.CONS_SORT_CODE) CONS_SORT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE) TRADE_CODE,
               A.RCVBL_YM,
               SUM(NVL(RCVBL_AMT, 0)) RCVBL_AMT,
               SUM(NVL(RCVBL_AMT, 0) - NVL(RCVED_AMT, 0)) OWE_AMT,
               COUNT(DISTINCT A.CONS_NO) OWE_CC,
               SYSDATE
          FROM SY_SG_A_RCVBL_FLOW A, SY_SG_C_CONS B
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.AMT_TYPE NOT IN ('04', '11', '12')
           AND A.SETTLE_FLAG IN ('01', '02')
           AND A.RCVBL_YM = V_STAT_YM
           AND A.RCVBL_AMT - A.RCVED_AMT > 0
           AND A.ORG_NO = B.ORG_NO
           AND A.CONS_NO = B.CONS_NO
         GROUP BY A.ORG_NO,
                  A.CONS_NO,
                  A.RCVBL_YM,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             B.ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             B.CONS_SORT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                             B.TRADE_CODE);
    END LOOP;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_OWE_AMT_DAY_STAT  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_OWE_AMT_DAY_STAT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_A_OWE_AMT_DAY_STAT(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_OWE_AMT_DAY_STAT',
                                        I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_OWE_AMT_DAY_STAT A WHERE A.STAT_YMD = V_YMD;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_OWE_AMT_DAY_STAT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       RCVBL_YM,
       RCVBL_AMT,
       OWE_AMT,
       OWE_CC,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       X.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       RCVBL_YM,
       RCVBL_AMT,
       OWE_AMT,
       OWE_CC,
       TIME_STAMP
        FROM DW_A_OWE_AMT_DAY_STAT X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_OWE_AMT_DAY_STAT 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_OWE_AMT_DAY_STAT 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

END "PKG_YWGK_DW_CA";
/
