CREATE OR REPLACE PACKAGE PKG_YWGK_DW_SPE_AC IS

  -- AUTHOR  : BINBOOT
  -- CREATED : 2014-10-30 11:35:34
  -- PURPOSE : --日特殊电量费排除明细过程包

  --数据准备阶段_代征明细_按月传传参，对于历史数据实际上只生成当月一次即可
  PROCEDURE P_INS_TMP_E_PL_AMT(I_DATE   IN VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);
  --数据准备阶段_力调明细_按月传参，对于历史数据实际上只生成当月一次即可
  PROCEDURE P_INS_TMP_E_PF_AMT(I_DATE   IN VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);
  --数据准备阶段_目录明细_按月传参，对于历史数据实际上只生成当月一次即可
  PROCEDURE P_INS_TMP_E_KWH_AMT(I_DATE   IN VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2);
  --数据准备阶段_电价策略明细_按月传参，对于历史数据实际上只生成当月一次即可
  PROCEDURE P_INS_TMP_E_CONSPRC_TACTIC_SGA(I_DATE   IN VARCHAR2,
                                           OUT_CODE OUT NUMBER,
                                           OUT_MSG  OUT VARCHAR2);
  --数据准备阶段_基本电费明细_按月传参，对于历史数据实际上只生成当月一次即可                                         
  PROCEDURE P_INS_TMP_E_BASE_AMT(I_DATE   IN VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  --数据准备阶段_用户电价明细表_按月传参，对于历史数据实际上只生成当月一次即可                                 
  PROCEDURE P_INS_TMP_E_CONS_PRC_AMT(I_DATE   IN VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  --抽取按照电价码排除的特殊用户电量电费明细
  PROCEDURE P_ENT_DW_O_SPE_USER_DET_RPRC(I_DATE   IN VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);
  --抽取按照代征排除的特殊用户电量电费明细
  PROCEDURE P_ENT_DW_O_SPE_USER_DET_RPL(I_DATE   IN VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);
  --抽取按照特殊用户排除的特殊用户电量电费明细
  PROCEDURE P_ENT_DW_O_SPE_USER_DET_RCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2);
  --抽取按照并表排除趸售的特殊用户电量电费明细
  PROCEDURE P_ENT_DW_O_SPE_USER_DET_BCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_O_SPE_USER_DET_RPRC(I_DATE   IN VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_O_SPE_USER_DET_RPL(I_DATE   IN VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_O_SPE_USER_DET_RCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_O_SPE_USER_DET_BCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_O_SPE_USER_DET_RPRC(I_DATE   IN VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_O_SPE_USER_DET_RPL(I_DATE   IN VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_O_SPE_USER_DET_RCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_ETL_DW_O_SPE_USER_DET_BCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2);

END PKG_YWGK_DW_SPE_AC;
/
CREATE OR REPLACE PACKAGE BODY PKG_YWGK_DW_SPE_AC IS

  PROCEDURE P_INS_TMP_E_PL_AMT(I_DATE   IN VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --电费年月
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE         PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE      VARCHAR2(64) := 'XXX';
    V_SPECIAL_PL_CODE VARCHAR2(256);
    V_TOPPK_YM_FLAG   VARCHAR2(8); --尖峰电量年月标志
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_TMP_E_PL_AMT', I_DATE);
  
    --标准代征
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
  
    --特殊代征
    SELECT ',' || WM_CONCAT(PL_CODE) || ','
      INTO V_SPECIAL_PL_CODE
      FROM DW_O_REMOVE_PL;
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --尖峰电量年月计算标识
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    DELETE FROM TMP_E_PL_AMT H WHERE H.YM = V_YM;
  
    --月代征电费
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      INSERT INTO TMP_E_PL_AMT
        SELECT /*+PARALLEL(H 8)*/
         PRC_AMT_ID,
         YM,
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
             0) PL_AMT13,
         NVL(SUM(CASE
                   WHEN INSTR(V_SPECIAL_PL_CODE, ',' || PL_CODE || ',') > 0 THEN
                    PL_AMT
                   ELSE
                    0
                 END),
             0) PL_AMT20
          FROM SY_SG_ARC_E_PL_AMT H
         WHERE ORG_NO LIKE TSS.ORG_NO || '%'
           AND YM = V_YM
         GROUP BY PRC_AMT_ID, YM;
      COMMIT;
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_TMP_E_PL_AMT  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_TMP_E_PL_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_TMP_E_PL_AMT;

  PROCEDURE P_INS_TMP_E_PF_AMT(I_DATE   IN VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --电费年月
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_TMP_E_PF_AMT', I_DATE);
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
  
    DELETE FROM TMP_E_PF_AMT G WHERE G.YM = V_YM;
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --功率因数调整电费
      INSERT INTO TMP_E_PF_AMT
        SELECT /*+PARALLEL(G 8)*/
         PRC_AMT_ID,
         YM,
         SUM(ADJ_AMT) ADJ_AMT,
         SUM(ADJ_FACTOR) ADJ_FACTOR,
         SUM(DECODE(SIGN(PF_ADJ_AMT), 1, PF_ADJ_AMT, 0)) PF_AMT_ADD,
         SUM(DECODE(SIGN(PF_ADJ_AMT), -1, PF_ADJ_AMT, 0)) PF_AMT_SUB
          FROM SY_SG_ARC_E_PF_AMT G
         WHERE YM = V_YM
           AND ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY PRC_AMT_ID, YM;
      COMMIT;
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_TMP_E_PF_AMT  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_TMP_E_PF_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_TMP_E_PF_AMT;

  PROCEDURE P_INS_TMP_E_KWH_AMT(I_DATE   IN VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --电费年月
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_TMP_E_KWH_AMT', I_DATE);
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
  
    DELETE FROM TMP_E_KWH_AMT E WHERE E.YM = V_YM;
  
    --月电度电费基础表
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      INSERT INTO TMP_E_KWH_AMT
        SELECT /*+PARALLEL(E 8)*/
         E.PRC_AMT_ID PRC_AMT_ID,
         E.ORG_NO ORG_NO,
         E.YM YM,
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
         NVL(SUM(DECODE(E.PRC_TS_CODE,
                        '01',
                        NVL(E.CAT_KWH_AMT, 0) + NVL(E.FLAT_BAL, 0),
                        0)),
             0) ACME_CATKWH_AMT, ---20110808加上调尾
         NVL(SUM(DECODE(E.PRC_TS_CODE,
                        '02',
                        NVL(E.CAT_KWH_AMT, 0) + NVL(E.FLAT_BAL, 0),
                        0)),
             0) PEAK_CATKWH_AMT,
         NVL(SUM(DECODE(E.PRC_TS_CODE,
                        '03',
                        NVL(E.CAT_KWH_AMT, 0) + NVL(E.FLAT_BAL, 0),
                        0)),
             0) FLAT_CATKWH_AMT,
         NVL(SUM(DECODE(E.PRC_TS_CODE,
                        '04',
                        NVL(E.CAT_KWH_AMT, 0) + NVL(E.FLAT_BAL, 0),
                        0)),
             0) VALLEY_CATKWH_AMT,
         NVL(SUM(DECODE(E.PRC_TS_CODE,
                        '05',
                        NVL(E.CAT_KWH_AMT, 0) + NVL(E.FLAT_BAL, 0),
                        0)),
             0) NADIR_CATKWH_AMT,
         NVL(SUM(DECODE(E.PRC_TS_CODE, '01', E.KWH_AMT, 0)), 0) ACME_KWH_AMT,
         NVL(SUM(DECODE(E.PRC_TS_CODE, '02', E.KWH_AMT, 0)), 0) PEAK_KWH_AMT,
         NVL(SUM(DECODE(E.PRC_TS_CODE, '03', E.KWH_AMT, 0)), 0) FLAT_KWH_AMT,
         NVL(SUM(DECODE(E.PRC_TS_CODE, '04', E.KWH_AMT, 0)), 0) VALLEY_KWH_AMT,
         NVL(SUM(DECODE(E.PRC_TS_CODE, '05', E.KWH_AMT, 0)), 0) NADIR_KWH_AMT,
         NVL(MAX(DECODE(E.PRC_TS_CODE, '01', E.CAT_KWH_PRC, 0)), 0) ACME_CATKWH_PRC,
         NVL(MAX(DECODE(E.PRC_TS_CODE, '02', E.CAT_KWH_PRC, 0)), 0) PEAK_CATKWH_PRC,
         NVL(MAX(DECODE(E.PRC_TS_CODE, '03', E.CAT_KWH_PRC, 0)), 0) FLAT_CATKWH_PRC,
         NVL(MAX(DECODE(E.PRC_TS_CODE, '04', E.CAT_KWH_PRC, 0)), 0) VALLEY_CATKWH_PRC,
         NVL(MAX(DECODE(E.PRC_TS_CODE, '05', E.CAT_KWH_PRC, 0)), 0) NADIR_CATKWH_PRC,
         NVL(MAX(DECODE(E.PRC_TS_CODE, '01', E.KWH_PRC, 0)), 0) ACME_KWH_PRC,
         NVL(MAX(DECODE(E.PRC_TS_CODE, '02', E.KWH_PRC, 0)), 0) PEAK_KWH_PRC,
         NVL(MAX(DECODE(E.PRC_TS_CODE, '03', E.KWH_PRC, 0)), 0) FLAT_KWH_PRC,
         NVL(MAX(DECODE(E.PRC_TS_CODE, '04', E.KWH_PRC, 0)), 0) VALLEY_KWH_PRC,
         NVL(MAX(DECODE(E.PRC_TS_CODE, '05', E.KWH_PRC, 0)), 0) NADIR_KWH_PRC,
         0 PEAKADD_PA,
         0 VALLEYSUB_PA
          FROM SY_SG_ARC_E_KWH_AMT E
         WHERE E.YM = V_YM
           AND ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY E.PRC_AMT_ID, E.YM, E.ORG_NO;
      COMMIT;
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_TMP_E_KWH_AMT  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_TMP_E_KWH_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_TMP_E_KWH_AMT;

  PROCEDURE P_INS_TMP_E_CONSPRC_TACTIC_SGA(I_DATE   IN VARCHAR2,
                                           OUT_CODE OUT NUMBER,
                                           OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --电费年月
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_TMP_E_CONSPRC_TACTIC_SGA',
                                        I_DATE);
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --尖峰电量年月计算标识
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    DELETE FROM TMP_E_CONSPRC_TACTIC_SGA D WHERE D.YM = V_YM;
    --用户定价策略
    INSERT INTO TMP_E_CONSPRC_TACTIC_SGA
      SELECT /*+PARALLEL(D 8)*/
       PRC_TACTIC_SNAP_ID,
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
        FROM SY_SG_ARC_E_CONSPRC_TACTIC_SGA D
       WHERE YM = V_YM;
    COMMIT;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_TMP_E_CONSPRC_TACTIC_SGA  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_TMP_E_CONSPRC_TACTIC_SGA  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_TMP_E_CONSPRC_TACTIC_SGA;

  PROCEDURE P_INS_TMP_E_BASE_AMT(I_DATE   IN VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --电费年月
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_TMP_E_BASE_AMT', I_DATE);
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --尖峰电量年月计算标识
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    DELETE FROM TMP_E_BASE_AMT F WHERE F.YM = V_YM;
    --月基本电费基础表
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      INSERT INTO TMP_E_BASE_AMT
        SELECT /*+PARALLEL(F 8)*/
         PRC_AMT_ID,
         YM,
         NVL(SUM(DECODE(BA_TYPE_CODE, '1', BA_VALUE, 0)), 0) BILL_CAP,
         NVL(SUM(DECODE(BA_TYPE_CODE, '1', BA, 0)), 0) CAP_PA,
         NVL(SUM(DECODE(BA_TYPE_CODE, '2', BA_VALUE, 0)), 0) BILL_DMD,
         NVL(SUM(DECODE(BA_TYPE_CODE, '2', BA, 0)), 0) DMD_PA
          FROM SY_SG_ARC_E_BASE_AMT F
         WHERE ORG_NO LIKE TSS.ORG_NO || '%'
           AND YM = V_YM
         GROUP BY PRC_AMT_ID, YM;
      COMMIT;
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_TMP_E_BASE_AMT  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_TMP_E_BASE_AMT  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_TMP_E_BASE_AMT;

  --用户电价明细表
  PROCEDURE P_INS_TMP_E_CONS_PRC_AMT(I_DATE   IN VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --电费年月
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_LYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), -1),
                                 'YYYYMM');
    V_NYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), 1),
                                 'YYYYMM');
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_TMP_E_CONS_PRC_AMT', I_DATE);
  
    DELETE FROM TMP_E_CONS_PRC_AMT C WHERE C.YM = V_YM;
    INSERT INTO TMP_E_CONS_PRC_AMT
      (PRC_AMT_ID,
       PRC_SNAP_ID,
       CALC_ID,
       YM,
       ORG_NO,
       PRC_CODE,
       PARA_VN,
       SPECIAL_HANDL_TYPE,
       ELEC_TYPE_CODE,
       TRADE_TYPE_CODE,
       LEVEL_NUM,
       T_SETTLE_PQ,
       T_AMT,
       T_CAT_KWH_AMT,
       T_PL_AMT,
       LEVEL_INC_PQ)
      SELECT C.PRC_AMT_ID,
             C.PRC_SNAP_ID,
             C.CALC_ID,
             C.YM,
             C.ORG_NO,
             C.PRC_CODE,
             C.PARA_VN,
             X.SPECIAL_HANDL_TYPE,
             C.ELEC_TYPE_CODE,
             C.TRADE_TYPE_CODE,
             C.LEVEL_NUM,
             C.T_SETTLE_PQ,
             C.T_AMT,
             C.T_CAT_KWH_AMT,
             C.T_PL_AMT,
             C.LEVEL_INC_PQ
        FROM SY_SG_ARC_E_CONS_PRC_AMT C, SY_OM_DW_O_REMOVE_PRC X
       WHERE X.PRC_CODE = C.PRC_CODE
         AND C.YM IN (V_YM, V_NYM, V_LYM);
    COMMIT;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_TMP_E_CONS_PRC_AMT  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_TMP_E_CONS_PRC_AMT  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_TMP_E_CONS_PRC_AMT;

  PROCEDURE P_ENT_DW_O_SPE_USER_DET_RPRC(I_DATE   IN VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_TIME     VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_SPE_USER_DET_RPRC',
                                        V_TIME);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_O_SPE_USER_DET_RPRC表
    P_INS_DW_O_SPE_USER_DET_RPRC(V_TIME, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_O_SPE_USER_DET_RPRC表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_O_SPE_USER_DET_RPRC(V_TIME, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_O_SPECIAL_USER_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.RELEASE_YMD = V_TIME
         AND A.SPECIAL_HANDL_TYPE IN
             (SELECT DISTINCT X.SPECIAL_HANDL_TYPE
                FROM SY_OM_DW_O_REMOVE_PRC X);
    
      UPDATE DW_O_SPECIAL_USER_PL_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.RELEASE_YMD = V_TIME
         AND A.SPECIAL_HANDL_TYPE IN
             (SELECT DISTINCT X.SPECIAL_HANDL_TYPE
                FROM SY_OM_DW_O_REMOVE_PRC X);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_O_SPE_USER_DET_RPRC  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_O_SPE_USER_DET_RPRC  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_O_SPE_USER_DET_RPL(I_DATE   IN VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_TIME     VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_SPE_USER_DET_RPL',
                                        V_TIME);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_O_SPE_USER_DET_RPL表
    P_INS_DW_O_SPE_USER_DET_RPL(V_TIME, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_O_SPE_USER_DET_RPL表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_O_SPE_USER_DET_RPL(V_TIME, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_O_SPECIAL_USER_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.RELEASE_YMD = V_TIME
         AND A.SPECIAL_HANDL_TYPE = '04';
    
      UPDATE DW_O_SPECIAL_USER_PL_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.RELEASE_YMD = V_TIME
         AND A.SPECIAL_HANDL_TYPE = '04';
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_O_SPE_USER_DET_RPL  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_O_SPE_USER_DET_RPL  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_O_SPE_USER_DET_RCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_TIME     VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_SPE_USER_DET_RCONS',
                                        V_TIME);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_O_SPE_USER_DET_RCONS表
    P_INS_DW_O_SPE_USER_DET_RCONS(V_TIME, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_O_SPE_USER_DET_RCONS表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_O_SPE_USER_DET_RCONS(V_TIME, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_O_SPECIAL_USER_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.RELEASE_YMD = V_TIME
         AND A.SPECIAL_HANDL_TYPE IN
             (SELECT DISTINCT SPECIAL_HANDL_TYPE FROM SY_OM_DW_O_REMOVE_CONS);
    
      --复制模式补充供电区域性质
      UPDATE DW_O_SPECIAL_USER_PL_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.RELEASE_YMD = V_TIME
         AND A.SPECIAL_HANDL_TYPE IN
             (SELECT DISTINCT SPECIAL_HANDL_TYPE FROM SY_OM_DW_O_REMOVE_CONS);
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_O_SPE_USER_DET_RCONS  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_O_SPE_USER_DET_RCONS  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_O_SPE_USER_DET_BCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_TIME     VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  BEGIN
  
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_SPE_USER_DET_BCONS',
                                        V_TIME);
  
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_O_SPE_USER_DET_BCONS表
    P_INS_DW_O_SPE_USER_DET_BCONS(V_TIME, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_C_CONS_COMP表取数据插入到稽查库OMAC用户下的DW_O_SPE_USER_DET_BCONS表
    IF V_DATAMODE = '2' THEN
      --推送模式执行
      P_ETL_DW_O_SPE_USER_DET_BCONS(V_TIME, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_O_SPECIAL_USER_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.RELEASE_YMD = V_TIME
         AND A.SPECIAL_HANDL_TYPE = '03';
    
      --复制模式补充供电区域性质
      UPDATE DW_O_SPECIAL_USER_PL_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.RELEASE_YMD = V_TIME
         AND A.SPECIAL_HANDL_TYPE = '03';
    
    END IF;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_O_SPE_USER_DET_BCONS  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_O_SPE_USER_DET_BCONS  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_O_SPE_USER_DET_RPRC(I_DATE   IN VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --电费年月
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_LYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), -1),
                                 'YYYYMM');
    V_NYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), 1),
                                 'YYYYMM');
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_SPE_USER_DET_RPRC',
                                        I_DATE);
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --尖峰电量年月计算标识
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    DELETE FROM DW_O_SPECIAL_USER_DET
     WHERE RELEASE_YMD = V_YMD
       AND AMT_YM IN (V_YM, V_LYM, V_NYM)
       AND SPECIAL_HANDL_TYPE IN
           (SELECT DISTINCT X.SPECIAL_HANDL_TYPE
              FROM SY_OM_DW_O_REMOVE_PRC X);
  
    INSERT INTO DW_O_SPECIAL_USER_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
      SELECT /*+PARALLEL(A 2)(B 2)(C 2)(D 2)(E 2)(F 2)(G 2)(H 2)*/
      --数据标识                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --省市编号                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --供电单位编号              
       A.ORG_NO ORG_NO,
       --营业区性质                
       NULL PS_BUSI_AREA_CODE,
       --特殊处理类别              
       C.SPECIAL_HANDL_TYPE SPECIAL_HANDL_TYPE,
       --用户标识                  
       A.CONS_ID CONS_ID,
       --用户编号                 
       A.CONS_NO CONS_NO,
       --电费计算标识             
       A.CALC_ID CALC_ID,
       --电费发行日期              
       TO_CHAR(A.SEND_DATE, 'YYYYMMDD') AMT_YMD,
       --电费年月                  
       A.YM AMT_YM,
       --用电类别                  
       PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', C.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
       --电价码                    
       C.PRC_CODE PRC_CODE,
       --电价版本                  
       C.PARA_VN PRC_PARA_VN,
       --抄表段编号                
       A.MR_SECT_NO PRC_PARA_VN,
       --用户分类                  
       PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE) CONS_SORT_CODE,
       --行业分类                  
       PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_TYPE_CODE) TRADE_CODE,
       --电压等级                  
       PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
       --高耗能行业分类            
       PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', A.HEC_TRADE_CODE) HEC_TRADE_CODE,
       --是否执行峰谷              
       PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG) EXEC_PV_FLAG,
       --是否执行两部制电价        
       PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
       --功率因数考核方式          
       PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE) PF_EVAL_MODE,
       --阶梯分类                  
       PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02'), --各单位自行确定可在GK_DW_CODE_TANS表内配置,00无  01年阶梯  02月阶梯,
       --售电量                    
       SUM(C.T_SETTLE_PQ) SPQ,
       --总结算电费                
       SUM(C.T_AMT) SPA,
       --尖峰电量                  
       SUM(E.ACME_PQ) ACME_PQ,
       --峰电量                    
       SUM(E.PEAK_PQ) PEAK_PQ,
       --平电量                    
       SUM(E.FLAT_PQ) FLAT_PQ,
       --谷电量                    
       SUM(E.VALLEY_PQ) VALLEY_PQ,
       --脊谷电量                  
       SUM(E.NADIR_PQ) NADIR_PQ,
       --第一阶梯电量              
       SUM(NVL(C.T_SETTLE_PQ, 0)) FIRST_LADDER_PQ,
       --第二阶梯电量              
       SUM(DECODE(C.LEVEL_NUM,
                  '2',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) SECOND_LADDER_PQ,
       --第三阶梯电量              
       SUM(DECODE(C.LEVEL_NUM,
                  '3',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) THIRD_LADDER_PQ,
       --尖峰电度电费              
       SUM(E.ACME_KWH_AMT) ACME_KWH_PA,
       --峰电度电费                
       SUM(E.PEAK_KWH_AMT) PEAK_KWH_PA,
       --平电度电费                
       SUM(E.FLAT_KWH_AMT) FLAT_KWH_PA,
       --谷电度电费                
       SUM(E.VALLEY_KWH_AMT) VALLEY_KWH_PA,
       --脊谷电度电费              
       SUM(E.NADIR_KWH_AMT) NADIR_KWH_PA,
       --计费容量                  
       SUM(F.BILL_CAP) BILL_CAP,
       --计费需量                  
       SUM(F.BILL_DMD) BILL_DMD,
       --容量电费                  
       SUM(F.CAP_PA) CAP_PA,
       --需量电费                  
       SUM(F.DMD_PA) DMD_PA,
       --峰盈电费                  
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
                 2)) PEAKADD_PA,
       --谷亏电费                  
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
                 2)) VALLEYSUB_PA,
       --力调增电费                
       SUM(G.PF_AMT_ADD),
       --力调减电费                
       SUM(G.PF_AMT_SUB),
       --第一阶梯电费              
       --电费获取按照网省数据为分档法存放,第二档,第三档电价重新计算后与对应档位的电量相乘,递增法的网省需要再反馈测试
       DECODE(V_JTCFLX,
              '1',
              SUM(NVL(C.T_SETTLE_PQ, 0) *
                  (SELECT MAX(AA.CAT_KWH_PRC)
                     FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                    WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                      AND BB.PARA_VN = C.PARA_VN
                      AND BB.PRC_CODE = C.PRC_CODE
                      AND AA.RANGE_TYPE_CODE = '31')),
              SUM(DECODE(C.LEVEL_NUM, '1', NVL(C.T_AMT, 0), 0))) FIRST_LADDER_AMT,
       --第二阶梯增量电费          
       DECODE(V_JTCFLX,
              '1',
              SUM(DECODE(C.LEVEL_NUM, 2, NVL(C.T_SETTLE_PQ, 0), 0) *
                  (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                     FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                    WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                      AND BB.PARA_VN = C.PARA_VN
                      AND BB.PRC_CODE = C.PRC_CODE
                      AND AA.RANGE_TYPE_CODE IN ('31', '32'))),
              SUM(DECODE(C.LEVEL_NUM, '2', NVL(C.T_AMT, 0), 0))) SECOND_LADDER_AMT,
       --第三阶梯增量电费          
       DECODE(V_JTCFLX,
              '1',
              SUM(DECODE(C.LEVEL_NUM, 3, NVL(C.T_SETTLE_PQ, 0), 0) *
                  (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                     FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                    WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                      AND BB.PARA_VN = C.PARA_VN
                      AND BB.PRC_CODE = C.PRC_CODE
                      AND AA.RANGE_TYPE_CODE IN ('31', '33'))),
              SUM(DECODE(C.LEVEL_NUM, '3', NVL(C.T_AMT, 0), 0))) THIRD_LADDER_AMT,
       --丰枯电费                  
       0 H_AND_L_PA, --丰枯电费
       --时间戳                    
       SYSDATE
        FROM SY_SG_ARC_E_CONS_SNAP    A,
             SY_SG_ARC_E_CONSPRC_SNAP B,
             TMP_E_CONS_PRC_AMT       C,
             TMP_E_CONSPRC_TACTIC_SGA D,
             TMP_E_KWH_AMT            E,
             TMP_E_BASE_AMT           F,
             TMP_E_PF_AMT             G
       WHERE A.SEND_DATE >= TO_DATE(V_YMD, 'YYYYMMDD')
         AND A.SEND_DATE < TO_DATE(V_YMD, 'YYYYMMDD') + 1
         AND A.YM IN (V_YM, V_LYM, V_NYM)
         AND A.CALC_ID = B.CALC_ID
         AND B.CALC_ID = C.CALC_ID
         AND B.PRC_SNAP_ID = C.PRC_SNAP_ID
         AND B.PRC_TACTIC_SNAP_ID = D.PRC_TACTIC_SNAP_ID(+) --存在有电费但无电价策略快照的情况
         AND B.CALC_ID = D.CALC_ID(+)
         AND C.PRC_AMT_ID = E.PRC_AMT_ID(+)
         AND C.PRC_AMT_ID = F.PRC_AMT_ID(+)
         AND C.PRC_AMT_ID = G.PRC_AMT_ID(+)
            --AND A.ORG_NO = B.ORG_NO
            --AND B.ORG_NO = C.ORG_NO
         AND C.YM IN (V_YM, V_LYM, V_NYM)
         AND D.YM IN (V_YM, V_LYM, V_NYM)
            --AND E.YM IN (V_YM, V_LYM, V_NYM)
            --AND F.YM IN (V_YM, V_LYM, V_NYM)
            --AND G.YM IN (V_YM, V_LYM, V_NYM)
            --AND H.YM IN (V_YM, V_LYM, V_NYM)
         AND B.YM = A.YM
         AND C.YM = A.YM
      --AND E.YM = A.YM
       GROUP BY A.ORG_NO,
                A.CONS_ID,
                A.CONS_NO,
                A.CALC_ID,
                C.SPECIAL_HANDL_TYPE,
                TO_CHAR(A.SEND_DATE, 'YYYYMMDD'),
                A.YM,
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
  
    INSERT INTO DW_O_SPECIAL_USER_PL_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
      SELECT
      --数据标识                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --省市编号                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --供电单位编号              
       A.ORG_NO,
       A.PS_BUSI_AREA_CODE,
       A.SPECIAL_HANDL_TYPE,
       A.CONS_ID,
       A.CONS_NO,
       A.CALC_ID,
       A.RELEASE_YMD,
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
       --代征项代码
       F.HEAD_PL_CODE,
       --代征电量
       H.PL_PQ PL_PQ,
       --代征电费金额
       H.PL_AMT,
       --价内价外标志
       F.PRC_IO_FLAG,
       SYSDATE
        FROM DW_O_SPECIAL_USER_DET A,
             TMP_E_CONS_PRC_AMT    C,
             SY_SG_ARC_E_PL_AMT    H,
             DW_O_PL_PARA          F
       WHERE A.AMT_YM IN (V_YM, V_LYM, V_NYM)
         AND A.RELEASE_YMD = V_YMD
         AND A.SPECIAL_HANDL_TYPE = C.SPECIAL_HANDL_TYPE
         AND A.CALC_ID = C.CALC_ID
         AND C.PRC_AMT_ID = H.PRC_AMT_ID
         AND H.PL_CODE = F.PL_CODE;
  
    COMMIT;
  
    --按照要求502的电费都更新成0
    UPDATE YWGKODS.DW_O_SPECIAL_USER_DET
       SET SPA               = 0,
           ACME_KWH_PA       = 0,
           PEAK_KWH_PA       = 0,
           FLAT_KWH_PA       = 0,
           VALLEY_KWH_PA     = 0,
           NADIR_KWH_PA      = 0,
           CAP_PA            = 0,
           DMD_PA            = 0,
           PEAKADD_PA        = 0,
           VALLEYSUB_PA      = 0,
           PF_PA_I           = 0,
           PF_PA_D           = 0,
           FIRST_LADDER_AMT  = 0,
           SECOND_LADDER_AMT = 0,
           THIRD_LADDER_AMT  = 0,
           PL_AMT11          = 0,
           PL_AMT08          = 0,
           PL_AMT01          = 0,
           PL_AMT02          = 0,
           PL_AMT03          = 0,
           PL_AMT04          = 0,
           PL_AMT05          = 0,
           PL_AMT06          = 0,
           PL_AMT07          = 0,
           PL_AMT09          = 0,
           PL_AMT12          = 0,
           PL_AMT13          = 0,
           PL_AMT10          = 0,
           H_AND_L_PA        = 0,
           PL_AMT20          = 0
     WHERE SPECIAL_HANDL_TYPE = '0502'
       AND AMT_YM IN (V_YM, V_LYM, V_NYM)
       AND RELEASE_YMD = V_YMD;
    COMMIT;
  
    --按照要求503的电量都更新成0
    UPDATE YWGKODS.DW_O_SPECIAL_USER_DET
       SET BILL_CAP         = 0,
           BILL_DMD         = 0,
           FIRST_LADDER_PQ  = 0,
           SECOND_LADDER_PQ = 0,
           THIRD_LADDER_PQ  = 0,
           ACME_PQ          = 0,
           PEAK_PQ          = 0,
           FLAT_PQ          = 0,
           VALLEY_PQ        = 0,
           NADIR_PQ         = 0,
           SPQ              = 0
     WHERE SPECIAL_HANDL_TYPE = '0503'
       AND AMT_YM IN (V_YM, V_LYM, V_NYM)
       AND RELEASE_YMD = V_YMD;
    COMMIT;
  
    --将执行非阶梯电价的第一,二,三阶梯电量电价改为0
    UPDATE DW_O_SPECIAL_USER_DET A
       SET A.FIRST_LADDER_AMT  = 0,
           A.SECOND_LADDER_AMT = 0,
           A.THIRD_LADDER_AMT  = 0,
           A.FIRST_LADDER_PQ   = 0,
           A.SECOND_LADDER_PQ  = 0,
           A.THIRD_LADDER_PQ   = 0
     WHERE A.AMT_YM IN (V_YM, V_LYM, V_NYM)
       AND A.RELEASE_YMD = V_YMD
       AND A.SPECIAL_HANDL_TYPE IN
           (SELECT DISTINCT X.SPECIAL_HANDL_TYPE
              FROM SY_OM_DW_O_REMOVE_PRC X)
       AND EXISTS
     (SELECT 1
              FROM SY_SG_E_CAT_PRC B, SY_SG_E_PRC_SCOPE C
             WHERE B.PRC_CODE = A.PRC_CODE
               AND B.PARA_VN = A.PRC_PARA_VN
               AND C.CAT_PRC_ID = B.CAT_PRC_ID
               AND INSTR('31/32/33', C.RANGE_TYPE_CODE) <= 0);
    COMMIT;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_O_SPE_USER_DET_RPRC  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_O_SPE_USER_DET_RPRC  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_DW_O_SPE_USER_DET_RPRC;

  PROCEDURE P_INS_DW_O_SPE_USER_DET_RPL(I_DATE   IN VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --电费年月
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_LYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), -1),
                                 'YYYYMM');
    V_NYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), 1),
                                 'YYYYMM');
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_SPE_USER_DET_RPL',
                                        I_DATE);
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
  
    DELETE FROM DW_O_SPECIAL_USER_DET
     WHERE RELEASE_YMD = V_YMD
       AND AMT_YM IN (V_YM, V_LYM, V_NYM)
       AND SPECIAL_HANDL_TYPE = '04';
  
    INSERT INTO DW_O_SPECIAL_USER_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
       PL_AMT20,
       TIME_STAMP)
      SELECT /*+PARALLEL(A 2)(B 2)(C 2)(D 2)(E 2)(F 2)(G 2)(H 2)*/
      --数据标识                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --省市编号                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --供电单位编号              
       A.ORG_NO ORG_NO,
       --营业区性质                
       NULL PS_BUSI_AREA_CODE,
       --特殊处理类别              
       '04' SPECIAL_HANDL_TYPE,
       --用户标识                  
       A.CONS_ID CONS_ID,
       --用户编号                 
       A.CONS_NO CONS_NO,
       --电费计算标识             
       A.CALC_ID CALC_ID,
       --电费发行日期              
       TO_CHAR(A.SEND_DATE, 'YYYYMMDD') AMT_YMD,
       --电费年月                  
       A.YM AMT_YM,
       --用电类别                  
       PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', C.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
       --电价码                    
       C.PRC_CODE PRC_CODE,
       --电价版本                  
       C.PARA_VN PRC_PARA_VN,
       --抄表段编号                
       A.MR_SECT_NO PRC_PARA_VN,
       --用户分类                  
       PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE) CONS_SORT_CODE,
       --行业分类                  
       PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_TYPE_CODE) TRADE_CODE,
       --电压等级                  
       PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
       --高耗能行业分类            
       PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', A.HEC_TRADE_CODE) HEC_TRADE_CODE,
       --是否执行峰谷              
       PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG) EXEC_PV_FLAG,
       --是否执行两部制电价        
       PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
       --功率因数考核方式          
       PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE) PF_EVAL_MODE,
       --阶梯分类                  
       PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02'), --各单位自行确定可在GK_DW_CODE_TANS表内配置,00无  01年阶梯  02月阶梯,
       --售电量                    
       SUM(C.T_SETTLE_PQ) SPQ,
       --总结算电费                
       SUM(C.T_AMT) SPA,
       --尖峰电量                  
       SUM(E.ACME_PQ) ACME_PQ,
       --峰电量                    
       SUM(E.PEAK_PQ) PEAK_PQ,
       --平电量                    
       SUM(E.FLAT_PQ) FLAT_PQ,
       --谷电量                    
       SUM(E.VALLEY_PQ) VALLEY_PQ,
       --脊谷电量                  
       SUM(E.NADIR_PQ) NADIR_PQ,
       --第一阶梯电量              
       SUM(NVL(C.T_SETTLE_PQ, 0)) FIRST_LADDER_PQ,
       --第二阶梯电量              
       SUM(DECODE(C.LEVEL_NUM,
                  '2',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) SECOND_LADDER_PQ,
       --第三阶梯电量              
       SUM(DECODE(C.LEVEL_NUM,
                  '3',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) THIRD_LADDER_PQ,
       --尖峰电度电费              
       SUM(E.ACME_KWH_AMT) ACME_KWH_PA,
       --峰电度电费                
       SUM(E.PEAK_KWH_AMT) PEAK_KWH_PA,
       --平电度电费                
       SUM(E.FLAT_KWH_AMT) FLAT_KWH_PA,
       --谷电度电费                
       SUM(E.VALLEY_KWH_AMT) VALLEY_KWH_PA,
       --脊谷电度电费              
       SUM(E.NADIR_KWH_AMT) NADIR_KWH_PA,
       --计费容量                  
       SUM(F.BILL_CAP) BILL_CAP,
       --计费需量                  
       SUM(F.BILL_DMD) BILL_DMD,
       --容量电费                  
       SUM(F.CAP_PA) CAP_PA,
       --需量电费                  
       SUM(F.DMD_PA) DMD_PA,
       --峰盈电费                  
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
                 2)) PEAKADD_PA,
       --谷亏电费                  
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
                 2)) VALLEYSUB_PA,
       --力调增电费                
       SUM(G.PF_AMT_ADD),
       --力调减电费                
       SUM(G.PF_AMT_SUB),
       --第一阶梯电费              
       --电费获取按照网省数据为分档法存放,第二档,第三档电价重新计算后与对应档位的电量相乘,递增法的网省需要再反馈测试
       DECODE(V_JTCFLX,
              '1',
              SUM(NVL(C.T_SETTLE_PQ, 0) *
                  (SELECT MAX(AA.CAT_KWH_PRC)
                     FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                    WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                      AND BB.PARA_VN = C.PARA_VN
                      AND BB.PRC_CODE = C.PRC_CODE
                      AND AA.RANGE_TYPE_CODE = '31')),
              SUM(DECODE(C.LEVEL_NUM, '1', NVL(C.T_AMT, 0), 0))) FIRST_LADDER_AMT,
       --第二阶梯增量电费          
       DECODE(V_JTCFLX,
              '1',
              SUM(DECODE(C.LEVEL_NUM, 2, NVL(C.T_SETTLE_PQ, 0), 0) *
                  (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                     FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                    WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                      AND BB.PARA_VN = C.PARA_VN
                      AND BB.PRC_CODE = C.PRC_CODE
                      AND AA.RANGE_TYPE_CODE IN ('31', '32'))),
              SUM(DECODE(C.LEVEL_NUM, '2', NVL(C.T_AMT, 0), 0))) SECOND_LADDER_AMT,
       --第三阶梯增量电费          
       DECODE(V_JTCFLX,
              '1',
              SUM(DECODE(C.LEVEL_NUM, 3, NVL(C.T_SETTLE_PQ, 0), 0) *
                  (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                     FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                    WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                      AND BB.PARA_VN = C.PARA_VN
                      AND BB.PRC_CODE = C.PRC_CODE
                      AND AA.RANGE_TYPE_CODE IN ('31', '33'))),
              SUM(DECODE(C.LEVEL_NUM, '3', NVL(C.T_AMT, 0), 0))) THIRD_LADDER_AMT,
       --丰枯电费                  
       0 H_AND_L_PA, --丰枯电费
       --一户一表改造              
       SUM(H.PL_AMT11) PL_AMT11,
       --农村低压电网维护费        
       SUM(H.PL_AMT08) PL_AMT08,
       --水利基金                  
       SUM(H.PL_AMT01) PL_AMT01,
       --电力建设                  
       SUM(H.PL_AMT02) PL_AMT02,
       --城市附加                  
       SUM(H.PL_AMT03) PL_AMT03,
       --农网还贷                  
       SUM(H.PL_AMT04) PL_AMT04,
       --大中型水库移民后期扶持资金
       SUM(H.PL_AMT05) PL_AMT05,
       --小型水库移民后期扶持资金  
       SUM(H.PL_AMT06) PL_AMT06,
       --可再生能源附加            
       SUM(H.PL_AMT07) PL_AMT06,
       --农电基金                  
       SUM(H.PL_AMT09) PL_AMT09,
       --代征费01                  
       SUM(H.PL_AMT12) PL_AMT12,
       --代征费02                  
       SUM(H.PL_AMT13) PL_AMT13,
       --其它代征费                
       SUM(H.PL_AMT10) PL_AMT10,
       --特殊剔除代征金额          
       SUM(H.PL_AMT20) PL_AMT20,
       --时间戳                    
       SYSDATE
        FROM SY_SG_ARC_E_CONS_SNAP    A,
             SY_SG_ARC_E_CONSPRC_SNAP B,
             SY_SG_ARC_E_CONS_PRC_AMT C,
             TMP_E_CONSPRC_TACTIC_SGA D,
             TMP_E_KWH_AMT            E,
             TMP_E_BASE_AMT           F,
             TMP_E_PF_AMT             G,
             TMP_E_PL_AMT             H
       WHERE A.SEND_DATE >= TO_DATE(V_YMD, 'YYYYMMDD')
         AND A.SEND_DATE < TO_DATE(V_YMD, 'YYYYMMDD') + 1
         AND A.YM IN (V_YM, V_LYM, V_NYM)
         AND A.CALC_ID = B.CALC_ID
         AND B.CALC_ID = C.CALC_ID
         AND B.PRC_SNAP_ID = C.PRC_SNAP_ID
         AND B.PRC_TACTIC_SNAP_ID = D.PRC_TACTIC_SNAP_ID(+) --存在有电费但无电价策略快照的情况
         AND B.CALC_ID = D.CALC_ID(+)
         AND C.PRC_AMT_ID = E.PRC_AMT_ID(+)
         AND C.PRC_AMT_ID = F.PRC_AMT_ID(+)
         AND C.PRC_AMT_ID = G.PRC_AMT_ID(+)
            --特殊代征匹配
         AND C.PRC_AMT_ID = H.PRC_AMT_ID
            --特殊代征费大于0
         AND H.PL_AMT20 > 0
            --AND A.ORG_NO = B.ORG_NO
            --AND B.ORG_NO = C.ORG_NO
         AND C.YM IN (V_YM, V_LYM, V_NYM)
         AND D.YM IN (V_YM, V_LYM, V_NYM)
            --AND E.YM IN (V_YM, V_LYM, V_NYM)
            --AND F.YM IN (V_YM, V_LYM, V_NYM)
            --AND G.YM IN (V_YM, V_LYM, V_NYM)
            --AND H.YM IN (V_YM, V_LYM, V_NYM)
         AND B.YM = A.YM
         AND C.YM = A.YM
      --AND E.YM = A.YM
       GROUP BY A.ORG_NO,
                A.CONS_ID,
                A.CONS_NO,
                A.CALC_ID,
                TO_CHAR(A.SEND_DATE, 'YYYYMMDD'),
                A.YM,
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
  
    INSERT INTO DW_O_SPECIAL_USER_PL_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
      SELECT
      --数据标识                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --省市编号                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --供电单位编号              
       A.ORG_NO,
       A.PS_BUSI_AREA_CODE,
       A.SPECIAL_HANDL_TYPE,
       A.CONS_ID,
       A.CONS_NO,
       A.CALC_ID,
       A.RELEASE_YMD,
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
       --代征项代码
       F.HEAD_PL_CODE,
       --代征电量
       H.PL_PQ PL_PQ,
       --代征电费金额
       H.PL_AMT,
       --价内价外标志
       F.PRC_IO_FLAG,
       SYSDATE
        FROM DW_O_SPECIAL_USER_DET A,
             TMP_E_CONS_PRC_AMT    C,
             SY_SG_ARC_E_PL_AMT    H,
             DW_O_PL_PARA          F
       WHERE A.AMT_YM IN (V_YM, V_LYM, V_NYM)
         AND A.RELEASE_YMD = V_YMD
         AND A.SPECIAL_HANDL_TYPE = '04'
         AND A.CALC_ID = C.CALC_ID
         AND C.PRC_AMT_ID = H.PRC_AMT_ID
         AND H.PL_CODE = F.PL_CODE;
  
    COMMIT;
  
    --将执行非阶梯电价的第一,二,三阶梯电量电价改为0
    UPDATE DW_O_SPECIAL_USER_DET A
       SET A.FIRST_LADDER_AMT  = 0,
           A.SECOND_LADDER_AMT = 0,
           A.THIRD_LADDER_AMT  = 0,
           A.FIRST_LADDER_PQ   = 0,
           A.SECOND_LADDER_PQ  = 0,
           A.THIRD_LADDER_PQ   = 0
     WHERE A.AMT_YM IN (V_YM, V_LYM, V_NYM)
       AND A.RELEASE_YMD = V_YMD
       AND A.SPECIAL_HANDL_TYPE = '04'
       AND EXISTS
     (SELECT 1
              FROM SY_SG_E_CAT_PRC B, SY_SG_E_PRC_SCOPE C
             WHERE B.PRC_CODE = A.PRC_CODE
               AND B.PARA_VN = A.PRC_PARA_VN
               AND C.CAT_PRC_ID = B.CAT_PRC_ID
               AND INSTR('31/32/33', C.RANGE_TYPE_CODE) <= 0);
    COMMIT;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_O_SPE_USER_DET_RPL  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_O_SPE_USER_DET_RPL  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_DW_O_SPE_USER_DET_RPL;

  PROCEDURE P_INS_DW_O_SPE_USER_DET_RCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --电费年月
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_LYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), -1),
                                 'YYYYMM');
    V_NYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), 1),
                                 'YYYYMM');
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_SPE_USER_DET_RCONS',
                                        I_DATE);
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
  
    DELETE FROM DW_O_SPECIAL_USER_DET T
     WHERE T.RELEASE_YMD = V_YMD
       AND T.AMT_YM IN (V_YM, V_LYM, V_NYM)
       AND T.SPECIAL_HANDL_TYPE IN
           (SELECT DISTINCT SPECIAL_HANDL_TYPE FROM SY_OM_DW_O_REMOVE_CONS);
  
    INSERT INTO DW_O_SPECIAL_USER_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
      SELECT /*+PARALLEL(A 2)(B 2)(C 2)(D 2)(E 2)(F 2)(G 2)(H 2)*/
      --数据标识                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --省市编号                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --供电单位编号              
       A.ORG_NO ORG_NO,
       --营业区性质                
       NULL PS_BUSI_AREA_CODE,
       --特殊处理类别              
       X.TYPE_CODE SPECIAL_HANDL_TYPE,
       --用户标识                  
       A.CONS_ID CONS_ID,
       --用户编号                 
       A.CONS_NO CONS_NO,
       --电费计算标识             
       A.CALC_ID CALC_ID,
       --电费发行日期              
       TO_CHAR(A.SEND_DATE, 'YYYYMMDD') AMT_YMD,
       --电费年月                  
       A.YM AMT_YM,
       --用电类别                  
       PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', C.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
       --电价码                    
       C.PRC_CODE PRC_CODE,
       --电价版本                  
       C.PARA_VN PRC_PARA_VN,
       --抄表段编号                
       A.MR_SECT_NO PRC_PARA_VN,
       --用户分类                  
       PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE) CONS_SORT_CODE,
       --行业分类                  
       PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_TYPE_CODE) TRADE_CODE,
       --电压等级                  
       PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
       --高耗能行业分类            
       PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', A.HEC_TRADE_CODE) HEC_TRADE_CODE,
       --是否执行峰谷              
       PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG) EXEC_PV_FLAG,
       --是否执行两部制电价        
       PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
       --功率因数考核方式          
       PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE) PF_EVAL_MODE,
       --阶梯分类                  
       PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02'), --各单位自行确定可在GK_DW_CODE_TANS表内配置,00无  01年阶梯  02月阶梯,
       --售电量                    
       SUM(C.T_SETTLE_PQ) SPQ,
       --总结算电费                
       SUM(C.T_AMT) SPA,
       --尖峰电量                  
       SUM(E.ACME_PQ) ACME_PQ,
       --峰电量                    
       SUM(E.PEAK_PQ) PEAK_PQ,
       --平电量                    
       SUM(E.FLAT_PQ) FLAT_PQ,
       --谷电量                    
       SUM(E.VALLEY_PQ) VALLEY_PQ,
       --脊谷电量                  
       SUM(E.NADIR_PQ) NADIR_PQ,
       --第一阶梯电量              
       SUM(NVL(C.T_SETTLE_PQ, 0)) FIRST_LADDER_PQ,
       --第二阶梯电量              
       SUM(DECODE(C.LEVEL_NUM,
                  '2',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) SECOND_LADDER_PQ,
       --第三阶梯电量              
       SUM(DECODE(C.LEVEL_NUM,
                  '3',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) THIRD_LADDER_PQ,
       --尖峰电度电费              
       SUM(E.ACME_KWH_AMT) ACME_KWH_PA,
       --峰电度电费                
       SUM(E.PEAK_KWH_AMT) PEAK_KWH_PA,
       --平电度电费                
       SUM(E.FLAT_KWH_AMT) FLAT_KWH_PA,
       --谷电度电费                
       SUM(E.VALLEY_KWH_AMT) VALLEY_KWH_PA,
       --脊谷电度电费              
       SUM(E.NADIR_KWH_AMT) NADIR_KWH_PA,
       --计费容量                  
       SUM(F.BILL_CAP) BILL_CAP,
       --计费需量                  
       SUM(F.BILL_DMD) BILL_DMD,
       --容量电费                  
       SUM(F.CAP_PA) CAP_PA,
       --需量电费                  
       SUM(F.DMD_PA) DMD_PA,
       --峰盈电费                  
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
                 2)) PEAKADD_PA,
       --谷亏电费                  
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
                 2)) VALLEYSUB_PA,
       --力调增电费                
       SUM(G.PF_AMT_ADD),
       --力调减电费                
       SUM(G.PF_AMT_SUB),
       --第一阶梯电费              
       --电费获取按照网省数据为分档法存放,第二档,第三档电价重新计算后与对应档位的电量相乘,递增法的网省需要再反馈测试
       DECODE(V_JTCFLX,
              '1',
              SUM(NVL(C.T_SETTLE_PQ, 0) *
                  (SELECT MAX(AA.CAT_KWH_PRC)
                     FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                    WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                      AND BB.PARA_VN = C.PARA_VN
                      AND BB.PRC_CODE = C.PRC_CODE
                      AND AA.RANGE_TYPE_CODE = '31')),
              SUM(DECODE(C.LEVEL_NUM, '1', NVL(C.T_AMT, 0), 0))) FIRST_LADDER_AMT,
       --第二阶梯增量电费          
       DECODE(V_JTCFLX,
              '1',
              SUM(DECODE(C.LEVEL_NUM, 2, NVL(C.T_SETTLE_PQ, 0), 0) *
                  (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                     FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                    WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                      AND BB.PARA_VN = C.PARA_VN
                      AND BB.PRC_CODE = C.PRC_CODE
                      AND AA.RANGE_TYPE_CODE IN ('31', '32'))),
              SUM(DECODE(C.LEVEL_NUM, '2', NVL(C.T_AMT, 0), 0))) SECOND_LADDER_AMT,
       --第三阶梯增量电费          
       DECODE(V_JTCFLX,
              '1',
              SUM(DECODE(C.LEVEL_NUM, 3, NVL(C.T_SETTLE_PQ, 0), 0) *
                  (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                     FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                    WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                      AND BB.PARA_VN = C.PARA_VN
                      AND BB.PRC_CODE = C.PRC_CODE
                      AND AA.RANGE_TYPE_CODE IN ('31', '33'))),
              SUM(DECODE(C.LEVEL_NUM, '3', NVL(C.T_AMT, 0), 0))) THIRD_LADDER_AMT,
       --丰枯电费                  
       0 H_AND_L_PA, --丰枯电费
       --时间戳                    
       SYSDATE
        FROM SY_SG_ARC_E_CONS_SNAP A,
             SY_SG_ARC_E_CONSPRC_SNAP B,
             SY_SG_ARC_E_CONS_PRC_AMT C,
             TMP_E_CONSPRC_TACTIC_SGA D,
             TMP_E_KWH_AMT E,
             TMP_E_BASE_AMT F,
             TMP_E_PF_AMT G,
             (SELECT DISTINCT CONS_NO, SPECIAL_HANDL_TYPE TYPE_CODE
                FROM SY_OM_DW_O_REMOVE_CONS) X
       WHERE A.CONS_NO = X.CONS_NO
         AND A.SEND_DATE >= TO_DATE(V_YMD, 'YYYYMMDD')
         AND A.SEND_DATE < TO_DATE(V_YMD, 'YYYYMMDD') + 1
         AND A.YM = V_YM
         AND A.CALC_ID = B.CALC_ID
         AND B.CALC_ID = C.CALC_ID
         AND B.PRC_SNAP_ID = C.PRC_SNAP_ID
         AND B.PRC_TACTIC_SNAP_ID = D.PRC_TACTIC_SNAP_ID(+) --存在有电费但无电价策略快照的情况
         AND B.CALC_ID = D.CALC_ID(+)
         AND C.PRC_AMT_ID = E.PRC_AMT_ID(+)
         AND C.PRC_AMT_ID = F.PRC_AMT_ID(+)
         AND C.PRC_AMT_ID = G.PRC_AMT_ID(+)
            --AND A.ORG_NO = B.ORG_NO
            --AND B.ORG_NO = C.ORG_NO
         AND C.YM IN (V_YM, V_LYM, V_NYM)
         AND D.YM IN (V_YM, V_LYM, V_NYM)
            --AND E.YM IN (V_YM, V_LYM, V_NYM)
            --AND F.YM IN (V_YM, V_LYM, V_NYM)
            --AND G.YM IN (V_YM, V_LYM, V_NYM)
            --AND H.YM IN (V_YM, V_LYM, V_NYM)
         AND B.YM = A.YM
         AND C.YM = A.YM
      --AND E.YM = A.YM
       GROUP BY A.ORG_NO,
                A.CONS_ID,
                A.CONS_NO,
                A.CALC_ID,
                TO_CHAR(A.SEND_DATE, 'YYYYMMDD'),
                A.YM,
                PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                           C.ELEC_TYPE_CODE),
                C.PRC_CODE,
                C.PARA_VN,
                A.MR_SECT_NO,
                X.TYPE_CODE,
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
  
    INSERT INTO DW_O_SPECIAL_USER_PL_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
      SELECT
      --数据标识                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --省市编号                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --供电单位编号              
       A.ORG_NO,
       A.PS_BUSI_AREA_CODE,
       A.SPECIAL_HANDL_TYPE,
       A.CONS_ID,
       A.CONS_NO,
       A.CALC_ID,
       A.RELEASE_YMD,
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
       --代征项代码
       F.HEAD_PL_CODE,
       --代征电量
       H.PL_PQ PL_PQ,
       --代征电费金额
       H.PL_AMT,
       --价内价外标志
       F.PRC_IO_FLAG,
       SYSDATE
        FROM DW_O_SPECIAL_USER_DET A,
             TMP_E_CONS_PRC_AMT    C,
             SY_SG_ARC_E_PL_AMT    H,
             DW_O_PL_PARA          F
       WHERE A.AMT_YM IN (V_YM, V_LYM, V_NYM)
         AND A.RELEASE_YMD = V_YMD
         AND A.SPECIAL_HANDL_TYPE IN
             (SELECT DISTINCT SPECIAL_HANDL_TYPE FROM SY_OM_DW_O_REMOVE_CONS)
         AND A.CALC_ID = C.CALC_ID
         AND C.PRC_AMT_ID = H.PRC_AMT_ID
         AND H.PL_CODE = F.PL_CODE;
    COMMIT;
  
    --将执行非阶梯电价的第一,二,三阶梯电量电价改为0
    UPDATE DW_O_SPECIAL_USER_DET A
       SET A.FIRST_LADDER_AMT  = 0,
           A.SECOND_LADDER_AMT = 0,
           A.THIRD_LADDER_AMT  = 0,
           A.FIRST_LADDER_PQ   = 0,
           A.SECOND_LADDER_PQ  = 0,
           A.THIRD_LADDER_PQ   = 0
     WHERE A.AMT_YM IN (V_YM, V_LYM, V_NYM)
       AND A.RELEASE_YMD = V_YMD
       AND A.SPECIAL_HANDL_TYPE IN
           (SELECT DISTINCT SPECIAL_HANDL_TYPE FROM SY_OM_DW_O_REMOVE_CONS)
       AND EXISTS
     (SELECT 1
              FROM SY_SG_E_CAT_PRC B, SY_SG_E_PRC_SCOPE C
             WHERE B.PRC_CODE = A.PRC_CODE
               AND B.PARA_VN = A.PRC_PARA_VN
               AND C.CAT_PRC_ID = B.CAT_PRC_ID
               AND INSTR('31/32/33', C.RANGE_TYPE_CODE) <= 0);
    COMMIT;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_O_SPE_USER_DET_RCONS  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_O_SPE_USER_DET_RCONS  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_DW_O_SPE_USER_DET_RCONS;

  PROCEDURE P_INS_DW_O_SPE_USER_DET_BCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --电费年月
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_LYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), -1),
                                 'YYYYMM');
    V_NYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), 1),
                                 'YYYYMM');
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --代征项
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --尖峰电量年月标志
    --阶梯电量存放类型:分档法(1),递增法(2).默认为分档法1,如果网省为递增法请在dw_gk_code_trans内配置为2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_SPE_USER_DET_BCONS',
                                        I_DATE);
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
  
    DELETE FROM DW_O_SPECIAL_USER_DET T
     WHERE T.RELEASE_YMD = V_YMD
       AND T.AMT_YM IN (V_YM, V_LYM, V_NYM)
       AND EXISTS (SELECT 1
              FROM SY_OM_DW_O_REMOVE_BULK_CONS X
             WHERE X.CONS_NO = T.CONS_NO)
       AND T.SPECIAL_HANDL_TYPE = '03';
  
    INSERT INTO DW_O_SPECIAL_USER_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
      SELECT
      /*+PARALLEL(A 2)(B 2)(C 2)(D 2)(E 2)(F 2)(G 2)(H 2)*/
      --数据标识                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --省市编号                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --供电单位编号              
       A.ORG_NO ORG_NO,
       --营业区性质                
       NULL PS_BUSI_AREA_CODE,
       --特殊处理类别              
       X.TYPE_CODE SPECIAL_HANDL_TYPE,
       --用户标识                  
       A.CONS_ID CONS_ID,
       --用户编号                 
       A.CONS_NO CONS_NO,
       --电费计算标识             
       A.CALC_ID CALC_ID,
       --电费发行日期              
       TO_CHAR(A.SEND_DATE, 'YYYYMMDD') AMT_YMD,
       --电费年月                  
       A.YM AMT_YM,
       --用电类别                  
       PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', C.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
       --电价码                    
       C.PRC_CODE PRC_CODE,
       --电价版本                  
       C.PARA_VN PRC_PARA_VN,
       --抄表段编号                
       A.MR_SECT_NO PRC_PARA_VN,
       --用户分类                  
       PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE) CONS_SORT_CODE,
       --行业分类                  
       PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_TYPE_CODE) TRADE_CODE,
       --电压等级                  
       PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
       --高耗能行业分类            
       PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', A.HEC_TRADE_CODE) HEC_TRADE_CODE,
       --是否执行峰谷              
       PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG) EXEC_PV_FLAG,
       --是否执行两部制电价        
       PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
       --功率因数考核方式          
       PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE) PF_EVAL_MODE,
       --阶梯分类                  
       PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02'), --各单位自行确定可在GK_DW_CODE_TANS表内配置,00无  01年阶梯  02月阶梯,
       --售电量                    
       SUM(C.T_SETTLE_PQ) SPQ,
       --总结算电费                
       SUM(C.T_AMT) SPA,
       --尖峰电量                  
       SUM(E.ACME_PQ) ACME_PQ,
       --峰电量                    
       SUM(E.PEAK_PQ) PEAK_PQ,
       --平电量                    
       SUM(E.FLAT_PQ) FLAT_PQ,
       --谷电量                    
       SUM(E.VALLEY_PQ) VALLEY_PQ,
       --脊谷电量                  
       SUM(E.NADIR_PQ) NADIR_PQ,
       --第一阶梯电量              
       SUM(NVL(C.T_SETTLE_PQ, 0)) FIRST_LADDER_PQ,
       --第二阶梯电量              
       SUM(DECODE(C.LEVEL_NUM,
                  '2',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) SECOND_LADDER_PQ,
       --第三阶梯电量              
       SUM(DECODE(C.LEVEL_NUM,
                  '3',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) THIRD_LADDER_PQ,
       --尖峰电度电费              
       SUM(E.ACME_KWH_AMT) ACME_KWH_PA,
       --峰电度电费                
       SUM(E.PEAK_KWH_AMT) PEAK_KWH_PA,
       --平电度电费                
       SUM(E.FLAT_KWH_AMT) FLAT_KWH_PA,
       --谷电度电费                
       SUM(E.VALLEY_KWH_AMT) VALLEY_KWH_PA,
       --脊谷电度电费              
       SUM(E.NADIR_KWH_AMT) NADIR_KWH_PA,
       --计费容量                  
       SUM(F.BILL_CAP) BILL_CAP,
       --计费需量                  
       SUM(F.BILL_DMD) BILL_DMD,
       --容量电费                  
       SUM(F.CAP_PA) CAP_PA,
       --需量电费                  
       SUM(F.DMD_PA) DMD_PA,
       --峰盈电费                  
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
                 2)) PEAKADD_PA,
       --谷亏电费                  
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
                 2)) VALLEYSUB_PA,
       --力调增电费                
       SUM(G.PF_AMT_ADD),
       --力调减电费                
       SUM(G.PF_AMT_SUB),
       --第一阶梯电费              
       --电费获取按照网省数据为分档法存放,第二档,第三档电价重新计算后与对应档位的电量相乘,递增法的网省需要再反馈测试
       DECODE(V_JTCFLX,
              '1',
              SUM(NVL(C.T_SETTLE_PQ, 0) *
                  (SELECT MAX(AA.CAT_KWH_PRC)
                     FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                    WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                      AND BB.PARA_VN = C.PARA_VN
                      AND BB.PRC_CODE = C.PRC_CODE
                      AND AA.RANGE_TYPE_CODE = '31')),
              SUM(DECODE(C.LEVEL_NUM, '1', NVL(C.T_AMT, 0), 0))) FIRST_LADDER_AMT,
       --第二阶梯增量电费          
       DECODE(V_JTCFLX,
              '1',
              SUM(DECODE(C.LEVEL_NUM, 2, NVL(C.T_SETTLE_PQ, 0), 0) *
                  (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                     FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                    WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                      AND BB.PARA_VN = C.PARA_VN
                      AND BB.PRC_CODE = C.PRC_CODE
                      AND AA.RANGE_TYPE_CODE IN ('31', '32'))),
              SUM(DECODE(C.LEVEL_NUM, '2', NVL(C.T_AMT, 0), 0))) SECOND_LADDER_AMT,
       --第三阶梯增量电费          
       DECODE(V_JTCFLX,
              '1',
              SUM(DECODE(C.LEVEL_NUM, 3, NVL(C.T_SETTLE_PQ, 0), 0) *
                  (SELECT MAX(AA.CAT_KWH_PRC) - MIN(AA.CAT_KWH_PRC)
                     FROM SY_SG_E_CAT_PRC_DET AA, SY_SG_E_CAT_PRC BB
                    WHERE AA.CAT_PRC_ID = BB.CAT_PRC_ID
                      AND BB.PARA_VN = C.PARA_VN
                      AND BB.PRC_CODE = C.PRC_CODE
                      AND AA.RANGE_TYPE_CODE IN ('31', '33'))),
              SUM(DECODE(C.LEVEL_NUM, '3', NVL(C.T_AMT, 0), 0))) THIRD_LADDER_AMT,
       --丰枯电费                  
       0 H_AND_L_PA, --丰枯电费
       --时间戳                    
       SYSDATE
        FROM SY_SG_ARC_E_CONS_SNAP A,
             SY_SG_ARC_E_CONSPRC_SNAP B,
             SY_SG_ARC_E_CONS_PRC_AMT C,
             TMP_E_CONSPRC_TACTIC_SGA D,
             TMP_E_KWH_AMT E,
             TMP_E_BASE_AMT F,
             TMP_E_PF_AMT G,
             (SELECT DISTINCT CONS_NO, '03' TYPE_CODE
                FROM SY_OM_DW_O_REMOVE_BULK_CONS) X
       WHERE A.CONS_NO = X.CONS_NO
         AND A.SEND_DATE >= TO_DATE(V_YMD, 'YYYYMMDD')
         AND A.SEND_DATE < TO_DATE(V_YMD, 'YYYYMMDD') + 1
         AND A.YM IN (V_YM, V_LYM, V_NYM)
         AND A.CALC_ID = B.CALC_ID
         AND B.CALC_ID = C.CALC_ID
         AND B.PRC_SNAP_ID = C.PRC_SNAP_ID
         AND B.PRC_TACTIC_SNAP_ID = D.PRC_TACTIC_SNAP_ID(+) --存在有电费但无电价策略快照的情况
         AND B.CALC_ID = D.CALC_ID(+)
         AND C.PRC_AMT_ID = E.PRC_AMT_ID(+)
         AND C.PRC_AMT_ID = F.PRC_AMT_ID(+)
         AND C.PRC_AMT_ID = G.PRC_AMT_ID(+)
            --AND A.ORG_NO = B.ORG_NO
            --AND B.ORG_NO = C.ORG_NO
         AND C.YM IN (V_YM, V_LYM, V_NYM)
         AND D.YM IN (V_YM, V_LYM, V_NYM)
            --AND E.YM IN (V_YM, V_LYM, V_NYM)
            --AND F.YM IN (V_YM, V_LYM, V_NYM)
            --AND G.YM IN (V_YM, V_LYM, V_NYM)
            --AND H.YM IN (V_YM, V_LYM, V_NYM)
         AND B.YM = A.YM
         AND C.YM = A.YM
      --AND E.YM = A.YM
       GROUP BY A.ORG_NO,
                A.CONS_ID,
                A.CONS_NO,
                A.CALC_ID,
                TO_CHAR(A.SEND_DATE, 'YYYYMMDD'),
                A.YM,
                PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                           C.ELEC_TYPE_CODE),
                C.PRC_CODE,
                C.PARA_VN,
                A.MR_SECT_NO,
                X.TYPE_CODE,
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
  
    INSERT INTO DW_O_SPECIAL_USER_PL_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
      SELECT
      --数据标识                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --省市编号                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --供电单位编号              
       A.ORG_NO,
       A.PS_BUSI_AREA_CODE,
       A.SPECIAL_HANDL_TYPE,
       A.CONS_ID,
       A.CONS_NO,
       A.CALC_ID,
       A.RELEASE_YMD,
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
       --代征项代码
       F.HEAD_PL_CODE,
       --代征电量
       H.PL_PQ PL_PQ,
       --代征电费金额
       H.PL_AMT,
       --价内价外标志
       F.PRC_IO_FLAG,
       SYSDATE
        FROM DW_O_SPECIAL_USER_DET A,
             TMP_E_CONS_PRC_AMT    C,
             SY_SG_ARC_E_PL_AMT    H,
             DW_O_PL_PARA          F
       WHERE A.AMT_YM IN (V_YM, V_LYM, V_NYM)
         AND A.RELEASE_YMD = V_YMD
         AND A.SPECIAL_HANDL_TYPE = '03'
         AND A.CALC_ID = C.CALC_ID
         AND C.PRC_AMT_ID = H.PRC_AMT_ID
         AND H.PL_CODE = F.PL_CODE;
  
    COMMIT;
  
    --将执行非阶梯电价的第一,二,三阶梯电量电价改为0
    UPDATE DW_O_SPECIAL_USER_DET A
       SET A.FIRST_LADDER_AMT  = 0,
           A.SECOND_LADDER_AMT = 0,
           A.THIRD_LADDER_AMT  = 0,
           A.FIRST_LADDER_PQ   = 0,
           A.SECOND_LADDER_PQ  = 0,
           A.THIRD_LADDER_PQ   = 0
     WHERE A.AMT_YM IN (V_YM, V_LYM, V_NYM)
       AND A.RELEASE_YMD = V_YMD
       AND A.SPECIAL_HANDL_TYPE = '03'
       AND EXISTS
     (SELECT 1
              FROM SY_SG_E_CAT_PRC B, SY_SG_E_PRC_SCOPE C
             WHERE B.PRC_CODE = A.PRC_CODE
               AND B.PARA_VN = A.PRC_PARA_VN
               AND C.CAT_PRC_ID = B.CAT_PRC_ID
               AND INSTR('31/32/33', C.RANGE_TYPE_CODE) <= 0);
    COMMIT;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_O_SPE_USER_DET_BCONS  成功';
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_O_SPE_USER_DET_BCONS  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_DW_O_SPE_USER_DET_BCONS;

  PROCEDURE P_ETL_DW_O_SPE_USER_DET_RPRC(I_DATE   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_O_SPE_USER_DET_RPRC',
                                        I_DATE);
  
    DELETE FROM SY_OM_DW_O_SPECIAL_USER_DET A
     WHERE A.RELEASE_YMD = V_TIME
       AND A.SPECIAL_HANDL_TYPE IN
           (SELECT DISTINCT X.SPECIAL_HANDL_TYPE
              FROM SY_OM_DW_O_REMOVE_PRC X);
  
    INSERT INTO SY_OM_DW_O_SPECIAL_USER_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
       PL_AMT20,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.SPECIAL_HANDL_TYPE,
       A.CONS_ID,
       A.CONS_NO,
       A.CALC_ID,
       A.RELEASE_YMD,
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
       A.SPQ,
       A.SPA,
       A.ACME_PQ,
       A.PEAK_PQ,
       A.FLAT_PQ,
       A.VALLEY_PQ,
       A.NADIR_PQ,
       A.FIRST_LADDER_PQ,
       A.SECOND_LADDER_PQ,
       A.THIRD_LADDER_PQ,
       A.ACME_KWH_PA,
       A.PEAK_KWH_PA,
       A.FLAT_KWH_PA,
       A.VALLEY_KWH_PA,
       A.NADIR_KWH_PA,
       A.BILL_CAP,
       A.BILL_DMD,
       A.CAP_PA,
       A.DMD_PA,
       A.PEAKADD_PA,
       A.VALLEYSUB_PA,
       A.PF_PA_I,
       A.PF_PA_D,
       A.FIRST_LADDER_AMT,
       A.SECOND_LADDER_AMT,
       A.THIRD_LADDER_AMT,
       A.PL_AMT11,
       A.PL_AMT08,
       A.PL_AMT01,
       A.PL_AMT02,
       A.PL_AMT03,
       A.PL_AMT04,
       A.PL_AMT05,
       A.PL_AMT06,
       A.PL_AMT07,
       A.PL_AMT09,
       A.PL_AMT12,
       A.PL_AMT13,
       A.PL_AMT10,
       A.H_AND_L_PA,
       A.PL_AMT20,
       A.TIME_STAMP
        FROM DW_O_SPECIAL_USER_DET A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.RELEASE_YMD = V_TIME
         AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+)
         AND A.SPECIAL_HANDL_TYPE IN
             (SELECT DISTINCT X.SPECIAL_HANDL_TYPE
                FROM SY_OM_DW_O_REMOVE_PRC X);
  
    INSERT INTO SY_OM_DW_O_SPECIAL_USER_PL_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
       A.SPECIAL_HANDL_TYPE,
       A.CONS_ID,
       A.CONS_NO,
       A.CALC_ID,
       A.RELEASE_YMD,
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
        FROM DW_O_SPECIAL_USER_PL_DET A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.RELEASE_YMD = V_TIME
         AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+)
         AND A.SPECIAL_HANDL_TYPE IN
             (SELECT DISTINCT X.SPECIAL_HANDL_TYPE
                FROM SY_OM_DW_O_REMOVE_PRC X);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_O_SPE_USER_DET_RPRC  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_O_SPE_USER_DET_RPRC  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_O_SPE_USER_DET_RPL(I_DATE   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_O_SPE_USER_DET_RPL',
                                        I_DATE);
  
    DELETE FROM SY_OM_DW_O_SPECIAL_USER_DET A
     WHERE A.RELEASE_YMD = V_TIME
       AND A.SPECIAL_HANDL_TYPE = '04';
  
    INSERT INTO SY_OM_DW_O_SPECIAL_USER_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
       PL_AMT20,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.SPECIAL_HANDL_TYPE,
       A.CONS_ID,
       A.CONS_NO,
       A.CALC_ID,
       A.RELEASE_YMD,
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
       A.SPQ,
       A.SPA,
       A.ACME_PQ,
       A.PEAK_PQ,
       A.FLAT_PQ,
       A.VALLEY_PQ,
       A.NADIR_PQ,
       A.FIRST_LADDER_PQ,
       A.SECOND_LADDER_PQ,
       A.THIRD_LADDER_PQ,
       A.ACME_KWH_PA,
       A.PEAK_KWH_PA,
       A.FLAT_KWH_PA,
       A.VALLEY_KWH_PA,
       A.NADIR_KWH_PA,
       A.BILL_CAP,
       A.BILL_DMD,
       A.CAP_PA,
       A.DMD_PA,
       A.PEAKADD_PA,
       A.VALLEYSUB_PA,
       A.PF_PA_I,
       A.PF_PA_D,
       A.FIRST_LADDER_AMT,
       A.SECOND_LADDER_AMT,
       A.THIRD_LADDER_AMT,
       A.PL_AMT11,
       A.PL_AMT08,
       A.PL_AMT01,
       A.PL_AMT02,
       A.PL_AMT03,
       A.PL_AMT04,
       A.PL_AMT05,
       A.PL_AMT06,
       A.PL_AMT07,
       A.PL_AMT09,
       A.PL_AMT12,
       A.PL_AMT13,
       A.PL_AMT10,
       A.H_AND_L_PA,
       A.PL_AMT20,
       A.TIME_STAMP
        FROM DW_O_SPECIAL_USER_DET A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.RELEASE_YMD = V_TIME
         AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+)
         AND A.SPECIAL_HANDL_TYPE = '04';
  
    INSERT INTO SY_OM_DW_O_SPECIAL_USER_PL_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
       A.SPECIAL_HANDL_TYPE,
       A.CONS_ID,
       A.CONS_NO,
       A.CALC_ID,
       A.RELEASE_YMD,
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
        FROM DW_O_SPECIAL_USER_PL_DET A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.RELEASE_YMD = V_TIME
         AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+)
         AND A.SPECIAL_HANDL_TYPE = '04';
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_O_SPE_USER_DET_RPL  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_O_SPE_USER_DET_RPL  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_O_SPE_USER_DET_RCONS(I_DATE   VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_O_SPE_USER_DET_RCONS',
                                        I_DATE);
  
    DELETE FROM SY_OM_DW_O_SPECIAL_USER_DET A
     WHERE A.RELEASE_YMD = V_TIME
       AND A.SPECIAL_HANDL_TYPE IN
           (SELECT DISTINCT SPECIAL_HANDL_TYPE FROM SY_OM_DW_O_REMOVE_CONS);
  
    INSERT INTO SY_OM_DW_O_SPECIAL_USER_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
       PL_AMT20,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.SPECIAL_HANDL_TYPE,
       A.CONS_ID,
       A.CONS_NO,
       A.CALC_ID,
       A.RELEASE_YMD,
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
       A.SPQ,
       A.SPA,
       A.ACME_PQ,
       A.PEAK_PQ,
       A.FLAT_PQ,
       A.VALLEY_PQ,
       A.NADIR_PQ,
       A.FIRST_LADDER_PQ,
       A.SECOND_LADDER_PQ,
       A.THIRD_LADDER_PQ,
       A.ACME_KWH_PA,
       A.PEAK_KWH_PA,
       A.FLAT_KWH_PA,
       A.VALLEY_KWH_PA,
       A.NADIR_KWH_PA,
       A.BILL_CAP,
       A.BILL_DMD,
       A.CAP_PA,
       A.DMD_PA,
       A.PEAKADD_PA,
       A.VALLEYSUB_PA,
       A.PF_PA_I,
       A.PF_PA_D,
       A.FIRST_LADDER_AMT,
       A.SECOND_LADDER_AMT,
       A.THIRD_LADDER_AMT,
       A.PL_AMT11,
       A.PL_AMT08,
       A.PL_AMT01,
       A.PL_AMT02,
       A.PL_AMT03,
       A.PL_AMT04,
       A.PL_AMT05,
       A.PL_AMT06,
       A.PL_AMT07,
       A.PL_AMT09,
       A.PL_AMT12,
       A.PL_AMT13,
       A.PL_AMT10,
       A.H_AND_L_PA,
       A.PL_AMT20,
       A.TIME_STAMP
        FROM DW_O_SPECIAL_USER_DET A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.RELEASE_YMD = V_TIME
         AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+)
         AND A.SPECIAL_HANDL_TYPE IN
             (SELECT DISTINCT SPECIAL_HANDL_TYPE FROM SY_OM_DW_O_REMOVE_CONS);
  
    INSERT INTO SY_OM_DW_O_SPECIAL_USER_PL_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
       A.SPECIAL_HANDL_TYPE,
       A.CONS_ID,
       A.CONS_NO,
       A.CALC_ID,
       A.RELEASE_YMD,
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
        FROM DW_O_SPECIAL_USER_PL_DET A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.RELEASE_YMD = V_TIME
         AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+)
         AND A.SPECIAL_HANDL_TYPE IN
             (SELECT DISTINCT SPECIAL_HANDL_TYPE FROM SY_OM_DW_O_REMOVE_CONS);
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_O_SPE_USER_DET_RCONS  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_O_SPE_USER_DET_RCONS  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_O_SPE_USER_DET_BCONS(I_DATE   VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2) IS
  
    --日志ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_O_SPE_USER_DET_BCONS',
                                        I_DATE);
  
    DELETE FROM SY_OM_DW_O_SPECIAL_USER_DET A
     WHERE A.RELEASE_YMD = V_TIME
       AND A.SPECIAL_HANDL_TYPE = '03';
  
    INSERT INTO SY_OM_DW_O_SPECIAL_USER_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
       PL_AMT20,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.SPECIAL_HANDL_TYPE,
       A.CONS_ID,
       A.CONS_NO,
       A.CALC_ID,
       A.RELEASE_YMD,
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
       A.SPQ,
       A.SPA,
       A.ACME_PQ,
       A.PEAK_PQ,
       A.FLAT_PQ,
       A.VALLEY_PQ,
       A.NADIR_PQ,
       A.FIRST_LADDER_PQ,
       A.SECOND_LADDER_PQ,
       A.THIRD_LADDER_PQ,
       A.ACME_KWH_PA,
       A.PEAK_KWH_PA,
       A.FLAT_KWH_PA,
       A.VALLEY_KWH_PA,
       A.NADIR_KWH_PA,
       A.BILL_CAP,
       A.BILL_DMD,
       A.CAP_PA,
       A.DMD_PA,
       A.PEAKADD_PA,
       A.VALLEYSUB_PA,
       A.PF_PA_I,
       A.PF_PA_D,
       A.FIRST_LADDER_AMT,
       A.SECOND_LADDER_AMT,
       A.THIRD_LADDER_AMT,
       A.PL_AMT11,
       A.PL_AMT08,
       A.PL_AMT01,
       A.PL_AMT02,
       A.PL_AMT03,
       A.PL_AMT04,
       A.PL_AMT05,
       A.PL_AMT06,
       A.PL_AMT07,
       A.PL_AMT09,
       A.PL_AMT12,
       A.PL_AMT13,
       A.PL_AMT10,
       A.H_AND_L_PA,
       A.PL_AMT20,
       A.TIME_STAMP
        FROM DW_O_SPECIAL_USER_DET A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.RELEASE_YMD = V_TIME
         AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+)
         AND A.SPECIAL_HANDL_TYPE = '03';
  
    INSERT INTO SY_OM_DW_O_SPECIAL_USER_PL_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       SPECIAL_HANDL_TYPE,
       CONS_ID,
       CONS_NO,
       CALC_ID,
       RELEASE_YMD,
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
       A.SPECIAL_HANDL_TYPE,
       A.CONS_ID,
       A.CONS_NO,
       A.CALC_ID,
       A.RELEASE_YMD,
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
        FROM DW_O_SPECIAL_USER_PL_DET A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.RELEASE_YMD = V_TIME
         AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+)
         AND A.SPECIAL_HANDL_TYPE = '03';
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_O_SPE_USER_DET_BCONS  成功';
    COMMIT;
  
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_O_SPE_USER_DET_BCONS  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

END PKG_YWGK_DW_SPE_AC;
/
