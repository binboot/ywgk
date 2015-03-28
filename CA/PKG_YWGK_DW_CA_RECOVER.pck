create or replace package PKG_YWGK_DW_CA_RECOVER is

  /**
   过程名称：P_ENT_DW_A_CASHCHK/日度在途解款明细表入口过程
  作者：姜友德
  编写日期：2015-01-29 23:37
  过程描述：日度在途解款明细表入口过程,被数据库JOB调用,每天凌晨1点开始运行
  
  统计频度：每月1日凌晨1点、7日凌晨1点、16日凌晨1点、26日凌晨1点 抽取，统计日期存放昨日TO_CHAR(SYSDATE-1,'YYYYMMDD')。
  1、从营销表A_CASHCHK_FLOW中到账状态（ACCT_STATUS_CODE）为01的解款记录
   统计日期存放昨日日期。
  2、对应营销表A_CASHCHK_FLOW
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_CASHCHK(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_CASHCHK(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_A_CASHCHK(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);

  /**
   过程名称：P_ENT_DW_A_PAY/日度在途收费记录表入口过程
  作者：姜友德
  编写日期：2015-01-29 23:37
  过程描述：日度在途收费记录表入口过程,当P_ENT_DW_A_CASHCHK执行完毕后再执行此过程
  
  统计频度：每月1日凌晨1点、7日凌晨1点、16日凌晨1点、26日凌晨1点 抽取，统计日期存放昨日TO_CHAR(SYSDATE-1,'YYYYMMDD')。
  1、根据DW_A_CASHCHK中的CASHCHK_ID从营销A_PAY_FLOW获取的收费记录，
    统计日期与DW_A_CASHCHK中的统计日期相同
  2、营销表A_PAY_FLOW
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_PAY(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_PAY(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_A_PAY(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2);

  /**
   过程名称：P_ENT_DW_A_RCVED/日度在途实收电费信息表入口过程
  作者：姜友德
  编写日期：2015-01-29 23:37
  过程描述：日度在途实收电费信息表入口过程,当P_ENT_DW_A_PAY执行完毕后再执行此过程
  
  统计频度：每月1日凌晨1点、7日凌晨1点、16日凌晨1点、26日凌晨1点 抽取，统计日期存放昨日TO_CHAR(SYSDATE-1,'YYYYMMDD')。
  1、根据DW_A_PAY中的CHARGE_ID从营销A_RCVED_FLOW获取的实收记录，
    统计日期与DW_A_PAY中的统计日期相同
  2、营销表A_RCVED_FLOW
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_RCVED(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_RCVED(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_A_RCVED(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);

  /**
   过程名称：P_ENT_DW_A_RCVBL/日度在途应收电费信息表入口过程
  作者：姜友德
  编写日期：2015-01-29 23:37
  过程描述：日度在途应收电费信息表入口过程,当P_ENT_DW_A_RCVED执行完毕后再执行此过程
  
  统计频度：每月1日凌晨1点、7日凌晨1点、16日凌晨1点、26日凌晨1点 抽取，统计日期存放昨日TO_CHAR(SYSDATE-1,'YYYYMMDD')。
  1、根据DW_A_RCVED中的RCVBL_AMT_ID，从营销A_RCVBL_FLOW获取的应收记录，
     统计日期与DW_A_RCVED中的统计日期相同
  2、营销表A_RCVBL_FLOW
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_RCVBL(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_RCVBL(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_A_RCVBL(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);

  /**
   过程名称：P_ENT_DW_E_CONS_SNAP_TRANSIT/月度在途资金用户电费快照表入口过程
  作者：姜友德
  编写日期：2015-01-29 23:37
  过程描述：月度在途资金用户电费快照表入口过程,当P_ENT_DW_A_RCVED执行完毕后再执行此过程
  
  统计频度：每月1日凌晨1点、7日凌晨1点、16日凌晨1点、26日凌晨1点 抽取，统计日期存放昨日TO_CHAR(SYSDATE-1,'YYYYMMDD')。
  1、根据DW_A_RCVED中的RCVBL_AMT_ID，从营销A_RCVBL_FLOW获取的应收记录，
     统计日期与DW_A_RCVED中的统计日期相同
  2、营销表A_RCVBL_FLOW
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_E_CONS_SNAP_TRANSIT(I_DATA   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_E_CONS_SNAP_TRANSIT(I_DATA   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_E_CONS_SNAP_TRANSIT(I_DATA   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);

  /**
   过程名称：P_ENT_DW_ARC_E_CONS_SNAP/用户快照表入口过程
  作者：姜友德
  编写日期：2015-01-29 23:37
  过程描述：用户快照表入口过程,当P_ENT_DW_A_RCVED执行完毕后再执行此过程
  
  统计频度：每天抽取, I_DATA 为要进行数据的统计的日期.每天运行
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_ARC_E_CONS_SNAP(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_ARC_E_CONS_SNAP(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_ARC_E_CONS_SNAP(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
end PKG_YWGK_DW_CA_RECOVER;
/
create or replace package body PKG_YWGK_DW_CA_RECOVER is

  /**
   过程名称：P_ENT_DW_A_CASHCHK/日度在途解款明细表入口过程
  作者：姜友德
  编写日期：2015-01-29 23:37
  过程描述：日度在途解款明细表入口过程,被数据库JOB调用,每天凌晨1点开始运行
  
  统计频度：每月1日凌晨1点、7日凌晨1点、16日凌晨1点、26日凌晨1点 抽取，统计日期存放昨日TO_CHAR(SYSDATE-1,'YYYYMMDD')。
  1、从营销表A_CASHCHK_FLOW中到账状态（ACCT_STATUS_CODE）为01的解款记录
   统计日期存放昨日日期。
  2、对应营销表A_CASHCHK_FLOW
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_CASHCHK(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_CASHCHK', V_YMD);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_A_CASHCHK表
    P_INS_DW_A_CASHCHK(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_A_CASHCHK表取数据插入到稽查库OMAC用户下的DW_A_CASHCHK表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_A_CASHCHK(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_CASHCHK A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_YMD;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_A_CASHCHK  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_CASHCHK  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_CASHCHK(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --当月
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --统计期截止日（统计月末）
    V_LT_DAY VARCHAR2(8);
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
    V_DATE             DATE := TO_DATE(V_YMD || '010000',
                                       'YYYYMMDDhh24miss') + 1;
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_CASHCHK', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_CASHCHK X WHERE X.STAT_YMD = V_YMD;
  
    INSERT INTO DW_A_CASHCHK
      (DATA_ID,
       PRO_ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       CASHCHK_ID,
       CASHCHK_EMP_NO,
       CAPITAL_NO,
       SETTLE_MODE,
       CASHCHK__AMT,
       CASHCHK_DATE,
       SETTLE_NOTE_NO,
       SETTLE_BANK_CODE,
       CASHCHK_BANK_CODE,
       CASHCHK_BANK_ACCT,
       ACCOUNTANT_NO,
       DISPOSE_DATE,
       ACCT_STATUS_CODE,
       ARRIVE_DATE,
       BANK_NOTE_NO,
       ACCT_BOOK_ID,
       ORG_NO,
       RCV_ORG_NO,
       CASH_BATCH_NO,
       TERMINAL_NO,
       TIME_STAMP)
      SELECT /*+PARALLEL(A 4)*/
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       V_PRO_ORG_NO PRO_ORG_NO,
       '01',
       V_YMD,
       A.CASHCHK_ID,
       A.CASHCHK_EMP_NO,
       A.CAPITAL_NO,
       --结算标识
       PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', A.SETTLE_MODE),
       A.CASHCHK_AMT,
       A.CASHCHK_DATE,
       A.SETTLE_NOTE_NO,
       A.SETTLE_BANK_CODE,
       A.CASHCHK_BANK_CODE,
       A.CASHCHK_BANK_ACCT,
       A.ACCOUNTANT_NO,
       A.DISPOSE_DATE,
       --入账,退票代码转换
       PKG_GK_PUBLIC.F_TRANS_CODE('ACCT_STATUS_CODE', A.ACCT_STATUS_CODE),
       A.ARRIVE_DATE,
       A.BANK_NOTE_NO,
       A.ACCT_BOOK_ID,
       A.ORG_NO,
       A.RCV_ORG_NO,
       A.CASH_BATCH_NO,
       A.TERMINAL_NO,
       SYSDATE
        FROM SY_SG_A_CASHCHK_FLOW A
       WHERE
      --已收费未解款的数据,不在历史数据中体现，而在当天的数据内体现 
       NVL(A.CASHCHK_DATE, (SYSDATE - 1)) <= V_DATE
      --到帐状态为01
       AND PKG_GK_PUBLIC.F_TRANS_CODE('ACCT_STATUS_CODE', A.ACCT_STATUS_CODE) = '01';
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_CASHCHK  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_CASHCHK  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_CASHCHK(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_CASHCHK', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_A_CASHCHK X WHERE X.STAT_YMD = V_YMD;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_CASHCHK X
      (DATA_ID,
       PRO_ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       CASHCHK_ID,
       CASHCHK_EMP_NO,
       CAPITAL_NO,
       SETTLE_MODE,
       CASHCHK__AMT,
       CASHCHK_DATE,
       SETTLE_NOTE_NO,
       SETTLE_BANK_CODE,
       CASHCHK_BANK_CODE,
       CASHCHK_BANK_ACCT,
       ACCOUNTANT_NO,
       DISPOSE_DATE,
       ACCT_STATUS_CODE,
       ARRIVE_DATE,
       BANK_NOTE_NO,
       ACCT_BOOK_ID,
       ORG_NO,
       RCV_ORG_NO,
       CASH_BATCH_NO,
       TERMINAL_NO,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_YMD,
       A.CASHCHK_ID,
       A.CASHCHK_EMP_NO,
       A.CAPITAL_NO,
       A.SETTLE_MODE,
       A.CASHCHK__AMT,
       A.CASHCHK_DATE,
       A.SETTLE_NOTE_NO,
       A.SETTLE_BANK_CODE,
       A.CASHCHK_BANK_CODE,
       A.CASHCHK_BANK_ACCT,
       A.ACCOUNTANT_NO,
       A.DISPOSE_DATE,
       A.ACCT_STATUS_CODE,
       A.ARRIVE_DATE,
       A.BANK_NOTE_NO,
       A.ACCT_BOOK_ID,
       A.ORG_NO,
       A.RCV_ORG_NO,
       A.CASH_BATCH_NO,
       A.TERMINAL_NO,
       A.TIME_STAMP
        FROM DW_A_CASHCHK A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_CASHCHK  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_CASHCHK  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   过程名称：P_ENT_DW_A_PAY/日度在途收费记录表入口过程
  作者：姜友德
  编写日期：2015-01-29 23:37
  过程描述：日度在途收费记录表入口过程,当P_ENT_DW_A_CASHCHK执行完毕后再执行此过程
  
  统计频度：每月1日凌晨1点、7日凌晨1点、16日凌晨1点、26日凌晨1点 抽取，统计日期存放昨日TO_CHAR(SYSDATE-1,'YYYYMMDD')。
  1、根据DW_A_CASHCHK中的CASHCHK_ID从营销A_PAY_FLOW获取的收费记录，
    统计日期与DW_A_CASHCHK中的统计日期相同
  2、营销表A_PAY_FLOW
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_PAY(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_PAY', V_YMD);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_A_PAY表
    P_INS_DW_A_PAY(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_A_PAY表取数据插入到稽查库OMAC用户下的DW_A_PAY表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_A_PAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_PAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_YMD;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_A_PAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_PAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_PAY(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --当月
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --统计期截止日（统计月末）
    V_LT_DAY VARCHAR2(8);
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
    V_DATE             DATE := TO_DATE(V_YMD || '010000',
                                       'YYYYMMDDhh24miss') + 1;
    V_MONTH            DATE := TO_DATE('200801', 'YYYYMM');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_PAY', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_PAY X WHERE X.STAT_YMD = V_YMD;
  
    --按照上次统计的CHARGE_YM最小值开始循环
    BEGIN
      SELECT /*+PARALLEL(A 4)*/
       MIN(CHARGE_YM)
        INTO V_MONTH
        FROM DW_A_PAY A
       WHERE A.STAT_YMD =
             TO_CHAR((TO_DATE(V_YMD, 'YYYYMMDD') - 1), 'YYYYMMDD');
    EXCEPTION
      WHEN OTHERS THEN
        V_MONTH := TO_DATE('200801', 'YYYYMM');
    END;
  
    IF (V_MONTH IS NULL) THEN
      V_MONTH := TO_DATE('200801', 'YYYYMM');
    END IF;
  
    --利用A_PAY_FLOW中的CHARGE_YM分区
    WHILE NOT (TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE, 3), 'YYYYMM'), 'YYYYMM') =
           V_MONTH) LOOP
    
      INSERT INTO DW_A_PAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         CHARGE_ID,
         CASHCHK_ID,
         ACCT_ID,
         CONS_NO,
         CHARGE_YM,
         CHARGE_DATE,
         ACCT_YM,
         TYPE_CODE,
         RCV_AMT,
         THIS_CHG,
         LAST_CHG,
         CHARGE_EMP_NO,
         PAY_MODE,
         SETTLE_MODE,
         SETTLE_NOTE_NO,
         SETTLE_BANK_CODE,
         ACCT_NO,
         CHARGE_REMARK,
         DEPT_NO,
         RCV_ORG_NO,
         TIME_STAMP)
        SELECT /*+PARALLEL(A 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
         V_PRO_ORG_NO PRO_ORG_NO,
         A.ORG_NO,
         '01',
         V_YMD,
         A.CHARGE_ID,
         A.CASHCHK_ID,
         A.ACCT_ID,
         A.CONS_NO,
         A.CHARGE_YM,
         A.CHARGE_DATE,
         A.ACCT_YM,
         A.TYPE_CODE,
         A.RCV_AMT,
         A.THIS_CHG,
         A.LAST_CHG,
         A.CHARGE_EMP_NO,
         PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', A.PAY_MODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', A.SETTLE_MODE),
         A.SETTLE_NOTE_NO,
         A.SETTLE_BANK_CODE,
         A.ACCT_NO,
         A.CHARGE_REMARK,
         A.DEPT_NO,
         A.RCV_ORG_NO,
         SYSDATE
          FROM SY_SG_A_PAY_FLOW A
         WHERE
        --采用A_PAY_FLOW内的CHARGE_YM分区 
         A.CHARGE_YM = TO_CHAR(V_MONTH, 'YYYYMM')
        --利用已经统计好的DW_A_CASHCHK表中的STAT_YMD分区
         AND EXISTS (SELECT /*+PARALLEL(B 4)*/
           1
            FROM DW_A_CASHCHK B
           WHERE B.STAT_YMD = V_YMD
             AND B.CASHCHK_ID = A.CASHCHK_ID);
      COMMIT;
      --V_MONTH自增
      V_MONTH := ADD_MONTHS(V_MONTH, 1);
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_PAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_PAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_PAY(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_PAY', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_A_PAY X WHERE X.STAT_YMD = V_YMD;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_PAY X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       CHARGE_ID,
       CASHCHK_ID,
       ACCT_ID,
       CONS_NO,
       CHARGE_YM,
       CHARGE_DATE,
       ACCT_YM,
       TYPE_CODE,
       RCV_AMT,
       THIS_CHG,
       LAST_CHG,
       CHARGE_EMP_NO,
       PAY_MODE,
       SETTLE_MODE,
       SETTLE_NOTE_NO,
       SETTLE_BANK_CODE,
       ACCT_NO,
       CHARGE_REMARK,
       DEPT_NO,
       RCV_ORG_NO,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_YMD,
       A.CHARGE_ID,
       A.CASHCHK_ID,
       A.ACCT_ID,
       A.CONS_NO,
       A.CHARGE_YM,
       A.CHARGE_DATE,
       A.ACCT_YM,
       A.TYPE_CODE,
       A.RCV_AMT,
       A.THIS_CHG,
       A.LAST_CHG,
       A.CHARGE_EMP_NO,
       A.PAY_MODE,
       A.SETTLE_MODE,
       A.SETTLE_NOTE_NO,
       A.SETTLE_BANK_CODE,
       A.ACCT_NO,
       A.CHARGE_REMARK,
       A.DEPT_NO,
       A.RCV_ORG_NO,
       A.TIME_STAMP
        FROM DW_A_PAY A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_PAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_PAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   过程名称：P_ENT_DW_A_RCVED/日度在途实收电费信息表入口过程
  作者：姜友德
  编写日期：2015-01-29 23:37
  过程描述：日度在途实收电费信息表入口过程,当P_ENT_DW_A_PAY执行完毕后再执行此过程
  
  统计频度：每月1日凌晨1点、7日凌晨1点、16日凌晨1点、26日凌晨1点 抽取，统计日期存放昨日TO_CHAR(SYSDATE-1,'YYYYMMDD')。
  1、根据DW_A_PAY中的CHARGE_ID从营销A_RCVED_FLOW获取的实收记录，
    统计日期与DW_A_PAY中的统计日期相同
  2、营销表A_RCVED_FLOW
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_RCVED(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_RCVED', V_YMD);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_A_RCVED表
    P_INS_DW_A_RCVED(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_A_RCVED表取数据插入到稽查库OMAC用户下的DW_A_RCVED表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_A_RCVED(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_RCVED A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_YMD;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_A_RCVED  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_RCVED  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_RCVED(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --当月
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --统计期截止日（统计月末）
    V_LT_DAY VARCHAR2(8);
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
    V_DATE             DATE := TO_DATE(V_YMD || '010000',
                                       'YYYYMMDDhh24miss') + 1;
  
    V_MONTH     DATE := TO_DATE('200801', 'YYYYMM');
    V_MONTH_MIN DATE := TO_DATE('200801', 'YYYYMM');
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_RCVED', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_RCVED X WHERE X.STAT_YMD = V_YMD;
  
    --按照上次统计的CHARGE_YM最小值开始循环
    BEGIN
      SELECT /*+PARALLEL(A 4)*/
       MIN(CHARGE_YM)
        INTO V_MONTH_MIN
        FROM DW_A_PAY A
       WHERE A.STAT_YMD =
             TO_CHAR((TO_DATE(V_YMD, 'YYYYMMDD') - 1), 'YYYYMMDD');
    EXCEPTION
      WHEN OTHERS THEN
        V_MONTH_MIN := TO_DATE('200801', 'YYYYMM');
    END;
  
    IF (V_MONTH_MIN IS NULL) THEN
      V_MONTH_MIN := TO_DATE('200801', 'YYYYMM');
    END IF;
  
    --A_RCVED_FLOW中的单位为主分区
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      V_MONTH := V_MONTH_MIN;
    
      --利用A_RCVED_FLOW中的CHARGE_YM分区
      WHILE NOT (TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE, 3), 'YYYYMM'), 'YYYYMM') =
             V_MONTH) LOOP
      
        INSERT INTO DW_A_RCVED
          (DATA_ID,
           PRO_ORG_NO,
           PS_BUSI_AREA_CODE,
           STAT_YMD,
           RCVED_AMT_ID,
           RCVBL_AMT_ID,
           CHARGE_ID,
           ORG_NO,
           CONS_NO,
           RCVED_YM,
           RCVED_DATE,
           THIS_RCVED_AMT,
           THIS_IN_PRICE_AMT,
           THIS_PL_AMT,
           THIS_PENALTY,
           ACCT_NO,
           OWE_AMT,
           NOTE_ID,
           RCVBL_YM,
           TIME_STAMP)
          SELECT /*+PARALLEL(A 4)*/
           PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
           V_PRO_ORG_NO PRO_ORG_NO,
           '01',
           V_YMD,
           A.RCVED_AMT_ID,
           A.RCVBL_AMT_ID,
           A.CHARGE_ID,
           A.ORG_NO,
           A.CONS_NO,
           A.RCVED_YM,
           A.RCVED_DATE,
           A.THIS_RCVED_AMT,
           A.THIS_IN_PRICE_AMT,
           A.THIS_PL_AMT,
           A.THIS_PENALTY,
           A.ACCT_NO,
           A.OWE_AMT,
           --  由于网省反馈a_rcved_flow表中的note_id不符合标设，现场为varchar2(32) 标设为number(16).按照设计人员确定：此字段置为0即可。
           '0',
           A.RCVBL_YM,
           SYSDATE
            FROM SY_SG_A_RCVED_FLOW A
           WHERE
          --利用A_RCVED_FLOW中的单位主分区
           A.ORG_NO LIKE TSS.ORG_NO || '%'
          --利用A_RCVED_FLOW中的实收年月从分区
           AND A.RCVED_YM = TO_CHAR(V_MONTH, 'YYYYMM')
           AND EXISTS (SELECT /*+PARALLEL(B 4)*/
             1
              FROM DW_A_PAY B
            --利用DW_A_PAY表中先统计出来的数据，采用STAT_YMD中的分区
             WHERE B.STAT_YMD = V_YMD
                  --限制B表的数据规模
               AND B.CHARGE_YM = TO_CHAR(V_MONTH, 'YYYYMM')
                  --要求收费记录表a_pay_flow中的收费年月CHARGE_YM等于实收表中a_reved_flow中的实收年月RCVED_YM
               AND B.CHARGE_YM = A.RCVED_YM
               AND B.CHARGE_ID = A.CHARGE_ID)
          UNION ALL
          SELECT /*+PARALLEL(A 4)*/
           PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
           V_PRO_ORG_NO PRO_ORG_NO,
           '01',
           V_YMD,
           A.RCVED_AMT_ID,
           A.RCVBL_AMT_ID,
           A.CHARGE_ID,
           A.ORG_NO,
           A.CONS_NO,
           A.RCVED_YM,
           A.RCVED_DATE,
           A.THIS_RCVED_AMT,
           A.THIS_IN_PRICE_AMT,
           A.THIS_PL_AMT,
           A.THIS_PENALTY,
           A.ACCT_NO,
           A.OWE_AMT,
           --  由于网省反馈a_rcved_flow表中的note_id不符合标设，现场为varchar2(32) 标设为number(16).按照设计人员确定：此字段置为0即可。
           '0',
           A.RCVBL_YM,
           SYSDATE
            FROM SY_SG_ARC_A_RCVED_FLOW A, DW_A_PAY B
           WHERE
          --利用A_RCVED_FLOW中的单位主分区
           A.ORG_NO LIKE TSS.ORG_NO || '%'
          --利用A_RCVED_FLOW中的实收年月从分区
           AND A.RCVED_YM = TO_CHAR(V_MONTH, 'YYYYMM')
           AND EXISTS (SELECT /*+PARALLEL(B 4)*/
             1
              FROM DW_A_PAY B
            --利用DW_A_PAY表中先统计出来的数据，采用STAT_YMD中的分区
             WHERE B.STAT_YMD = V_YMD
                  --限制B表的数据规模
               AND B.CHARGE_YM = TO_CHAR(V_MONTH, 'YYYYMM')
                  --要求收费记录表a_pay_flow中的收费年月CHARGE_YM等于实收表中a_reved_flow中的实收年月RCVED_YM
               AND B.CHARGE_YM = A.RCVED_YM
               AND B.CHARGE_ID = A.CHARGE_ID);
        COMMIT;
        --V_MONTH自增
        V_MONTH := ADD_MONTHS(V_MONTH, 1);
      END LOOP;
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_RCVED  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_RCVED  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_RCVED(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_RCVED', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_A_RCVED X WHERE X.STAT_YMD = V_YMD;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_RCVED X
      (DATA_ID,
       PRO_ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       RCVED_AMT_ID,
       RCVBL_AMT_ID,
       CHARGE_ID,
       ORG_NO,
       CONS_NO,
       RCVED_YM,
       RCVED_DATE,
       THIS_RCVED_AMT,
       THIS_IN_PRICE_AMT,
       THIS_PL_AMT,
       THIS_PENALTY,
       ACCT_NO,
       OWE_AMT,
       NOTE_ID,
       RCVBL_YM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_YMD,
       A.RCVED_AMT_ID,
       A.RCVBL_AMT_ID,
       A.CHARGE_ID,
       A.ORG_NO,
       A.CONS_NO,
       A.RCVED_YM,
       A.RCVED_DATE,
       A.THIS_RCVED_AMT,
       A.THIS_IN_PRICE_AMT,
       A.THIS_PL_AMT,
       A.THIS_PENALTY,
       A.ACCT_NO,
       A.OWE_AMT,
       A.NOTE_ID,
       A.RCVBL_YM,
       A.TIME_STAMP
        FROM DW_A_RCVED A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_RCVED  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_RCVED  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   过程名称：P_ENT_DW_A_RCVBL/日度在途应收电费信息表入口过程
  作者：姜友德
  编写日期：2015-01-29 23:37
  过程描述：日度在途应收电费信息表入口过程,当P_ENT_DW_A_RCVED执行完毕后再执行此过程
  
  统计频度：每月1日凌晨1点、7日凌晨1点、16日凌晨1点、26日凌晨1点 抽取，统计日期存放昨日TO_CHAR(SYSDATE-1,'YYYYMMDD')。
  1、根据DW_A_RCVED中的RCVBL_AMT_ID，从营销A_RCVBL_FLOW获取的应收记录，
     统计日期与DW_A_RCVED中的统计日期相同
  2、营销表A_RCVBL_FLOW
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_RCVBL(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_RCVBL', V_YMD);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_A_RCVBL表
    P_INS_DW_A_RCVBL(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_A_RCVBL表取数据插入到稽查库OMAC用户下的DW_A_RCVBL表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_A_RCVBL(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_RCVBL A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_YMD;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_A_RCVBL  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_RCVBL  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_RCVBL(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --当月
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --统计期截止日（统计月末）
    V_LT_DAY VARCHAR2(8);
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
    V_DATE             DATE := TO_DATE(V_YMD || '010000',
                                       'YYYYMMDDhh24miss') + 1;
  
    V_MONTH     DATE := TO_DATE('200801', 'YYYYMM');
    V_MONTH_MIN DATE := TO_DATE('200801', 'YYYYMM');
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_RCVBL', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_RCVBL X WHERE X.STAT_YMD = V_YMD;
  
    --按照上次统计的CHARGE_YM最小值开始循环
    BEGIN
      SELECT /*+PARALLEL(A 4)*/
       MIN(CHARGE_YM)
        INTO V_MONTH_MIN
        FROM DW_A_PAY A
       WHERE A.STAT_YMD =
             TO_CHAR((TO_DATE(V_YMD, 'YYYYMMDD') - 1), 'YYYYMMDD');
    EXCEPTION
      WHEN OTHERS THEN
        V_MONTH_MIN := TO_DATE('200801', 'YYYYMM');
    END;
  
    IF (V_MONTH_MIN IS NULL) THEN
      V_MONTH_MIN := TO_DATE('200801', 'YYYYMM');
    END IF;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_A_RCVBL
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      V_MONTH := V_MONTH_MIN;
    
      --利用A_RCVED_FLOW中的CHARGE_YM分区
      WHILE NOT (TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE, 3), 'YYYYMM'), 'YYYYMM') =
             V_MONTH) LOOP
      
        INSERT INTO DW_A_RCVBL
          (DATA_ID,
           PRO_ORG_NO,
           PS_BUSI_AREA_CODE,
           STAT_YMD,
           RCVBL_AMT_ID,
           CALC_ID,
           AMT_TYPE,
           RCVBL_YM,
           CONS_NO,
           ORG_NO,
           PAY_MODE,
           T_PQ,
           RCVBL_AMT,
           RCVED_AMT,
           STATUS_CODE,
           SETTLE_FLAG,
           PENALTY_BGN_DATE,
           RCVBL_INPRICE_AMT,
           RCVBL_PL_AMT,
           RCVED_IN_PRICE_AMT,
           RCVED_PL_AMT,
           RCVBL_PENALTY,
           RCVED_PENALTY,
           RISK_LEVEL_CODE,
           RELEASE_DATE,
           ACCT_NO,
           OWE_AMT,
           TIME_STAMP)
          SELECT /*+PARALLEL(A 4)*/
           PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
           V_PRO_ORG_NO PRO_ORG_NO,
           '01',
           V_YMD,
           A.RCVBL_AMT_ID,
           A.CALC_ID,
           PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', A.AMT_TYPE),
           A.RCVBL_YM,
           A.CONS_NO,
           A.ORG_NO,
           PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', A.PAY_MODE),
           A.T_PQ,
           A.RCVBL_AMT,
           A.RCVED_AMT,
           PKG_GK_PUBLIC.F_TRANS_CODE('AC_FEE_STATUS_CODE', A.STATUS_CODE),
           PKG_GK_PUBLIC.F_TRANS_CODE('FEE_SETTLE_FLAG', A.SETTLE_FLAG),
           A.PENALTY_BGN_DATE,
           A.RCVBL_INPRICE_AMT,
           A.RCVBL_PL_AMT,
           A.RCVED_IN_PRICE_AMT,
           A.RCVED_PL_AMT,
           A.RCVBL_PENALTY,
           A.RCVED_PENALTY,
           PKG_GK_PUBLIC.F_TRANS_CODE('M_RISK_LEVEL_CODE',
                                      A.RISK_LEVEL_CODE),
           A.RELEASE_DATE,
           A.ACCT_NO,
           A.OWE_AMT,
           SYSDATE
            FROM SY_SG_A_RCVBL_FLOW A
           WHERE
          --利用应收表中的单位分区
           A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.RCVBL_YM = TO_CHAR(V_MONTH, 'YYYYMM')
           AND EXISTS (SELECT /*+PARALLEL(B 4)*/
             1
              FROM DW_A_RCVED B
            --利用DW_A_RCVED表已经统计出来的数据，STAT_YMD为分区
             WHERE B.STAT_YMD = V_YMD
               AND B.RCVBL_YM = TO_CHAR(V_MONTH, 'YYYYMM')
                  --要求实收表中的应收年月等于应收表中的电费年月
               AND A.RCVBL_YM = B.RCVBL_YM
               AND B.RCVBL_AMT_ID = A.RCVBL_AMT_ID);
      
        INSERT INTO DW_A_RCVBL
          (DATA_ID,
           PRO_ORG_NO,
           PS_BUSI_AREA_CODE,
           STAT_YMD,
           RCVBL_AMT_ID,
           CALC_ID,
           AMT_TYPE,
           RCVBL_YM,
           CONS_NO,
           ORG_NO,
           PAY_MODE,
           T_PQ,
           RCVBL_AMT,
           RCVED_AMT,
           STATUS_CODE,
           SETTLE_FLAG,
           PENALTY_BGN_DATE,
           RCVBL_INPRICE_AMT,
           RCVBL_PL_AMT,
           RCVED_IN_PRICE_AMT,
           RCVED_PL_AMT,
           RCVBL_PENALTY,
           RCVED_PENALTY,
           RISK_LEVEL_CODE,
           RELEASE_DATE,
           ACCT_NO,
           OWE_AMT,
           TIME_STAMP)
          SELECT /*+PARALLEL(A 4)*/
           PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
           V_PRO_ORG_NO PRO_ORG_NO,
           '01',
           V_YMD,
           A.RCVBL_AMT_ID,
           A.CALC_ID,
           PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', A.AMT_TYPE),
           A.RCVBL_YM,
           A.CONS_NO,
           A.ORG_NO,
           PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', A.PAY_MODE),
           A.T_PQ,
           A.RCVBL_AMT,
           A.RCVED_AMT,
           PKG_GK_PUBLIC.F_TRANS_CODE('AC_FEE_STATUS_CODE', A.STATUS_CODE),
           PKG_GK_PUBLIC.F_TRANS_CODE('FEE_SETTLE_FLAG', A.SETTLE_FLAG),
           A.PENALTY_BGN_DATE,
           A.RCVBL_INPRICE_AMT,
           A.RCVBL_PL_AMT,
           A.RCVED_IN_PRICE_AMT,
           A.RCVED_PL_AMT,
           A.RCVBL_PENALTY,
           A.RCVED_PENALTY,
           PKG_GK_PUBLIC.F_TRANS_CODE('M_RISK_LEVEL_CODE',
                                      A.RISK_LEVEL_CODE),
           A.RELEASE_DATE,
           A.ACCT_NO,
           A.OWE_AMT,
           SYSDATE
            FROM SY_SG_ARC_A_RCVBL_FLOW A
           WHERE
          --利用应收表中的单位分区
           A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.RCVBL_YM = TO_CHAR(V_MONTH, 'YYYYMM')
           AND EXISTS (SELECT /*+PARALLEL(B 4)*/
             1
              FROM DW_A_RCVED B
            --利用DW_A_RCVED表已经统计出来的数据，STAT_YMD为分区
             WHERE B.STAT_YMD = V_YMD
               AND B.RCVBL_YM = TO_CHAR(V_MONTH, 'YYYYMM')
                  --要求实收表中的应收年月等于应收表中的电费年月
               AND A.RCVBL_YM = B.RCVBL_YM
               AND B.RCVBL_AMT_ID = A.RCVBL_AMT_ID);
      
        COMMIT;
        --V_MONTH自增
        V_MONTH := ADD_MONTHS(V_MONTH, 1);
      END LOOP;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_RCVBL  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_RCVBL  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_RCVBL(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_RCVBL', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_A_RCVBL X WHERE X.STAT_YMD = V_YMD;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_RCVBL X
      (DATA_ID,
       PRO_ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       RCVBL_AMT_ID,
       CALC_ID,
       AMT_TYPE,
       RCVBL_YM,
       CONS_NO,
       ORG_NO,
       PAY_MODE,
       T_PQ,
       RCVBL_AMT,
       RCVED_AMT,
       STATUS_CODE,
       SETTLE_FLAG,
       PENALTY_BGN_DATE,
       RCVBL_INPRICE_AMT,
       RCVBL_PL_AMT,
       RCVED_IN_PRICE_AMT,
       RCVED_PL_AMT,
       RCVBL_PENALTY,
       RCVED_PENALTY,
       RISK_LEVEL_CODE,
       RELEASE_DATE,
       ACCT_NO,
       OWE_AMT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_YMD,
       A.RCVBL_AMT_ID,
       A.CALC_ID,
       A.AMT_TYPE,
       A.RCVBL_YM,
       A.CONS_NO,
       A.ORG_NO,
       A.PAY_MODE,
       A.T_PQ,
       A.RCVBL_AMT,
       A.RCVED_AMT,
       A.STATUS_CODE,
       A.SETTLE_FLAG,
       A.PENALTY_BGN_DATE,
       A.RCVBL_INPRICE_AMT,
       A.RCVBL_PL_AMT,
       A.RCVED_IN_PRICE_AMT,
       A.RCVED_PL_AMT,
       A.RCVBL_PENALTY,
       A.RCVED_PENALTY,
       A.RISK_LEVEL_CODE,
       A.RELEASE_DATE,
       A.ACCT_NO,
       A.OWE_AMT,
       A.TIME_STAMP
        FROM DW_A_RCVBL A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_RCVBL  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_RCVBL  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   过程名称：P_ENT_DW_E_CONS_SNAP_TRANSIT/月度在途资金用户电费快照表入口过程
  作者：姜友德
  编写日期：2015-01-29 23:37
  过程描述：月度在途资金用户电费快照表入口过程,当P_ENT_DW_A_RCVED执行完毕后再执行此过程
  
  统计频度：每月1日凌晨1点、7日凌晨1点、16日凌晨1点、26日凌晨1点 抽取，统计日期存放昨日TO_CHAR(SYSDATE-1,'YYYYMMDD')。
  1、根据DW_A_RCVED中的RCVBL_AMT_ID，从营销A_RCVBL_FLOW获取的应收记录，
     统计日期与DW_A_RCVED中的统计日期相同
  2、营销表A_RCVBL_FLOW
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_E_CONS_SNAP_TRANSIT(I_DATA   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_CONS_SNAP_TRANSIT',
                                        V_YMD);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_E_CONS_SNAP_TRANSIT表
    P_INS_DW_E_CONS_SNAP_TRANSIT(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_E_CONS_SNAP_TRANSIT表取数据插入到稽查库OMAC用户下的DW_E_CONS_SNAP_TRANSIT表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_CONS_SNAP_TRANSIT(V_YMD, OUT_CODE, OUT_MSG);
      /*ELSE
      --复制模式补充供电区域性质
      UPDATE DW_E_CONS_SNAP_TRANSIT A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT 
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_YMD;*/
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_CONS_SNAP_TRANSIT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_CONS_SNAP_TRANSIT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_CONS_SNAP_TRANSIT(I_DATA   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --当月
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --统计期截止日（统计月末）
    V_LT_DAY VARCHAR2(8);
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
    V_DATE             DATE := TO_DATE(V_YMD || '010000',
                                       'YYYYMMDDhh24miss') + 1;
  
    V_MONTH     DATE := TO_DATE('200801', 'YYYYMM');
    V_MONTH_MIN DATE := TO_DATE('200801', 'YYYYMM');
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_CONS_SNAP_TRANSIT',
                                        I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_E_CONS_SNAP_TRANSIT X WHERE X.STAT_YMD = V_YMD;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_E_CONS_SNAP_TRANSIT
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_E_CONS_SNAP_TRANSIT X
        (DATA_ID,
         PRO_ORG_NO,
         STAT_YMD,
         YM,
         CALC_ID,
         APP_CODE,
         CONS_ID,
         ORG_NO,
         VERI_RSLT,
         VERI_REMARK,
         CALC_DATE,
         SEND_DATE,
         CONS_NO,
         CONS_NAME,
         CONS_SORT_CODE,
         ELEC_ADDR,
         TRADE_TYPE_CODE,
         ELEC_TYPE_CODE,
         VOLT_CODE,
         HEC_TRADE_CODE,
         CREATE_DATE,
         POWERON_DATE,
         CANCEL_DATE,
         STATUS_CODE,
         BUSI_REGION_NO,
         TRANSFER_FLAG,
         MR_SECT_NO,
         GP_CODE,
         TIME_STAMP)
        SELECT /*+PARALLEL(A 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
         V_PRO_ORG_NO PRO_ORG_NO,
         V_YMD,
         A.YM,
         A.CALC_ID,
         A.APP_CODE,
         A.CONS_ID,
         A.ORG_NO,
         A.VERI_RSLT,
         A.VERI_REMARK,
         A.CALC_DATE,
         A.SEND_DATE,
         A.CONS_NO,
         A.CONS_NAME,
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE),
         A.ELEC_ADDR,
         PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', A.TRADE_TYPE_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', A.ELEC_TYPE_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', A.HEC_TRADE_CODE),
         A.CREATE_DATE,
         A.POWERON_DATE,
         A.CANCEL_DATE,
         A.STATUS_CODE,
         A.BUSI_REGION_NO,
         NVL(A.TRANSFER_FLAG, 0),
         A.MR_SECT_NO,
         A.GP_CODE,
         SYSDATE
          FROM SY_SG_ARC_E_CONS_SNAP A
         WHERE
        --利用应收表中的单位分区
         A.ORG_NO LIKE TSS.ORG_NO || '%'
         AND EXISTS (SELECT /*+PARALLEL(B 4)*/
           1
            FROM DW_A_RCVBL B
          --利用DW_A_RCVED表已经统计出来的数据，STAT_YMD为分区
           WHERE B.STAT_YMD = V_YMD
                --要求实收表中的应收年月等于应收表中的电费年月
             AND A.YM = B.RCVBL_YM
             AND B.CALC_ID = A.CALC_ID);
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_CONS_SNAP_TRANSIT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_CONS_SNAP_TRANSIT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_E_CONS_SNAP_TRANSIT(I_DATA   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_CONS_SNAP_TRANSIT',
                                        I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_E_CONS_SNAP_TRANSIT X WHERE X.STAT_YMD = V_YMD;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_E_CONS_SNAP_TRANSIT X
      (DATA_ID,
       PRO_ORG_NO,
       STAT_YMD,
       YM,
       CALC_ID,
       APP_CODE,
       CONS_ID,
       ORG_NO,
       VERI_RSLT,
       VERI_REMARK,
       CALC_DATE,
       SEND_DATE,
       CONS_NO,
       CONS_NAME,
       CONS_SORT_CODE,
       ELEC_ADDR,
       TRADE_TYPE_CODE,
       ELEC_TYPE_CODE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       CREATE_DATE,
       POWERON_DATE,
       CANCEL_DATE,
       STATUS_CODE,
       BUSI_REGION_NO,
       TRANSFER_FLAG,
       MR_SECT_NO,
       GP_CODE,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             STAT_YMD,
             YM,
             CALC_ID,
             APP_CODE,
             CONS_ID,
             ORG_NO,
             VERI_RSLT,
             VERI_REMARK,
             CALC_DATE,
             SEND_DATE,
             CONS_NO,
             CONS_NAME,
             CONS_SORT_CODE,
             ELEC_ADDR,
             TRADE_TYPE_CODE,
             ELEC_TYPE_CODE,
             VOLT_CODE,
             HEC_TRADE_CODE,
             CREATE_DATE,
             POWERON_DATE,
             CANCEL_DATE,
             STATUS_CODE,
             BUSI_REGION_NO,
             TRANSFER_FLAG,
             MR_SECT_NO,
             GP_CODE,
             TIME_STAMP
        FROM DW_E_CONS_SNAP_TRANSIT A
      --加入时间筛选条件
       WHERE A.STAT_YMD = V_YMD;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_CONS_SNAP_TRANSIT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_CONS_SNAP_TRANSIT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   过程名称：P_ENT_DW_ARC_E_CONS_SNAP/用户快照表入口过程
  作者：姜友德
  编写日期：2015-01-29 23:37
  过程描述：用户快照表入口过程,当P_ENT_DW_A_RCVED执行完毕后再执行此过程
  
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日期.每天运行
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_ARC_E_CONS_SNAP(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_ARC_E_CONS_SNAP', V_YMD);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_ARC_E_CONS_SNAP表
    P_INS_DW_ARC_E_CONS_SNAP(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_ARC_E_CONS_SNAP表取数据插入到稽查库OMAC用户下的DW_ARC_E_CONS_SNAP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_ARC_E_CONS_SNAP(V_YMD, OUT_CODE, OUT_MSG);
      /*ELSE
      --复制模式补充供电区域性质
      UPDATE DW_ARC_E_CONS_SNAP A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT 
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_YMD;*/
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_ARC_E_CONS_SNAP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_ARC_E_CONS_SNAP  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_ARC_E_CONS_SNAP(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --当月
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --统计期截止日（统计月末）
    V_LT_DAY VARCHAR2(8);
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
    V_DATE             DATE := TO_DATE(V_YMD || '010000',
                                       'YYYYMMDDhh24miss') + 1;
  
    V_MONTH     DATE := TO_DATE('200801', 'YYYYMM');
    V_MONTH_MIN DATE := TO_DATE('200801', 'YYYYMM');
  
    V_DATE_START_D DATE := TO_DATE(V_YMD, 'YYYYMMDD'); --开始时间
    V_DATE_END_D   DATE := V_DATE_START_D + 1; --结束时间
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_ARC_E_CONS_SNAP', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
  
    --删除原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_ARC_E_CONS_SNAP X
     WHERE X.SEND_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_ARC_E_CONS_SNAP
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO SY_OM_DW_ARC_E_CONS_SNAP X
        (PRO_ORG_NO,
         CALC_ID,
         APP_CODE,
         YM,
         CONS_ID,
         ORG_NO,
         VERI_RSLT,
         VERI_REMARK,
         CALC_DATE,
         SEND_DATE,
         CONS_NO,
         CONS_NAME,
         CONS_SORT_CODE,
         ELEC_ADDR,
         TRADE_TYPE_CODE,
         ELEC_TYPE_CODE,
         VOLT_CODE,
         HEC_TRADE_CODE,
         CREATE_DATE,
         POWERON_DATE,
         CANCEL_DATE,
         STATUS_CODE,
         BUSI_REGION_NO,
         TRANSFER_FLAG,
         MR_SECT_NO,
         GP_CODE)
        SELECT /*+PARALLEL(A 4)*/
         V_PRO_ORG_NO PRO_ORG_NO,
         CALC_ID,
         APP_CODE,
         YM,
         CONS_ID,
         ORG_NO,
         VERI_RSLT,
         VERI_REMARK,
         CALC_DATE,
         SEND_DATE,
         CONS_NO,
         CONS_NAME,
         CONS_SORT_CODE,
         ELEC_ADDR,
         TRADE_TYPE_CODE,
         ELEC_TYPE_CODE,
         VOLT_CODE,
         HEC_TRADE_CODE,
         CREATE_DATE,
         POWERON_DATE,
         CANCEL_DATE,
         STATUS_CODE,
         BUSI_REGION_NO,
         TRANSFER_FLAG,
         MR_SECT_NO,
         GP_CODE
          FROM SY_SG_ARC_E_CONS_SNAP A
         WHERE
        --利用应收表中的单位分区
         A.ORG_NO LIKE TSS.ORG_NO || '%'
         AND A.SEND_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D;
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_ARC_E_CONS_SNAP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_ARC_E_CONS_SNAP  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_ARC_E_CONS_SNAP(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_ARC_E_CONS_SNAP', I_DATA);
  
    /*
      --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
      DELETE FROM SY_OM_DW_ARC_E_CONS_SNAP X WHERE X.STAT_YMD = V_YMD;
    
      --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
      INSERT INTO SY_OM_DW_ARC_E_CONS_SNAP X
        (PRO_ORG_NO,
         CALC_ID,
         APP_CODE,
         YM,
         CONS_ID,
         ORG_NO,
         VERI_RSLT,
         VERI_REMARK,
         CALC_DATE,
         SEND_DATE,
         CONS_NO,
         CONS_NAME,
         CONS_SORT_CODE,
         ELEC_ADDR,
         TRADE_TYPE_CODE,
         ELEC_TYPE_CODE,
         VOLT_CODE,
         HEC_TRADE_CODE,
         CREATE_DATE,
         POWERON_DATE,
         CANCEL_DATE,
         STATUS_CODE,
         BUSI_REGION_NO,
         TRANSFER_FLAG,
         MR_SECT_NO,
         GP_CODE)
        SELECT PRO_ORG_NO,
               CALC_ID,
               APP_CODE,
               YM,
               CONS_ID,
               ORG_NO,
               VERI_RSLT,
               VERI_REMARK,
               CALC_DATE,
               SEND_DATE,
               CONS_NO,
               CONS_NAME,
               CONS_SORT_CODE,
               ELEC_ADDR,
               TRADE_TYPE_CODE,
               ELEC_TYPE_CODE,
               VOLT_CODE,
               HEC_TRADE_CODE,
               CREATE_DATE,
               POWERON_DATE,
               CANCEL_DATE,
               STATUS_CODE,
               BUSI_REGION_NO,
               TRANSFER_FLAG,
               MR_SECT_NO,
               GP_CODE
          FROM DW_ARC_E_CONS_SNAP A
        --加入时间筛选条件
         WHERE A.SEND_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D;
    */
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_ARC_E_CONS_SNAP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_ARC_E_CONS_SNAP  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

end PKG_YWGK_DW_CA_RECOVER;
/
