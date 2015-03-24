CREATE OR REPLACE PACKAGE PKG_YWGK_DW_DSM IS

  --单位日采集成功率暂时不用，注释掉
  /*\**
  过程名称：P_ENT_DW_R_COLL_SUCCR_DAY/单位日采集成功率入口过程
  作者：李培
  编写日期：2014-03-08 14:00:37
  过程描述：单位日采集成功率入口过程,被数据库JOB调用
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日期 
  修改人:
  修改日期:
  **\
  PROCEDURE P_ENT_DW_R_COLL_SUCCR_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
  
  \**
  过程名称：P_INS_DW_R_COLL_SUCCR_DAY/单位日采集成功率抽取过程
  作者：李培
  编写日期：2014-03-08 15:02:39
  过程描述：单位日采集成功率抽取过程,被P_ENT_DW_R_COLL_SUCCR_DAY调用，本过程运行后插入数据到管理库OMAC的DW_R_COLL_SUCCR_DAY表中
  **\
  PROCEDURE P_INS_DW_R_COLL_SUCCR_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
  
  \**
  过程名称：P_ETL_DW_R_COLL_SUCCR_DAY/单位日采集成功率推送过程
  作者：李培
  编写日期：2014-03-08 17:00:55
  过程描述：单位日采集成功率推送过程,抽取过程被入口过程调用后，从管理库OMAC的结果表中取数据插入到稽查库OMAC用户下的DW_R_COLL_SUCCR_DAY表
  **\
  PROCEDURE P_ETL_DW_R_COLL_SUCCR_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);*/

  /**
  过程名称：P_ENT_DW_R_COLL_SUCCR_DAY/单位月采集成功率入口过程
  作者：李培
  编写日期：2014-03-08 14:00:37
  过程描述：单位月采集成功率入口过程,被数据库JOB调用
  统计频度：按月抽取, I_DATA 为要进行数据的统计的日期 
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_R_COLL_SUCCR_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：P_INS_DW_R_COLL_SUCCR_MON/单位月采集成功率抽取过程
  作者：李培
  编写日期：2014-03-08 15:02:39
  过程描述：单位月采集成功率抽取过程,被P_ENT_DW_R_COLL_SUCCR_MON调用，本过程运行后插入数据到管理库OMAC的DW_R_COLL_SUCCR_MON表中
  **/
  PROCEDURE P_INS_DW_R_COLL_SUCCR_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：P_ETL_DW_R_COLL_SUCCR_MON/单位月采集成功率推送过程
  作者：李培
  编写日期：2014-03-08 17:00:55
  过程描述：单位月采集成功率推送过程,抽取过程被入口过程调用后，从管理库OMAC的结果表中取数据插入到稽查库OMAC用户下的DW_R_COLL_SUCCR_MON表
  **/
  PROCEDURE P_ETL_DW_R_COLL_SUCCR_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：P_ENT_DW_R_INTEL_METER_INFO/月度智能电表信息
  作者：李培
  编写日期：2014-03-08 14:00:37
  过程描述：月度智能电表信息入口过程,被数据库JOB调用
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日期 
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_R_INTEL_METER_INFO(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_ins_dw_r_intel_meter_info/月度智能电表信息抽取过程
  作者：李培
  编写日期：2014-03-08 15:02:39
  过程描述：月度智能电表信息抽取过程,被P_ENT_DW_R_INTEL_METER_INFO调用，本过程运行后插入数据到管理库OMAC的DW_R_INTEL_METER_INFO表中
  **/
  PROCEDURE P_INS_DW_R_INTEL_METER_INFO(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_etl_dw_r_intel_meter_info/月度智能电表信息推送过程
  作者：李培
  编写日期：2014-03-08 17:00:55
  过程描述：月度智能电表信息推送过程,抽取过程被入口过程调用后，从管理库OMAC的结果表中取数据插入到稽查库OMAC用户下的DW_R_INTEL_METER_INFO表
  **/
  PROCEDURE P_ETL_DW_R_INTEL_METER_INFO(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_ent_dw_r_gate_coll_cove/月度关口采集覆盖情况
  作者：李培
  编写日期：2014-03-08 14:00:37
  过程描述：月度关口采集覆盖情况入口过程,被数据库JOB调用
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日期 
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_R_GATE_COLL_COVE(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_ins_dw_r_gate_coll_cove/月度关口采集覆盖情况抽取过程
  作者：李培
  编写日期：2014-03-08 15:02:39
  过程描述：月度关口采集覆盖情况抽取过程,被P_ENT_DW_R_INTEL_METER_INFO调用，本过程运行后插入数据到管理库OMAC的dw_r_gate_coll_cove表中
  **/
  PROCEDURE P_INS_DW_R_GATE_COLL_COVE(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_etl_dw_r_gate_coll_cove/月度关口采集覆盖情况推送过程
  作者：李培
  编写日期：2014-03-08 17:00:55
  过程描述：月度关口采集覆盖情况推送过程,抽取过程被入口过程调用后，从管理库OMAC的结果表中取数据插入到稽查库OMAC用户下的dw_r_gate_coll_cove表
  **/
  PROCEDURE P_ETL_DW_R_GATE_COLL_COVE(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_ent_dw_r_cons_coll_cover/月度单位用户采集覆盖情况
  作者：李培
  编写日期：2014-03-08 14:00:37
  过程描述：月度单位用户采集覆盖情况入口过程,被数据库JOB调用
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日期 
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_R_CONS_COLL_COVER(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_ins_dw_r_cons_coll_cover/月度单位用户采集覆盖情况抽取过程
  作者：李培
  编写日期：2014-03-08 15:02:39
  过程描述：月度单位用户采集覆盖情况抽取过程,被P_ENT_DW_R_INTEL_METER_INFO调用，本过程运行后插入数据到管理库OMAC的dw_r_cons_coll_cover表中
  **/
  PROCEDURE P_INS_DW_R_CONS_COLL_COVER(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_etl_dw_r_cons_coll_cover/月度单位用户采集覆盖情况推送过程
  作者：李培
  编写日期：2014-03-08 17:00:55
  过程描述：月度单位用户采集覆盖情况推送过程,抽取过程被入口过程调用后，从管理库OMAC的结果表中取数据插入到稽查库OMAC用户下的dw_r_cons_coll_cover表
  **/
  PROCEDURE P_ETL_DW_R_CONS_COLL_COVER(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_ent_dw_r_coll_coverage/月度单位营业户采集覆盖情况
  作者：李培
  编写日期：2014-03-08 14:00:37
  过程描述：月度单位营业户采集覆盖情况入口过程,被数据库JOB调用
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日期 
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_R_COLL_COVERAGE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_ins_dw_r_coll_coverage/月度单位营业户采集覆盖情况抽取过程
  作者：李培
  编写日期：2014-03-08 15:02:39
  过程描述：月度单位营业户采集覆盖情况抽取过程,被P_ENT_DW_R_INTEL_METER_INFO调用，本过程运行后插入数据到管理库OMAC的dw_r_coll_coverage表中
  **/
  PROCEDURE P_INS_DW_R_COLL_COVERAGE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_etl_dw_r_coll_coverage/月度单位营业户采集覆盖情况推送过程
  作者：李培
  编写日期：2014-03-08 17:00:55
  过程描述：月度单位营业户采集覆盖情况推送过程,抽取过程被入口过程调用后，从管理库OMAC的结果表中取数据插入到稽查库OMAC用户下的dw_r_coll_coverage表
  **/
  PROCEDURE P_ETL_DW_R_COLL_COVERAGE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_ent_dw_r_coll_master/月度关口采集覆盖情况
  作者：李培
  编写日期：2014-03-08 14:00:37
  过程描述：采集主站运行情况入口过程,被数据库JOB调用
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日期 
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_R_COLL_MASTER(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_ins_dw_r_coll_master/采集主站运行情况抽取过程
  作者：李培
  编写日期：2014-03-08 15:02:39
  过程描述：采集主站运行情况抽取过程,被P_ENT_DW_R_INTEL_METER_INFO调用，本过程运行后插入数据到管理库OMAC的dw_r_coll_maste表中
  **/
  PROCEDURE P_INS_DW_R_COLL_MASTER(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_etl_dw_r_coll_master/采集主站运行情况推送过程
  作者：李培
  编写日期：2014-03-08 17:00:55
  过程描述：采集主站运行情况推送过程,抽取过程被入口过程调用后，从管理库OMAC的结果表中取数据插入到稽查库OMAC用户下的dw_r_coll_maste表
  **/
  PROCEDURE P_ETL_DW_R_COLL_MASTER(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  /**
   过程名称：P_ENT_DW_R_PA_CONTROL_MON/单位月费控覆盖情况入口过程
  作者：chenyulian
  编写日期：2014-03-07 10:37
  过程描述：单位月费控覆盖情况入口过程,被数据库JOB调用 
  
  统计频度：按月抽取, I_DATA 为要进行数据的统计的月份 
  **/
  PROCEDURE P_ENT_DW_R_PA_CONTROL_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：P_INS_DW_R_PA_CONTROL_MON/单位月费控覆盖情况抽取过程
  作者：chenyulian
  编写日期：2014-03-07 10:37
  过程描述：单位月费控覆盖情况抽取过程,被P_ENT_DW_R_PA_CONTROL_MON调用，本过程运行后插入数据到管理库OMAC的DW_R_PA_CONTROL_MON表中
  */
  PROCEDURE P_INS_DW_R_PA_CONTROL_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：P_ETL_DW_R_PA_CONTROL_MON/单位月费控覆盖情况推送过程
  作者：chenyulian
  编写日期：2014-03-07 10:37
  过程描述：单位月费控覆盖情况推送过程,抽取过程被入口过程调用后，从管理库OMAC的结果表中取数据插入到稽查库OMAC用户下的DW_R_PA_CONTROL_MON表
  */
  PROCEDURE P_ETL_DW_R_PA_CONTROL_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_ent_DW_R_AUTO_CALC_MON/月度自动化抄表核算应用情况
  作者：李培
  编写日期：2014-03-08 14:00:37
  过程描述：月度自动化抄表核算应用情况入口过程,被数据库JOB调用
  统计频度：按日抽取, I_DATA 为要进行数据的统计的日期 
  修改人:
  修改日期:
  **/
  PROCEDURE P_ENT_DW_R_AUTO_CALC_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_ins_DW_R_AUTO_CALC_MON/月度自动化抄表核算应用情况抽取过程
  作者：李培
  编写日期：2014-03-08 15:02:39
  过程描述：月度自动化抄表核算应用情况抽取过程,被P_ENT_DW_R_INTEL_METER_INFO调用，本过程运行后插入数据到管理库OMAC的DW_R_AUTO_CALC_MON表中
  **/
  PROCEDURE P_INS_DW_R_AUTO_CALC_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：p_etl_DW_R_AUTO_CALC_MON/月度自动化抄表核算应用情况推送过程
  作者：李培
  编写日期：2014-03-08 17:00:55
  过程描述：月度自动化抄表核算应用情况推送过程,抽取过程被入口过程调用后，从管理库OMAC的结果表中取数据插入到稽查库OMAC用户下的DW_R_AUTO_CALC_MON表
  **/
  PROCEDURE P_ETL_DW_R_AUTO_CALC_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：P_ENT_DW_BM_TGPQ_DAY/营销公变日冻结电量情况,每天16点运行
  作者：姜友德
  编写日期：2014-10-03 00:02:55
  过程描述：每日16点运行，从每日12:00采集系统推送过来的采集公变日冻结电量情况中获取.
  **/
  PROCEDURE P_ENT_DW_BM_TGPQ_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_BM_TGPQ_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_BM_TGPQ_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：P_ENT_DW_BM_CONSPQ_DAY/营销用户日冻结电量情况,每天16点运行
  作者：姜友德
  编写日期：2014-10-03 00:44:25
  过程描述：每日16点运行，从每日12:00采集系统推送过来的采集用户日冻结电量情况获取.
  **/
  PROCEDURE P_ENT_DW_BM_CONSPQ_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_BM_CONSPQ_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_BM_CONSPQ_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  /**
  过程名称：P_ENT_CP_EXP_DAY/采集日冻结电量异常情况,每天16点运行
  作者：姜友德
  编写日期：2014-10-03 02:31:10
  过程描述：每日16点运行，营销将采集提供的对应不上户号与台区ID信息的数据写入，传递总部业务管控平台数据仓库和采集系统。
  **/
  PROCEDURE P_ENT_CP_EXP_DAY(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_CP_EXP_DAY(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_CP_EXP_DAY(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ENT_DW_BM_CONSREAD_DAY(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_BM_CONSREAD_DAY(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_BM_CONSREAD_DAY(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
END PKG_YWGK_DW_DSM;
/
CREATE OR REPLACE PACKAGE BODY PKG_YWGK_DW_DSM IS

  /*PROCEDURE P_ENT_DW_R_COLL_SUCCR_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_COLL_SUCCR_DAY', V_YMD);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_R_COLL_SUCCR_DAY表
    P_INS_DW_R_COLL_SUCCR_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_R_COLL_SUCCR_DAY表取数据插入到稽查库OMAC用户下的DW_R_COLL_SUCCR_DAY表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_R_COLL_SUCCR_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_R_COLL_SUCCR_DAY A
         SET A.PS_BUSI_AREA_CODE = (SELECT \*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*\
                                     B.BUSI_AREA_STAT_CODE
                                      FROM SY_OM_DW_O_ORG_CONTRAST B
                                     WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE A.STAT_YMD = V_YMD;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_R_COLL_SUCCR_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_R_COLL_SUCCR_DAY  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  
  PROCEDURE P_INS_DW_R_COLL_SUCCR_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --当月
    --V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    --统计日期
    V_LT_DAY VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_R_COLL_SUCCR_DAY', I_DATA);
    --V_LT_DAY := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --删除原有的抽取的记录，维度为日
    DELETE FROM DW_R_COLL_SUCCR_DAY X WHERE X.STAT_YMD = V_LT_DAY;
    --开始数据统计,插入到稽查管理库OMAC的DW_R_COLL_SUCCR_DAY
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      INSERT INTO DW_R_COLL_SUCCR_DAY VALUE
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         CONS_SORT_CODE,
         USAGE_TYPE_CODE,
         ELEC_TYPE_CODE,
         MD_TYPE_CODE,
         TERMINAL_TYPE_CODE,
         VOLT_CODE,
         SHOULD_COLL_AMOUNT,
         -- SUCC,
         -- ONETIME_COLL_NUM,
         -- TERMINA_OFFLINE_NUM,
         RUN_TERMINAL_COUNT,
         TIME_STAMP)
        SELECT \*+parallel(B 4) parallel(C 4) parallel(D 4) parallel(E 4) parallel(F 4) *\
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
         V_PRO_ORG_NO,
         C.ORG_NO,
         '',
         V_LT_DAY,
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', B.CONS_SORT_CODE) CONS_SORT_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE', C.USAGE_TYPE_CODE) USAGE_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('MD_TYPE_CODE', C.MD_TYPE_CODE) MD_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('TERMINAL_TYPE_CODE',
                                    D.TERMINAL_TYPE_CODE) TERMINAL_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', C.VOLT_CODE) VOLT_CODE,
         COUNT(DISTINCT D.TERMINAL_ID),
         COUNT(DISTINCT D.TERMINAL_ID),
         SYSDATE
          FROM SY_SG_C_CONS         B,
               SY_SG_C_MP           C,
               SY_SG_R_TMNL_RUN     D,
               SY_SG_R_CP           E,
               SY_SG_R_CP_CONS_RELA F
         WHERE B.ORG_NO = C.ORG_NO
           AND B.ORG_NO = D.ORG_NO
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.CONS_ID = C.CONS_ID
           AND B.CONS_ID = F.CONS_ID
           AND D.CP_NO = F.CP_NO
           AND D.CP_NO = E.CP_NO
           AND C.TYPE_CODE = '01'
           AND C.STATUS_CODE <> '04'
           AND TO_CHAR(D.RUN_DATE, 'YYYYMMDD') <= V_LT_DAY
         GROUP BY C.ORG_NO,
                  B.CONS_SORT_CODE,
                  C.USAGE_TYPE_CODE,
                  B.ELEC_TYPE_CODE,
                  C.MD_TYPE_CODE,
                  D.TERMINAL_TYPE_CODE,
                  C.VOLT_CODE;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_R_COLL_SUCCR_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_R_COLL_SUCCR_DAY  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  
  PROCEDURE P_ETL_DW_R_COLL_SUCCR_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当日
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_COLL_SUCCR_DAY', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_R_COLL_SUCCR_DAY X WHERE X.STAT_YMD = V_YMD;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_R_COLL_SUCCR_DAY VALUE
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       CONS_SORT_CODE,
       USAGE_TYPE_CODE,
       ELEC_TYPE_CODE,
       MD_TYPE_CODE,
       TERMINAL_TYPE_CODE,
       VOLT_CODE,
       SHOULD_COLL_AMOUNT,
       SUCC,
       ONETIME_COLL_NUM,
       TERMINA_OFFLINE_NUM,
       RUN_TERMINAL_COUNT,
       TIME_STAMP)
      SELECT \*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*\
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YMD,
       CONS_SORT_CODE,
       USAGE_TYPE_CODE,
       ELEC_TYPE_CODE,
       MD_TYPE_CODE,
       TERMINAL_TYPE_CODE,
       VOLT_CODE,
       SHOULD_COLL_AMOUNT,
       SUCC,
       ONETIME_COLL_NUM,
       TERMINA_OFFLINE_NUM,
       RUN_TERMINAL_COUNT,
       TIME_STAMP
        FROM DW_R_COLL_SUCCR_DAY A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YMD = V_YMD
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_R_COLL_SUCCR_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_R_COLL_SUCCR_DAY  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;*/

  PROCEDURE P_ENT_DW_R_COLL_SUCCR_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_COLL_SUCCR_MON', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_R_COLL_SUCCR_MON表
    P_INS_DW_R_COLL_SUCCR_MON(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_R_COLL_SUCCR_MON表取数据插入到稽查库OMAC用户下的DW_R_COLL_SUCCR_MON表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_R_COLL_SUCCR_MON(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_R_COLL_SUCCR_MON A
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
    OUT_MSG  := '执行 P_ENT_DW_R_COLL_SUCCR_MON  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_R_COLL_SUCCR_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_COLL_SUCCR_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --当月
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_R_COLL_SUCCR_MON', I_DATA);
    --删除原有的抽取的记录
    DELETE FROM DW_R_COLL_SUCCR_MON X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_R_COLL_SUCCR_MON
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    INSERT INTO DW_R_COLL_SUCCR_MON VALUE
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       USAGE_TYPE_CODE,
       ELEC_TYPE_CODE,
       MD_TYPE_CODE,
       TERMINAL_TYPE_CODE,
       VOLT_CODE,
       SHOULD_COLL_AMOUNT,
       SUCC,
       RUN_TERMINAL_COUNT,
       TIME_STAMP)
      SELECT /*+parallel(A 4)*/
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       V_PRO_ORG_NO,
       A.ORG_NO,
       '',
       V_YM,
       PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE) CONS_SORT_CODE,
       PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE', A.USAGE_TYPE_CODE) USAGE_TYPE_CODE,
       PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', A.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
       PKG_GK_PUBLIC.F_TRANS_CODE('MD_TYPE_CODE', A.MD_TYPE_CODE) MD_TYPE_CODE,
       PKG_GK_PUBLIC.F_TRANS_CODE('TERMINAL_TYPE_CODE',
                                  A.TERMINAL_TYPE_CODE) TERMINAL_TYPE_CODE,
       PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
       A.SHOULD_COLL_AMOUNT,
       A.SUCC,
       A.RUN_TERMINAL_COUNT,
       SYSDATE
        FROM INS_DW_R_COLL_SUCCR_MON A
       WHERE A.STAT_YM = V_YM;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_R_COLL_SUCCR_MON  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_R_COLL_SUCCR_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_COLL_SUCCR_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_COLL_SUCCR_MON', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为日
    DELETE FROM SY_OM_DW_R_COLL_SUCCR_MON X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_R_COLL_SUCCR_MON VALUE
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       USAGE_TYPE_CODE,
       ELEC_TYPE_CODE,
       MD_TYPE_CODE,
       TERMINAL_TYPE_CODE,
       VOLT_CODE,
       SHOULD_COLL_AMOUNT,
       SUCC,
       RUN_TERMINAL_COUNT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       USAGE_TYPE_CODE,
       ELEC_TYPE_CODE,
       MD_TYPE_CODE,
       TERMINAL_TYPE_CODE,
       VOLT_CODE,
       SHOULD_COLL_AMOUNT,
       SUCC,
       RUN_TERMINAL_COUNT,
       TIME_STAMP
        FROM DW_R_COLL_SUCCR_MON A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_R_COLL_SUCCR_MON  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_R_COLL_SUCCR_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_INTEL_METER_INFO(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_INTEL_METER_INFO', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_R_INTEL_METER_INFO表
    P_INS_DW_R_INTEL_METER_INFO(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_R_INTEL_METER_INFO表取数据插入到稽查库OMAC用户下的DW_R_INTEL_METER_INFO表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_R_INTEL_METER_INFO(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_R_INTEL_METER_INFO A
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
    OUT_MSG  := '执行 P_ENT_DW_R_INTEL_METER_INFO  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_R_INTEL_METER_INFO  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_INTEL_METER_INFO(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_Y        VARCHAR2(6) := SUBSTR(I_DATA, 1, 4);
    BEG_V_DATE DATE := TO_DATE(V_YM || '01', 'yyyymmdd'); --当月1日
    --end_v_date date := last_day(beg_v_date); --当月最后一天
    Y_V_DATE DATE := TO_DATE(V_Y || '0101', 'yyyymmdd'); --当年1月1日
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_R_INTEL_METER_INFO',
                                        I_DATA);
    -- DELETE FROM DW_R_INTEL_METER_INFO WHERE STAT_YM = V_YM;
    /*FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                          1,
                          DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
     FROM SY_SG_O_ORG
    WHERE ORG_NO <> '00000'
      AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP*/
    DELETE FROM DW_R_INTEL_METER_INFO WHERE STAT_YM = V_YM;
    INSERT INTO DW_R_INTEL_METER_INFO
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       INST_METER_NUM,
       YEAR_INSTALL_COML_NUM,
       YEAR_PLAN_INSTALL_NUM,
       RUN_INTEL_METER_COUNT,
       RUN_METER_COUNT,
       TIME_STAMP)
      SELECT /*+parallel(A 4) parallel(B 4)*/
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
       V_PRO_ORG_NO,
       A.ORG_NO,
       '',
       V_YM,
       0,
       0,
       '',
       SUM(CASE
             WHEN B.SORT_CODE = '10' THEN
              1
             ELSE
              0
           END) RUN_INTEL_METER_COUNT,
       COUNT(1) RUN_METER_COUNT,
       SYSDATE
        FROM SY_SG_C_METER A, SY_SG_D_METER B
       WHERE A.INST_DATE < ADD_MONTHS(BEG_V_DATE, 1)
         AND A.METER_ID = B.METER_ID
       GROUP BY A.ORG_NO;
    --  COMMIT;
    /*    
    UPDATE DW_R_INTEL_METER_INFO A
       SET A.INST_METER_NUM       =
           (SELECT \*+ index(c,PK_C_MP)*\
             COUNT(1)
              FROM SY_SG_ARC_S_DEV_IR B, SY_SG_C_MP C
             WHERE B.EQUIP_TYPE_CODE = '01'
               AND B.TYPE_CODE = '01'
               AND IR_DATE >= beg_v_date
               AND IR_DATE < add_months(beg_v_date, 1)
               AND B.MP_ID = C.MP_ID
               AND C.ORG_NO = A.ORG_NO),
           A.YEAR_INSTALL_COML_NUM =
           (SELECT \*+ index(c,PK_C_MP)*\
             COUNT(1)
              FROM SY_SG_ARC_S_DEV_IR B, SY_SG_C_MP C
             WHERE B.EQUIP_TYPE_CODE = '01'
               AND B.TYPE_CODE = '01'
               AND IR_DATE >= y_v_date
               AND IR_DATE < add_months(beg_v_date, 1)
               AND B.MP_ID = C.MP_ID
               AND C.ORG_NO = A.ORG_NO)
     WHERE A.STAT_YM = V_YM
       AND A.ORG_NO LIKE TSS.ORG_NO || '%';*/
  
    COMMIT;
    FOR CUR IN (SELECT ORG_NO,
                       COUNT(XXX.MP_ID) Y_NUM,
                       SUM(CASE
                             WHEN XXX.IR_DATE >= BEG_V_DATE THEN
                              1
                             ELSE
                              0
                           END) M_MUN
                  FROM (SELECT B.MP_ID,
                               B.IR_DATE,
                               (SELECT C.ORG_NO
                                  FROM SY_SG_C_MP C
                                 WHERE B.MP_ID = C.MP_ID) ORG_NO
                          FROM SY_SG_ARC_S_DEV_IR B
                         WHERE B.EQUIP_TYPE_CODE = '01'
                           AND B.TYPE_CODE = '01'
                           AND B.IR_DATE >= Y_V_DATE
                           AND B.IR_DATE < ADD_MONTHS(BEG_V_DATE, 1)) XXX
                 GROUP BY XXX.ORG_NO) LOOP
      UPDATE DW_R_INTEL_METER_INFO
         SET INST_METER_NUM = CUR.M_MUN, YEAR_INSTALL_COML_NUM = CUR.Y_NUM
       WHERE STAT_YM = V_YM
         AND ORG_NO = CUR.ORG_NO;
      COMMIT;
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_R_INTEL_METER_INFO  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_R_INTEL_METER_INFO  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_INTEL_METER_INFO(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_INTEL_METER_INFO',
                                        I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_R_INTEL_METER_INFO X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_R_INTEL_METER_INFO X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       INST_METER_NUM,
       YEAR_INSTALL_COML_NUM,
       YEAR_PLAN_INSTALL_NUM,
       RUN_INTEL_METER_COUNT,
       RUN_METER_COUNT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       INST_METER_NUM,
       YEAR_INSTALL_COML_NUM,
       YEAR_PLAN_INSTALL_NUM,
       RUN_INTEL_METER_COUNT,
       RUN_METER_COUNT,
       TIME_STAMP
        FROM DW_R_INTEL_METER_INFO A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_R_INTEL_METER_INFO  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_R_INTEL_METER_INFO  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_GATE_COLL_COVE(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_GATE_COLL_COVE', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_R_GATE_COLL_COVE表
    P_INS_DW_R_GATE_COLL_COVE(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_R_GATE_COLL_COVE表取数据插入到稽查库OMAC用户下的DW_R_GATE_COLL_COVE表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_R_GATE_COLL_COVE(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_R_GATE_COLL_COVE A
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
    OUT_MSG  := '执行 P_ENT_DW_R_GATE_COLL_COVE  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_R_GATE_COLL_COVE  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_GATE_COLL_COVE(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    BEG_V_DATE DATE := TO_DATE(V_YM || '01', 'yyyymmdd'); --当月1日
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_R_GATE_COLL_COVE', I_DATA);
    --DELETE FROM DW_R_GATE_COLL_COVE WHERE STAT_YM = V_YM;
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      DELETE FROM DW_R_GATE_COLL_COVE
       WHERE STAT_YM = V_YM
         AND ORG_NO LIKE TSS.ORG_NO || '%';
      INSERT INTO DW_R_GATE_COLL_COVE
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         USAGE_TYPE_CODE,
         AMMETER_SORT,
         AMMETER_TYPE_CODE,
         VOLT_CODE,
         WIRING_MODE,
         MD_TYPE_CODE,
         GATE_NUM,
         UNIFIED_FLAG,
         COLL_COVE_NUM,
         TIME_STAMP)
        SELECT /*+parallel(A 4) parallel(B 4) parallel(C 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         '',
         V_YM,
         PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE', A.USAGE_TYPE_CODE) USAGE_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_SORT', B.SORT_CODE) AMMETER_SORT,
         PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_TYPE_CODE', B.TYPE_CODE) AMMETER_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('WIRING_MODE', B.WIRING_MODE) WIRING_MODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('MD_TYPE_CODE', A.MD_TYPE_CODE) MD_TYPE_CODE,
         COUNT(DISTINCT A.MP_ID) AS GATE_NUM,
         '',
         COUNT((SELECT TT.MP_ID
                 FROM SGPM.R_CP_MP_RELA TT
                WHERE TT.MP_ID = A.MP_ID
                  AND ROWNUM = 1)) AS COLL_COVE_NUM,
         SYSDATE
          FROM SY_SG_C_MP A, SY_SG_D_METER B, SY_SG_C_METER_MP_RELA C
         WHERE A.TYPE_CODE <> '01'
           AND A.STATUS_CODE <> '04'
           AND A.MP_ID = C.MP_ID
           AND B.METER_ID = C.METER_ID
           AND A.RUN_DATE < ADD_MONTHS(BEG_V_DATE, 1)
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY A.ORG_NO,
                  A.USAGE_TYPE_CODE,
                  B.SORT_CODE,
                  B.TYPE_CODE,
                  A.VOLT_CODE,
                  B.WIRING_MODE,
                  A.MD_TYPE_CODE;
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_R_GATE_COLL_COVE  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_R_GATE_COLL_COVE  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_GATE_COLL_COVE(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_GATE_COLL_COVE', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_R_GATE_COLL_COVE X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_R_GATE_COLL_COVE X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       USAGE_TYPE_CODE,
       AMMETER_SORT,
       AMMETER_TYPE_CODE,
       VOLT_CODE,
       WIRING_MODE,
       MD_TYPE_CODE,
       GATE_NUM,
       UNIFIED_FLAG,
       COLL_COVE_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       USAGE_TYPE_CODE,
       AMMETER_SORT,
       AMMETER_TYPE_CODE,
       VOLT_CODE,
       WIRING_MODE,
       MD_TYPE_CODE,
       GATE_NUM,
       UNIFIED_FLAG,
       COLL_COVE_NUM,
       TIME_STAMP
        FROM DW_R_GATE_COLL_COVE A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_R_GATE_COLL_COVE  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_R_GATE_COLL_COVE  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_CONS_COLL_COVER(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_CONS_COLL_COVER', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_R_CONS_COLL_COVER表
    P_INS_DW_R_CONS_COLL_COVER(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_R_CONS_COLL_COVER表取数据插入到稽查库OMAC用户下的DW_R_CONS_COLL_COVER表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_R_CONS_COLL_COVER(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_R_CONS_COLL_COVER A
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
    OUT_MSG  := '执行 P_ENT_DW_R_CONS_COLL_COVER  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_R_CONS_COLL_COVER  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_CONS_COLL_COVER(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    BEG_V_DATE DATE := TO_DATE(V_YM || '01', 'yyyymmdd'); --当月1日
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_R_CONS_COLL_COVER',
                                        I_DATA);
    -- DELETE FROM DW_R_CONS_COLL_COVER WHERE STAT_YM = V_YM;
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      DELETE FROM DW_R_CONS_COLL_COVER
       WHERE STAT_YM = V_YM
         AND ORG_NO LIKE TSS.ORG_NO || '%';
      INSERT INTO DW_R_CONS_COLL_COVER
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ELEC_TYPE_CODE,
         CONS_SORT_CODE,
         VOLT_CODE,
         NOTCOLL_CC,
         COLL_CC,
         CONS_RUN_NUM,
         TIME_STAMP)
        SELECT /*+parallel(D 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.ORG_NO,
         '',
         V_YM,
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', D.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', D.CONS_SORT_CODE) CONS_SORT_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', D.VOLT_CODE) VOLT_CODE,
         COUNT(CONS_ID) -
         COUNT((SELECT CONS_ID
                 FROM SY_SG_R_TMNL_RUN AA, SY_SG_R_CP_CONS_RELA E
                WHERE AA.CP_NO = E.CP_NO
                  AND E.CONS_ID = D.CONS_ID
                  AND AA.RUN_DATE < ADD_MONTHS(BEG_V_DATE, 1)
                     --AND AA.STATUS_CODE = '01'  ---统计覆盖率不管终端是否投运都算覆盖
                  AND ROWNUM = 1)) AS NOTCOLL_CC,
         COUNT((SELECT CONS_ID
                 FROM SY_SG_R_TMNL_RUN AA, SY_SG_R_CP_CONS_RELA E
                WHERE AA.CP_NO = E.CP_NO
                  AND E.CONS_ID = D.CONS_ID
                  AND AA.RUN_DATE < ADD_MONTHS(BEG_V_DATE, 1)
                     -- AND AA.STATUS_CODE = '01' ---统计覆盖率不管终端是否投运都算覆盖
                  AND ROWNUM = 1)) AS COLL_CC,
         COUNT((SELECT CONS_ID
                 FROM SY_SG_R_TMNL_RUN AA, SY_SG_R_CP_CONS_RELA E
                WHERE AA.CP_NO = E.CP_NO
                  AND E.CONS_ID = D.CONS_ID
                  AND AA.RUN_DATE < ADD_MONTHS(BEG_V_DATE, 1)
                  AND AA.STATUS_CODE = '01' ---终端投运状态
                  AND ROWNUM = 1)) AS CONS_RUN_NUM,
         SYSDATE
          FROM SY_SG_C_CONS D
         WHERE EXISTS (SELECT 1 ---只有有实抄计量点的用户才统计
                  FROM SY_SG_C_MP F
                 WHERE D.CONS_ID = F.CONS_ID
                   AND F.ORG_NO = D.ORG_NO
                   AND F.CALC_MODE = '1'
                   AND F.STATUS_CODE <> '04')
           AND D.STATUS_CODE <> '9'
           AND D.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY D.ORG_NO, D.ELEC_TYPE_CODE, D.VOLT_CODE, D.CONS_SORT_CODE;
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_R_CONS_COLL_COVER  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_R_CONS_COLL_COVER  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_CONS_COLL_COVER(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_CONS_COLL_COVER',
                                        I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_R_CONS_COLL_COVER X WHERE X.STAT_YM = V_YM;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_R_CONS_COLL_COVER X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       VOLT_CODE,
       NOTCOLL_CC,
       COLL_CC,
       CONS_RUN_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       VOLT_CODE,
       NOTCOLL_CC,
       COLL_CC,
       CONS_RUN_NUM,
       TIME_STAMP
        FROM DW_R_CONS_COLL_COVER A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_R_CONS_COLL_COVER  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_R_CONS_COLL_COVER  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_COLL_COVERAGE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_COLL_COVERAGE', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_R_COLL_COVERAGE表
    P_INS_DW_R_COLL_COVERAGE(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_R_COLL_COVERAGE表取数据插入到稽查库OMAC用户下的DW_R_COLL_COVERAGE表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_R_COLL_COVERAGE(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_R_COLL_COVERAGE A
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
    OUT_MSG  := '执行 P_ENT_DW_R_COLL_COVERAGE  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_R_COLL_COVERAGE  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_COLL_COVERAGE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    BEG_V_DATE DATE := TO_DATE(V_YM || '01', 'yyyymmdd'); --当月1日
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_R_COLL_COVERAGE', I_DATA);
    --统计截止日期（统计月末）
    --DELETE FROM DW_R_COLL_COVERAGE WHERE STAT_YM = V_YM;
    /*FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                          1,
                          DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
     FROM SY_SG_O_ORG
    WHERE ORG_NO <> '00000'
      AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP*/
    DELETE FROM DW_R_COLL_COVERAGE WHERE STAT_YM = V_YM;
    INSERT INTO DW_R_COLL_COVERAGE
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       USAGE_TYPE_CODE,
       MD_TYPE_CODE,
       WIRING_MODE,
       AMMETER_SORT,
       AMMETER_TYPE_CODE,
       VOLT_CODE,
       BUSI_CC,
       NOTCOLL_BUSI_CC,
       RUN_NUM,
       TIME_STAMP)
      SELECT /*+parallel(A 4) parallel(B 4) parallel(C 4) parallel(D 4)*/
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
       V_PRO_ORG_NO,
       C.ORG_NO,
       '',
       V_YM,
       PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', A.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
       PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE) CONS_SORT_CODE,
       PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE', C.USAGE_TYPE_CODE) USAGE_TYPE_CODE,
       PKG_GK_PUBLIC.F_TRANS_CODE('MD_TYPE_CODE', C.MD_TYPE_CODE) MD_TYPE_CODE,
       PKG_GK_PUBLIC.F_TRANS_CODE('WIRING_MODE', C.WIRING_MODE) WIRING_MODE,
       PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_SORT', D.SORT_CODE) AMMETER_SORT,
       PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_TYPE_CODE', D.TYPE_CODE) AMMETER_TYPE_CODE,
       PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', C.VOLT_CODE) VOLT_CODE,
       COUNT(DISTINCT C.MP_ID) AS BUSI_CC,
       COUNT(DISTINCT C.MP_ID) -
       COUNT((SELECT DISTINCT (C.MP_ID)
               FROM SY_SG_R_TMNL_RUN BB, SGPM.R_CP_MP_RELA CC
              WHERE CC.CP_NO = BB.CP_NO
                AND CC.MP_ID = C.MP_ID
                   --  AND BB.STATUS_CODE = '01'  ---统计覆盖率不管终端是否投运都算覆盖
                AND BB.RUN_DATE < ADD_MONTHS(BEG_V_DATE, 1))) AS NOTCOLL_BUSI_CC,
       COUNT((SELECT DISTINCT (C.MP_ID)
               FROM SY_SG_R_TMNL_RUN BB, SGPM.R_CP_MP_RELA CC
              WHERE CC.CP_NO = BB.CP_NO
                AND CC.MP_ID = C.MP_ID
                AND BB.STATUS_CODE = '01' --终端是运行的  终端运行才算投运
                AND BB.RUN_DATE < ADD_MONTHS(BEG_V_DATE, 1))) AS RUN_NUM,
       SYSDATE
        FROM SY_SG_C_CONS          A,
             SY_SG_C_METER_MP_RELA B,
             SY_SG_C_MP            C,
             SY_SG_D_METER         D
       WHERE B.MP_ID = C.MP_ID
         AND A.CONS_ID = C.CONS_ID
         AND B.METER_ID = D.METER_ID
         AND A.ORG_NO = C.ORG_NO
         AND C.TYPE_CODE = '01'
         AND C.STATUS_CODE <> '04'
         AND C.RUN_DATE < ADD_MONTHS(BEG_V_DATE, 1)
       GROUP BY C.ORG_NO,
                A.ELEC_TYPE_CODE,
                A.CONS_SORT_CODE,
                C.USAGE_TYPE_CODE,
                C.MD_TYPE_CODE,
                C.WIRING_MODE,
                D.SORT_CODE,
                D.TYPE_CODE,
                C.VOLT_CODE;
    COMMIT;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_R_COLL_COVERAGE  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_R_COLL_COVERAGE  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_COLL_COVERAGE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_COLL_COVERAGE', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_R_COLL_COVERAGE X WHERE X.STAT_YM = V_YM;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_R_COLL_COVERAGE X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       USAGE_TYPE_CODE,
       MD_TYPE_CODE,
       WIRING_MODE,
       AMMETER_SORT,
       AMMETER_TYPE_CODE,
       VOLT_CODE,
       BUSI_CC,
       NOTCOLL_BUSI_CC,
       RUN_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       ELEC_TYPE_CODE,
       CONS_SORT_CODE,
       USAGE_TYPE_CODE,
       MD_TYPE_CODE,
       WIRING_MODE,
       AMMETER_SORT,
       AMMETER_TYPE_CODE,
       VOLT_CODE,
       BUSI_CC,
       NOTCOLL_BUSI_CC,
       RUN_NUM,
       TIME_STAMP
        FROM DW_R_COLL_COVERAGE A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_R_COLL_COVERAGE  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_R_COLL_COVERAGE  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_COLL_MASTER(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_COLL_MASTER', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_R_COLL_MASTER表
    P_INS_DW_R_COLL_MASTER(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_R_COLL_MASTER表取数据插入到稽查库OMAC用户下的DW_R_COLL_MASTER表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_R_COLL_MASTER(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_R_COLL_MASTER A
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
    OUT_MSG  := '执行 P_ENT_DW_R_COLL_MASTER  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_R_COLL_MASTER  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_COLL_MASTER(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_R_COLL_MASTER', I_DATA);
    DELETE FROM DW_R_COLL_MASTER WHERE STAT_YM = V_YM;
    INSERT INTO DW_R_COLL_MASTER
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       MAIN_STAT_RUN,
       NORMAL_RUN_LT,
       MAIN_STAT_FAULT,
       TIME_STAMP)
      SELECT /*+parallel(A 4)*/
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
       V_PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       MAIN_STAT_RUN,
       NORMAL_RUN_LT,
       MAIN_STAT_FAULT,
       SYSDATE
        FROM INS_DW_R_COLL_MASTER A
       WHERE STAT_YM = V_YM;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_R_COLL_MASTER  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_R_COLL_MASTER  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_COLL_MASTER(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_COLL_MASTER', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_R_COLL_MASTER X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_R_COLL_MASTER X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       MAIN_STAT_RUN,
       NORMAL_RUN_LT,
       MAIN_STAT_FAULT,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       MAIN_STAT_RUN,
       NORMAL_RUN_LT,
       MAIN_STAT_FAULT,
       TIME_STAMP
        FROM DW_R_COLL_MASTER A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_R_COLL_MASTER  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_R_COLL_MASTER  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_PA_CONTROL_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('DW_R_PA_CONTROL_MON', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_R_PA_CONTROL_MON表
    P_INS_DW_R_PA_CONTROL_MON(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_R_PA_CONTROL_MON表取数据插入到稽查库OMAC用户下的DW_R_PA_CONTROL_MON表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_R_PA_CONTROL_MON(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_R_PA_CONTROL_MON A
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
    OUT_MSG  := '执行 DW_R_PA_CONTROL_MON  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 DW_R_PA_CONTROL_MON  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_PA_CONTROL_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --当月
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    BEG_V_DATE DATE := TO_DATE(V_YM || '01', 'yyyymmdd'); --当月1日
    --本月月初
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --下月月初
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_R_PA_CONTROL_MON', I_DATA);
    --删除原有的抽取的记录，维度为月
    -- DELETE FROM DW_R_PA_CONTROL_MON X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_R_PA_CONTROL_MON
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      DELETE FROM DW_R_PA_CONTROL_MON X
       WHERE X.STAT_YM = V_YM
         AND ORG_NO LIKE TSS.ORG_NO || '%';
      INSERT INTO DW_R_PA_CONTROL_MON X
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         CONS_SORT_CODE,
         ELEC_TYPE_CODE,
         VOLT_CODE,
         CC,
         NOTPACONTROL_CC,
         PACONTROL_CC,
         TIME_STAMP)
      /*
      *增加标准代码转换逻辑,转换采用pkg_gk_public.f_trans_code并增加最外层group by保证函数转换后
      *出现多个相同类型的维度后被汇总,防止出现重复.
      */
        SELECT /*+parallel(N 4) parallel(C 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
         --序列
         V_PRO_ORG_NO PRO_ORG_NO,
         --网省代码
         N.ORG_NO,
         '',
         V_YM,
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', N.CONS_SORT_CODE),
         --用户分类
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', N.ELEC_TYPE_CODE),
         --用电类别
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', N.VOLT_CODE),
         --电压等级 
         COUNT(N.CONS_ID),
         COUNT(N.CONS_ID) - SUM(CASE
                                  WHEN C.PAY_TYPE_CODE = '01' AND C.CTL_MODE = '01' THEN
                                   1
                                  ELSE
                                   0
                                END) NOTPACONTROL_CC,
         SUM(CASE
               WHEN C.PAY_TYPE_CODE = '01' AND C.CTL_MODE = '01' THEN
                1
               ELSE
                0
             END) PACONTROL_CC,
         SYSDATE TIME_STAMP
          FROM SY_SG_C_CONS N, SY_SG_C_OCS_CONS C
         WHERE N.CONS_ID = C.CONS_ID
              --排除考核用电类型 
           AND N.ELEC_TYPE_CODE <> '000'
           AND N.ORG_NO LIKE TSS.ORG_NO || '%'
              --对用户状态进行排除,已用户的立户状态和销户状态为主进行用户状态判断,不再单纯以用户status_code进行判断
           AND N.BUILD_DATE < V_BEGIN_NEXT_MONTH
           AND (N.CANCEL_DATE >= V_BEGIN_MONTH OR
               (N.CANCEL_DATE IS NULL AND N.STATUS_CODE <> '9'))
         GROUP BY N.ORG_NO, N.CONS_SORT_CODE, N.ELEC_TYPE_CODE, N.VOLT_CODE;
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_R_PA_CONTROL_MON  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_R_PA_CONTROL_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_PA_CONTROL_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月SUBSTR
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_PA_CONTROL_MON', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_R_PA_CONTROL_MON X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_R_PA_CONTROL_MON X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       ELEC_TYPE_CODE,
       VOLT_CODE,
       CC,
       NOTPACONTROL_CC,
       PACONTROL_CC,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       ELEC_TYPE_CODE,
       VOLT_CODE,
       CC,
       NOTPACONTROL_CC,
       PACONTROL_CC,
       TIME_STAMP
        FROM DW_R_PA_CONTROL_MON A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_R_PA_CONTROL_MON  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_R_PA_CONTROL_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_AUTO_CALC_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_AUTO_CALC_MON', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_R_AUTO_CALC_MON表
    P_INS_DW_R_AUTO_CALC_MON(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_R_AUTO_CALC_MON表取数据插入到稽查库OMAC用户下的DW_R_AUTO_CALC_MON表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_R_AUTO_CALC_MON(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_R_AUTO_CALC_MON A
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
    OUT_MSG  := '执行 P_ENT_DW_R_AUTO_CALC_MON  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_R_AUTO_CALC_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_AUTO_CALC_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    BEG_V_DATE DATE := TO_DATE(V_YM || '01', 'yyyymmdd'); --当月1日
    --获取网省的单位编码
    V_PRO_ORG_NO  VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_OUT_PRCCODE VARCHAR2(2000) := PKG_GK_PUBLIC.F_TRANS_CODE('DW_R_AUTO_CALC_MON_OUT_PRCCODE',
                                                               'DW_R_AUTO_CALC_MON_OUT_PRCCODE'); -- 这个变量存放的电价码直接过滤 不取值
  BEGIN
    --开始记录日志  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_R_AUTO_CALC_MON', I_DATA);
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      DELETE FROM DW_R_AUTO_CALC_MON
       WHERE STAT_YM = V_YM
         AND ORG_NO LIKE TSS.ORG_NO || '%';
      INSERT INTO DW_R_AUTO_CALC_MON
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         CONS_SORT_CODE,
         COLL_CC,
         AUTO_CALC_CC,
         AUTO_CALC_PQ,
         TIME_STAMP)
        SELECT /*+parallel(A 4) parallel(B 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         '',
         V_YM,
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE),
         COUNT(DISTINCT A.CONS_ID) AS COLL_CC,
         0,
         0,
         SYSDATE
          FROM SY_SG_ARC_E_CONS_SNAP A,
               SY_SG_R_CP_CONS_RELA  B,
               SY_SG_R_TMNL_RUN      C
         WHERE A.CONS_ID = B.CONS_ID
           AND A.YM = V_YM
           AND B.CP_NO = C.CP_NO
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
        --AND C.RUN_DATE < ADD_MONTHS(BEG_V_DATE, 1)
         GROUP BY A.ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             A.CONS_SORT_CODE);
    
      FOR CUR IN (SELECT A.ORG_NO,
                         V_YM AS STAT_YM,
                         COUNT(DISTINCT A.CONS_NO) AS AUTO_CALC_CC,
                         SUM(NVL(B.T_SETTLE_PQ, 0)) AS AUTO_CALC_PQ,
                         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                                    E.CONS_SORT_CODE) AS CONS_SORT_CODE
                    FROM SY_SG_ARC_E_CONS_SNAP A,
                         SY_SG_ARC_E_CONS_PRC_AMT B,
                         SY_SG_E_CAT_PRC C,
                         (SELECT CALC_ID
                            FROM SY_SG_ARC_R_DATA RD
                           WHERE RD.ORG_NO LIKE TSS.ORG_NO || '%'
                             AND RD.AMT_YM = V_YM
                             AND RD.SRC_CODE = '01' --数据来源正常抄表的
                           GROUP BY CALC_ID
                          HAVING COUNT(1) = SUM(DECODE(ACTUAL_MODE, '301', 1, '302', 1, '303', 1, '401', 1, 0)) --记录总数和自动抄表的记录数一致
                          ) D,
                         SY_SG_C_CONS E
                   WHERE A.YM = V_YM
                     AND B.YM = V_YM
                     AND A.ELEC_TYPE_CODE >= '100' --排除考核用户
                     AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND A.CALC_ID = B.CALC_ID
                     AND A.CALC_ID = D.CALC_ID
                     AND A.CONS_ID = E.CONS_ID
                     AND A.CONS_NO = E.CONS_NO
                     AND B.PRC_CODE = C.PRC_CODE
                     AND B.PARA_VN = C.PARA_VN
                     AND C.ELEC_TYPE_CODE >= '100' --排除考核电量
                     AND INSTR(V_OUT_PRCCODE, B.PRC_CODE) <= 0 --排除配置表的电价码
                     AND D.CALC_ID = B.CALC_ID
                   GROUP BY A.ORG_NO,
                            PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                                       E.CONS_SORT_CODE)) LOOP
        UPDATE DW_R_AUTO_CALC_MON K
           SET K.AUTO_CALC_CC = CUR.AUTO_CALC_CC,
               K.AUTO_CALC_PQ = CUR.AUTO_CALC_PQ
         WHERE K.ORG_NO = CUR.ORG_NO
           AND K.STAT_YM = CUR.STAT_YM
           AND K.CONS_SORT_CODE = CUR.CONS_SORT_CODE;
      END LOOP;
      COMMIT;
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_R_AUTO_CALC_MON  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_R_AUTO_CALC_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_AUTO_CALC_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_AUTO_CALC_MON', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_R_AUTO_CALC_MON X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_R_AUTO_CALC_MON X
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       COLL_CC,
       AUTO_CALC_CC,
       AUTO_CALC_PQ,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       COLL_CC,
       AUTO_CALC_CC,
       AUTO_CALC_PQ,
       TIME_STAMP
        FROM DW_R_AUTO_CALC_MON A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_R_AUTO_CALC_MON  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_R_AUTO_CALC_MON  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --营销公变日冻结电量情况,每天16点运行
  PROCEDURE P_ENT_DW_BM_TGPQ_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_BM_TGPQ_DAY', V_YMD);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_BM_TGPQ_DAY表
    P_INS_DW_BM_TGPQ_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_BM_TGPQ_DAY表取数据插入到稽查库OMAC用户下的DW_BM_TGPQ_DAY表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_BM_TGPQ_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_BM_TGPQ_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_DATE = V_YMD;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_BM_TGPQ_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_BM_TGPQ_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_BM_TGPQ_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_BM_TGPQ_DAY', I_DATA);
  
    DELETE FROM DW_BM_TGPQ_DAY WHERE STAT_DATE = V_YMD;
  
    INSERT INTO DW_BM_TGPQ_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_DATE,
       TG_ID,
       TG_NAME,
       FROZEN_TIME,
       DAY_TGPQ,
       SUCC_FLAG,
       REMARK,
       TIME_STAMP)
      SELECT /*PARALLEL(A 4)*/
       A.DATA_ID,
       --采用业务管控配置的网省
       V_PRO_ORG_NO,
       --单位转换，如果采集跟业务管控使用的单位代码相同则不用转换
       PKG_GK_PUBLIC.F_TRANS_CODE('ROLL_ORG_NO', A.ORG_NO),
       '',
       A.STAT_DATE,
       A.TG_ID,
       A.TG_NAME,
       A.FROZEN_TIME,
       A.DAY_TGPQ,
       --采集成功标准,1成功，2失败
       PKG_GK_PUBLIC.F_TRANS_CODE('ROLL_SUCC_FLAG', A.SUCC_FLAG),
       A.REMARK,
       A.TIME_STAMP
        FROM SY_SG_CP_TGPQ_DAY A, SY_SG_G_TG B
       WHERE A.STAT_DATE = V_YMD
         AND A.TG_ID = B.TG_ID;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_BM_TGPQ_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_BM_TGPQ_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_BM_TGPQ_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_BM_TGPQ_DAY', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_BM_TGPQ_DAY A WHERE A.STAT_DATE = V_YMD;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_BM_TGPQ_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_DATE,
       TG_ID,
       TG_NAME,
       FROZEN_TIME,
       DAY_TGPQ,
       SUCC_FLAG,
       REMARK,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_DATE,
       A.TG_ID,
       A.TG_NAME,
       A.FROZEN_TIME,
       A.DAY_TGPQ,
       A.SUCC_FLAG,
       A.REMARK,
       A.TIME_STAMP
        FROM DW_BM_TGPQ_DAY A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_DATE = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_BM_TGPQ_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_BM_TGPQ_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --营销用户日冻结电量情况,每天16点运行
  PROCEDURE P_ENT_DW_BM_CONSPQ_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_BM_CONSPQ_DAY', V_YMD);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_BM_TGPQ_DAY表
    P_INS_DW_BM_CONSPQ_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_BM_TGPQ_DAY表取数据插入到稽查库OMAC用户下的DW_BM_TGPQ_DAY表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_BM_CONSPQ_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_BM_CONSPQ_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_DATE = V_YMD;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_BM_CONSPQ_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_BM_CONSPQ_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_BM_CONSPQ_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_BM_CONSPQ_DAY', I_DATA);
  
    DELETE FROM DW_BM_CONSPQ_DAY WHERE STAT_DATE = V_YMD;
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_BM_CONSPQ_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_DATE,
         CONS_NO,
         CONS_NAME,
         TRADE_CODE,
         INDU_TYPE,
         VOLT_CODE,
         HEC_TRADE_CODE,
         FROZEN_TIME,
         DAY_CONSPQ,
         SUCC_FLAG,
         REMARK,
         TIME_STAMP)
        SELECT /*PARALLEL(A 4)(B 4)*/
         A.DATA_ID,
         --采用业务管控配置的网省
         V_PRO_ORG_NO,
         --单位转换，如果采集跟业务管控使用的单位代码相同则不用转换
         PKG_GK_PUBLIC.F_TRANS_CODE('ROLL_ORG_NO', A.ORG_NO),
         '',
         A.STAT_DATE,
         A.CONS_NO,
         A.CONS_NAME,
         PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE),
         '',
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE),
         PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                    B.HEC_INDUSTRY_CODE),
         A.FROZEN_TIME,
         A.DAY_CONSPQ,
         --采集成功标准,1成功，2失败
         PKG_GK_PUBLIC.F_TRANS_CODE('ROLL_SUCC_FLAG', A.SUCC_FLAG),
         A.REMARK,
         A.TIME_STAMP
          FROM SY_SG_CP_CONSPQ_DAY A, SY_SG_C_CONS B
         WHERE A.STAT_DATE = V_YMD
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.CONS_NO = B.CONS_NO;
    
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_BM_CONSPQ_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_BM_CONSPQ_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_BM_CONSPQ_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_BM_CONSPQ_DAY', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_BM_CONSPQ_DAY A WHERE A.STAT_DATE = V_YMD;
  
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_BM_CONSPQ_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_DATE,
       CONS_NO,
       CONS_NAME,
       TRADE_CODE,
       INDU_TYPE,
       VOLT_CODE,
       HEC_TRADE_CODE,
       FROZEN_TIME,
       DAY_CONSPQ,
       SUCC_FLAG,
       REMARK,
       TIME_STAMP)
      SELECT A.DATA_ID,
             A.PRO_ORG_NO,
             A.ORG_NO,
             B.BUSI_AREA_STAT_CODE,
             A.STAT_DATE,
             A.CONS_NO,
             A.CONS_NAME,
             A.TRADE_CODE,
             A.INDU_TYPE,
             A.VOLT_CODE,
             A.HEC_TRADE_CODE,
             A.FROZEN_TIME,
             A.DAY_CONSPQ,
             A.SUCC_FLAG,
             A.REMARK,
             A.TIME_STAMP
        FROM DW_BM_CONSPQ_DAY A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_DATE = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_BM_CONSPQ_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_BM_CONSPQ_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --采集日冻结电量异常情况,每天16点运行
  PROCEDURE P_ENT_CP_EXP_DAY(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_CP_EXP_DAY', V_YMD);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_BM_TGPQ_DAY表
    P_INS_CP_EXP_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的CP_EXP_DAY表取数据插入到稽查库OMAC用户下的CP_EXP_DAY表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_CP_EXP_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE CP_EXP_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_DATE = V_YMD;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_CP_EXP_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_CP_EXP_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_CP_EXP_DAY(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_CP_EXP_DAY', I_DATA);
  
    DELETE FROM CP_EXP_DAY WHERE STAT_DATE = V_YMD;
  
    --在采集中存在但是在营销内不存在的台区
    INSERT INTO CP_EXP_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_DATE,
       DATA_FLAG,
       DATA_NO,
       FROZEN_TIME,
       CP_PQ,
       TIME_STAMP)
      SELECT /*PARALLEL(A 4)(B 4)*/
       A.DATA_ID,
       V_PRO_ORG_NO,
       --由于匹配补上的台区可能是单位不对所以异常表中单位不转换
       A.ORG_NO,
       '',
       A.STAT_DATE,
       --02表示台区,
       '02',
       A.TG_ID,
       A.FROZEN_TIME,
       A.DAY_TGPQ,
       A.TIME_STAMP
        FROM SY_SG_CP_TGPQ_DAY A, SY_SG_G_TG B
       WHERE A.STAT_DATE = V_YMD
         AND A.TG_ID = B.TG_ID(+)
         AND B.TG_ID IS NULL;
  
    /*
    INSERT INTO CP_EXP_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_DATE,
       DATA_FLAG,
       DATA_NO,
       FROZEN_TIME,
       CP_PQ,
       TIME_STAMP)
      SELECT /*PARALLEL(A 4)(B 4)*/
    /*A.DATA_ID,
    V_PRO_ORG_NO,
    --由于匹配补上的台区可能是单位不对所以异常表中单位不转换
    A.ORG_NO,
    '',
    A.STAT_DATE,
    --02表示台区,
    '01',
    A.CONS_NO,
    A.FROZEN_TIME,
    A.DAY_CONSPQ,
    A.TIME_STAMP
     FROM FROM SY_SG_CP_CONSPQ_DAY A, SY_SG_C_CONS B
    WHERE A.STAT_DATE = V_YMD
      AND A.CONS_NO = B.CONS_NO(+)
      AND B.CONS_NO IS NULL;
      */
  
    --在采集中存在但是在营销内不存在的用户,由于无法使用分区速度会很慢,可采用下面的NOT EXITS方式    
    INSERT INTO CP_EXP_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_DATE,
       DATA_FLAG,
       DATA_NO,
       FROZEN_TIME,
       CP_PQ,
       TIME_STAMP)
      SELECT /*PARALLEL(A 4)*/
       A.DATA_ID,
       V_PRO_ORG_NO,
       --由于匹配补上的台区可能是单位不对所以异常表中单位不转换
       A.ORG_NO,
       '',
       A.STAT_DATE,
       --02表示台区,
       '01',
       A.CONS_NO,
       A.FROZEN_TIME,
       A.DAY_CONSPQ,
       A.TIME_STAMP
        FROM SY_SG_CP_CONSPQ_DAY A
       WHERE A.STAT_DATE = V_YMD
         AND NOT EXISTS (SELECT /*PARALLEL(B 8)*/
               1
                FROM SY_SG_C_CONS B
               WHERE B.CONS_NO = A.CONS_NO);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_CP_EXP_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_CP_EXP_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_CP_EXP_DAY(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_CP_EXP_DAY', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_CP_EXP_DAY A WHERE A.STAT_DATE = V_YMD;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_CP_EXP_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_DATE,
       DATA_FLAG,
       DATA_NO,
       FROZEN_TIME,
       CP_PQ,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_DATE,
       A.DATA_FLAG,
       A.DATA_NO,
       A.FROZEN_TIME,
       A.CP_PQ,
       A.TIME_STAMP
        FROM CP_EXP_DAY A, SY_OM_DW_O_ORG_CONTRAST B
      --加入时间筛选条件
       WHERE A.STAT_DATE = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_CP_EXP_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_CP_EXP_DAY  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --采集日冻结电量异常情况,每天16点运行
  PROCEDURE P_ENT_DW_BM_CONSREAD_DAY(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_BM_CONSREAD_DAY', V_YMD);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_BM_TGPQ_DAY表
    P_INS_DW_BM_CONSREAD_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_BM_CONSREAD_DAY表取数据插入到稽查库OMAC用户下的DW_BM_CONSREAD_DAY表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
    P_ETL_DW_BM_CONSREAD_DAY(V_YMD, OUT_CODE, OUT_MSG);
    /*
    ELSE
      
      --复制模式补充供电区域性质
      UPDATE DW_BM_CONSREAD_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT 
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_DATE = V_YMD;
       */
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_BM_CONSREAD_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_BM_CONSREAD_DAY  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_BM_CONSREAD_DAY(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_BM_CONSREAD_DAY', I_DATA);
  
    DELETE FROM DW_BM_CONSREAD_DAY WHERE STAT_DATE = V_YMD;
  
    INSERT INTO DW_BM_CONSREAD_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_DATE,
       CONS_NO,
       CONS_NAME,
       FROZEN_TIME,
       ASSET_NO,
       BAR_CODE,
       READ_TYPE_CODE,
       MR_READ,
       SUCC_FLAG,
       MR_SPECIAL_FLAG,
       REMARK,
       TIME_STAMP)
      SELECT /*PARALLEL(A 4)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       A.STAT_DATE,
       A.CONS_NO,
       A.CONS_NAME,
       A.FROZEN_TIME,
       A.ASSET_NO,
       A.BAR_CODE,
       A.READ_TYPE_CODE,
       A.MR_READ,
       A.SUCC_FLAG,
       A.MR_SPECIAL_FLAG,
       A.REMARK,
       A.TIME_STAMP
        FROM SY_SG_CP_CONSREAD_DAY A
       WHERE A.STAT_DATE = V_YMD;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_BM_CONSREAD_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_BM_CONSREAD_DAY  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_BM_CONSREAD_DAY(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_BM_CONSREAD_DAY', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_BM_CONSREAD_DAY A WHERE A.STAT_DATE = V_YMD;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_BM_CONSREAD_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_DATE,
       CONS_NO,
       CONS_NAME,
       FROZEN_TIME,
       ASSET_NO,
       BAR_CODE,
       READ_TYPE_CODE,
       MR_READ,
       SUCC_FLAG,
       MR_SPECIAL_FLAG,
       REMARK,
       TIME_STAMP)
      SELECT A.DATA_ID,
             A.PRO_ORG_NO,
             A.ORG_NO,
             A.STAT_DATE,
             A.CONS_NO,
             A.CONS_NAME,
             A.FROZEN_TIME,
             A.ASSET_NO,
             A.BAR_CODE,
             A.READ_TYPE_CODE,
             A.MR_READ,
             A.SUCC_FLAG,
             A.MR_SPECIAL_FLAG,
             A.REMARK,
             A.TIME_STAMP
        FROM DW_BM_CONSREAD_DAY A
      --加入时间筛选条件
       WHERE A.STAT_DATE = V_YMD;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_BM_CONSREAD_DAY  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_BM_CONSREAD_DAY  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

END PKG_YWGK_DW_DSM;
/
