CREATE OR REPLACE PACKAGE PKG_YWGK_DW_CA_REALPAY IS

  /**
   过程名称：P_ENT_DW_A_CASHCHK_FLOW/日实收电费调整明细信息入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：日实收电费调整明细信息入口过程,被数据库JOB调用
  
  统计频度：按月抽取, I_DATA 为要进行数据的统计的月份
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_CASHCHK_FLOW(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_CASHCHK_FLOW(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_A_CASHCHK_FLOW(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  /**
   过程名称：P_ENT_DW_A_RCVED_ADJUST_DET/日实收电费调整明细信息入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：日实收电费调整明细信息入口过程,被数据库JOB调用,只获取冲正、退费的数据
  
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_RCVED_ADJUST_DET(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_RCVED_ADJUST_DET(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_A_RCVED_ADJUST_DET(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);
  /**
   过程名称：P_ENT_DW_A_TODAY_RCVBL/当日电费应收统计入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：当日电费应收统计入口过程,被数据库JOB调用.
  
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_TODAY_RCVBL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_TODAY_RCVBL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_TODAY_RCVBL_SH(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_A_TODAY_RCVBL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  /**
   过程名称：P_ENT_DW_E_RS_LOG/退补方案记录入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：退补方案记录入口过程,被数据库JOB调用.
  
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_E_RS_LOG(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_E_RS_LOG(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_E_RS_LOG(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_E_RS_PRC_AMT(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_E_RS_SORT_RELA(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_E_RS_PRC_AMT(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_E_RS_SORT_RELA(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  /**
   过程名称：P_ENT_DW_A_CUR_AMT_DAY/当月日累计欠费统计入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：当月日累计欠费统计入口过程,被数据库JOB调用.
  
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_CUR_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_CUR_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_A_CUR_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  /**
   过程名称：P_ENT_DW_A_RCVED_DAY/日实收电费统计入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：日实收电费统计入口过程,被数据库JOB调用.
  
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_RCVED_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_RCVED_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_A_RCVED_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);

  /**
   过程名称：P_ENT_DW_A_RCVED_MON/月度实收电费统计入口过程
  作者：姜友德
  编写日期：2014-12-14 05:37
  过程描述：月度实收电费统计入口过程,被数据库JOB调用
  
  统计频度：按月抽取, I_DATA 为要进行数据的统计的月份,每月7日运行上月的数据
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_RCVED_MON(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_RCVED_MON(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_A_RCVED_MON(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);

  /**
   过程名称：P_ENT_DW_A_UNUSUAL_PAY/异常缴费信息入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：异常缴费信息入口过程,被数据库JOB调用.
  
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日
  统计逻辑为：解款为在途、到帐且解款金额大于0
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_UNUSUAL_PAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_UNUSUAL_PAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_A_UNUSUAL_PAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  /**
   过程名称：P_ENT_DW_A_GP_AGREEMENT/月度分次划拨协议明细信息入口过程
  作者：姜友德
  编写日期：2014-12-14 05:37
  过程描述：月度分次划拨协议明细信息入口过程,被数据库JOB调用
  
  统计频度：按月抽取, I_DATA 为要进行数据的统计的月份,每月7日运行上月的数据
  根据自然月每月7日统计所有分次划拨协议签订情况，不管是否终止，全部抽取。
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_GP_AGREEMENT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_GP_AGREEMENT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_A_GP_AGREEMENT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  /**
     过程名称：P_ENT_DW_A_GP_EXEC_DET/月度分次划拨计划与发行明细入口过程
    作者：姜友德
    编写日期：2014-12-14 05:37
    过程描述：月度分次划拨计划与发行明细入口过程,被数据库JOB调用
    
    统计频度：按月抽取, I_DATA 为要进行数据的统计的月份,每月7号统计上月分次划拨发行情况
  每个用户，每个月度会有对应期数+正常电费的多次记录值。
  例如A户，10月分次划拨协议发行3期，此表中存放4条记录，包含正常电费记录；若同时存在当月的1条退补记录，则此表中存放5条记录。
    
    修改人:
    修改日期:
    **/
  PROCEDURE P_ENT_DW_A_GP_EXEC_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_A_GP_EXEC_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_A_GP_EXEC_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
END PKG_YWGK_DW_CA_REALPAY;
/
CREATE OR REPLACE PACKAGE BODY PKG_YWGK_DW_CA_REALPAY IS

  /**
   过程名称：P_ENT_DW_A_CASHCHK_FLOW/月度解款资金明细信息入口过程
  作者：姜友德
  编写日期：2014-12-14 05:37
  过程描述：月度解款资金明细信息入口过程,被数据库JOB调用
  
  统计频度：按月抽取, I_DATA 为要进行数据的统计的月份
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_CASHCHK_FLOW(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_CASHCHK_FLOW', V_YM);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_A_CASHCHK_FLOW表
    P_INS_DW_A_CASHCHK_FLOW(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_A_CASHCHK_FLOW表取数据插入到稽查库OMAC用户下的DW_A_CASHCHK_FLOW表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_A_CASHCHK_FLOW(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_CASHCHK_FLOW A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YM = V_YM;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_A_CASHCHK_FLOW  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_CASHCHK_FLOW  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_CASHCHK_FLOW(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    --统计期截止日（统计月末）
    V_LT_DAY VARCHAR2(8);
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_CASHCHK_FLOW', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_A_CASHCHK_FLOW X WHERE X.STAT_YM = V_YM;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_A_CASHCHK_FLOW
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_A_CASHCHK_FLOW
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         CASHCHK_ID,
         CASHCHK_EMP_NO,
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
         RCV_ORG_NO,
         TIME_STAMP)
      --在途抽取在途数据，按照设计要求在途的数据统计为：解款金额在10万及以上，且到账状态为在途,且解款日期所在月份为统计月份及以前所有月份的解款记录（所有在途记录）
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               A.ORG_NO,
               '',
               V_YM,
               A.CASHCHK_ID,
               A.CASHCHK_EMP_NO,
               --电费结算方式
               PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', A.SETTLE_MODE),
               --由于大多数网省A_CASHCHK_FLOW内的金额为空，从收款记录A_PAY_FLOW中获取金额
               A.CASHCHK_AMT,
               A.CASHCHK_DATE,
               A.SETTLE_NOTE_NO,
               A.SETTLE_BANK_CODE,
               A.CASHCHK_BANK_CODE,
               A.CASHCHK_BANK_ACCT,
               A.ACCOUNTANT_NO,
               A.DISPOSE_DATE,
               --在途
               '01',
               A.ARRIVE_DATE,
               A.BANK_NOTE_NO,
               A.ACCT_BOOK_ID,
               A.RCV_ORG_NO,
               SYSDATE
          FROM SY_SG_A_CASHCHK_FLOW A
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
              --解款日期为统计月份及以前所有月份的数据
           AND A.CASHCHK_DATE < V_BEGIN_NEXT_MONTH
              --到账时间为空即为在途
           AND A.DISPOSE_DATE IS NULL
              --统计解款金额在10万及以上
           AND A.CASHCHK_AMT >= 100000;
    
      INSERT INTO DW_A_CASHCHK_FLOW
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         CASHCHK_ID,
         CASHCHK_EMP_NO,
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
         RCV_ORG_NO,
         TIME_STAMP)
      --入帐,退票统计
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               A.ORG_NO,
               '',
               V_YM,
               A.CASHCHK_ID,
               A.CASHCHK_EMP_NO,
               --电费结算方式
               PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', A.SETTLE_MODE),
               --由于大多数网省A_CASHCHK_FLOW内的金额为空，从收款记录A_PAY_FLOW中获取金额
               A.CASHCHK_AMT,
               A.CASHCHK_DATE,
               A.SETTLE_NOTE_NO,
               A.SETTLE_BANK_CODE,
               A.CASHCHK_BANK_CODE,
               A.CASHCHK_BANK_ACCT,
               A.ACCOUNTANT_NO,
               A.DISPOSE_DATE,
               --入账,退票代码转换
               PKG_GK_PUBLIC.F_TRANS_CODE('ACCT_STATUS_CODE',
                                          A.ACCT_STATUS_CODE),
               A.ARRIVE_DATE,
               A.BANK_NOTE_NO,
               A.ACCT_BOOK_ID,
               A.RCV_ORG_NO,
               SYSDATE
          FROM SY_SG_A_CASHCHK_FLOW A
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
              --解款日期为所在月份的数据
           AND A.CASHCHK_DATE BETWEEN V_BEGIN_MONTH AND V_BEGIN_NEXT_MONTH
              --解款类型不为空并且不为01开头即为入账,退票
           AND A.ACCT_STATUS_CODE IS NOT NULL
           AND A.ACCT_STATUS_CODE NOT LIKE '01%'
              --统计解款金额在10万及以上
           AND A.CASHCHK_AMT >= 100000;
    
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_CASHCHK_FLOW  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_CASHCHK_FLOW  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_CASHCHK_FLOW(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_CASHCHK_FLOW', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_CASHCHK_FLOW X WHERE X.STAT_YM = V_YM;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_CASHCHK_FLOW X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       CASHCHK_ID,
       CASHCHK_EMP_NO,
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
       RCV_ORG_NO,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_YM,
       A.CASHCHK_ID,
       A.CASHCHK_EMP_NO,
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
       A.RCV_ORG_NO,
       A.TIME_STAMP
        FROM DW_A_CASHCHK_FLOW A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_CASHCHK_FLOW  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_CASHCHK_FLOW  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   过程名称：P_ENT_DW_A_RCVED_ADJUST_DET/日实收电费调整明细信息入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：日实收电费调整明细信息入口过程,被数据库JOB调用.只获取冲正、退费的数据
  
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_RCVED_ADJUST_DET(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_RCVED_ADJUST_DET',
                                        V_YMD);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_A_RCVED_ADJUST_DET表
    P_INS_DW_A_RCVED_ADJUST_DET(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_A_RCVED_ADJUST_DET表取数据插入到稽查库OMAC用户下的DW_A_RCVED_ADJUST_DET表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_A_RCVED_ADJUST_DET(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_RCVED_ADJUST_DET A
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
    OUT_MSG  := '执行 P_ENT_DW_A_RCVED_ADJUST_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_RCVED_ADJUST_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_RCVED_ADJUST_DET(I_DATA   VARCHAR2,
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
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_RCVED_ADJUST_DET',
                                        I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_RCVED_ADJUST_DET X WHERE X.STAT_YMD = V_YMD;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_A_RCVED_ADJUST_DET
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_A_RCVED_ADJUST_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         RCVED_AMT_ID,
         RCVBL_AMT_ID,
         CHARGE_ID,
         CONS_NO,
         RCVED_YM,
         RCVED_DATE,
         THIS_RCVED_AMT,
         THIS_IN_PRICE_AMT,
         THIS_PL_AMT,
         THIS_PENALTY,
         OWE_AMT,
         NOTE_ID,
         RCVBL_YM,
         CASHCHK_ID,
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
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               A.ORG_NO,
               '',
               V_YMD,
               A.RCVED_AMT_ID,
               A.RCVBL_AMT_ID,
               A.CHARGE_ID,
               A.CONS_NO,
               A.RCVED_YM,
               A.RCVED_DATE,
               A.THIS_RCVED_AMT,
               A.THIS_IN_PRICE_AMT,
               A.THIS_PL_AMT,
               A.THIS_PENALTY,
               A.OWE_AMT,
               A.NOTE_ID,
               A.RCVBL_YM,
               B.CASHCHK_ID,
               B.CHARGE_YM,
               B.CHARGE_DATE,
               B.ACCT_YM,
               --收费类型
               PKG_GK_PUBLIC.F_TRANS_CODE('CHARGE_TYPE_CODE', B.TYPE_CODE),
               B.RCV_AMT,
               B.THIS_CHG,
               B.LAST_CHG,
               B.CHARGE_EMP_NO,
               --缴费方式
               PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', B.PAY_MODE),
               --电费结算方式
               PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', B.SETTLE_MODE),
               B.SETTLE_NOTE_NO,
               B.SETTLE_BANK_CODE,
               B.ACCT_NO,
               B.CHARGE_REMARK,
               SYSDATE
          FROM SY_SG_A_RCVED_FLOW A, SY_SG_A_PAY_FLOW B
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
              --根据实收日期按日统计当日数据
           AND A.RCVED_DATE = V_YMD
              --本次实收电费单笔金额10万及以上。
           AND ABS(A.THIS_RCVED_AMT) >= 100000
              --收费类型为2开头 或者为网省自己在GK_DW_CODE_TRANS定义的类型
              --则为冲正退费数据
           AND ((B.TYPE_CODE LIKE '2%') OR
               (INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('CZTFLX', 'XXX'),
                       B.TYPE_CODE) > 0))
           AND A.CHARGE_ID = B.CHARGE_ID
        UNION ALL
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               A.ORG_NO,
               '',
               V_YMD,
               A.RCVED_AMT_ID,
               A.RCVBL_AMT_ID,
               A.CHARGE_ID,
               A.CONS_NO,
               A.RCVED_YM,
               A.RCVED_DATE,
               A.THIS_RCVED_AMT,
               A.THIS_IN_PRICE_AMT,
               A.THIS_PL_AMT,
               A.THIS_PENALTY,
               A.OWE_AMT,
               A.NOTE_ID,
               A.RCVBL_YM,
               B.CASHCHK_ID,
               B.CHARGE_YM,
               B.CHARGE_DATE,
               B.ACCT_YM,
               --收费类型
               PKG_GK_PUBLIC.F_TRANS_CODE('CHARGE_TYPE_CODE', B.TYPE_CODE),
               B.RCV_AMT,
               B.THIS_CHG,
               B.LAST_CHG,
               B.CHARGE_EMP_NO,
               --缴费方式
               PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', B.PAY_MODE),
               --电费结算方式
               PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', B.SETTLE_MODE),
               B.SETTLE_NOTE_NO,
               B.SETTLE_BANK_CODE,
               B.ACCT_NO,
               B.CHARGE_REMARK,
               SYSDATE
          FROM SY_SG_ARC_A_RCVED_FLOW A, SY_SG_A_PAY_FLOW B
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
              --根据实收日期按日统计当日数据
           AND A.RCVED_DATE = V_YMD
              --本次实收电费单笔金额10万及以上。
           AND ABS(A.THIS_RCVED_AMT) >= 100000
              --收费类型为2开头 或者为网省自己在GK_DW_CODE_TRANS定义的类型
              --则为冲正退费数据
           AND ((B.TYPE_CODE LIKE '2%') OR
               (INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('CZTFLX', 'XXX'),
                       B.TYPE_CODE) > 0))
           AND A.CHARGE_ID = B.CHARGE_ID;
    
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_RCVED_ADJUST_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_RCVED_ADJUST_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_RCVED_ADJUST_DET(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_RCVED_ADJUST_DET',
                                        I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_A_RCVED_ADJUST_DET X WHERE X.STAT_YMD = V_YMD;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_RCVED_ADJUST_DET X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       RCVED_AMT_ID,
       RCVBL_AMT_ID,
       CHARGE_ID,
       CONS_NO,
       RCVED_YM,
       RCVED_DATE,
       THIS_RCVED_AMT,
       THIS_IN_PRICE_AMT,
       THIS_PL_AMT,
       THIS_PENALTY,
       OWE_AMT,
       NOTE_ID,
       RCVBL_YM,
       CASHCHK_ID,
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
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_YMD,
       A.RCVED_AMT_ID,
       A.RCVBL_AMT_ID,
       A.CHARGE_ID,
       A.CONS_NO,
       A.RCVED_YM,
       A.RCVED_DATE,
       A.THIS_RCVED_AMT,
       A.THIS_IN_PRICE_AMT,
       A.THIS_PL_AMT,
       A.THIS_PENALTY,
       A.OWE_AMT,
       A.NOTE_ID,
       A.RCVBL_YM,
       A.CASHCHK_ID,
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
       A.TIME_STAMP
        FROM DW_A_RCVED_ADJUST_DET A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_RCVED_ADJUST_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_RCVED_ADJUST_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   过程名称：P_ENT_DW_A_TODAY_RCVBL/当日电费应收统计入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：当日电费应收统计入口过程,被数据库JOB调用.
  
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_TODAY_RCVBL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_TODAY_RCVBL', V_YMD);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_A_TODAY_RCVBL表
    P_INS_DW_A_TODAY_RCVBL(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_A_TODAY_RCVBL表取数据插入到稽查库OMAC用户下的DW_A_TODAY_RCVBL表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_A_TODAY_RCVBL(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_TODAY_RCVBL A
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
    OUT_MSG  := '执行 P_ENT_DW_A_TODAY_RCVBL  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_TODAY_RCVBL  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_TODAY_RCVBL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO  VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD         VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    V_CURRENT_DAY DATE := TO_CHAR(V_YMD, 'YYYYMMDD');
    V_NEXT_DAY    DATE := V_CURRENT_DAY + 1;
    --当月
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --统计期截止日（统计月末）
    V_LT_DAY VARCHAR2(8);
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_TODAY_RCVBL', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_TODAY_RCVBL X WHERE X.STAT_YMD = V_YMD;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_A_TODAY_RCVBL
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_A_TODAY_RCVBL
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
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
         RCVED_AMT,
         RCVBL_INPRICE_AMT,
         RCVBL_PL_AMT,
         RCVED_IN_PRICE_AMT,
         RCVED_PL_AMT,
         RCVBL_PENALTY,
         RCVED_PENALTY,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               ORG_NO,
               '',
               V_YMD,
               RCVBL_YM,
               MR_SECT_NO,
               --用电类别
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
               --用户分类
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
               --行业分类
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
               --高耗能行业分类
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          HEC_TRADE_CODE),
               --电费类别
               PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE),
               --电压等级
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
               SUM(RCVBL_AMT),
               SUM(RCVBL_CC),
               SUM(RCVBL_NUM),
               SUM(RCVBL_PQ),
               SUM(RCVED_AMT),
               SUM(RCVBL_INPRICE_AMT),
               SUM(RCVBL_PL_AMT),
               SUM(RCVED_IN_PRICE_AMT),
               SUM(RCVED_PL_AMT),
               SUM(RCVBL_PENALTY),
               SUM(RCVED_PENALTY),
               SYSDATE
          FROM (SELECT A.ORG_NO,
                       A.RCVBL_YM,
                       B.MR_SECT_NO,
                       B.ELEC_TYPE_CODE,
                       B.CONS_SORT_CODE,
                       B.TRADE_TYPE_CODE TRADE_CODE,
                       B.HEC_TRADE_CODE,
                       A.AMT_TYPE,
                       B.VOLT_CODE,
                       SUM(A.RCVBL_AMT) RCVBL_AMT,
                       COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                       COUNT(1) RCVBL_NUM,
                       SUM(A.T_PQ) RCVBL_PQ,
                       SUM(A.RCVED_AMT) RCVED_AMT,
                       SUM(A.RCVBL_INPRICE_AMT) RCVBL_INPRICE_AMT,
                       SUM(A.RCVBL_PL_AMT) RCVBL_PL_AMT,
                       SUM(A.RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                       SUM(A.RCVED_PL_AMT) RCVED_PL_AMT,
                       SUM(A.RCVBL_PENALTY) RCVBL_PENALTY,
                       SUM(A.RCVED_PENALTY) RCVED_PENALTY
                  FROM SY_SG_A_RCVBL_FLOW A, SY_SG_E_CONS_SNAP B
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.RELEASE_DATE = V_YMD
                   AND A.CALC_ID = B.CALC_ID
                   AND A.AMT_TYPE NOT IN ('05', '08')
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
                SELECT A.ORG_NO,
                       A.RCVBL_YM,
                       B.MR_SECT_NO,
                       B.ELEC_TYPE_CODE,
                       B.CONS_SORT_CODE,
                       B.TRADE_TYPE_CODE TRADE_CODE,
                       B.HEC_TRADE_CODE,
                       A.AMT_TYPE,
                       B.VOLT_CODE,
                       SUM(A.RCVBL_AMT) RCVBL_AMT,
                       COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                       COUNT(1) RCVBL_NUM,
                       SUM(A.T_PQ) RCVBL_PQ,
                       SUM(A.RCVED_AMT) RCVED_AMT,
                       SUM(A.RCVBL_INPRICE_AMT) RCVBL_INPRICE_AMT,
                       SUM(A.RCVBL_PL_AMT) RCVBL_PL_AMT,
                       SUM(A.RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                       SUM(A.RCVED_PL_AMT) RCVED_PL_AMT,
                       SUM(A.RCVBL_PENALTY) RCVBL_PENALTY,
                       SUM(A.RCVED_PENALTY) RCVED_PENALTY
                  FROM SY_SG_A_RCVBL_FLOW A, SY_SG_ARC_E_CONS_SNAP B
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.RELEASE_DATE = V_YMD
                   AND A.CALC_ID = B.CALC_ID
                   AND A.AMT_TYPE NOT IN ('05', '08')
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
                SELECT A.ORG_NO,
                       A.RCVBL_YM,
                       B.MR_SECT_NO,
                       B.ELEC_TYPE_CODE,
                       B.CONS_SORT_CODE,
                       B.TRADE_TYPE_CODE TRADE_CODE,
                       B.HEC_TRADE_CODE,
                       A.AMT_TYPE,
                       B.VOLT_CODE,
                       SUM(A.RCVBL_AMT) RCVBL_AMT,
                       COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                       COUNT(1) RCVBL_NUM,
                       SUM(A.T_PQ) RCVBL_PQ,
                       SUM(A.RCVED_AMT) RCVED_AMT,
                       SUM(A.RCVBL_INPRICE_AMT) RCVBL_INPRICE_AMT,
                       SUM(A.RCVBL_PL_AMT) RCVBL_PL_AMT,
                       SUM(A.RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                       SUM(A.RCVED_PL_AMT) RCVED_PL_AMT,
                       SUM(A.RCVBL_PENALTY) RCVBL_PENALTY,
                       SUM(A.RCVED_PENALTY) RCVED_PENALTY
                  FROM SY_SG_ARC_A_RCVBL_FLOW A, SY_SG_ARC_E_CONS_SNAP B
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.RELEASE_DATE = V_YMD
                   AND A.CALC_ID = B.CALC_ID
                   AND A.AMT_TYPE NOT IN ('05', '08')
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
                SELECT A.ORG_NO,
                       A.RCVBL_YM,
                       B.MR_SECT_NO,
                       B.ELEC_TYPE_CODE,
                       B.CONS_SORT_CODE,
                       B.TRADE_TYPE_CODE TRADE_CODE,
                       B.HEC_TRADE_CODE,
                       A.AMT_TYPE,
                       B.VOLT_CODE,
                       SUM(A.RCVBL_AMT) RCVBL_AMT,
                       COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                       COUNT(1) RCVBL_NUM,
                       SUM(A.T_PQ) RCVBL_PQ,
                       SUM(A.RCVED_AMT) RCVED_AMT,
                       SUM(A.RCVBL_INPRICE_AMT) RCVBL_INPRICE_AMT,
                       SUM(A.RCVBL_PL_AMT) RCVBL_PL_AMT,
                       SUM(A.RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                       SUM(A.RCVED_PL_AMT) RCVED_PL_AMT,
                       SUM(A.RCVBL_PENALTY) RCVBL_PENALTY,
                       SUM(A.RCVED_PENALTY) RCVED_PENALTY
                  FROM SY_SG_ARC_A_RCVBL_FLOW A, SY_SG_E_CONS_SNAP B
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.RELEASE_DATE = V_YMD
                   AND A.CALC_ID = B.CALC_ID
                   AND A.AMT_TYPE NOT IN ('05', '08')
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
                  --用电类别
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             ELEC_TYPE_CODE),
                  --用户分类
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             CONS_SORT_CODE),
                  --行业分类
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
                  --高耗能行业分类
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             HEC_TRADE_CODE),
                  --电费类别
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE),
                  --电压等级
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE);
    
      COMMIT;
    END LOOP;  
      P_INS_DW_A_TODAY_RCVBL_SH(V_YMD, OUT_CODE, OUT_MSG);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_TODAY_RCVBL  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_TODAY_RCVBL  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_A_TODAY_RCVBL_SH(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO  VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD         VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    V_CURRENT_DAY DATE := TO_CHAR(V_YMD, 'YYYYMMDD');
    V_NEXT_DAY    DATE := V_CURRENT_DAY + 1;
    --当月
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --统计期截止日（统计月末）
    V_LT_DAY VARCHAR2(8);
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_TODAY_RCVBL', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_TODAY_RCVBL X WHERE X.STAT_YMD = V_YMD;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_A_TODAY_RCVBL
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_A_TODAY_RCVBL
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
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
         RCVED_AMT,
         RCVBL_INPRICE_AMT,
         RCVBL_PL_AMT,
         RCVED_IN_PRICE_AMT,
         RCVED_PL_AMT,
         RCVBL_PENALTY,
         RCVED_PENALTY,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               ORG_NO,
               '',
               V_YMD,
               RCVBL_YM,
               MR_SECT_NO,
               --用电类别
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
               --用户分类
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
               --行业分类
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
               --高耗能行业分类
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          HEC_TRADE_CODE),
               --电费类别
               PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE),
               --电压等级
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
               SUM(RCVBL_AMT),
               SUM(RCVBL_CC),
               SUM(RCVBL_NUM),
               SUM(RCVBL_PQ),
               SUM(RCVED_AMT),
               SUM(RCVBL_INPRICE_AMT),
               SUM(RCVBL_PL_AMT),
               SUM(RCVED_IN_PRICE_AMT),
               SUM(RCVED_PL_AMT),
               SUM(RCVBL_PENALTY),
               SUM(RCVED_PENALTY),
               SYSDATE
          FROM (SELECT A.ORG_NO,
                       A.RCVBL_YM,
                       B.MR_SECT_NO,
                       B.ELEC_TYPE_CODE,
                       B.CONS_SORT_CODE,
                       B.TRADE_CODE TRADE_CODE,
                       B.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                       A.AMT_TYPE,
                       B.VOLT_CODE,
                       SUM(A.RCVBL_AMT) RCVBL_AMT,
                       COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                       COUNT(1) RCVBL_NUM,
                       SUM(A.T_PQ) RCVBL_PQ,
                       SUM(A.RCVED_AMT) RCVED_AMT,
                       SUM(A.RCVBL_INPRICE_AMT) RCVBL_INPRICE_AMT,
                       SUM(A.RCVBL_PL_AMT) RCVBL_PL_AMT,
                       SUM(A.RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                       SUM(A.RCVED_PL_AMT) RCVED_PL_AMT,
                       SUM(A.RCVBL_PENALTY) RCVBL_PENALTY,
                       SUM(A.RCVED_PENALTY) RCVED_PENALTY
                  FROM SY_SG_A_RCVBL_FLOW A, SY_SG_C_CONS B
                 WHERE B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.RELEASE_DATE = V_YMD
                   AND A.CONS_NO = B.CONS_NO
                   AND A.AMT_TYPE IN ('05', '08')
                 GROUP BY A.ORG_NO,
                          A.RCVBL_YM,
                          B.MR_SECT_NO,
                          B.ELEC_TYPE_CODE,
                          B.CONS_SORT_CODE,
                          B.TRADE_CODE        TRADE_CODE,
                          B.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                          A.AMT_TYPE,
                          B.VOLT_CODE
                UNION ALL
                SELECT A.ORG_NO,
                       A.RCVBL_YM,
                       B.MR_SECT_NO,
                       B.ELEC_TYPE_CODE,
                       B.CONS_SORT_CODE,
                       B.TRADE_CODE TRADE_CODE,
                       B.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                       A.AMT_TYPE,
                       B.VOLT_CODE,
                       SUM(A.RCVBL_AMT) RCVBL_AMT,
                       COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                       COUNT(1) RCVBL_NUM,
                       SUM(A.T_PQ) RCVBL_PQ,
                       SUM(A.RCVED_AMT) RCVED_AMT,
                       SUM(A.RCVBL_INPRICE_AMT) RCVBL_INPRICE_AMT,
                       SUM(A.RCVBL_PL_AMT) RCVBL_PL_AMT,
                       SUM(A.RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                       SUM(A.RCVED_PL_AMT) RCVED_PL_AMT,
                       SUM(A.RCVBL_PENALTY) RCVBL_PENALTY,
                       SUM(A.RCVED_PENALTY) RCVED_PENALTY
                  FROM SY_SG_A_RCVBL_FLOW A, SY_SG_ARC_E_CONS_SNAP B
                 WHERE B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.RELEASE_DATE = V_YMD
                   AND A.CONS_NO = B.CONS_NO
                   AND A.AMT_TYPE IN ('05', '08')
                 GROUP BY A.ORG_NO,
                          A.RCVBL_YM,
                          B.MR_SECT_NO,
                          B.ELEC_TYPE_CODE,
                          B.CONS_SORT_CODE,
                          B.TRADE_CODE        TRADE_CODE,
                          B.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                          A.AMT_TYPE,
                          B.VOLT_CODE
                UNION ALL
                SELECT A.ORG_NO,
                       A.RCVBL_YM,
                       B.MR_SECT_NO,
                       B.ELEC_TYPE_CODE,
                       B.CONS_SORT_CODE,
                       B.TRADE_CODE TRADE_CODE,
                       B.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                       A.AMT_TYPE,
                       B.VOLT_CODE,
                       SUM(A.RCVBL_AMT) RCVBL_AMT,
                       COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                       COUNT(1) RCVBL_NUM,
                       SUM(A.T_PQ) RCVBL_PQ,
                       SUM(A.RCVED_AMT) RCVED_AMT,
                       SUM(A.RCVBL_INPRICE_AMT) RCVBL_INPRICE_AMT,
                       SUM(A.RCVBL_PL_AMT) RCVBL_PL_AMT,
                       SUM(A.RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                       SUM(A.RCVED_PL_AMT) RCVED_PL_AMT,
                       SUM(A.RCVBL_PENALTY) RCVBL_PENALTY,
                       SUM(A.RCVED_PENALTY) RCVED_PENALTY
                  FROM SY_SG_ARC_A_RCVBL_FLOW A, SY_SG_ARC_E_CONS_SNAP B
                 WHERE B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.RELEASE_DATE = V_YMD
                   AND A.CONS_NO = B.CONS_NO
                   AND A.AMT_TYPE IN ('04', '05', '08')
                 GROUP BY A.ORG_NO,
                          A.RCVBL_YM,
                          B.MR_SECT_NO,
                          B.ELEC_TYPE_CODE,
                          B.CONS_SORT_CODE,
                          B.TRADE_CODE        TRADE_CODE,
                          B.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                          A.AMT_TYPE,
                          B.VOLT_CODE
                UNION ALL
                SELECT A.ORG_NO,
                       A.RCVBL_YM,
                       B.MR_SECT_NO,
                       B.ELEC_TYPE_CODE,
                       B.CONS_SORT_CODE,
                       B.TRADE_CODE TRADE_CODE,
                       B.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                       A.AMT_TYPE,
                       B.VOLT_CODE,
                       SUM(A.RCVBL_AMT) RCVBL_AMT,
                       COUNT(DISTINCT A.CONS_NO) RCVBL_CC,
                       COUNT(1) RCVBL_NUM,
                       SUM(A.T_PQ) RCVBL_PQ,
                       SUM(A.RCVED_AMT) RCVED_AMT,
                       SUM(A.RCVBL_INPRICE_AMT) RCVBL_INPRICE_AMT,
                       SUM(A.RCVBL_PL_AMT) RCVBL_PL_AMT,
                       SUM(A.RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                       SUM(A.RCVED_PL_AMT) RCVED_PL_AMT,
                       SUM(A.RCVBL_PENALTY) RCVBL_PENALTY,
                       SUM(A.RCVED_PENALTY) RCVED_PENALTY
                  FROM SY_SG_ARC_A_RCVBL_FLOW A, SY_SG_C_CONS B
                 WHERE B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.RELEASE_DATE = V_YMD
                   AND A.CONS_NO = B.CONS_NO
                   AND A.AMT_TYPE IN ('04', '05', '08')
                 GROUP BY A.ORG_NO,
                          A.RCVBL_YM,
                          B.MR_SECT_NO,
                          B.ELEC_TYPE_CODE,
                          B.CONS_SORT_CODE,
                          B.TRADE_CODE        TRADE_CODE,
                          B.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                          A.AMT_TYPE,
                          B.VOLT_CODE)
         GROUP BY ORG_NO,
                  RCVBL_YM,
                  MR_SECT_NO,
                  --用电类别
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             ELEC_TYPE_CODE),
                  --用户分类
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             CONS_SORT_CODE),
                  --行业分类
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
                  --高耗能行业分类
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             HEC_TRADE_CODE),
                  --电费类别
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE),
                  --电压等级
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE);
    
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_TODAY_RCVBL  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_TODAY_RCVBL  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_TODAY_RCVBL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_TODAY_RCVBL', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_A_TODAY_RCVBL X WHERE X.STAT_YMD = V_YMD;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_TODAY_RCVBL X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
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
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_YMD,
       A.RCVBL_YM,
       A.MR_SECT_NO,
       A.ELEC_TYPE_CODE,
       A.CONS_SORT_CODE,
       A.TRADE_CODE,
       A.HEC_TRADE_CODE,
       A.AMT_TYPE,
       A.VOLT_CODE,
       A.RCVBL_AMT,
       A.RCVBL_CC,
       A.RCVBL_NUM,
       A.RCVBL_PQ,
       A.RS_PA,
       A.RCVED_AMT,
       A.RCVBL_INPRICE_AMT,
       A.RCVBL_PL_AMT,
       A.RCVED_IN_PRICE_AMT,
       A.RCVED_PL_AMT,
       A.RCVBL_PENALTY,
       A.RCVED_PENALTY,
       A.TIME_STAMP
        FROM DW_A_TODAY_RCVBL A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_TODAY_RCVBL  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_TODAY_RCVBL  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   过程名称：P_ENT_DW_E_RS_LOG/退补方案记录入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：退补方案记录入口过程,被数据库JOB调用.
  
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_E_RS_LOG(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_RS_LOG', V_YMD);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_E_RS_LOG表
    P_INS_DW_E_RS_LOG(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_E_RS_LOG表取数据插入到稽查库OMAC用户下的DW_E_RS_LOG表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_E_RS_LOG(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_E_RS_LOG A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.RS_DATE = V_YMD;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_RS_LOG  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_RS_LOG  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_RS_LOG(I_DATA   VARCHAR2,
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
    --是否删除20150121当天以及以前数据的标志.
    V_DELHistoryFlag VARCHAR2(256);
  
  BEGIN
  
    --是否删除20150121当天以及以前数据的标志.
    V_DELHistoryFlag := PKG_GK_PUBLIC.F_TRANS_CODE('DW_E_RS_LOG_20150121',
                                                   'XXX');
  
    IF ('XXX' = V_DELHistoryFlag) THEN
      --删除2015021之前的记录
      DELETE FROM DW_E_RS_LOG WHERE 1 = 1;
      DELETE FROM DW_E_RS_PRC_AMT WHERE 1 = 1;
      DELETE FROM DW_E_RS_SORT_RELA WHERE 1 = 1;
      DELETE FROM SY_OM_DW_E_RS_LOG WHERE 1 = 1;
      DELETE FROM SY_OM_DW_E_RS_PRC_AMT WHERE 1 = 1;
      DELETE FROM SY_OM_DW_E_RS_SORT_RELA WHERE 1 = 1;
    
      --插入删除标志
      INSERT INTO GK_DW_CODE_TRANS
        (CODE_TYPE, TRANS_VALUE, CONT1)
      VALUES
        ('DW_E_RS_LOG_20150121', 'DELETED', 'XXX');
    
      COMMIT;
    END IF;
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_RS_LOG', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    DELETE FROM DW_E_RS_LOG X WHERE X.RS_DATE = V_YMD;
    --开始数据统计,插入到稽查管理库OMAC的DW_E_RS_LOG
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_E_RS_LOG
        (DATA_ID,
         PRO_ORG_NO,
         PS_BUSI_AREA_CODE,
         RS_ID,
         APP_CODE,
         CONS_ID,
         CONS_NO,
         CONS_NAME,
         ELEC_ADDR,
         ORG_NO,
         RS_FLAG,
         RS_DATE,
         ERR_DATE,
         RS_REMARK,
         MERGE_FLAG,
         ACCT_MERGE_MON,
         MERGE_MON,
         PF_FLAG,
         TL_FLAG,
         MR_UPD_FLAG,
         ORGN_PRC_CODE,
         ORGN_PRC_VN,
         TR_BGN,
         TR_END,
         H_AMT_HANDLE_MODE,
         CALC_TIMES,
         EFFECT_FLAG,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               '',
               A.RS_ID,
               A.APP_CODE,
               A.CONS_ID,
               B.CONS_NO,
               B.CONS_NAME,
               B.ELEC_ADDR,
               A.ORG_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('ADJUST_RS_FLAG', A.RS_FLAG) RS_FLAG,
               A.RS_DATE,
               A.ERR_DATE,
               A.RS_REMARK,
               PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', A.MERGE_FLAG) MERGE_FLAG,
               A.ACCT_MERGE_MON,
               A.MERGE_MON,
               PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', A.PF_FLAG) PF_FLAG,
               PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', A.TL_FLAG) TL_FLAG,
               PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', A.MR_UPD_FLAG) MR_UPD_FLAG,
               A.ORGN_PRC_CODE,
               A.ORGN_PRC_VN,
               A.TR_BGN,
               A.TR_END,
               A.H_AMT_HANDLE_MODE,
               A.CALC_TIMES,
               PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', A.EFFECT_FLAG) EFFECT_FLAG,
               SYSDATE
          FROM SY_SG_E_RS_LOG A, SY_SG_C_CONS B
         WHERE A.RS_DATE = V_YMD
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.CONS_ID = B.CONS_ID;
      COMMIT;
    END LOOP;
    P_INS_DW_E_RS_PRC_AMT(I_DATA, OUT_CODE, OUT_MSG);
    P_INS_DW_E_RS_SORT_RELA(I_DATA, OUT_CODE, OUT_MSG);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_RS_LOG  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_RS_LOG  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_E_RS_LOG(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_RS_LOG', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_E_RS_LOG X WHERE X.RS_DATE = V_YMD;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_E_RS_LOG
      (DATA_ID,
       PRO_ORG_NO,
       PS_BUSI_AREA_CODE,
       RS_ID,
       APP_CODE,
       CONS_ID,
       CONS_NO,
       CONS_NAME,
       ELEC_ADDR,
       ORG_NO,
       RS_FLAG,
       RS_DATE,
       ERR_DATE,
       RS_REMARK,
       MERGE_FLAG,
       ACCT_MERGE_MON,
       MERGE_MON,
       PF_FLAG,
       TL_FLAG,
       MR_UPD_FLAG,
       ORGN_PRC_CODE,
       ORGN_PRC_VN,
       TR_BGN,
       TR_END,
       H_AMT_HANDLE_MODE,
       CALC_TIMES,
       EFFECT_FLAG,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.RS_ID,
       A.APP_CODE,
       A.CONS_ID,
       A.CONS_NO,
       A.CONS_NAME,
       A.ELEC_ADDR,
       A.ORG_NO,
       A.RS_FLAG,
       A.RS_DATE,
       A.ERR_DATE,
       A.RS_REMARK,
       A.MERGE_FLAG,
       A.ACCT_MERGE_MON,
       A.MERGE_MON,
       A.PF_FLAG,
       A.TL_FLAG,
       A.MR_UPD_FLAG,
       A.ORGN_PRC_CODE,
       A.ORGN_PRC_VN,
       A.TR_BGN,
       A.TR_END,
       A.H_AMT_HANDLE_MODE,
       A.CALC_TIMES,
       A.EFFECT_FLAG,
       A.TIME_STAMP
        FROM DW_E_RS_LOG A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.RS_DATE = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    P_ETL_DW_E_RS_PRC_AMT(I_DATA, OUT_CODE, OUT_MSG);
    P_ETL_DW_E_RS_SORT_RELA(I_DATA, OUT_CODE, OUT_MSG);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_RS_LOG  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_RS_LOG  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_E_RS_PRC_AMT(I_DATA   VARCHAR2,
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
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_RS_PRC_AMT', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
  
    DELETE FROM DW_E_RS_PRC_AMT X
     WHERE EXISTS (SELECT 1
              FROM SY_SG_E_RS_LOG C
             WHERE C.RS_DATE = V_YMD
               AND C.RS_ID = X.RS_ID);
    --开始数据统计,插入到稽查管理库OMAC的DW_E_RS_PRC_AMT
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    INSERT INTO DW_E_RS_PRC_AMT
      (DATA_ID,
       PRO_ORG_NO,
       PS_BUSI_AREA_CODE,
       RS_PRC_AMT_ID,
       RS_ID,
       PRC_ID,
       CONS_ID,
       ORG_NO,
       YM,
       PRC_CODE,
       RS_PARA_VN,
       PA_TYPE_CODE,
       TRADE_TYPE_CODE,
       ELEC_TYPE_CODE,
       PRC_VOLT_CODE,
       LEVEL_NUM,
       AP_TL,
       RP_TL,
       AP_LL,
       RP_LL,
       RPQ,
       T_SETTLE_PQ,
       T_AMT,
       T_CAT_KWH_AMT,
       T_KWH_AMT,
       T_PL_AMT,
       EFFECT_FLAG,
       PERSON_RESP_NO,
       CALC_ID,
       APP_NO,
       RS_PRC_REMARK,
       TIME_STAMP)
      WITH TMPC AS
       (SELECT RS_ID FROM SY_SG_E_RS_LOG A WHERE A.RS_DATE = V_YMD)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
             V_PRO_ORG_NO PRO_ORG_NO,
             '',
             A.RS_PRC_AMT_ID,
             A.RS_ID,
             A.PRC_ID,
             A.CONS_ID,
             A.ORG_NO,
             A.YM,
             A.PRC_CODE,
             A.RS_PARA_VN,
             --电费类别
             PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', A.PA_TYPE_CODE) PA_TYPE_CODE,
             PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                        A.TRADE_TYPE_CODE) TRADE_TYPE_CODE,
             PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', A.ELEC_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('PRC_VOLT_CODE', E.PRC_VOLT_CODE) PRC_VOLT_CODE,
             A.LEVEL_NUM,
             A.AP_TL,
             A.RP_TL,
             A.AP_LL,
             A.RP_LL,
             A.RPQ,
             A.T_SETTLE_PQ,
             A.T_AMT,
             A.T_CAT_KWH_AMT,
             A.T_KWH_AMT,
             A.T_PL_AMT,
             PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', A.EFFECT_FLAG) EFFECT_FLAG,
             A.PERSON_RESP_NO,
             A.CALC_ID,
             A.APP_NO,
             A.RS_PRC_REMARK,
             SYSDATE
        FROM SY_SG_E_RS_PRC_AMT A, SY_SG_E_CAT_PRC E, TMPC C
       WHERE A.RS_ID = C.RS_ID
         AND A.PRC_CODE = E.PRC_CODE
         AND A.RS_PARA_VN = E.PARA_VN;
    COMMIT;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_RS_PRC_AMT  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_RS_PRC_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_E_RS_SORT_RELA(I_DATA   VARCHAR2,
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
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_RS_SORT_RELA', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
  
    DELETE FROM DW_E_RS_SORT_RELA X
     WHERE EXISTS (SELECT 1
              FROM SY_SG_E_RS_LOG C
             WHERE C.RS_DATE = V_YMD
               AND C.RS_ID = X.RS_ID);
  
    INSERT INTO DW_E_RS_SORT_RELA
      (DATA_ID,
       PRO_ORG_NO,
       PS_BUSI_AREA_CODE,
       RS_TYPE_RELA_ID,
       RS_ID,
       RS_TYPE,
       TYPE_CODE,
       TIME_STAMP)
      WITH TMPC AS
       (SELECT RS_ID FROM SY_SG_E_RS_LOG A WHERE A.RS_DATE = V_YMD)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
             V_PRO_ORG_NO PRO_ORG_NO,
             '',
             A.RS_TYPE_RELA_ID,
             A.RS_ID,
             A.RS_TYPE,
             A.TYPE_CODE,
             SYSDATE
        FROM SY_SG_E_RS_SORT_RELA A, TMPC C
       WHERE A.RS_ID = C.RS_ID;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_RS_SORT_RELA  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_RS_SORT_RELA  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_E_RS_PRC_AMT(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_RS_PRC_AMT', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
  
    DELETE FROM SY_OM_DW_E_RS_PRC_AMT X
     WHERE EXISTS (SELECT 1
              FROM SY_SG_E_RS_LOG C
             WHERE C.RS_DATE = V_YMD
               AND C.RS_ID = X.RS_ID);
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_E_RS_PRC_AMT
      (DATA_ID,
       PRO_ORG_NO,
       PS_BUSI_AREA_CODE,
       RS_PRC_AMT_ID,
       RS_ID,
       PRC_ID,
       CONS_ID,
       ORG_NO,
       YM,
       PRC_CODE,
       RS_PARA_VN,
       PA_TYPE_CODE,
       TRADE_TYPE_CODE,
       ELEC_TYPE_CODE,
       PRC_VOLT_CODE,
       LEVEL_NUM,
       AP_TL,
       RP_TL,
       AP_LL,
       RP_LL,
       RPQ,
       T_SETTLE_PQ,
       T_AMT,
       T_CAT_KWH_AMT,
       T_KWH_AMT,
       T_PL_AMT,
       EFFECT_FLAG,
       PERSON_RESP_NO,
       CALC_ID,
       APP_NO,
       RS_PRC_REMARK,
       TIME_STAMP)
      WITH TMPC AS
       (SELECT RS_ID FROM SY_SG_E_RS_LOG A WHERE A.RS_DATE = V_YMD)
      SELECT A.DATA_ID,
             A.PRO_ORG_NO,
             A.PS_BUSI_AREA_CODE,
             A.RS_PRC_AMT_ID,
             A.RS_ID,
             A.PRC_ID,
             A.CONS_ID,
             A.ORG_NO,
             A.YM,
             A.PRC_CODE,
             A.RS_PARA_VN,
             A.PA_TYPE_CODE,
             A.TRADE_TYPE_CODE,
             A.ELEC_TYPE_CODE,
             A.PRC_VOLT_CODE,
             A.LEVEL_NUM,
             A.AP_TL,
             A.RP_TL,
             A.AP_LL,
             A.RP_LL,
             A.RPQ,
             A.T_SETTLE_PQ,
             A.T_AMT,
             A.T_CAT_KWH_AMT,
             A.T_KWH_AMT,
             A.T_PL_AMT,
             A.EFFECT_FLAG,
             A.PERSON_RESP_NO,
             A.CALC_ID,
             A.APP_NO,
             A.RS_PRC_REMARK,
             A.TIME_STAMP
        FROM DW_E_RS_PRC_AMT A, TMPC C
       WHERE A.RS_ID = C.RS_ID;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_RS_PRC_AMT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_RS_PRC_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_E_RS_SORT_RELA(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_RS_SORT_RELA', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_E_RS_SORT_RELA X
     WHERE EXISTS (SELECT 1
              FROM SY_SG_E_RS_LOG C
             WHERE C.RS_DATE = V_YMD
               AND C.RS_ID = X.RS_ID);
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_E_RS_SORT_RELA
      (DATA_ID,
       PRO_ORG_NO,
       PS_BUSI_AREA_CODE,
       RS_TYPE_RELA_ID,
       RS_ID,
       RS_TYPE,
       TYPE_CODE,
       TIME_STAMP)
      WITH TMPC AS
       (SELECT RS_ID FROM SY_SG_E_RS_LOG A WHERE A.RS_DATE = V_YMD)
      SELECT A.DATA_ID,
             A.PRO_ORG_NO,
             A.PS_BUSI_AREA_CODE,
             A.RS_TYPE_RELA_ID,
             A.RS_ID,
             A.RS_TYPE,
             A.TYPE_CODE,
             A.TIME_STAMP
        FROM DW_E_RS_SORT_RELA A, TMPC C
       WHERE A.RS_ID = C.RS_ID;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_RS_SORT_RELA  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_RS_SORT_RELA  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   过程名称：P_ENT_DW_A_CUR_AMT_DAY/当月日累计欠费统计入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：当月日累计欠费统计入口过程,被数据库JOB调用.
  
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_CUR_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_CUR_AMT_DAY', V_YMD);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_A_CUR_AMT_DAY表
    P_INS_DW_A_CUR_AMT_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_A_CUR_AMT_DAY表取数据插入到稽查库OMAC用户下的DW_A_CUR_AMT_DAY表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_A_CUR_AMT_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_CUR_AMT_DAY A
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
    OUT_MSG  := '执行 P_ENT_DW_A_CUR_AMT_DAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_CUR_AMT_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_CUR_AMT_DAY(I_DATA   VARCHAR2,
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
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_CUR_AMT_DAY', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_CUR_AMT_DAY X WHERE X.STAT_YMD = V_YMD;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_A_CUR_AMT_DAY
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_A_CUR_AMT_DAY X
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         ELEC_TYPE_CODE,
         CONS_SORT_CODE,
         TRADE_CODE,
         HEC_TRADE_CODE,
         VOLT_CODE,
         MR_SECT_NO,
         RCVBL_YM,
         OWE_NUM,
         OWE_AMT,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               ORG_NO,
               '',
               V_YMD,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          HEC_TRADE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
               MR_SECT_NO,
               RCVBL_YM,
               SUM(OWE_NUM) OWE_NUM,
               SUM(OWE_AMT) OWE_AMT,
               SYSDATE
          FROM (SELECT A.ORG_NO ORG_NO,
                       B.ELEC_TYPE_CODE ELEC_TYPE_CODE,
                       B.CONS_SORT_CODE CONS_SORT_CODE,
                       B.TRADE_TYPE_CODE TRADE_CODE,
                       B.HEC_TRADE_CODE HEC_TRADE_CODE,
                       B.VOLT_CODE VOLT_CODE,
                       B.MR_SECT_NO MR_SECT_NO,
                       A.RCVBL_YM RCVBL_YM,
                       COUNT(1) OWE_NUM,
                       SUM(A.OWE_AMT) OWE_AMT
                  FROM SY_SG_A_RCVBL_FLOW A, SY_SG_E_CONS_SNAP B
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                      --统计欠费、部分欠费的情况
                   AND A.SETTLE_FLAG IN ('01', '02')
                      --电费年月为当月
                   AND A.RCVBL_YM = V_YM
                      --发行日期小于等于统计日
                   AND A.RELEASE_DATE <= V_YMD
                      --根据calc_id进行关联
                   AND A.CALC_ID = B.CALC_ID
                 GROUP BY A.ORG_NO,
                          B.ELEC_TYPE_CODE,
                          B.CONS_SORT_CODE,
                          B.TRADE_TYPE_CODE,
                          B.HEC_TRADE_CODE,
                          B.VOLT_CODE,
                          B.MR_SECT_NO,
                          A.RCVBL_YM
                UNION ALL
                SELECT A.ORG_NO ORG_NO,
                       B.ELEC_TYPE_CODE ELEC_TYPE_CODE,
                       B.CONS_SORT_CODE CONS_SORT_CODE,
                       B.TRADE_TYPE_CODE TRADE_CODE,
                       B.HEC_TRADE_CODE HEC_TRADE_CODE,
                       B.VOLT_CODE VOLT_CODE,
                       B.MR_SECT_NO MR_SECT_NO,
                       A.RCVBL_YM RCVBL_YM,
                       COUNT(1) OWE_NUM,
                       SUM(A.OWE_AMT) OWE_AMT
                  FROM SY_SG_ARC_A_RCVBL_FLOW A, SY_SG_ARC_E_CONS_SNAP B
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                      --统计欠费、部分欠费的情况
                   AND A.SETTLE_FLAG IN ('01', '02')
                      --电费年月为当月
                   AND A.RCVBL_YM = V_YM
                      --发行日期小于等于统计日
                   AND A.RELEASE_DATE <= V_YMD
                      --根据calc_id进行关联
                   AND A.CALC_ID = B.CALC_ID
                 GROUP BY A.ORG_NO,
                          B.ELEC_TYPE_CODE,
                          B.CONS_SORT_CODE,
                          B.TRADE_TYPE_CODE,
                          B.HEC_TRADE_CODE,
                          B.VOLT_CODE,
                          B.MR_SECT_NO,
                          A.RCVBL_YM)
         GROUP BY ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             CONS_SORT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             HEC_TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
                  MR_SECT_NO,
                  RCVBL_YM;
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_CUR_AMT_DAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_CUR_AMT_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_CUR_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_CUR_AMT_DAY', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_A_CUR_AMT_DAY X WHERE X.STAT_YMD = V_YMD;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_CUR_AMT_DAY X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       VOLT_CODE,
       MR_SECT_NO,
       RCVBL_YM,
       OWE_NUM,
       OWE_AMT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_YMD,
       A.ELEC_TYPE_CODE,
       A.CONS_SORT_CODE,
       A.TRADE_CODE,
       A.HEC_TRADE_CODE,
       A.VOLT_CODE,
       A.MR_SECT_NO,
       A.RCVBL_YM,
       A.OWE_NUM,
       A.OWE_AMT,
       A.TIME_STAMP
        FROM DW_A_CUR_AMT_DAY A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_CUR_AMT_DAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_CUR_AMT_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   过程名称：P_ENT_DW_A_RCVED_DAY/日实收电费统计入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：日实收电费统计入口过程,被数据库JOB调用.
  
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_RCVED_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_RCVED_DAY', V_YMD);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_A_RCVED_DAY表
    P_INS_DW_A_RCVED_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_A_RCVED_DAY表取数据插入到稽查库OMAC用户下的DW_A_RCVED_DAY表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_A_RCVED_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_RCVED_DAY A
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
    OUT_MSG  := '执行 P_ENT_DW_A_RCVED_DAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_RCVED_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_RCVED_DAY(I_DATA   VARCHAR2,
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
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_RCVED_DAY', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_RCVED_DAY X WHERE X.STAT_YMD = V_YMD;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_A_RCVED_DAY
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_A_RCVED_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         RCVED_YM,
         RCVBL_YM,
         MR_SECT_NO,
         ELEC_TYPE_CODE,
         CONS_SORT_CODE,
         TRADE_CODE,
         HEC_TRADE_CODE,
         VOLT_CODE,
         AMT_TYPE,
         RCVED_CC,
         RCVED_NUM,
         RCVED_AMT,
         RCVED_IN_PRICE_AMT,
         RCVED_PL_AMT,
         RCVED_PENALTY,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               ORG_NO,
               '',
               V_YMD,
               RCVED_YM,
               RCVBL_YM,
               MR_SECT_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          HEC_TRADE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE),
               SUM(RCVED_CC) RCVED_CC,
               SUM(RCVED_NUM) RCVED_NUM,
               SUM(RCVED_AMT) RCVED_AMT,
               SUM(RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
               SUM(RCVED_PL_AMT) RCVED_PL_AMT,
               SUM(RCVED_PENALTY) RCVED_PENALTY,
               SYSDATE
          FROM (SELECT A.ORG_NO ORG_NO,
                       A.RCVED_YM RCVED_YM,
                       A.RCVBL_YM RCVBL_YM,
                       C.MR_SECT_NO MR_SECT_NO,
                       C.ELEC_TYPE_CODE ELEC_TYPE_CODE,
                       C.CONS_SORT_CODE CONS_SORT_CODE,
                       C.TRADE_TYPE_CODE TRADE_CODE,
                       C.HEC_TRADE_CODE HEC_TRADE_CODE,
                       C.VOLT_CODE VOLT_CODE,
                       B.AMT_TYPE AMT_TYPE,
                       COUNT(DISTINCT A.CONS_NO) RCVED_CC,
                       COUNT(1) RCVED_NUM,
                       SUM(THIS_RCVED_AMT) RCVED_AMT,
                       SUM(THIS_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                       SUM(THIS_PL_AMT) RCVED_PL_AMT,
                       SUM(THIS_PENALTY) RCVED_PENALTY
                  FROM SY_SG_A_RCVED_FLOW     A,
                       SY_SG_ARC_A_RCVBL_FLOW B,
                       SY_SG_ARC_E_CONS_SNAP  C
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.RCVED_DATE = V_YMD
                   AND A.RCVBL_AMT_ID = B.RCVBL_AMT_ID
                   AND B.CALC_ID = C.CALC_ID
                 GROUP BY A.ORG_NO,
                          A.RCVED_YM,
                          A.RCVBL_YM,
                          C.MR_SECT_NO,
                          C.ELEC_TYPE_CODE,
                          C.CONS_SORT_CODE,
                          C.TRADE_TYPE_CODE,
                          C.HEC_TRADE_CODE,
                          C.VOLT_CODE,
                          B.AMT_TYPE
                UNION ALL
                SELECT A.ORG_NO ORG_NO,
                       A.RCVED_YM RCVED_YM,
                       A.RCVBL_YM RCVBL_YM,
                       C.MR_SECT_NO MR_SECT_NO,
                       C.ELEC_TYPE_CODE ELEC_TYPE_CODE,
                       C.CONS_SORT_CODE CONS_SORT_CODE,
                       C.TRADE_TYPE_CODE TRADE_CODE,
                       C.HEC_TRADE_CODE HEC_TRADE_CODE,
                       C.VOLT_CODE VOLT_CODE,
                       B.AMT_TYPE AMT_TYPE,
                       COUNT(DISTINCT A.CONS_NO) RCVED_CC,
                       COUNT(1) RCVED_NUM,
                       SUM(THIS_RCVED_AMT) RCVED_AMT,
                       SUM(THIS_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                       SUM(THIS_PL_AMT) RCVED_PL_AMT,
                       SUM(THIS_PENALTY) RCVED_PENALTY
                  FROM SY_SG_ARC_A_RCVED_FLOW A,
                       SY_SG_ARC_A_RCVBL_FLOW B,
                       SY_SG_ARC_E_CONS_SNAP  C
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.RCVED_DATE = V_YMD
                   AND A.RCVBL_AMT_ID = B.RCVBL_AMT_ID
                   AND B.CALC_ID = C.CALC_ID
                 GROUP BY A.ORG_NO,
                          A.RCVED_YM,
                          A.RCVBL_YM,
                          C.MR_SECT_NO,
                          C.ELEC_TYPE_CODE,
                          C.CONS_SORT_CODE,
                          C.TRADE_TYPE_CODE,
                          C.HEC_TRADE_CODE,
                          C.VOLT_CODE,
                          B.AMT_TYPE
                UNION ALL
                SELECT A.ORG_NO ORG_NO,
                       A.RCVED_YM RCVED_YM,
                       A.RCVBL_YM RCVBL_YM,
                       C.MR_SECT_NO MR_SECT_NO,
                       C.ELEC_TYPE_CODE ELEC_TYPE_CODE,
                       C.CONS_SORT_CODE CONS_SORT_CODE,
                       C.TRADE_TYPE_CODE TRADE_CODE,
                       C.HEC_TRADE_CODE HEC_TRADE_CODE,
                       C.VOLT_CODE VOLT_CODE,
                       B.AMT_TYPE AMT_TYPE,
                       COUNT(DISTINCT A.CONS_NO) RCVED_CC,
                       COUNT(1) RCVED_NUM,
                       SUM(THIS_RCVED_AMT) RCVED_AMT,
                       SUM(THIS_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                       SUM(THIS_PL_AMT) RCVED_PL_AMT,
                       SUM(THIS_PENALTY) RCVED_PENALTY
                  FROM SY_SG_A_RCVED_FLOW    A,
                       SY_SG_A_RCVBL_FLOW    B,
                       SY_SG_ARC_E_CONS_SNAP C
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.RCVED_DATE = V_YMD
                   AND A.RCVBL_AMT_ID = B.RCVBL_AMT_ID
                   AND B.CALC_ID = C.CALC_ID
                 GROUP BY A.ORG_NO,
                          A.RCVED_YM,
                          A.RCVBL_YM,
                          C.MR_SECT_NO,
                          C.ELEC_TYPE_CODE,
                          C.CONS_SORT_CODE,
                          C.TRADE_TYPE_CODE,
                          C.HEC_TRADE_CODE,
                          C.VOLT_CODE,
                          B.AMT_TYPE)
         GROUP BY ORG_NO,
                  RCVED_YM,
                  RCVBL_YM,
                  MR_SECT_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             CONS_SORT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             HEC_TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE);
    
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_RCVED_DAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_RCVED_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_RCVED_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_RCVED_DAY', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_A_RCVED_DAY X WHERE X.STAT_YMD = V_YMD;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_RCVED_DAY X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       RCVED_YM,
       RCVBL_YM,
       MR_SECT_NO,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       VOLT_CODE,
       AMT_TYPE,
       RCVED_CC,
       RCVED_NUM,
       RCVED_AMT,
       RCVED_IN_PRICE_AMT,
       RCVED_PL_AMT,
       RCVED_PENALTY,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_YMD,
       A.RCVED_YM,
       A.RCVBL_YM,
       A.MR_SECT_NO,
       A.ELEC_TYPE_CODE,
       A.CONS_SORT_CODE,
       A.TRADE_CODE,
       A.HEC_TRADE_CODE,
       A.VOLT_CODE,
       A.AMT_TYPE,
       A.RCVED_CC,
       A.RCVED_NUM,
       A.RCVED_AMT,
       A.RCVED_IN_PRICE_AMT,
       A.RCVED_PL_AMT,
       A.RCVED_PENALTY,
       A.TIME_STAMP
        FROM DW_A_RCVED_DAY A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_RCVED_DAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_RCVED_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   过程名称：P_ENT_DW_A_RCVED_MON/月度实收电费统计入口过程
  作者：姜友德
  编写日期：2014-12-14 05:37
  过程描述：月度实收电费统计入口过程,被数据库JOB调用
  
  统计频度：按月抽取, I_DATA 为要进行数据的统计的月份,每月7日运行上月的数据
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_RCVED_MON(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_RCVED_MON', V_YM);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_A_RCVED_MON表
    P_INS_DW_A_RCVED_MON(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_A_RCVED_MON表取数据插入到稽查库OMAC用户下的DW_A_RCVED_MON表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_A_RCVED_MON(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_RCVED_MON A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.RCVED_YM = V_YM;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_A_RCVED_MON  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_RCVED_MON  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_RCVED_MON(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    --统计期截止日（统计月末）
    V_LT_DAY VARCHAR2(8);
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_RCVED_MON', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_A_RCVED_MON X WHERE X.RCVED_YM = V_YM;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_A_RCVED_MON
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      INSERT INTO SY_OM_DW_A_RCVED_MON X
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         RCVED_YM,
         RCVBL_YM,
         MR_SECT_NO,
         ELEC_TYPE_CODE,
         CONS_SORT_CODE,
         TRADE_CODE,
         HEC_TRADE_CODE,
         VOLT_CODE,
         AMT_TYPE,
         RCVED_CC,
         RCVED_NUM,
         RCVED_AMT,
         RCVED_IN_PRICE_AMT,
         RCVED_PL_AMT,
         RCVED_PENALTY,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               ORG_NO,
               '',
               RCVED_YM,
               RCVBL_YM,
               MR_SECT_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          HEC_TRADE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE),
               SUM(RCVED_CC) RCVED_CC,
               SUM(RCVED_NUM) RCVED_NUM,
               SUM(RCVED_AMT) RCVED_AMT,
               SUM(RCVED_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
               SUM(RCVED_PL_AMT) RCVED_PL_AMT,
               SUM(RCVED_PENALTY) RCVED_PENALTY,
               SYSDATE
          FROM (SELECT A.ORG_NO ORG_NO,
                       A.RCVED_YM RCVED_YM,
                       A.RCVBL_YM RCVBL_YM,
                       C.MR_SECT_NO MR_SECT_NO,
                       C.ELEC_TYPE_CODE ELEC_TYPE_CODE,
                       C.CONS_SORT_CODE CONS_SORT_CODE,
                       C.TRADE_TYPE_CODE TRADE_CODE,
                       C.HEC_TRADE_CODE HEC_TRADE_CODE,
                       C.VOLT_CODE VOLT_CODE,
                       B.AMT_TYPE AMT_TYPE,
                       COUNT(DISTINCT A.CONS_NO) RCVED_CC,
                       COUNT(1) RCVED_NUM,
                       SUM(THIS_RCVED_AMT) RCVED_AMT,
                       SUM(THIS_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                       SUM(THIS_PL_AMT) RCVED_PL_AMT,
                       SUM(THIS_PENALTY) RCVED_PENALTY
                  FROM SY_SG_A_RCVED_FLOW     A,
                       SY_SG_ARC_A_RCVBL_FLOW B,
                       SY_SG_ARC_E_CONS_SNAP  C
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.RCVED_YM = V_YM
                   AND A.RCVBL_AMT_ID = B.RCVBL_AMT_ID
                   AND B.CALC_ID = C.CALC_ID
                 GROUP BY A.ORG_NO,
                          A.RCVED_YM,
                          A.RCVBL_YM,
                          C.MR_SECT_NO,
                          C.ELEC_TYPE_CODE,
                          C.CONS_SORT_CODE,
                          C.TRADE_TYPE_CODE,
                          C.HEC_TRADE_CODE,
                          C.VOLT_CODE,
                          B.AMT_TYPE
                
                UNION ALL
                SELECT A.ORG_NO ORG_NO,
                       A.RCVED_YM RCVED_YM,
                       A.RCVBL_YM RCVBL_YM,
                       C.MR_SECT_NO MR_SECT_NO,
                       C.ELEC_TYPE_CODE ELEC_TYPE_CODE,
                       C.CONS_SORT_CODE CONS_SORT_CODE,
                       C.TRADE_TYPE_CODE TRADE_CODE,
                       C.HEC_TRADE_CODE HEC_TRADE_CODE,
                       C.VOLT_CODE VOLT_CODE,
                       B.AMT_TYPE AMT_TYPE,
                       COUNT(DISTINCT A.CONS_NO) RCVED_CC,
                       COUNT(1) RCVED_NUM,
                       SUM(THIS_RCVED_AMT) RCVED_AMT,
                       SUM(THIS_IN_PRICE_AMT) RCVED_IN_PRICE_AMT,
                       SUM(THIS_PL_AMT) RCVED_PL_AMT,
                       SUM(THIS_PENALTY) RCVED_PENALTY
                  FROM SY_SG_ARC_A_RCVED_FLOW A,
                       SY_SG_ARC_A_RCVBL_FLOW B,
                       SY_SG_ARC_E_CONS_SNAP  C
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND C.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.RCVED_YM = V_YM
                   AND A.RCVBL_AMT_ID = B.RCVBL_AMT_ID
                   AND B.CALC_ID = C.CALC_ID
                 GROUP BY A.ORG_NO,
                          A.RCVED_YM,
                          A.RCVBL_YM,
                          C.MR_SECT_NO,
                          C.ELEC_TYPE_CODE,
                          C.CONS_SORT_CODE,
                          C.TRADE_TYPE_CODE,
                          C.HEC_TRADE_CODE,
                          C.VOLT_CODE,
                          B.AMT_TYPE)
         GROUP BY ORG_NO,
                  RCVED_YM,
                  RCVBL_YM,
                  MR_SECT_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             CONS_SORT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             HEC_TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE);
    
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_RCVED_MON  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_RCVED_MON  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_RCVED_MON(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_RCVED_MON', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_RCVED_MON WHERE RCVED_YM = V_YM;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_RCVED_MON X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       RCVED_YM,
       RCVBL_YM,
       MR_SECT_NO,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       VOLT_CODE,
       AMT_TYPE,
       RCVED_CC,
       RCVED_NUM,
       RCVED_AMT,
       RCVED_IN_PRICE_AMT,
       RCVED_PL_AMT,
       RCVED_PENALTY,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.RCVED_YM,
       A.RCVBL_YM,
       A.MR_SECT_NO,
       A.ELEC_TYPE_CODE,
       A.CONS_SORT_CODE,
       A.TRADE_CODE,
       A.HEC_TRADE_CODE,
       A.VOLT_CODE,
       A.AMT_TYPE,
       A.RCVED_CC,
       A.RCVED_NUM,
       A.RCVED_AMT,
       A.RCVED_IN_PRICE_AMT,
       A.RCVED_PL_AMT,
       A.RCVED_PENALTY,
       A.TIME_STAMP
        FROM DW_A_RCVED_MON A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.RCVED_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_RCVED_MON  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_RCVED_MON  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   过程名称：P_ENT_DW_A_UNUSUAL_PAY/异常缴费信息入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：异常缴费信息入口过程,被数据库JOB调用.
  
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日
  统计逻辑为：解款为在途、到帐且解款金额大于0
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_UNUSUAL_PAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_UNUSUAL_PAY', V_YMD);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_A_UNUSUAL_PAY表
    P_INS_DW_A_UNUSUAL_PAY(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_A_UNUSUAL_PAY表取数据插入到稽查库OMAC用户下的DW_A_UNUSUAL_PAY表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_A_UNUSUAL_PAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_UNUSUAL_PAY A
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
    OUT_MSG  := '执行 P_ENT_DW_A_UNUSUAL_PAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_UNUSUAL_PAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_UNUSUAL_PAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    CURRENT_DAY  DATE := TO_DATE(V_YMD, 'YYYYMMDD');
    NEXT_DAY     DATE := CURRENT_DAY + 1;
    --当月
    V_YM   VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_S_YM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), -6),
                                  'YYYYMM');
    V_E_YM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), 6),
                                  'YYYYMM');
    --统计期截止日（统计月末）
    V_LT_DAY VARCHAR2(8);
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_UNUSUAL_PAY', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
  
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_A_UNUSUAL_PAY X WHERE X.STAT_YMD = V_YMD;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_A_UNUSUAL_PAY
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_A_UNUSUAL_PAY
        (DATA_ID,
         PRO_ORG_NO,
         PS_BUSI_AREA_CODE,
         ORG_NO,
         STAT_YMD,
         CHARGE_ID,
         CASHCHK_ID,
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
         CASHCHK_DATE,
         DISPOSE_DATE,
         ACCT_STATUS_CODE,
         ARRIVE_DATE,
         BANK_NOTE_NO,
         ACCT_BOOK_ID,
         RCV_ORG_NO,
         CHARGE_REMARK,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               '',
               A.ORG_NO,
               V_YMD,
               A.CHARGE_ID,
               A.CASHCHK_ID,
               A.CONS_NO,
               A.CHARGE_YM,
               A.CHARGE_DATE,
               A.ACCT_YM,
               --收费类型
               PKG_GK_PUBLIC.F_TRANS_CODE('CHARGE_TYPE_CODE', A.TYPE_CODE),
               A.RCV_AMT,
               A.THIS_CHG,
               A.LAST_CHG,
               A.CHARGE_EMP_NO,
               --付款方式
               PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', A.PAY_MODE),
               --电费结算方式
               PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', A.SETTLE_MODE),
               A.SETTLE_NOTE_NO,
               A.SETTLE_BANK_CODE,
               A.ACCT_NO,
               B.CASHCHK_DATE,
               B.DISPOSE_DATE,
               PKG_GK_PUBLIC.F_TRANS_CODE('ACCT_STATUS_CODE',
                                          B.ACCT_STATUS_CODE),
               B.ARRIVE_DATE,
               B.BANK_NOTE_NO,
               B.ACCT_BOOK_ID,
               B.RCV_ORG_NO,
               A.CHARGE_REMARK,
               SYSDATE
          FROM SY_SG_A_PAY_FLOW A, SY_SG_A_CASHCHK_FLOW B
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
              --为保证性能增加索引字段,时间获取前后6个月
           AND A.CHARGE_YM BETWEEN V_S_YM AND V_E_YM
              --在途、入账
           AND PKG_GK_PUBLIC.F_TRANS_CODE('ACCT_STATUS_CODE',
                                          B.ACCT_STATUS_CODE) IN
               ('01', '02')
              --现金、POS机刷卡
           AND PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', A.SETTLE_MODE) IN
               ('01', '05')
              --金额大于等于10万
           AND A.RCV_AMT >= 100000
           AND A.CHARGE_DATE BETWEEN CURRENT_DAY AND NEXT_DAY
           AND A.CASHCHK_ID = B.CASHCHK_ID;
    
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_UNUSUAL_PAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_UNUSUAL_PAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_UNUSUAL_PAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_UNUSUAL_PAY', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_A_UNUSUAL_PAY X WHERE X.STAT_YMD = V_YMD;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_UNUSUAL_PAY X
      (DATA_ID,
       PRO_ORG_NO,
       PS_BUSI_AREA_CODE,
       ORG_NO,
       STAT_YMD,
       CHARGE_ID,
       CASHCHK_ID,
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
       CASHCHK_DATE,
       DISPOSE_DATE,
       ACCT_STATUS_CODE,
       ARRIVE_DATE,
       BANK_NOTE_NO,
       ACCT_BOOK_ID,
       RCV_ORG_NO,
       CHARGE_REMARK,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.ORG_NO,
       A.STAT_YMD,
       A.CHARGE_ID,
       A.CASHCHK_ID,
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
       A.CASHCHK_DATE,
       A.DISPOSE_DATE,
       A.ACCT_STATUS_CODE,
       A.ARRIVE_DATE,
       A.BANK_NOTE_NO,
       A.ACCT_BOOK_ID,
       A.RCV_ORG_NO,
       A.CHARGE_REMARK,
       A.TIME_STAMP
        FROM DW_A_UNUSUAL_PAY A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_UNUSUAL_PAY  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_UNUSUAL_PAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   过程名称：P_ENT_DW_A_GP_AGREEMENT/月度分次划拨协议明细信息入口过程
  作者：姜友德
  编写日期：2014-12-14 05:37
  过程描述：月度分次划拨协议明细信息入口过程,被数据库JOB调用
  
  统计频度：按月抽取, I_DATA 为要进行数据的统计的月份,每月7日运行上月的数据
  根据自然月每月7日统计所有分次划拨协议签订情况，不管是否终止，全部抽取。
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_A_GP_AGREEMENT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_GP_AGREEMENT', V_YM);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_A_GP_AGREEMENT表
    P_INS_DW_A_GP_AGREEMENT(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_A_GP_AGREEMENT表取数据插入到稽查库OMAC用户下的DW_A_GP_AGREEMENT表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_A_GP_AGREEMENT(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_GP_AGREEMENT A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YM = V_YM;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_A_GP_AGREEMENT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_GP_AGREEMENT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_GP_AGREEMENT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    --统计期截止日（统计月末）
    V_LT_DAY VARCHAR2(8);
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_GP_AGREEMENT', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_A_GP_AGREEMENT X WHERE X.STAT_YM = V_YM;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_A_GP_AGREEMENT
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_A_GP_AGREEMENT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ELEC_TYPE_CODE,
         CONS_SORT_CODE,
         TRADE_CODE,
         HEC_TRADE_CODE,
         AGREEMENT_ID,
         CONS_NO,
         PERIOD_NUM,
         GP_TYPE,
         CHARGE_AMT,
         PAY_DATE,
         AGREEMENT_NO,
         SIGN_DATE,
         VOLT_CODE,
         REMARK,
         EFFECTYM,
         CUST_STATUS,
         EXPIRE_YM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               A.ORG_NO ORG_NO,
               '',
               V_YM,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                          B.ELEC_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                          B.CONS_SORT_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          B.HEC_INDUSTRY_CODE),
               A.AGREEMENT_ID,
               A.CONS_NO,
               A.PERIOD_NUM,
               PKG_GK_PUBLIC.F_TRANS_CODE('GRADED_CHARGE_TYPE', A.GP_TYPE),
               A.CHARGE_AMT,
               A.PAY_DATE,
               A.AGREEMENT_NO,
               A.SIGN_DATE,
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE),
               A.REMARK,
               A.EFFECTYM,
               B.STATUS_CODE,
               A.EXPIRE_YM,
               SYSDATE
          FROM SY_SG_A_GP_AGREEMENT A, SY_SG_C_CONS B
         WHERE B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND V_YM BETWEEN A.EFFECTYM AND
               NVL(A.EXPIRE_YM, TO_CHAR(SYSDATE, 'YYYYMM'))
           AND A.CONS_NO = B.CONS_NO;
    
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_GP_AGREEMENT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_GP_AGREEMENT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_GP_AGREEMENT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_GP_AGREEMENT', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_GP_AGREEMENT WHERE STAT_YM = V_YM;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_GP_AGREEMENT X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       TRADE_CODE,
       HEC_TRADE_CODE,
       AGREEMENT_ID,
       CONS_NO,
       PERIOD_NUM,
       GP_TYPE,
       CHARGE_AMT,
       PAY_DATE,
       AGREEMENT_NO,
       SIGN_DATE,
       VOLT_CODE,
       REMARK,
       EFFECTYM,
       CUST_STATUS,
       EXPIRE_YM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       A.PS_BUSI_AREA_CODE,
       A.STAT_YM,
       A.ELEC_TYPE_CODE,
       A.CONS_SORT_CODE,
       A.TRADE_CODE,
       A.HEC_TRADE_CODE,
       A.AGREEMENT_ID,
       A.CONS_NO,
       A.PERIOD_NUM,
       A.GP_TYPE,
       A.CHARGE_AMT,
       A.PAY_DATE,
       A.AGREEMENT_NO,
       A.SIGN_DATE,
       A.VOLT_CODE,
       A.REMARK,
       A.EFFECTYM,
       A.CUST_STATUS,
       A.EXPIRE_YM,
       A.TIME_STAMP
        FROM DW_A_GP_AGREEMENT A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_GP_AGREEMENT  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_GP_AGREEMENT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
     过程名称：P_ENT_DW_A_GP_EXEC_DET/月度分次划拨计划与发行明细入口过程
    作者：姜友德
    编写日期：2014-12-14 05:37
    过程描述：月度分次划拨计划与发行明细入口过程,被数据库JOB调用
    
    统计频度：按月抽取, I_DATA 为要进行数据的统计的月份,每月7号统计上月分次划拨发行情况
  每个用户，每个月度会有对应期数+正常电费的多次记录值。
  例如A户，10月分次划拨协议发行3期，此表中存放4条记录，包含正常电费记录；若同时存在当月的1条退补记录，则此表中存放5条记录。
    
    修改人:
    修改日期:
    **/
  PROCEDURE P_ENT_DW_A_GP_EXEC_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_GP_EXEC_DET', V_YM);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_A_GP_EXEC_DET表
    P_INS_DW_A_GP_EXEC_DET(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_A_GP_EXEC_DET表取数据插入到稽查库OMAC用户下的DW_A_GP_EXEC_DET表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_A_GP_EXEC_DET(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_A_GP_EXEC_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YM = V_YM;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_A_GP_EXEC_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_A_GP_EXEC_DET  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_GP_EXEC_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    --统计期截止日（统计月末）
    V_LT_DAY VARCHAR2(8);
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_GP_EXEC_DET', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_A_GP_EXEC_DET X WHERE X.STAT_YM = V_YM;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_A_GP_EXEC_DET
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_A_GP_EXEC_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         AMT_TYPE,
         RCVBL_YM,
         RCVBL_AMT,
         RCVED_AMT,
         SETTLE_FLAG,
         PENALTY_BGN_DATE,
         RCVBL_PENALTY,
         RCVED_PENALTY,
         RISK_LEVEL_CODE,
         RELEASE_DATE,
         OWE_AMT,
         PLAN_ID,
         AGREEMENT_ID,
         CONS_NO,
         TRANSFER_MODE,
         TRANSFER_DATE,
         TRANSFER_AMT,
         TRANSFER_PERIODS,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               A.ORG_NO,
               '',
               V_YM,
               PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', A.AMT_TYPE),
               A.RCVBL_YM,
               A.RCVBL_AMT,
               A.RCVED_AMT,
               PKG_GK_PUBLIC.F_TRANS_CODE('FEE_SETTLE_FLAG', A.SETTLE_FLAG),
               A.PENALTY_BGN_DATE,
               A.RCVBL_PENALTY,
               A.RCVED_PENALTY,
               A.RISK_LEVEL_CODE,
               A.RELEASE_DATE,
               A.OWE_AMT,
               B.PLAN_ID,
               B.AGREEMENT_ID,
               B.CONS_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('TRANSFER_MODE', B.TRANSFER_MODE),
               B.TRANSFER_DATE,
               B.TRANSFER_AMT,
               B.TRANSFER_PERIODS,
               SYSDATE
          FROM SY_SG_ARC_A_RCVBL_FLOW A, SY_SG_A_GP_PLAN B
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.RCVBL_YM = V_YM
           AND A.CONS_NO = B.CONS_NO
           AND A.RCVBL_YM = B.RCVBL_YM
           AND A.CALC_ID = B.PLAN_ID
        UNION ALL
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               A.ORG_NO,
               '',
               V_YM,
               PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', A.AMT_TYPE),
               A.RCVBL_YM,
               A.RCVBL_AMT,
               A.RCVED_AMT,
               PKG_GK_PUBLIC.F_TRANS_CODE('FEE_SETTLE_FLAG', A.SETTLE_FLAG),
               A.PENALTY_BGN_DATE,
               A.RCVBL_PENALTY,
               A.RCVED_PENALTY,
               A.RISK_LEVEL_CODE,
               A.RELEASE_DATE,
               A.OWE_AMT,
               B.PLAN_ID,
               B.AGREEMENT_ID,
               B.CONS_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('TRANSFER_MODE', B.TRANSFER_MODE),
               B.TRANSFER_DATE,
               B.TRANSFER_AMT,
               B.TRANSFER_PERIODS,
               SYSDATE
          FROM SY_SG_A_RCVBL_FLOW A, SY_SG_A_GP_PLAN B
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.RCVBL_YM = V_YM
           AND A.CONS_NO = B.CONS_NO
           AND A.RCVBL_YM = B.RCVBL_YM
           AND A.CALC_ID = B.PLAN_ID;
    
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_A_GP_EXEC_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_A_GP_EXEC_DET  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_GP_EXEC_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_GP_EXEC_DET', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_A_GP_EXEC_DET WHERE STAT_YM = V_YM;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_A_GP_EXEC_DET X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       AMT_TYPE,
       RCVBL_YM,
       RCVBL_AMT,
       RCVED_AMT,
       SETTLE_FLAG,
       PENALTY_BGN_DATE,
       RCVBL_PENALTY,
       RCVED_PENALTY,
       RISK_LEVEL_CODE,
       RELEASE_DATE,
       OWE_AMT,
       PLAN_ID,
       AGREEMENT_ID,
       CONS_NO,
       TRANSFER_MODE,
       TRANSFER_DATE,
       TRANSFER_AMT,
       TRANSFER_PERIODS,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_YM,
       A.AMT_TYPE,
       A.RCVBL_YM,
       A.RCVBL_AMT,
       A.RCVED_AMT,
       A.SETTLE_FLAG,
       A.PENALTY_BGN_DATE,
       A.RCVBL_PENALTY,
       A.RCVED_PENALTY,
       A.RISK_LEVEL_CODE,
       A.RELEASE_DATE,
       A.OWE_AMT,
       A.PLAN_ID,
       A.AGREEMENT_ID,
       A.CONS_NO,
       A.TRANSFER_MODE,
       A.TRANSFER_DATE,
       A.TRANSFER_AMT,
       A.TRANSFER_PERIODS,
       A.TIME_STAMP
        FROM DW_A_GP_EXEC_DET A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_A_GP_EXEC_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_A_GP_EXEC_DET  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

END PKG_YWGK_DW_CA_REALPAY;
/
