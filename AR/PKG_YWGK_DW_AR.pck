CREATE OR REPLACE PACKAGE PKG_YWGK_DW_AR IS

  /**(以下信息来源于《业务管控数据仓库表清单20140226.xlsx》)
   过程名称：P_ENT_DW_C_CONS_COMP/月度单位用电客户入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：月度单位用电客户入口过程,被数据库JOB调用
  
  统计频度：按月抽取, I_DATA 为要进行数据的统计的月份
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_C_CONS_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_C_CONS_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_C_CONS_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);

  /**
    过程名称：P_ENT_DW_C_BUSI_COMP/月度单位营业户统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：统计各层级单位的所有营业户的档案汇总情况,被数据库JOB调用
    统计频度：按月抽取，次月1日零点
    入参格式：I_DATA ：YYYYMM
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_C_BUSI_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_C_BUSI_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_C_BUSI_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);

  /**
    过程名称：P_ENT_DW_C_DIFF_PRC_DET/月度差别电价用户清单入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：统计各单位层级的所有执行差别电价到户明细情况,被数据库JOB调用
    统计频度：按月抽取，次月1日零点
    入参格式：I_DATA ：YYYYMM
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_C_DIFF_PRC_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_C_DIFF_PRC_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_C_DIFF_PRC_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  /**
    过程名称：P_ENT_DW_C_MP_COMP/月度关口计量点统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：统计各层级单位的关口计量点汇总情况,被数据库JOB调用
    统计频度：按月抽取，次月1日零点
    入参格式：I_DATA ：YYYYMM
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_C_MP_COMP(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_C_MP_COMP(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_C_MP_COMP(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);
  /**
    过程名称：P_ENT_DW_E_PRC_MERGE/合表户电价配置表入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：按月更新各单位合表用户电价配置,被数据库JOB调用
    统计频度：按月抽取，次月1日零点
    入参格式：I_DATA ：YYYYMM
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_E_PRC_MERGE(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_E_PRC_MERGE(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_E_PRC_MERGE(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);

  /*********************************
  #function:--得到当前版本号(电价,参数等)
  #version:--version 1.0
  #author:-- xixi
  #createdate:--2008-5-1 13:38:48
  #input:--in_par_ver_type   电费参数版本类别
  #input:--in_org_no   单位
  #modifyexplain:--
  **********************************/
  FUNCTION F_GET_CURVER(IN_PAR_VER_TYPE IN NUMBER,
                        IN_YM           VARCHAR2,
                        IN_ORG_NO       IN VARCHAR2) RETURN NUMBER;
                        
                        
    /**(以下信息来源于《业务管控数据仓库表清单20140226.xlsx》)
   过程名称：P_ENT_DW_C_HV_CONS/月度高压用电客户档案表
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：月度高压用电客户档案表入口过程,被数据库JOB调用
  
  统计频度：按月抽取, I_DATA 为要进行数据的统计的月份
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_C_HV_CONS(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_C_HV_CONS(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_C_HV_CONS(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
                                 
  /**(以下信息来源于《业务管控数据仓库表清单20140226.xlsx》)
   过程名称：P_ENT_DW_O_EMP/人员
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：人员入口过程,被数据库JOB调用
  
  统计频度：按按需抽取, I_DATA 为要进行数据的统计的月份
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_O_EMP(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2);
  
  PROCEDURE P_INS_DW_O_EMP(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2);
  
  PROCEDURE P_ETL_DW_O_EMP(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2);
END PKG_YWGK_DW_AR;
/
CREATE OR REPLACE PACKAGE BODY PKG_YWGK_DW_AR IS

  /**(以下信息来源于《业务管控数据仓库表清单20140226.xlsx》)
   过程名称：P_ENT_DW_C_CONS_COMP/月度单位用电客户入口过程
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：月度单位用电客户入口过程,被数据库JOB调用
  
  统计频度：按月抽取, I_DATA 为要进行数据的统计的月份
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_C_CONS_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_C_CONS_COMP', V_YM);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_CONS_COMP表
    P_INS_DW_C_CONS_COMP(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_C_CONS_COMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_C_CONS_COMP(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_C_CONS_COMP A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE A.STAT_YM = V_YM;
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_C_CONS_COMP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_C_CONS_COMP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_C_CONS_COMP(I_DATA   VARCHAR2,
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
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_CONS_COMP', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_C_CONS_COMP X WHERE X.STAT_YM = V_YM;
  
    --为加速,创建双电源，多电源用户表
    DELETE FROM TMP_PS_NUM_CODE_CONS;
    INSERT INTO TMP_PS_NUM_CODE_CONS
      (CONS_ID, PS_NUM_CODE)
      SELECT CONS_ID, MAX(PS_NUM_CODE)
        FROM SY_SG_C_SP C
       WHERE C.PS_NUM_CODE <> '1'
       GROUP BY CONS_ID;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_C_CONS_COMP
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      --为加速,创建配置了保安电源的用户表,利用单位分区
      INSERT INTO TMP_WEATHER_SECURITY_CONS
        (CONS_ID, WEATHER_SECURITY)
        SELECT CONS_ID, 1 WEATHER_SECURITY
          FROM SY_SG_C_PS C
         WHERE C.PS_ATTR = '30'
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           GROUP BY CONS_ID;
    
      INSERT INTO DW_C_CONS_COMP X
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         PS_BUSI_AREA_CODE,
         PS_VOLT_CODE,
         TRADE_CODE,
         CONS_SORT_CODE,
         ELEC_TYPE_CODE,
         HEC_TRADE_CODE,
         CUST_STATUS,
         PS_NUM_SORT,
         WEATHER_SECURITY,
         TMP_FLAG,
         NOTE_TYPE_CODE,
         NOTIFY_MODE,
         SETTLE_MODE,
         RRIO_CODE,
         TRANSFER_FLAG,
         CC,
         CTRT_CAP,
         RUN_CAP,
         TIME_STAMP)
      /*
      *modify by:姜友德 
      *增加标准代码转换逻辑,转换采用pkg_gk_public.f_trans_code并增加最外层group by保证函数转换后出现多个相同类型的维度后被汇总,防止出现重复.
      *pkg_gk_public.f_trans_code的第一个参数为业务管控的标准代码类型,已经本次开发的92张表的所有维度字段对应的标准代码类型找到,
      *可以采用<<标准代码对应标准代码类型20140305.xlsx>>里的标准代码类型.
      *pkg_gk_public.f_trans_code的逻辑为按照已经配置在dw_gk_code_trans表的中的标准代码进行转换,如果没有配置则按照原来的维度代码返回
      *
      ***千万注意:最外层增加select 和group by用于标准代码转换,不要将标准代码转换跟业务逻辑放一起在内层的select中,否则整个营销基础表的
      *几千万数据都会参加标准代码转换.!!!务必在业务逻辑筛选完后再外层select中进行代码转换!!!
      */
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               ORG_NO,
               STAT_YM,
               PS_BUSI_AREA_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', PS_VOLT_CODE),
               --供电电压
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
               --行业分类
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
               --用户分类
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
               --用电类别
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          HEC_TRADE_CODE),
               --高耗能行业分类
               PKG_GK_PUBLIC.F_TRANS_CODE('CONS_STATUS_CODE', CUST_STATUS),
               --客户状态
               PKG_GK_PUBLIC.F_TRANS_CODE('PS_NUM_CODE', PS_NUM_SORT),
               --电源数目分类
               WEATHER_SECURITY,
               --是否配备保安电源
               PKG_GK_PUBLIC.F_TRANS_CODE('TMP_FLAG', TMP_FLAG),
               --临时用电标志
               PKG_GK_PUBLIC.F_TRANS_CODE('MARK_NOTES_TYPE', NOTE_TYPE_CODE),
               --票据类型
               PKG_GK_PUBLIC.F_TRANS_CODE('NOTIFY_MODE', NOTIFY_MODE),
               --电费通知方式
               PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', SETTLE_MODE),
               --电费结算方式
               PKG_GK_PUBLIC.F_TRANS_CODE('IMPORTANCE_LEVEL', RRIO_CODE),
               --重要性等级
               PKG_GK_PUBLIC.F_TRANS_CODE('TRANSFER_CODE', TRANSFER_FLAG),
               --转供标志
               SUM(CC),
               SUM(CTRT_CAP),
               SUM(RUN_CAP),
               SYSDATE
          FROM (SELECT
                /*+parallel(A 4) (B 4) (D 4)*/
                 A.ORG_NO ORG_NO,
                 --统计日期
                 V_YM STAT_YM,
                 --为空即可，营业区域性质由总部出具程序补充.
                 '' PS_BUSI_AREA_CODE,
                 --供电电压
                 A.VOLT_CODE PS_VOLT_CODE,
                 --行业分类
                 A.TRADE_CODE TRADE_CODE,
                 --用户分类
                 A.CONS_SORT_CODE CONS_SORT_CODE,
                 --用电类别
                 A.ELEC_TYPE_CODE ELEC_TYPE_CODE,
                 --高耗能行业分类
                 A.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                 --客户状态
                 A.STATUS_CODE CUST_STATUS,
                 --电源类型1 单电源 2 双电源 3 多电源
                 NVL(B.PS_NUM_CODE, 1) PS_NUM_SORT,
                 --是否配备保安电源
                 DECODE(D.WEATHER_SECURITY, 1, 1, 0) WEATHER_SECURITY,
                 --临时用电标志
                 A.TMP_FLAG TMP_FLAG,
                 --票据类型
                 A.NOTE_TYPE_CODE NOTE_TYPE_CODE,
                 --电费通知方式
                 A.NOTIFY_MODE NOTIFY_MODE,
                 --电费结算方式
                 A.SETTLE_MODE SETTLE_MODE,
                 --重要性等级
                 A.RRIO_CODE RRIO_CODE,
                 --转供标志
                 A.TRANSFER_CODE TRANSFER_FLAG,
                 --户数
                 COUNT(A.CONS_ID) CC,
                 --合同容量
                 SUM(NVL(A.CONTRACT_CAP, 0)) CTRT_CAP,
                 --运行容量
                 SUM(A.RUN_CAP) RUN_CAP,
                 SYSDATE TIME_STAMP
                  FROM SY_SG_C_CONS              A,
                       TMP_PS_NUM_CODE_CONS      B,
                       TMP_WEATHER_SECURITY_CONS D
                 WHERE A.ELEC_TYPE_CODE <> '000'
                       AND A.BUILD_DATE < V_BEGIN_NEXT_MONTH
                       AND (A.CANCEL_DATE >= V_BEGIN_MONTH OR
                       (A.CANCEL_DATE IS NULL AND A.STATUS_CODE <> '9'))
                       AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                       AND A.CONS_ID = B.CONS_ID(+)
                       AND A.CONS_ID = D.CONS_ID(+)
                 GROUP BY A.ORG_NO,
                          A.VOLT_CODE,
                          A.TRADE_CODE,
                          A.CONS_SORT_CODE,
                          A.ELEC_TYPE_CODE,
                          A.HEC_INDUSTRY_CODE,
                          A.STATUS_CODE,
                          A.TMP_FLAG,
                          A.NOTE_TYPE_CODE,
                          A.NOTIFY_MODE,
                          A.SETTLE_MODE,
                          A.RRIO_CODE,
                          A.TRANSFER_CODE,
                          NVL(B.PS_NUM_CODE, 1),
                          DECODE(D.WEATHER_SECURITY, 1, 1, 0))
        --此处的groupby 保障数据进行维度转换后不出现重复
         GROUP BY ORG_NO,
                  STAT_YM,
                  PS_BUSI_AREA_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', PS_VOLT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             CONS_SORT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             HEC_TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('CONS_STATUS_CODE',
                                             CUST_STATUS),
                  PKG_GK_PUBLIC.F_TRANS_CODE('PS_NUM_CODE', PS_NUM_SORT),
                  WEATHER_SECURITY,
                  PKG_GK_PUBLIC.F_TRANS_CODE('TMP_FLAG', TMP_FLAG),
                  PKG_GK_PUBLIC.F_TRANS_CODE('MARK_NOTES_TYPE',
                                             NOTE_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('NOTIFY_MODE', NOTIFY_MODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', SETTLE_MODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('IMPORTANCE_LEVEL', RRIO_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRANSFER_CODE', TRANSFER_FLAG);
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_C_CONS_COMP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_C_CONS_COMP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_C_CONS_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_C_CONS_COMP', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_C_CONS_COMP X WHERE X.STAT_YM = V_YM;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_C_CONS_COMP X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       PS_BUSI_AREA_CODE,
       PS_VOLT_CODE,
       TRADE_CODE,
       CONS_SORT_CODE,
       ELEC_TYPE_CODE,
       HEC_TRADE_CODE,
       CUST_STATUS,
       PS_NUM_SORT,
       WEATHER_SECURITY,
       TMP_FLAG,
       NOTE_TYPE_CODE,
       NOTIFY_MODE,
       SETTLE_MODE,
       RRIO_CODE,
       TRANSFER_FLAG,
       CC,
       CTRT_CAP,
       RUN_CAP,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       B.BUSI_AREA_STAT_CODE,
       PS_VOLT_CODE,
       TRADE_CODE,
       CONS_SORT_CODE,
       ELEC_TYPE_CODE,
       HEC_TRADE_CODE,
       CUST_STATUS,
       PS_NUM_SORT,
       WEATHER_SECURITY,
       TMP_FLAG,
       NOTE_TYPE_CODE,
       NOTIFY_MODE,
       SETTLE_MODE,
       RRIO_CODE,
       TRANSFER_FLAG,
       CC,
       CTRT_CAP,
       RUN_CAP,
       TIME_STAMP
        FROM DW_C_CONS_COMP A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_C_CONS_COMP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_C_CONS_COMP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;
  /**
    过程名称：P_ENT_DW_C_BUSI_COMP/月度单位营业户统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：统计各层级单位的所有营业户的档案汇总情况,被数据库JOB调用
    统计频度：按月抽取，次月1日零点
    入参格式：I_DATA ：YYYYMM
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_C_BUSI_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_C_BUSI_COMP', I_DATA);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_C_BUSI_COMP(I_DATA, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_C_BUSI_COMP(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_C_BUSI_COMP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_C_DIFF_PRC_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_C_BUSI_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --网省单位
    V_PRO_ORG_NO DW_C_BUSI_COMP.PRO_ORG_NO%TYPE;
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_BUSI_COMP', I_DATA);
    --获取网省的单位编码
    V_PRO_ORG_NO := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_C_BUSI_COMP X WHERE X.STAT_YM = V_YM;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_C_BUSI_COMP
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      --先将带电价码的数据插入到临时表内                  
      INSERT INTO TMP_C_BUSI_COMP
        (ORG_NO,
         TRADE_CODE,
         VOLT_CODE,
         TYPE_CODE,
         MP_ATTR_CODE,
         USAGE_TYPE_CODE,
         SIDE_CODE,
         WIRING_MODE,
         MEAS_MODE,
         EXCHG_TYPE_CODE,
         MD_TYPE_CODE,
         CALC_MODE,
         METER_FLAG,
         STATUS_CODE,
         LC_FLAG,
         EXEC_PV_FLAG,
         PRC_CODE,
         BUS_CC,
         MP_CAP)
        SELECT /*+parallel(B 4) (C 4)*/
         C.ORG_NO,
         B.TRADE_CODE,
         C.VOLT_CODE,
         C.TYPE_CODE,
         C.MP_ATTR_CODE,
         C.USAGE_TYPE_CODE,
         C.SIDE_CODE,
         C.WIRING_MODE,
         C.MEAS_MODE,
         C.EXCHG_TYPE_CODE,
         C.MD_TYPE_CODE,
         C.CALC_MODE,
         C.METER_FLAG,
         C.STATUS_CODE,
         C.LC_FLAG,
         B.TS_FLAG EXEC_PV_FLAG,
         B.PRC_CODE PRC_CODE,
         COUNT(DISTINCT C.MP_ID) BUS_CC,
         SUM(C.MP_CAP) MP_CAP
          FROM SY_SG_C_CONS_PRC B, SY_SG_C_MP C
         WHERE B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
              --取客户计量点
           AND C.TYPE_CODE = '01'
           AND B.ORG_NO = C.ORG_NO
           AND B.TARIFF_ID = C.TARIFF_ID
           AND C.RUN_DATE < V_BEGIN_NEXT_MONTH
              --排除撤销过的计量
           AND C.STATUS_CODE <> '04'
         GROUP BY C.ORG_NO,
                  B.TRADE_CODE,
                  C.VOLT_CODE,
                  C.TYPE_CODE,
                  C.MP_ATTR_CODE,
                  C.USAGE_TYPE_CODE,
                  C.SIDE_CODE,
                  C.WIRING_MODE,
                  C.MEAS_MODE,
                  C.EXCHG_TYPE_CODE,
                  C.MD_TYPE_CODE,
                  C.CALC_MODE,
                  C.METER_FLAG,
                  C.STATUS_CODE,
                  C.LC_FLAG,
                  B.TS_FLAG,
                  B.PRC_CODE;
    
      --开始关联电价版本表
      INSERT INTO DW_C_BUSI_COMP
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         TRADE_CODE,
         ELEC_TYPE_CODE,
         STAT_YM,
         VOLT_CODE,
         PRC_VOLT_CODE,
         MP_TYPE_CODE,
         MP_ATTR_CODE,
         USAGE_TYPE_CODE,
         SIDE_CODE,
         WIRING_MODE,
         MEAS_MODE,
         EXCHG_TYPE_CODE,
         MD_TYPE_CODE,
         CALC_MODE,
         METER_FLAG,
         STATUS_CODE,
         LC_FLAG,
         EXEC_PV_FLAG,
         BUS_CC,
         MP_CAP,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID, --序列
               V_PRO_ORG_NO PRO_ORG_NO, --网省代码 
               ORG_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE) TRADE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE) ELEC_TYPE_CODE,
               V_YM,
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE) VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('PRC_VOLT_CODE', PRC_VOLT_CODE) PRC_VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('MP_TYPE_CODE', TYPE_CODE) MP_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('MP_ATTR_CODE', MP_ATTR_CODE) MP_ATTR_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE',
                                          USAGE_TYPE_CODE) USAGE_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('MP_SIDE_CODE', SIDE_CODE) SIDE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('WIRING_MODE', WIRING_MODE) WIRING_MODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_MODE', MEAS_MODE) MEAS_MODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('EXCHG_SORT_CODE',
                                          EXCHG_TYPE_CODE) EXCHG_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('MD_TYPE_CODE', MD_TYPE_CODE) MD_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('PQ_CALC_MODE', CALC_MODE) CALC_MODE,
               METER_FLAG,
               PKG_GK_PUBLIC.F_TRANS_CODE('MP_STATUS', STATUS_CODE) STATUS_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('LC_YES_NO_FLAG',LC_FLAG),
               PKG_GK_PUBLIC.F_TRANS_CODE('EXEC_PV_YES_NO_FLAG',EXEC_PV_FLAG),
               SUM(BUS_CC),
               SUM(MP_CAP),
               SYSDATE
          FROM (SELECT /*+parallel(A 4) (D 4)*/
                 A.ORG_NO,
                 A.TRADE_CODE,
                 D.ELEC_TYPE_CODE,
                 A.VOLT_CODE,
                 D.PRC_VOLT_CODE,
                 A.TYPE_CODE,
                 A.MP_ATTR_CODE,
                 A.USAGE_TYPE_CODE,
                 A.SIDE_CODE,
                 A.WIRING_MODE,
                 A.MEAS_MODE,
                 A.EXCHG_TYPE_CODE,
                 A.MD_TYPE_CODE,
                 A.CALC_MODE,
                 A.METER_FLAG,
                 A.STATUS_CODE,
                 A.LC_FLAG,
                 A.EXEC_PV_FLAG,
                 SUM(A.BUS_CC) BUS_CC,
                 SUM(A.MP_CAP) MP_CAP
                  FROM TMP_C_BUSI_COMP A, SY_SG_E_CAT_PRC D
                 WHERE D.PARA_VN =
                       PKG_YWGK_DW_AR.F_GET_CURVER('1', V_YM, A.ORG_NO)
                   AND D.PRC_CODE = A.PRC_CODE
                 GROUP BY A.ORG_NO,
                          A.TRADE_CODE,
                          D.ELEC_TYPE_CODE,
                          A.VOLT_CODE,
                          D.PRC_VOLT_CODE,
                          A.TYPE_CODE,
                          A.MP_ATTR_CODE,
                          A.USAGE_TYPE_CODE,
                          A.SIDE_CODE,
                          A.WIRING_MODE,
                          A.MEAS_MODE,
                          A.EXCHG_TYPE_CODE,
                          A.MD_TYPE_CODE,
                          A.CALC_MODE,
                          A.METER_FLAG,
                          A.STATUS_CODE,
                          A.LC_FLAG,
                          A.EXEC_PV_FLAG)
         GROUP BY ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('PRC_VOLT_CODE', PRC_VOLT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('MP_TYPE_CODE', TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('MP_ATTR_CODE', MP_ATTR_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE',
                                             USAGE_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('MP_SIDE_CODE', SIDE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('WIRING_MODE', WIRING_MODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_MODE', MEAS_MODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('EXCHG_SORT_CODE',
                                             EXCHG_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('MD_TYPE_CODE', MD_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('PQ_CALC_MODE', CALC_MODE),
                  METER_FLAG,
                  PKG_GK_PUBLIC.F_TRANS_CODE('MP_STATUS', STATUS_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('LC_YES_NO_FLAG',LC_FLAG),
                  PKG_GK_PUBLIC.F_TRANS_CODE('EXEC_PV_YES_NO_FLAG',EXEC_PV_FLAG);
      COMMIT;
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_C_BUSI_COMP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_C_BUSI_COMP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_C_BUSI_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_YM VARCHAR2(6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_C_BUSI_COMP', I_DATA);
    --当月
    V_YM := SUBSTR(I_DATA, 1, 6);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_C_BUSI_COMP X WHERE X.STAT_YM = V_YM;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_C_BUSI_COMP
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       TRADE_CODE,
       ELEC_TYPE_CODE,
       STAT_YM,
       VOLT_CODE,
       PRC_VOLT_CODE,
       MP_TYPE_CODE,
       MP_ATTR_CODE,
       USAGE_TYPE_CODE,
       SIDE_CODE,
       WIRING_MODE,
       MEAS_MODE,
       EXCHG_TYPE_CODE,
       MD_TYPE_CODE,
       CALC_MODE,
       METER_FLAG,
       STATUS_CODE,
       LC_FLAG,
       EXEC_PV_FLAG,
       BUS_CC,
       MP_CAP,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             TRADE_CODE,
             ELEC_TYPE_CODE,
             STAT_YM,
             VOLT_CODE,
             PRC_VOLT_CODE,
             MP_TYPE_CODE,
             MP_ATTR_CODE,
             USAGE_TYPE_CODE,
             SIDE_CODE,
             WIRING_MODE,
             MEAS_MODE,
             EXCHG_TYPE_CODE,
             MD_TYPE_CODE,
             CALC_MODE,
             METER_FLAG,
             STATUS_CODE,
             LC_FLAG,
             EXEC_PV_FLAG,
             BUS_CC,
             MP_CAP,
             TIME_STAMP
        FROM DW_C_BUSI_COMP
       WHERE STAT_YM = V_YM;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_C_BUSI_COMP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_C_BUSI_COMP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;
  /**
    过程名称：P_ENT_DW_C_DIFF_PRC_DET/月度差别电价用户清单入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：统计各单位层级的所有执行差别电价到户明细情况,被数据库JOB调用
    统计频度：按月抽取，次月1日零点
    入参格式：I_DATA ：YYYYMM
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_C_DIFF_PRC_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_C_DIFF_PRC_DET', I_DATA);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_C_DIFF_PRC_DET(I_DATA, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_C_DIFF_PRC_DET(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_C_DIFF_PRC_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_C_DIFF_PRC_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_C_DIFF_PRC_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_CODE_PRC   VARCHAR2(16) DEFAULT 'difPrcCode'; --差别电价码配置（k_code编码）
    V_YM         VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_LT_YMD     VARCHAR2(8);
    V_COUNT      NUMBER;
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  BEGIN
    --开始记录日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_DIFF_PRC_DET', I_DATA);
    --统计截止日期（统计月末）
    V_LT_YMD := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    DELETE FROM DW_C_DIFF_PRC_DET WHERE STAT_YM = V_YM;
  
    --为加速,创建双电源，多电源用户表
    DELETE FROM TMP_PS_NUM_CODE_DIFF_PRC_DET;
    INSERT INTO TMP_PS_NUM_CODE_DIFF_PRC_DET
      (CONS_ID, PS_NUM_CODE)
      SELECT CONS_ID, PS_NUM_CODE
        FROM SY_SG_C_SP C
       WHERE C.PS_NUM_CODE <> '1';
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      --由于差别电价的用户量特别少,先找到执行差别电价的用户(根据网省在配置表内配置的差别电价码)               
      INSERT INTO TMP_CONS_PRC_DIFF_PRC_DET
        (CONS_ID, PRC_CODE, ORG_NO)
        SELECT B.CONS_ID, B.PRC_CODE, B.ORG_NO
          FROM SY_SG_C_CONS_PRC B
         WHERE B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND EXISTS
         (SELECT 1
                  FROM GK_DW_CODE_TRANS T
                 WHERE T.CODE_TYPE = 'difPrcCode'
                   AND INSTR(T.CONT1, '/' || B.PRC_CODE || '/') > 0);
    
      --判断表中是否有数据，无数据则终止运行                
      SELECT /*+FIRST_ROWS*/
       COUNT(1)
        INTO V_COUNT
        FROM TMP_CONS_PRC_DIFF_PRC_DET
       WHERE ROWNUM = 1;
    
      IF 0 <> V_COUNT THEN
      
        --为加速,创建配置了保安电源的用户表,利用单位分区
        INSERT INTO TMP_WEATHER_SECURITY_CONS
          (CONS_ID, WEATHER_SECURITY)
          SELECT CONS_ID, 1 WEATHER_SECURITY
            FROM SY_SG_C_PS C
           WHERE C.PS_ATTR = '30'
             AND C.ORG_NO LIKE TSS.ORG_NO || '%';
      
        --插入到电价码，准备关联电价码表
        INSERT INTO TMP_DW_C_DIFF_PRC_DET_PRC_CODE
          (ORG_NO,
           CONS_NO,
           CONS_NAME,
           VOLT_CODE,
           TRADE_CODE,
           CONS_SORT_CODE,
           ELEC_TYPE_CODE,
           HEC_INDUSTRY_CODE,
           STATUS_CODE,
           PS_NUM_CODE,
           WEATHER_SECURITY,
           TMP_FLAG,
           NOTE_TYPE_CODE,
           NOTIFY_MODE,
           SETTLE_MODE,
           RRIO_CODE,
           TRANSFER_CODE,
           PRC_CODE,
           CONTRACT_CAP,
           RUN_CAP)
          SELECT A.ORG_NO,
                 A.CONS_NO,
                 A.CONS_NAME,
                 A.VOLT_CODE,
                 A.TRADE_CODE,
                 A.CONS_SORT_CODE,
                 A.ELEC_TYPE_CODE,
                 A.HEC_INDUSTRY_CODE,
                 A.STATUS_CODE,
                 NVL(E.PS_NUM_CODE, 1),
                 DECODE(D.WEATHER_SECURITY, 0, '0', '1') WEATHER_SECURITY,
                 A.TMP_FLAG,
                 A.NOTE_TYPE_CODE,
                 A.NOTIFY_MODE,
                 A.SETTLE_MODE,
                 A.RRIO_CODE,
                 A.TRANSFER_CODE,
                 B.PRC_CODE,
                 A.CONTRACT_CAP,
                 A.RUN_CAP
            FROM SY_SG_C_CONS                 A,
                 TMP_CONS_PRC_DIFF_PRC_DET    B,
                 TMP_WEATHER_SECURITY_CONS    D,
                 TMP_PS_NUM_CODE_DIFF_PRC_DET E
           WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
             AND B.ORG_NO LIKE TSS.ORG_NO || '%'
             AND A.CONS_ID = B.CONS_ID
             AND A.BUILD_DATE < V_BEGIN_NEXT_MONTH
             AND (A.CANCEL_DATE >= V_BEGIN_MONTH OR A.CANCEL_DATE IS NULL)
             AND A.CONS_ID = D.CONS_ID(+)
             AND A.CONS_ID = E.CONS_ID(+);
      
        INSERT INTO DW_C_DIFF_PRC_DET
          (DATA_ID,
           PRO_ORG_NO,
           ORG_NO,
           STAT_YM,
           CONS_NO,
           CONS_NAME,
           PS_VOLT_CODE,
           TRADE_CODE,
           CONS_SORT_CODE,
           ELEC_TYPE_CODE,
           HEC_TRADE_CODE,
           CUST_STATUS,
           PS_NUM_SORT,
           WEATHER_SECURITY,
           TMP_FLAG,
           NOTE_TYPE_CODE,
           NOTIFY_MODE,
           SETTLE_MODE,
           RRIO_CODE,
           TRANSFER_FLAG,
           DISC_MODE,
           CTRT_CAP,
           RUN_CAP,
           TIME_STAMP)
          SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
                 V_PRO_ORG_NO,
                 ORG_NO,
                 V_YM,
                 CONS_NO,
                 CONS_NAME,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                            CONS_SORT_CODE) CONS_SORT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            HEC_TRADE_CODE) HEC_TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('CONS_STATUS_CODE', CUST_STATUS) CUST_STATUS,
                 PKG_GK_PUBLIC.F_TRANS_CODE('PS_NUM_CODE', PS_NUM_SORT) PS_NUM_SORT,
                 WEATHER_SECURITY,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TMP_FLAG', TMP_FLAG) TMP_FLAG,
                 PKG_GK_PUBLIC.F_TRANS_CODE('MARK_NOTES_TYPE',
                                            NOTE_TYPE_CODE),
                 PKG_GK_PUBLIC.F_TRANS_CODE('NOTIFY_MODE', NOTIFY_MODE),
                 PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', SETTLE_MODE),
                 PKG_GK_PUBLIC.F_TRANS_CODE('IMPORTANCE_LEVEL', RRIO_CODE),
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRANSFER_CODE', TRANSFER_CODE),
                 PKG_GK_PUBLIC.F_TRANS_CODE('DISC_MODE', DISC_MODE),
                 CONTRACT_CAP,
                 RUN_CAP,
                 SYSDATE
            FROM (SELECT A.ORG_NO,
                         A.CONS_NO,
                         A.CONS_NAME,
                         A.VOLT_CODE,
                         A.TRADE_CODE,
                         A.CONS_SORT_CODE,
                         A.ELEC_TYPE_CODE,
                         A.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                         A.STATUS_CODE       CUST_STATUS,
                         A.PS_NUM_CODE       PS_NUM_SORT,
                         A.WEATHER_SECURITY,
                         A.TMP_FLAG,
                         A.NOTE_TYPE_CODE,
                         A.NOTIFY_MODE,
                         A.SETTLE_MODE,
                         A.RRIO_CODE,
                         A.TRANSFER_CODE,
                         A.PRC_CODE,
                         D.DISC_MODE,
                         A.CONTRACT_CAP,
                         A.RUN_CAP
                    FROM TMP_DW_C_DIFF_PRC_DET_PRC_CODE A, SY_SG_E_CAT_PRC D
                   WHERE D.PARA_VN =
                         PKG_YWGK_DW_AR.F_GET_CURVER('1', V_YM, A.ORG_NO)
                     AND D.PRC_CODE = A.PRC_CODE);
      
        COMMIT;
      END IF;
    
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_C_DIFF_PRC_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_C_DIFF_PRC_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_C_DIFF_PRC_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_YM VARCHAR2(6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_C_BUSI_COMP', I_DATA);
    --当月
    V_YM := SUBSTR(I_DATA, 1, 6);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_C_DIFF_PRC_DET X WHERE X.STAT_YM = V_YM;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
  
    INSERT INTO SY_OM_DW_C_DIFF_PRC_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       CONS_NO,
       CONS_NAME,
       PS_VOLT_CODE,
       TRADE_CODE,
       CONS_SORT_CODE,
       ELEC_TYPE_CODE,
       HEC_TRADE_CODE,
       CUST_STATUS,
       PS_NUM_SORT,
       WEATHER_SECURITY,
       TMP_FLAG,
       NOTE_TYPE_CODE,
       NOTIFY_MODE,
       SETTLE_MODE,
       RRIO_CODE,
       TRANSFER_FLAG,
       DISC_MODE,
       CTRT_CAP,
       RUN_CAP,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             STAT_YM,
             CONS_NO,
             CONS_NAME,
             PS_VOLT_CODE,
             TRADE_CODE,
             CONS_SORT_CODE,
             ELEC_TYPE_CODE,
             HEC_TRADE_CODE,
             CUST_STATUS,
             PS_NUM_SORT,
             WEATHER_SECURITY,
             TMP_FLAG,
             NOTE_TYPE_CODE,
             NOTIFY_MODE,
             SETTLE_MODE,
             RRIO_CODE,
             TRANSFER_FLAG,
             DISC_MODE,
             CTRT_CAP,
             RUN_CAP,
             TIME_STAMP
        FROM DW_C_DIFF_PRC_DET
       WHERE STAT_YM = V_YM;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_C_DIFF_PRC_DET  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_C_DIFF_PRC_DET  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /**
    过程名称：P_ENT_DW_C_MP_COMP/月度关口计量点统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：统计各层级单位的关口计量点汇总情况,被数据库JOB调用
    统计频度：按月抽取，次月1日零点
    入参格式：I_DATA ：YYYYMM
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_C_MP_COMP(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_C_MP_COMP', I_DATA);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_C_MP_COMP(I_DATA, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_C_MP_COMP(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_C_MP_COMP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_C_MP_COMP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_C_MP_COMP(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_LT_YMD     DATE;
  BEGIN
    --开始记录日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_MP_COMP', I_DATA);
  
    --统计截止日期（统计月末）
    V_LT_YMD := LAST_DAY(TO_DATE(V_YM, 'YYYYMM'));
  
    DELETE FROM DW_C_MP_COMP WHERE STAT_YM = V_YM;
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_C_MP_COMP
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         MP_TYPE_CODE,
         MP_ATTR_CODE,
         USAGE_TYPE_CODE,
         SIDE_CODE,
         VOLT_CODE,
         WIRING_MODE,
         MEAS_MODE,
         EXCHG_TYPE_CODE,
         MD_TYPE_CODE,
         METER_FLAG,
         STATUS_CODE,
         LC_LIMIT_FLAG,
         MP_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               V_YM,
               PKG_GK_PUBLIC.F_TRANS_CODE('MP_TYPE_CODE', MP_TYPE_CODE) MP_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('MP_ATTR_CODE', MP_ATTR_CODE) MP_ATTR_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE',
                                          USAGE_TYPE_CODE) USAGE_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('MP_SIDE_CODE', SIDE_CODE) SIDE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE) VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('WIRING_MODE', WIRING_MODE) WIRING_MODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_MODE', MEAS_MODE) MEAS_MODE,
               EXCHG_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('MD_TYPE_CODE', MD_TYPE_CODE) MD_TYPE_CODE,
               METER_FLAG,
               PKG_GK_PUBLIC.F_TRANS_CODE('MP_STATUS', STATUS_CODE) STATUS_CODE,
               LC_LIMIT_FLAG,
               SUM(MP_NUM),
               SYSDATE
          FROM (SELECT A.ORG_NO,
                       A.TYPE_CODE MP_TYPE_CODE,
                       A.MP_ATTR_CODE,
                       A.USAGE_TYPE_CODE,
                       A.SIDE_CODE,
                       A.VOLT_CODE,
                       A.WIRING_MODE,
                       A.MEAS_MODE,
                       A.EXCHG_TYPE_CODE,
                       A.MD_TYPE_CODE,
                       A.METER_FLAG,
                       A.STATUS_CODE,
                       DECODE(LENGTH(A.LC_FLAG),
                              2,
                              DECODE(A.LC_FLAG, '01', '0', '1'),
                              A.LC_FLAG) LC_LIMIT_FLAG,
                       COUNT(A.MP_ID) MP_NUM
                  FROM SY_SG_C_MP A
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.TYPE_CODE <> '01'
                   AND A.RUN_DATE < V_LT_YMD
                   AND A.STATUS_CODE <> '04'
                 GROUP BY A.ORG_NO,
                          A.TYPE_CODE,
                          A.MP_ATTR_CODE,
                          A.USAGE_TYPE_CODE,
                          A.SIDE_CODE,
                          A.VOLT_CODE,
                          A.WIRING_MODE,
                          A.MEAS_MODE,
                          A.EXCHG_TYPE_CODE,
                          A.MD_TYPE_CODE,
                          A.METER_FLAG,
                          A.STATUS_CODE,
                          A.LC_FLAG)
         GROUP BY ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('MP_TYPE_CODE', MP_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('MP_ATTR_CODE', MP_ATTR_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE',
                                             USAGE_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('MP_SIDE_CODE', SIDE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('WIRING_MODE', WIRING_MODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_MODE', MEAS_MODE),
                  EXCHG_TYPE_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('MD_TYPE_CODE', MD_TYPE_CODE),
                  METER_FLAG,
                  PKG_GK_PUBLIC.F_TRANS_CODE('MP_STATUS', STATUS_CODE),
                  LC_LIMIT_FLAG;
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_C_MP_COMP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_C_MP_COMP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_C_MP_COMP(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_YM VARCHAR2(6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_C_MP_COMP', I_DATA);
    --当月
    V_YM := SUBSTR(I_DATA, 1, 6);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_C_MP_COMP X WHERE X.STAT_YM = V_YM;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
  
    INSERT INTO SY_OM_DW_C_MP_COMP
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       MP_TYPE_CODE,
       MP_ATTR_CODE,
       USAGE_TYPE_CODE,
       SIDE_CODE,
       VOLT_CODE,
       WIRING_MODE,
       MEAS_MODE,
       EXCHG_TYPE_CODE,
       MD_TYPE_CODE,
       METER_FLAG,
       STATUS_CODE,
       LC_LIMIT_FLAG,
       MP_NUM,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             STAT_YM,
             MP_TYPE_CODE,
             MP_ATTR_CODE,
             USAGE_TYPE_CODE,
             SIDE_CODE,
             VOLT_CODE,
             WIRING_MODE,
             MEAS_MODE,
             EXCHG_TYPE_CODE,
             MD_TYPE_CODE,
             METER_FLAG,
             STATUS_CODE,
             LC_LIMIT_FLAG,
             MP_NUM,
             TIME_STAMP
        FROM DW_C_MP_COMP
       WHERE STAT_YM = V_YM;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_C_MP_COMP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_C_MP_COMP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /**
    过程名称：P_ENT_DW_E_PRC_MERGE/合表户电价配置表入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：按月更新各单位合表用户电价配置,被数据库JOB调用
    统计频度：按月抽取，次月1日零点
    入参格式：I_DATA ：YYYYMM
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_E_PRC_MERGE(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_PRC_MERGE', I_DATA);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_E_PRC_MERGE(I_DATA, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_E_PRC_MERGE(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_E_PRC_MERGE  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_E_PRC_MERGE  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_E_PRC_MERGE(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID    VARCHAR2(24);
    V_CODE_PRC   VARCHAR2(16) DEFAULT 'comPrcCode'; --合表户电价码配置（k_code编码）
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_PRC_MERGE', I_DATA);
  
    DELETE FROM DW_E_PRC_MERGE;
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_E_PRC_MERGE
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PARA_VN,
         CAT_PRC_ID,
         MERGE_PRC_CODE,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               A.ORG_NO,
               A.PARA_VN,
               A.CAT_PRC_ID,
               A.PRC_CODE,
               SYSDATE
          FROM SY_SG_E_CAT_PRC A, SY_SG_E_CAT_PRC_DET B
         WHERE A.CAT_PRC_ID = B.CAT_PRC_ID
           AND EXISTS
         (SELECT 1
                  FROM OMAC.GK_DW_CODE_TRANS T
                 WHERE T.CODE_TYPE = V_CODE_PRC
                   AND INSTR(T.CONT1, '/' || A.PRC_CODE || '/') > 0);
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_E_PRC_MERGE  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_E_PRC_MERGE  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_E_PRC_MERGE(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_PRC_MERGE', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_E_PRC_MERGE;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
  
    INSERT INTO SY_OM_DW_E_PRC_MERGE
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PARA_VN,
       CAT_PRC_ID,
       MERGE_PRC_CODE,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             PARA_VN,
             CAT_PRC_ID,
             MERGE_PRC_CODE,
             TIME_STAMP
        FROM DW_E_PRC_MERGE;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_E_PRC_MERGE  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_E_PRC_MERGE  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  FUNCTION F_GET_CURVER(IN_PAR_VER_TYPE IN NUMBER,
                        IN_YM           VARCHAR2,
                        IN_ORG_NO       IN VARCHAR2) RETURN NUMBER IS
    /*********************************
    #function:--得到当前版本号(电价,参数等)
    #version:--version 1.0
    #author:-- xixi
    #createdate:--2008-5-1 13:38:48
    #input:--in_par_ver_type   电费参数版本类别
    #input:--in_org_no   单位
    #modifyexplain:--
    **********************************/
    V_PAR_VN SY_SG_E_BILL_PARA_VER.PARA_VN%TYPE;
    V_BGN_DATE CONSTANT VARCHAR2(10) := '2000-01-01';
    V_END_DATE CONSTANT VARCHAR2(10) := '2099-01-01';
    V_PRICE_ORG_NO SY_SG_E_CONS_SNAP.ORG_NO%TYPE;
  BEGIN
    --根据用户单位取得所属电价单位
    BEGIN
      SELECT MAX(C.ACCESS_ORG_NO)
        INTO V_PRICE_ORG_NO
        FROM SY_SG_SP_DATA_PRIV     B,
             SY_SG_SP_DATA_PRIV_ORG C,
             SY_SG_INDY_OBJECT      D
       WHERE B.RELA_ID = C.RELA_ID
         AND C.ORG_NO = IN_ORG_NO
         AND B.AUTH_ID = D.OBJECT_SEQ
         AND D.OBJECT_NAME =
             '/ac/parver/prc/prcAlter.do?action=initRelease'
         AND B.TYPE_CODE = 'org'
         AND B.DATA_PRIV_TYPE = '0';
    EXCEPTION
      WHEN OTHERS THEN
        V_PRICE_ORG_NO := NULL;
    END;
    IF V_PRICE_ORG_NO IS NULL THEN
      BEGIN
        SELECT PARA_VN
          INTO V_PAR_VN
          FROM SY_SG_E_BILL_PARA_VER A
         WHERE PAR_VER_TYPE = IN_PAR_VER_TYPE
           AND NVL(A.RELEASE_FLAG, '0') = '1'
           AND NVL(PAR_BGN_DATE, TO_DATE(V_BGN_DATE, 'YYYY-MM-DD')) <=
               TO_DATE(IN_YM || '01', 'YYYY-MM-DD')
           AND NVL(PAR_END_DATE, TO_DATE(V_END_DATE, 'YYYY-MM-DD')) >=
               TO_DATE(IN_YM || '01', 'YYYY-MM-DD')
           AND ROWNUM = 1;
      EXCEPTION
        WHEN OTHERS THEN
          V_PAR_VN := -1;
      END;
    ELSE
      BEGIN
        SELECT PARA_VN
          INTO V_PAR_VN
          FROM SY_SG_E_BILL_PARA_VER A
         WHERE PAR_VER_TYPE = IN_PAR_VER_TYPE
           AND NVL(A.RELEASE_FLAG, '0') = '1'
           AND NVL(PAR_BGN_DATE, TO_DATE(V_BGN_DATE, 'YYYY-MM-DD')) <=
               TO_DATE(IN_YM || '01', 'YYYY-MM-DD')
           AND NVL(PAR_END_DATE, TO_DATE(V_END_DATE, 'YYYY-MM-DD')) >=
               TO_DATE(IN_YM || '01', 'YYYY-MM-DD')
           AND PARA_VN IN (SELECT PARA_VN
                             FROM SY_SG_E_CAT_PRC
                            WHERE ORG_NO = V_PRICE_ORG_NO)
           AND ROWNUM = 1;
      EXCEPTION
        WHEN OTHERS THEN
          V_PAR_VN := -1;
      END;
    END IF;
    RETURN V_PAR_VN;
  END F_GET_CURVER;

  /**(以下信息来源于《业务管控数据仓库表清单20140226.xlsx》)
   过程名称：P_ENT_DW_C_HV_CONS/月度高压用电客户档案表
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：月度高压用电客户档案表入口过程,被数据库JOB调用
  
  统计频度：按月抽取, I_DATA 为要进行数据的统计的月份
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_C_HV_CONS(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_C_HV_CONS', V_YM);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_HV_CONS表
    P_INS_DW_C_HV_CONS(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_HV_CONS表取数据插入到稽查库OMAC用户下的DW_C_HV_CONS表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_C_HV_CONS(V_YM, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_C_HV_CONS  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_C_HV_CONS  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_C_HV_CONS(I_DATA   VARCHAR2,
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
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_HV_CONS', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
  
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_C_HV_CONS X WHERE X.STAT_YM = V_YM;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_C_HV_CONS
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
      INSERT INTO DW_C_HV_CONS X
        (DATA_ID,
         PRO_ORG_NO,
         STAT_YM,
         CONS_ID,
         CONS_NO,
         CONS_NAME,
         CUST_QUERY_NO,
         TMP_PAY_RELA_NO,
         ORGN_CONS_NO,
         CONS_SORT_CODE,
         ELEC_ADDR,
         TRADE_CODE,
         ELEC_TYPE_CODE,
         CONTRACT_CAP,
         RUN_CAP,
         SHIFT_NO,
         LODE_ATTR_CODE,
         VOLT_CODE,
         HEC_INDUSTRY_CODE,
         HOLIDAY,
         BUILD_DATE,
         PS_DATE,
         CANCEL_DATE,
         DUE_DATE,
         NOTIFY_MODE,
         SETTLE_MODE,
         STATUS_CODE,
         ORG_NO,
         RRIO_CODE,
         CHK_CYCLE,
         LAST_CHK_DATE,
         CHECKER_NO,
         POWEROFF_CODE,
         TRANSFER_CODE,
         MR_SECT_NO,
         NOTE_TYPE_CODE,
         TMP_FLAG,
         TMP_DATE,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               V_YM,
               CONS_ID,
               CONS_NO,
               CONS_NAME,
               CUST_QUERY_NO,
               TMP_PAY_RELA_NO,
               ORGN_CONS_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
               ELEC_ADDR,
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
               CONTRACT_CAP,
               RUN_CAP,
               SHIFT_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('LODE_ATTR_CODE', LODE_ATTR_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          HEC_INDUSTRY_CODE),
               HOLIDAY,
               BUILD_DATE,
               PS_DATE,
               CANCEL_DATE,
               DUE_DATE,
               PKG_GK_PUBLIC.F_TRANS_CODE('NOTIFY_MODE', NOTIFY_MODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', SETTLE_MODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('CONS_STATUS_CODE', STATUS_CODE),
               ORG_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('IMPORTANCE_LEVEL', RRIO_CODE),
               CHK_CYCLE,
               LAST_CHK_DATE,
               CHECKER_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('ARTI_TREAT_RSLT', POWEROFF_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('TRANSFER_CODE', TRANSFER_CODE),
               MR_SECT_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('MARK_NOTES_TYPE', NOTE_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('TMP_FLAG', TMP_FLAG),
               TMP_DATE,
               SYSDATE
          FROM SY_SG_C_CONS A
         WHERE 
           A.ELEC_TYPE_CODE <> '000'
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
              --获取用电客户类型为高压的用户
           AND A.CONS_SORT_CODE LIKE '01%'
              --立户日期小于月末
           AND A.BUILD_DATE < V_BEGIN_NEXT_MONTH
           AND (A.CANCEL_DATE >= V_BEGIN_MONTH OR
               (A.CANCEL_DATE IS NULL AND A.STATUS_CODE <> '9'));
    
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_C_HV_CONS  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_C_HV_CONS  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_C_HV_CONS(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_C_HV_CONS', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_C_HV_CONS X WHERE X.STAT_YM = V_YM;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_C_HV_CONS X
      (DATA_ID,
       PRO_ORG_NO,
       STAT_YM,
       CONS_ID,
       CONS_NO,
       CONS_NAME,
       CUST_QUERY_NO,
       TMP_PAY_RELA_NO,
       ORGN_CONS_NO,
       CONS_SORT_CODE,
       ELEC_ADDR,
       TRADE_CODE,
       ELEC_TYPE_CODE,
       CONTRACT_CAP,
       RUN_CAP,
       SHIFT_NO,
       LODE_ATTR_CODE,
       VOLT_CODE,
       HEC_INDUSTRY_CODE,
       HOLIDAY,
       BUILD_DATE,
       PS_DATE,
       CANCEL_DATE,
       DUE_DATE,
       NOTIFY_MODE,
       SETTLE_MODE,
       STATUS_CODE,
       ORG_NO,
       RRIO_CODE,
       CHK_CYCLE,
       LAST_CHK_DATE,
       CHECKER_NO,
       POWEROFF_CODE,
       TRANSFER_CODE,
       MR_SECT_NO,
       NOTE_TYPE_CODE,
       TMP_FLAG,
       TMP_DATE,
       TIME_STAMP)
      SELECT A.DATA_ID,
             A.PRO_ORG_NO,
             STAT_YM,
             CONS_ID,
             CONS_NO,
             CONS_NAME,
             CUST_QUERY_NO,
             TMP_PAY_RELA_NO,
             ORGN_CONS_NO,
             CONS_SORT_CODE,
             ELEC_ADDR,
             TRADE_CODE,
             ELEC_TYPE_CODE,
             CONTRACT_CAP,
             RUN_CAP,
             SHIFT_NO,
             LODE_ATTR_CODE,
             VOLT_CODE,
             HEC_INDUSTRY_CODE,
             HOLIDAY,
             BUILD_DATE,
             PS_DATE,
             CANCEL_DATE,
             DUE_DATE,
             NOTIFY_MODE,
             SETTLE_MODE,
             STATUS_CODE,
             ORG_NO,
             RRIO_CODE,
             CHK_CYCLE,
             LAST_CHK_DATE,
             CHECKER_NO,
             POWEROFF_CODE,
             TRANSFER_CODE,
             MR_SECT_NO,
             NOTE_TYPE_CODE,
             TMP_FLAG,
             TMP_DATE,
             TIME_STAMP
        FROM DW_C_HV_CONS A
      --加入时间筛选条件
       WHERE A.STAT_YM = V_YM;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_C_HV_CONS  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_C_HV_CONS  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**(以下信息来源于《业务管控数据仓库表清单20140226.xlsx》)
   过程名称：P_ENT_DW_O_EMP/人员
  作者：姜友德
  编写日期：2014-02-28 01:37
  过程描述：人员入口过程,被数据库JOB调用
  
  统计频度：按按需抽取, I_DATA 为要进行数据的统计的月份
  
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_O_EMP(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_EMP', V_YM);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_O_EMP表
    P_INS_DW_O_EMP(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_O_EMP表取数据插入到稽查库OMAC用户下的DW_O_EMP表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_O_EMP(V_YM, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_O_EMP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_O_EMP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_O_EMP(I_DATA   VARCHAR2,
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
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_EMP', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
  
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_O_EMP;
  
    INSERT INTO DW_O_EMP
      (DATA_ID,
       PRO_ORG_NO,
       EMP_NO,
       ORG_NO,
       STAFF_NO,
       NAME,
       GENDER,
       TECH_LEVEL_CODE,
       DEGREE_CODE,
       TITLE_LEVEL_CODE,
       POSITION,
       BRITHDAY,
       AGE_CODE,
       YEAR,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
             V_PRO_ORG_NO PRO_ORG_NO,
             A.EMP_NO,
             B.ORG_NO,
             A.STAFF_NO,
             A.NAME,
             PKG_GK_PUBLIC.F_TRANS_CODE('GENDER', A.GENDER),
             PKG_GK_PUBLIC.F_TRANS_CODE('TECH_LEVEL_CODE',
                                        A.TECH_LEVEL_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('DEGREE_CODE', A.DEGREE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('TITLE_LEVEL_CODE',
                                        A.TECH_LEVEL_CODE),
             A.POSITION,
             A.YMD,
             --年龄区间为空
             '',
             --年份为空
             '',
             SYSDATE
        FROM SY_SG_O_STAFF A, SY_SG_O_DEPT B
       WHERE A.DEPT_NO = B.DEPT_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_O_EMP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_O_EMP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_O_EMP(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_O_EMP', I_DATA);
  
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_O_EMP X;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_O_EMP X
      (DATA_ID,
       PRO_ORG_NO,
       EMP_NO,
       ORG_NO,
       STAFF_NO,
       NAME,
       GENDER,
       TECH_LEVEL_CODE,
       DEGREE_CODE,
       TITLE_LEVEL_CODE,
       POSITION,
       BRITHDAY,
       AGE_CODE,
       YEAR,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       EMP_NO,
       ORG_NO,
       STAFF_NO,
       NAME,
       GENDER,
       TECH_LEVEL_CODE,
       DEGREE_CODE,
       TITLE_LEVEL_CODE,
       POSITION,
       BRITHDAY,
       AGE_CODE,
       YEAR,
       TIME_STAMP
        FROM DW_O_EMP A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_O_EMP  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_O_EMP  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

END PKG_YWGK_DW_AR;
/
