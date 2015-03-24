CREATE OR REPLACE PACKAGE PKG_YWGK_DW_SPE_AC IS

  -- AUTHOR  : BINBOOT
  -- CREATED : 2014-10-30 11:35:34
  -- PURPOSE : --������������ų���ϸ���̰�

  --����׼���׶�_������ϸ_���´����Σ�������ʷ����ʵ����ֻ���ɵ���һ�μ���
  PROCEDURE P_INS_TMP_E_PL_AMT(I_DATE   IN VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);
  --����׼���׶�_������ϸ_���´��Σ�������ʷ����ʵ����ֻ���ɵ���һ�μ���
  PROCEDURE P_INS_TMP_E_PF_AMT(I_DATE   IN VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);
  --����׼���׶�_Ŀ¼��ϸ_���´��Σ�������ʷ����ʵ����ֻ���ɵ���һ�μ���
  PROCEDURE P_INS_TMP_E_KWH_AMT(I_DATE   IN VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2);
  --����׼���׶�_��۲�����ϸ_���´��Σ�������ʷ����ʵ����ֻ���ɵ���һ�μ���
  PROCEDURE P_INS_TMP_E_CONSPRC_TACTIC_SGA(I_DATE   IN VARCHAR2,
                                           OUT_CODE OUT NUMBER,
                                           OUT_MSG  OUT VARCHAR2);
  --����׼���׶�_���������ϸ_���´��Σ�������ʷ����ʵ����ֻ���ɵ���һ�μ���                                         
  PROCEDURE P_INS_TMP_E_BASE_AMT(I_DATE   IN VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  --����׼���׶�_�û������ϸ��_���´��Σ�������ʷ����ʵ����ֻ���ɵ���һ�μ���                                 
  PROCEDURE P_INS_TMP_E_CONS_PRC_AMT(I_DATE   IN VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  --��ȡ���յ�����ų��������û����������ϸ
  PROCEDURE P_ENT_DW_O_SPE_USER_DET_RPRC(I_DATE   IN VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);
  --��ȡ���մ����ų��������û����������ϸ
  PROCEDURE P_ENT_DW_O_SPE_USER_DET_RPL(I_DATE   IN VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);
  --��ȡ���������û��ų��������û����������ϸ
  PROCEDURE P_ENT_DW_O_SPE_USER_DET_RCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2);
  --��ȡ���ղ����ų����۵������û����������ϸ
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
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --�������
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE         PL_ITEM_ARRAY; --������
    V_SP_PL_CODE      VARCHAR2(64) := 'XXX';
    V_SPECIAL_PL_CODE VARCHAR2(256);
    V_TOPPK_YM_FLAG   VARCHAR2(8); --���������±�־
    --���ݵ����������:�ֵ���(1),������(2).Ĭ��Ϊ�ֵ���1,�����ʡΪ����������dw_gk_code_trans������Ϊ2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_TMP_E_PL_AMT', I_DATE);
  
    --��׼����
    FOR I IN 1 .. 13 LOOP
      SELECT NVL(MAX(CONT1), 'NODATA'), NVL(MAX(CONT2), '0') --content2='1'��Ϊ�������
        INTO V_PL_CODE(I), V_NUM
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'PrtPlItem'
         AND LPAD(TRANS_VALUE, 2, '0') = LPAD(I, 2, '0'); --TRANS_VALUE��ŵľ���SGPM_OUT.ARC_E_PL_AMT��PL_AMT__�ֶε����
      IF V_NUM = '1' THEN
        V_SP_PL_CODE := V_SP_PL_CODE || V_PL_CODE(I);
      END IF;
    END LOOP;
  
    --�������
    SELECT ',' || WM_CONCAT(PL_CODE) || ','
      INTO V_SPECIAL_PL_CODE
      FROM DW_O_REMOVE_PL;
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --���������¼����ʶ
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    DELETE FROM TMP_E_PL_AMT H WHERE H.YM = V_YM;
  
    --�´������
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
    OUT_MSG  := 'ִ�� P_INS_TMP_E_PL_AMT  �ɹ�';
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_TMP_E_PL_AMT  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_TMP_E_PL_AMT;

  PROCEDURE P_INS_TMP_E_PF_AMT(I_DATE   IN VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --�������
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --������
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --���������±�־
    --���ݵ����������:�ֵ���(1),������(2).Ĭ��Ϊ�ֵ���1,�����ʡΪ����������dw_gk_code_trans������Ϊ2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_TMP_E_PF_AMT', I_DATE);
    FOR I IN 1 .. 13 LOOP
      SELECT NVL(MAX(CONT1), 'NODATA'), NVL(MAX(CONT2), '0') --content2='1'��Ϊ�������
        INTO V_PL_CODE(I), V_NUM
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'PrtPlItem'
         AND LPAD(TRANS_VALUE, 2, '0') = LPAD(I, 2, '0'); --TRANS_VALUE��ŵľ���SGPM_OUT.ARC_E_PL_AMT��PL_AMT__�ֶε����
      IF V_NUM = '1' THEN
        V_SP_PL_CODE := V_SP_PL_CODE || V_PL_CODE(I);
      END IF;
    END LOOP;
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --���������¼����ʶ
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    DELETE FROM TMP_E_PF_AMT G WHERE G.YM = V_YM;
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --���������������
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
    OUT_MSG  := 'ִ�� P_INS_TMP_E_PF_AMT  �ɹ�';
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_TMP_E_PF_AMT  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_TMP_E_PF_AMT;

  PROCEDURE P_INS_TMP_E_KWH_AMT(I_DATE   IN VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --�������
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --������
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --���������±�־
    --���ݵ����������:�ֵ���(1),������(2).Ĭ��Ϊ�ֵ���1,�����ʡΪ����������dw_gk_code_trans������Ϊ2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_TMP_E_KWH_AMT', I_DATE);
    FOR I IN 1 .. 13 LOOP
      SELECT NVL(MAX(CONT1), 'NODATA'), NVL(MAX(CONT2), '0') --content2='1'��Ϊ�������
        INTO V_PL_CODE(I), V_NUM
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'PrtPlItem'
         AND LPAD(TRANS_VALUE, 2, '0') = LPAD(I, 2, '0'); --TRANS_VALUE��ŵľ���SGPM_OUT.ARC_E_PL_AMT��PL_AMT__�ֶε����
      IF V_NUM = '1' THEN
        V_SP_PL_CODE := V_SP_PL_CODE || V_PL_CODE(I);
      END IF;
    END LOOP;
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --���������¼����ʶ
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    DELETE FROM TMP_E_KWH_AMT E WHERE E.YM = V_YM;
  
    --�µ�ȵ�ѻ�����
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
             0) ACME_CATKWH_AMT, ---20110808���ϵ�β
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
    OUT_MSG  := 'ִ�� P_INS_TMP_E_KWH_AMT  �ɹ�';
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_TMP_E_KWH_AMT  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_TMP_E_KWH_AMT;

  PROCEDURE P_INS_TMP_E_CONSPRC_TACTIC_SGA(I_DATE   IN VARCHAR2,
                                           OUT_CODE OUT NUMBER,
                                           OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --�������
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --������
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --���������±�־
    --���ݵ����������:�ֵ���(1),������(2).Ĭ��Ϊ�ֵ���1,�����ʡΪ����������dw_gk_code_trans������Ϊ2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_TMP_E_CONSPRC_TACTIC_SGA',
                                        I_DATE);
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --���������¼����ʶ
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    DELETE FROM TMP_E_CONSPRC_TACTIC_SGA D WHERE D.YM = V_YM;
    --�û����۲���
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
    OUT_MSG  := 'ִ�� P_INS_TMP_E_CONSPRC_TACTIC_SGA  �ɹ�';
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_TMP_E_CONSPRC_TACTIC_SGA  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_TMP_E_CONSPRC_TACTIC_SGA;

  PROCEDURE P_INS_TMP_E_BASE_AMT(I_DATE   IN VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --�������
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --������
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --���������±�־
    --���ݵ����������:�ֵ���(1),������(2).Ĭ��Ϊ�ֵ���1,�����ʡΪ����������dw_gk_code_trans������Ϊ2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_TMP_E_BASE_AMT', I_DATE);
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --���������¼����ʶ
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'acmeYm';
  
    DELETE FROM TMP_E_BASE_AMT F WHERE F.YM = V_YM;
    --�»�����ѻ�����
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
    OUT_MSG  := 'ִ�� P_INS_TMP_E_BASE_AMT  �ɹ�';
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_TMP_E_BASE_AMT  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_TMP_E_BASE_AMT;

  --�û������ϸ��
  PROCEDURE P_INS_TMP_E_CONS_PRC_AMT(I_DATE   IN VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --�������
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_LYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), -1),
                                 'YYYYMM');
    V_NYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), 1),
                                 'YYYYMM');
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --������
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --���������±�־
    --���ݵ����������:�ֵ���(1),������(2).Ĭ��Ϊ�ֵ���1,�����ʡΪ����������dw_gk_code_trans������Ϊ2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --��¼��ʼ��־
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
    OUT_MSG  := 'ִ�� P_INS_TMP_E_CONS_PRC_AMT  �ɹ�';
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_TMP_E_CONS_PRC_AMT  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_TMP_E_CONS_PRC_AMT;

  PROCEDURE P_ENT_DW_O_SPE_USER_DET_RPRC(I_DATE   IN VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_TIME     VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_SPE_USER_DET_RPRC',
                                        V_TIME);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_O_SPE_USER_DET_RPRC��
    P_INS_DW_O_SPE_USER_DET_RPRC(V_TIME, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_O_SPE_USER_DET_RPRC��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_O_SPE_USER_DET_RPRC(V_TIME, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_O_SPE_USER_DET_RPRC  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_O_SPE_USER_DET_RPRC  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_O_SPE_USER_DET_RPL(I_DATE   IN VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_TIME     VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_SPE_USER_DET_RPL',
                                        V_TIME);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_O_SPE_USER_DET_RPL��
    P_INS_DW_O_SPE_USER_DET_RPL(V_TIME, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_O_SPE_USER_DET_RPL��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_O_SPE_USER_DET_RPL(V_TIME, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_O_SPE_USER_DET_RPL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_O_SPE_USER_DET_RPL  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_O_SPE_USER_DET_RCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_TIME     VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_SPE_USER_DET_RCONS',
                                        V_TIME);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_O_SPE_USER_DET_RCONS��
    P_INS_DW_O_SPE_USER_DET_RCONS(V_TIME, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_O_SPE_USER_DET_RCONS��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_O_SPE_USER_DET_RCONS(V_TIME, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
    
      --����ģʽ���乩����������
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_O_SPE_USER_DET_RCONS  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_O_SPE_USER_DET_RCONS  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_O_SPE_USER_DET_BCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_TIME     VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_SPE_USER_DET_BCONS',
                                        V_TIME);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_O_SPE_USER_DET_BCONS��
    P_INS_DW_O_SPE_USER_DET_BCONS(V_TIME, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_O_SPE_USER_DET_BCONS��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_O_SPE_USER_DET_BCONS(V_TIME, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_O_SPECIAL_USER_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_TIME BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.RELEASE_YMD = V_TIME
         AND A.SPECIAL_HANDL_TYPE = '03';
    
      --����ģʽ���乩����������
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_O_SPE_USER_DET_BCONS  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_O_SPE_USER_DET_BCONS  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_O_SPE_USER_DET_RPRC(I_DATE   IN VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --�������
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_LYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), -1),
                                 'YYYYMM');
    V_NYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), 1),
                                 'YYYYMM');
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --������
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --���������±�־
    --���ݵ����������:�ֵ���(1),������(2).Ĭ��Ϊ�ֵ���1,�����ʡΪ����������dw_gk_code_trans������Ϊ2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_SPE_USER_DET_RPRC',
                                        I_DATE);
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --���������¼����ʶ
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
      --���ݱ�ʶ                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --ʡ�б��                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --���絥λ���              
       A.ORG_NO ORG_NO,
       --Ӫҵ������                
       NULL PS_BUSI_AREA_CODE,
       --���⴦�����              
       C.SPECIAL_HANDL_TYPE SPECIAL_HANDL_TYPE,
       --�û���ʶ                  
       A.CONS_ID CONS_ID,
       --�û����                 
       A.CONS_NO CONS_NO,
       --��Ѽ����ʶ             
       A.CALC_ID CALC_ID,
       --��ѷ�������              
       TO_CHAR(A.SEND_DATE, 'YYYYMMDD') AMT_YMD,
       --�������                  
       A.YM AMT_YM,
       --�õ����                  
       PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', C.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
       --�����                    
       C.PRC_CODE PRC_CODE,
       --��۰汾                  
       C.PARA_VN PRC_PARA_VN,
       --����α��                
       A.MR_SECT_NO PRC_PARA_VN,
       --�û�����                  
       PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE) CONS_SORT_CODE,
       --��ҵ����                  
       PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_TYPE_CODE) TRADE_CODE,
       --��ѹ�ȼ�                  
       PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
       --�ߺ�����ҵ����            
       PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', A.HEC_TRADE_CODE) HEC_TRADE_CODE,
       --�Ƿ�ִ�з��              
       PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG) EXEC_PV_FLAG,
       --�Ƿ�ִ�������Ƶ��        
       PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
       --�����������˷�ʽ          
       PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE) PF_EVAL_MODE,
       --���ݷ���                  
       PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02'), --����λ����ȷ������GK_DW_CODE_TANS��������,00��  01�����  02�½���,
       --�۵���                    
       SUM(C.T_SETTLE_PQ) SPQ,
       --�ܽ�����                
       SUM(C.T_AMT) SPA,
       --������                  
       SUM(E.ACME_PQ) ACME_PQ,
       --�����                    
       SUM(E.PEAK_PQ) PEAK_PQ,
       --ƽ����                    
       SUM(E.FLAT_PQ) FLAT_PQ,
       --�ȵ���                    
       SUM(E.VALLEY_PQ) VALLEY_PQ,
       --���ȵ���                  
       SUM(E.NADIR_PQ) NADIR_PQ,
       --��һ���ݵ���              
       SUM(NVL(C.T_SETTLE_PQ, 0)) FIRST_LADDER_PQ,
       --�ڶ����ݵ���              
       SUM(DECODE(C.LEVEL_NUM,
                  '2',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) SECOND_LADDER_PQ,
       --�������ݵ���              
       SUM(DECODE(C.LEVEL_NUM,
                  '3',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) THIRD_LADDER_PQ,
       --����ȵ��              
       SUM(E.ACME_KWH_AMT) ACME_KWH_PA,
       --���ȵ��                
       SUM(E.PEAK_KWH_AMT) PEAK_KWH_PA,
       --ƽ��ȵ��                
       SUM(E.FLAT_KWH_AMT) FLAT_KWH_PA,
       --�ȵ�ȵ��                
       SUM(E.VALLEY_KWH_AMT) VALLEY_KWH_PA,
       --���ȵ�ȵ��              
       SUM(E.NADIR_KWH_AMT) NADIR_KWH_PA,
       --�Ʒ�����                  
       SUM(F.BILL_CAP) BILL_CAP,
       --�Ʒ�����                  
       SUM(F.BILL_DMD) BILL_DMD,
       --�������                  
       SUM(F.CAP_PA) CAP_PA,
       --�������                  
       SUM(F.DMD_PA) DMD_PA,
       --��ӯ���                  
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
       --�ȿ����                  
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
       --���������                
       SUM(G.PF_AMT_ADD),
       --���������                
       SUM(G.PF_AMT_SUB),
       --��һ���ݵ��              
       --��ѻ�ȡ������ʡ����Ϊ�ֵ������,�ڶ���,������������¼�������Ӧ��λ�ĵ������,����������ʡ��Ҫ�ٷ�������
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
       --�ڶ������������          
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
       --���������������          
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
       --��ݵ��                  
       0 H_AND_L_PA, --��ݵ��
       --ʱ���                    
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
         AND B.PRC_TACTIC_SNAP_ID = D.PRC_TACTIC_SNAP_ID(+) --�����е�ѵ��޵�۲��Կ��յ����
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
      --���ݱ�ʶ                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --ʡ�б��                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --���絥λ���              
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
       --���������
       F.HEAD_PL_CODE,
       --��������
       H.PL_PQ PL_PQ,
       --������ѽ��
       H.PL_AMT,
       --���ڼ����־
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
  
    --����Ҫ��502�ĵ�Ѷ����³�0
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
  
    --����Ҫ��503�ĵ��������³�0
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
  
    --��ִ�зǽ��ݵ�۵ĵ�һ,��,�����ݵ�����۸�Ϊ0
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
    OUT_MSG  := 'ִ�� P_INS_DW_O_SPE_USER_DET_RPRC  �ɹ�';
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_O_SPE_USER_DET_RPRC  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_DW_O_SPE_USER_DET_RPRC;

  PROCEDURE P_INS_DW_O_SPE_USER_DET_RPL(I_DATE   IN VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --�������
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_LYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), -1),
                                 'YYYYMM');
    V_NYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), 1),
                                 'YYYYMM');
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --������
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --���������±�־
    --���ݵ����������:�ֵ���(1),������(2).Ĭ��Ϊ�ֵ���1,�����ʡΪ����������dw_gk_code_trans������Ϊ2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_SPE_USER_DET_RPL',
                                        I_DATE);
    FOR I IN 1 .. 13 LOOP
      SELECT NVL(MAX(CONT1), 'NODATA'), NVL(MAX(CONT2), '0') --content2='1'��Ϊ�������
        INTO V_PL_CODE(I), V_NUM
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'PrtPlItem'
         AND LPAD(TRANS_VALUE, 2, '0') = LPAD(I, 2, '0'); --TRANS_VALUE��ŵľ���SGPM_OUT.ARC_E_PL_AMT��PL_AMT__�ֶε����
      IF V_NUM = '1' THEN
        V_SP_PL_CODE := V_SP_PL_CODE || V_PL_CODE(I);
      END IF;
    END LOOP;
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --���������¼����ʶ
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
      --���ݱ�ʶ                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --ʡ�б��                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --���絥λ���              
       A.ORG_NO ORG_NO,
       --Ӫҵ������                
       NULL PS_BUSI_AREA_CODE,
       --���⴦�����              
       '04' SPECIAL_HANDL_TYPE,
       --�û���ʶ                  
       A.CONS_ID CONS_ID,
       --�û����                 
       A.CONS_NO CONS_NO,
       --��Ѽ����ʶ             
       A.CALC_ID CALC_ID,
       --��ѷ�������              
       TO_CHAR(A.SEND_DATE, 'YYYYMMDD') AMT_YMD,
       --�������                  
       A.YM AMT_YM,
       --�õ����                  
       PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', C.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
       --�����                    
       C.PRC_CODE PRC_CODE,
       --��۰汾                  
       C.PARA_VN PRC_PARA_VN,
       --����α��                
       A.MR_SECT_NO PRC_PARA_VN,
       --�û�����                  
       PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE) CONS_SORT_CODE,
       --��ҵ����                  
       PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_TYPE_CODE) TRADE_CODE,
       --��ѹ�ȼ�                  
       PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
       --�ߺ�����ҵ����            
       PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', A.HEC_TRADE_CODE) HEC_TRADE_CODE,
       --�Ƿ�ִ�з��              
       PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG) EXEC_PV_FLAG,
       --�Ƿ�ִ�������Ƶ��        
       PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
       --�����������˷�ʽ          
       PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE) PF_EVAL_MODE,
       --���ݷ���                  
       PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02'), --����λ����ȷ������GK_DW_CODE_TANS��������,00��  01�����  02�½���,
       --�۵���                    
       SUM(C.T_SETTLE_PQ) SPQ,
       --�ܽ�����                
       SUM(C.T_AMT) SPA,
       --������                  
       SUM(E.ACME_PQ) ACME_PQ,
       --�����                    
       SUM(E.PEAK_PQ) PEAK_PQ,
       --ƽ����                    
       SUM(E.FLAT_PQ) FLAT_PQ,
       --�ȵ���                    
       SUM(E.VALLEY_PQ) VALLEY_PQ,
       --���ȵ���                  
       SUM(E.NADIR_PQ) NADIR_PQ,
       --��һ���ݵ���              
       SUM(NVL(C.T_SETTLE_PQ, 0)) FIRST_LADDER_PQ,
       --�ڶ����ݵ���              
       SUM(DECODE(C.LEVEL_NUM,
                  '2',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) SECOND_LADDER_PQ,
       --�������ݵ���              
       SUM(DECODE(C.LEVEL_NUM,
                  '3',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) THIRD_LADDER_PQ,
       --����ȵ��              
       SUM(E.ACME_KWH_AMT) ACME_KWH_PA,
       --���ȵ��                
       SUM(E.PEAK_KWH_AMT) PEAK_KWH_PA,
       --ƽ��ȵ��                
       SUM(E.FLAT_KWH_AMT) FLAT_KWH_PA,
       --�ȵ�ȵ��                
       SUM(E.VALLEY_KWH_AMT) VALLEY_KWH_PA,
       --���ȵ�ȵ��              
       SUM(E.NADIR_KWH_AMT) NADIR_KWH_PA,
       --�Ʒ�����                  
       SUM(F.BILL_CAP) BILL_CAP,
       --�Ʒ�����                  
       SUM(F.BILL_DMD) BILL_DMD,
       --�������                  
       SUM(F.CAP_PA) CAP_PA,
       --�������                  
       SUM(F.DMD_PA) DMD_PA,
       --��ӯ���                  
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
       --�ȿ����                  
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
       --���������                
       SUM(G.PF_AMT_ADD),
       --���������                
       SUM(G.PF_AMT_SUB),
       --��һ���ݵ��              
       --��ѻ�ȡ������ʡ����Ϊ�ֵ������,�ڶ���,������������¼�������Ӧ��λ�ĵ������,����������ʡ��Ҫ�ٷ�������
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
       --�ڶ������������          
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
       --���������������          
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
       --��ݵ��                  
       0 H_AND_L_PA, --��ݵ��
       --һ��һ�����              
       SUM(H.PL_AMT11) PL_AMT11,
       --ũ���ѹ����ά����        
       SUM(H.PL_AMT08) PL_AMT08,
       --ˮ������                  
       SUM(H.PL_AMT01) PL_AMT01,
       --��������                  
       SUM(H.PL_AMT02) PL_AMT02,
       --���и���                  
       SUM(H.PL_AMT03) PL_AMT03,
       --ũ������                  
       SUM(H.PL_AMT04) PL_AMT04,
       --������ˮ��������ڷ����ʽ�
       SUM(H.PL_AMT05) PL_AMT05,
       --С��ˮ��������ڷ����ʽ�  
       SUM(H.PL_AMT06) PL_AMT06,
       --��������Դ����            
       SUM(H.PL_AMT07) PL_AMT06,
       --ũ�����                  
       SUM(H.PL_AMT09) PL_AMT09,
       --������01                  
       SUM(H.PL_AMT12) PL_AMT12,
       --������02                  
       SUM(H.PL_AMT13) PL_AMT13,
       --����������                
       SUM(H.PL_AMT10) PL_AMT10,
       --�����޳��������          
       SUM(H.PL_AMT20) PL_AMT20,
       --ʱ���                    
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
         AND B.PRC_TACTIC_SNAP_ID = D.PRC_TACTIC_SNAP_ID(+) --�����е�ѵ��޵�۲��Կ��յ����
         AND B.CALC_ID = D.CALC_ID(+)
         AND C.PRC_AMT_ID = E.PRC_AMT_ID(+)
         AND C.PRC_AMT_ID = F.PRC_AMT_ID(+)
         AND C.PRC_AMT_ID = G.PRC_AMT_ID(+)
            --�������ƥ��
         AND C.PRC_AMT_ID = H.PRC_AMT_ID
            --��������Ѵ���0
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
      --���ݱ�ʶ                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --ʡ�б��                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --���絥λ���              
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
       --���������
       F.HEAD_PL_CODE,
       --��������
       H.PL_PQ PL_PQ,
       --������ѽ��
       H.PL_AMT,
       --���ڼ����־
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
  
    --��ִ�зǽ��ݵ�۵ĵ�һ,��,�����ݵ�����۸�Ϊ0
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
    OUT_MSG  := 'ִ�� P_INS_DW_O_SPE_USER_DET_RPL  �ɹ�';
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_O_SPE_USER_DET_RPL  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_DW_O_SPE_USER_DET_RPL;

  PROCEDURE P_INS_DW_O_SPE_USER_DET_RCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --�������
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_LYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), -1),
                                 'YYYYMM');
    V_NYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), 1),
                                 'YYYYMM');
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --������
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --���������±�־
    --���ݵ����������:�ֵ���(1),������(2).Ĭ��Ϊ�ֵ���1,�����ʡΪ����������dw_gk_code_trans������Ϊ2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_SPE_USER_DET_RCONS',
                                        I_DATE);
    FOR I IN 1 .. 13 LOOP
      SELECT NVL(MAX(CONT1), 'NODATA'), NVL(MAX(CONT2), '0') --content2='1'��Ϊ�������
        INTO V_PL_CODE(I), V_NUM
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'PrtPlItem'
         AND LPAD(TRANS_VALUE, 2, '0') = LPAD(I, 2, '0'); --TRANS_VALUE��ŵľ���SGPM_OUT.ARC_E_PL_AMT��PL_AMT__�ֶε����
      IF V_NUM = '1' THEN
        V_SP_PL_CODE := V_SP_PL_CODE || V_PL_CODE(I);
      END IF;
    END LOOP;
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --���������¼����ʶ
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
      --���ݱ�ʶ                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --ʡ�б��                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --���絥λ���              
       A.ORG_NO ORG_NO,
       --Ӫҵ������                
       NULL PS_BUSI_AREA_CODE,
       --���⴦�����              
       X.TYPE_CODE SPECIAL_HANDL_TYPE,
       --�û���ʶ                  
       A.CONS_ID CONS_ID,
       --�û����                 
       A.CONS_NO CONS_NO,
       --��Ѽ����ʶ             
       A.CALC_ID CALC_ID,
       --��ѷ�������              
       TO_CHAR(A.SEND_DATE, 'YYYYMMDD') AMT_YMD,
       --�������                  
       A.YM AMT_YM,
       --�õ����                  
       PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', C.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
       --�����                    
       C.PRC_CODE PRC_CODE,
       --��۰汾                  
       C.PARA_VN PRC_PARA_VN,
       --����α��                
       A.MR_SECT_NO PRC_PARA_VN,
       --�û�����                  
       PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE) CONS_SORT_CODE,
       --��ҵ����                  
       PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_TYPE_CODE) TRADE_CODE,
       --��ѹ�ȼ�                  
       PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
       --�ߺ�����ҵ����            
       PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', A.HEC_TRADE_CODE) HEC_TRADE_CODE,
       --�Ƿ�ִ�з��              
       PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG) EXEC_PV_FLAG,
       --�Ƿ�ִ�������Ƶ��        
       PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
       --�����������˷�ʽ          
       PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE) PF_EVAL_MODE,
       --���ݷ���                  
       PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02'), --����λ����ȷ������GK_DW_CODE_TANS��������,00��  01�����  02�½���,
       --�۵���                    
       SUM(C.T_SETTLE_PQ) SPQ,
       --�ܽ�����                
       SUM(C.T_AMT) SPA,
       --������                  
       SUM(E.ACME_PQ) ACME_PQ,
       --�����                    
       SUM(E.PEAK_PQ) PEAK_PQ,
       --ƽ����                    
       SUM(E.FLAT_PQ) FLAT_PQ,
       --�ȵ���                    
       SUM(E.VALLEY_PQ) VALLEY_PQ,
       --���ȵ���                  
       SUM(E.NADIR_PQ) NADIR_PQ,
       --��һ���ݵ���              
       SUM(NVL(C.T_SETTLE_PQ, 0)) FIRST_LADDER_PQ,
       --�ڶ����ݵ���              
       SUM(DECODE(C.LEVEL_NUM,
                  '2',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) SECOND_LADDER_PQ,
       --�������ݵ���              
       SUM(DECODE(C.LEVEL_NUM,
                  '3',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) THIRD_LADDER_PQ,
       --����ȵ��              
       SUM(E.ACME_KWH_AMT) ACME_KWH_PA,
       --���ȵ��                
       SUM(E.PEAK_KWH_AMT) PEAK_KWH_PA,
       --ƽ��ȵ��                
       SUM(E.FLAT_KWH_AMT) FLAT_KWH_PA,
       --�ȵ�ȵ��                
       SUM(E.VALLEY_KWH_AMT) VALLEY_KWH_PA,
       --���ȵ�ȵ��              
       SUM(E.NADIR_KWH_AMT) NADIR_KWH_PA,
       --�Ʒ�����                  
       SUM(F.BILL_CAP) BILL_CAP,
       --�Ʒ�����                  
       SUM(F.BILL_DMD) BILL_DMD,
       --�������                  
       SUM(F.CAP_PA) CAP_PA,
       --�������                  
       SUM(F.DMD_PA) DMD_PA,
       --��ӯ���                  
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
       --�ȿ����                  
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
       --���������                
       SUM(G.PF_AMT_ADD),
       --���������                
       SUM(G.PF_AMT_SUB),
       --��һ���ݵ��              
       --��ѻ�ȡ������ʡ����Ϊ�ֵ������,�ڶ���,������������¼�������Ӧ��λ�ĵ������,����������ʡ��Ҫ�ٷ�������
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
       --�ڶ������������          
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
       --���������������          
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
       --��ݵ��                  
       0 H_AND_L_PA, --��ݵ��
       --ʱ���                    
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
         AND B.PRC_TACTIC_SNAP_ID = D.PRC_TACTIC_SNAP_ID(+) --�����е�ѵ��޵�۲��Կ��յ����
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
      --���ݱ�ʶ                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --ʡ�б��                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --���絥λ���              
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
       --���������
       F.HEAD_PL_CODE,
       --��������
       H.PL_PQ PL_PQ,
       --������ѽ��
       H.PL_AMT,
       --���ڼ����־
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
  
    --��ִ�зǽ��ݵ�۵ĵ�һ,��,�����ݵ�����۸�Ϊ0
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
    OUT_MSG  := 'ִ�� P_INS_DW_O_SPE_USER_DET_RCONS  �ɹ�';
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_O_SPE_USER_DET_RCONS  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_DW_O_SPE_USER_DET_RCONS;

  PROCEDURE P_INS_DW_O_SPE_USER_DET_BCONS(I_DATE   IN VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_NUM     NUMBER;
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --�������
    V_YM  VARCHAR2(6) := SUBSTR(I_DATE, 1, 6);
    V_LYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), -1),
                                 'YYYYMM');
    V_NYM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), 1),
                                 'YYYYMM');
    V_YMD VARCHAR2(8) := SUBSTR(I_DATE, 1, 8);
    TYPE PL_ITEM_ARRAY IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
    V_PL_CODE       PL_ITEM_ARRAY; --������
    V_SP_PL_CODE    VARCHAR2(64) := 'XXX';
    V_TOPPK_YM_FLAG VARCHAR2(8); --���������±�־
    --���ݵ����������:�ֵ���(1),������(2).Ĭ��Ϊ�ֵ���1,�����ʡΪ����������dw_gk_code_trans������Ϊ2
    V_JTCFLX VARCHAR2(1) := PKG_GK_PUBLIC.F_TRANS_CODE('JTCFLX', '1');
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_SPE_USER_DET_BCONS',
                                        I_DATE);
    FOR I IN 1 .. 13 LOOP
      SELECT NVL(MAX(CONT1), 'NODATA'), NVL(MAX(CONT2), '0') --content2='1'��Ϊ�������
        INTO V_PL_CODE(I), V_NUM
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'PrtPlItem'
         AND LPAD(TRANS_VALUE, 2, '0') = LPAD(I, 2, '0'); --TRANS_VALUE��ŵľ���SGPM_OUT.ARC_E_PL_AMT��PL_AMT__�ֶε����
      IF V_NUM = '1' THEN
        V_SP_PL_CODE := V_SP_PL_CODE || V_PL_CODE(I);
      END IF;
    END LOOP;
  
    SELECT SIGN(INSTR(CONT1, SUBSTR(V_YM, 5, 2)))
      INTO V_TOPPK_YM_FLAG --���������¼����ʶ
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
      --���ݱ�ʶ                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --ʡ�б��                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --���絥λ���              
       A.ORG_NO ORG_NO,
       --Ӫҵ������                
       NULL PS_BUSI_AREA_CODE,
       --���⴦�����              
       X.TYPE_CODE SPECIAL_HANDL_TYPE,
       --�û���ʶ                  
       A.CONS_ID CONS_ID,
       --�û����                 
       A.CONS_NO CONS_NO,
       --��Ѽ����ʶ             
       A.CALC_ID CALC_ID,
       --��ѷ�������              
       TO_CHAR(A.SEND_DATE, 'YYYYMMDD') AMT_YMD,
       --�������                  
       A.YM AMT_YM,
       --�õ����                  
       PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', C.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
       --�����                    
       C.PRC_CODE PRC_CODE,
       --��۰汾                  
       C.PARA_VN PRC_PARA_VN,
       --����α��                
       A.MR_SECT_NO PRC_PARA_VN,
       --�û�����                  
       PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', A.CONS_SORT_CODE) CONS_SORT_CODE,
       --��ҵ����                  
       PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_TYPE_CODE) TRADE_CODE,
       --��ѹ�ȼ�                  
       PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
       --�ߺ�����ҵ����            
       PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE', A.HEC_TRADE_CODE) HEC_TRADE_CODE,
       --�Ƿ�ִ�з��              
       PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', B.TS_FLAG) EXEC_PV_FLAG,
       --�Ƿ�ִ�������Ƶ��        
       PKG_GK_PUBLIC.F_TRANS_CODE('PRC_TYPE_CODE', D.TYPE_CODE) TWO_PRC_FLAG,
       --�����������˷�ʽ          
       PKG_GK_PUBLIC.F_TRANS_CODE('PF_EVAL_MODE', D.PF_EVAL_MODE) PF_EVAL_MODE,
       --���ݷ���                  
       PKG_GK_PUBLIC.F_TRANS_CODE('LADDER_TYPE', '02'), --����λ����ȷ������GK_DW_CODE_TANS��������,00��  01�����  02�½���,
       --�۵���                    
       SUM(C.T_SETTLE_PQ) SPQ,
       --�ܽ�����                
       SUM(C.T_AMT) SPA,
       --������                  
       SUM(E.ACME_PQ) ACME_PQ,
       --�����                    
       SUM(E.PEAK_PQ) PEAK_PQ,
       --ƽ����                    
       SUM(E.FLAT_PQ) FLAT_PQ,
       --�ȵ���                    
       SUM(E.VALLEY_PQ) VALLEY_PQ,
       --���ȵ���                  
       SUM(E.NADIR_PQ) NADIR_PQ,
       --��һ���ݵ���              
       SUM(NVL(C.T_SETTLE_PQ, 0)) FIRST_LADDER_PQ,
       --�ڶ����ݵ���              
       SUM(DECODE(C.LEVEL_NUM,
                  '2',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) SECOND_LADDER_PQ,
       --�������ݵ���              
       SUM(DECODE(C.LEVEL_NUM,
                  '3',
                  DECODE(V_JTCFLX,
                         '1',
                         NVL(C.T_SETTLE_PQ, 0),
                         NVL(C.LEVEL_INC_PQ, 0)),
                  0)) THIRD_LADDER_PQ,
       --����ȵ��              
       SUM(E.ACME_KWH_AMT) ACME_KWH_PA,
       --���ȵ��                
       SUM(E.PEAK_KWH_AMT) PEAK_KWH_PA,
       --ƽ��ȵ��                
       SUM(E.FLAT_KWH_AMT) FLAT_KWH_PA,
       --�ȵ�ȵ��                
       SUM(E.VALLEY_KWH_AMT) VALLEY_KWH_PA,
       --���ȵ�ȵ��              
       SUM(E.NADIR_KWH_AMT) NADIR_KWH_PA,
       --�Ʒ�����                  
       SUM(F.BILL_CAP) BILL_CAP,
       --�Ʒ�����                  
       SUM(F.BILL_DMD) BILL_DMD,
       --�������                  
       SUM(F.CAP_PA) CAP_PA,
       --�������                  
       SUM(F.DMD_PA) DMD_PA,
       --��ӯ���                  
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
       --�ȿ����                  
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
       --���������                
       SUM(G.PF_AMT_ADD),
       --���������                
       SUM(G.PF_AMT_SUB),
       --��һ���ݵ��              
       --��ѻ�ȡ������ʡ����Ϊ�ֵ������,�ڶ���,������������¼�������Ӧ��λ�ĵ������,����������ʡ��Ҫ�ٷ�������
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
       --�ڶ������������          
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
       --���������������          
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
       --��ݵ��                  
       0 H_AND_L_PA, --��ݵ��
       --ʱ���                    
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
         AND B.PRC_TACTIC_SNAP_ID = D.PRC_TACTIC_SNAP_ID(+) --�����е�ѵ��޵�۲��Կ��յ����
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
      --���ݱ�ʶ                  
       PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
       --ʡ�б��                  
       V_PRO_ORG_NO PRO_ORG_NO,
       --���絥λ���              
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
       --���������
       F.HEAD_PL_CODE,
       --��������
       H.PL_PQ PL_PQ,
       --������ѽ��
       H.PL_AMT,
       --���ڼ����־
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
  
    --��ִ�зǽ��ݵ�۵ĵ�һ,��,�����ݵ�����۸�Ϊ0
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
    OUT_MSG  := 'ִ�� P_INS_DW_O_SPE_USER_DET_BCONS  �ɹ�';
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_O_SPE_USER_DET_BCONS  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END P_INS_DW_O_SPE_USER_DET_BCONS;

  PROCEDURE P_ETL_DW_O_SPE_USER_DET_RPRC(I_DATE   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  
  BEGIN
    --��¼��ʼ��־
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
    OUT_MSG  := 'ִ�� P_ETL_DW_O_SPE_USER_DET_RPRC  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_O_SPE_USER_DET_RPRC  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_O_SPE_USER_DET_RPL(I_DATE   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  
  BEGIN
    --��¼��ʼ��־
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
    OUT_MSG  := 'ִ�� P_ETL_DW_O_SPE_USER_DET_RPL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_O_SPE_USER_DET_RPL  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_O_SPE_USER_DET_RCONS(I_DATE   VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  
  BEGIN
    --��¼��ʼ��־
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
    OUT_MSG  := 'ִ�� P_ETL_DW_O_SPE_USER_DET_RCONS  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_O_SPE_USER_DET_RCONS  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_O_SPE_USER_DET_BCONS(I_DATE   VARCHAR2,
                                          OUT_CODE OUT NUMBER,
                                          OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    V_TIME VARCHAR(8) := SUBSTR(I_DATE, 1, 8);
  
  BEGIN
    --��¼��ʼ��־
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
    OUT_MSG  := 'ִ�� P_ETL_DW_O_SPE_USER_DET_BCONS  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_O_SPE_USER_DET_BCONS  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

END PKG_YWGK_DW_SPE_AC;
/
