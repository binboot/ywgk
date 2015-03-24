CREATE OR REPLACE PACKAGE PKG_YWGK_DW_AR IS

  /**(������Ϣ��Դ�ڡ�ҵ��ܿ����ݲֿ���嵥20140226.xlsx��)
   �������ƣ�P_ENT_DW_C_CONS_COMP/�¶ȵ�λ�õ�ͻ���ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  �����������¶ȵ�λ�õ�ͻ���ڹ���,�����ݿ�JOB����
  
  ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�
  
  �޸���:
  �޸�����:
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
    �������ƣ�P_ENT_DW_C_BUSI_COMP/�¶ȵ�λӪҵ��ͳ����ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ����������ͳ�Ƹ��㼶��λ������Ӫҵ���ĵ����������,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ������1�����
    ��θ�ʽ��I_DATA ��YYYYMM
    �޸���:
    �޸�����:
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
    �������ƣ�P_ENT_DW_C_DIFF_PRC_DET/�¶Ȳ�����û��嵥��ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ����������ͳ�Ƹ���λ�㼶������ִ�в���۵�����ϸ���,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ������1�����
    ��θ�ʽ��I_DATA ��YYYYMM
    �޸���:
    �޸�����:
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
    �������ƣ�P_ENT_DW_C_MP_COMP/�¶ȹؿڼ�����ͳ����ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ����������ͳ�Ƹ��㼶��λ�Ĺؿڼ�����������,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ������1�����
    ��θ�ʽ��I_DATA ��YYYYMM
    �޸���:
    �޸�����:
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
    �������ƣ�P_ENT_DW_E_PRC_MERGE/�ϱ�������ñ���ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    �������������¸��¸���λ�ϱ��û��������,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ������1�����
    ��θ�ʽ��I_DATA ��YYYYMM
    �޸���:
    �޸�����:
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
  #function:--�õ���ǰ�汾��(���,������)
  #version:--version 1.0
  #author:-- xixi
  #createdate:--2008-5-1 13:38:48
  #input:--in_par_ver_type   ��Ѳ����汾���
  #input:--in_org_no   ��λ
  #modifyexplain:--
  **********************************/
  FUNCTION F_GET_CURVER(IN_PAR_VER_TYPE IN NUMBER,
                        IN_YM           VARCHAR2,
                        IN_ORG_NO       IN VARCHAR2) RETURN NUMBER;
                        
                        
    /**(������Ϣ��Դ�ڡ�ҵ��ܿ����ݲֿ���嵥20140226.xlsx��)
   �������ƣ�P_ENT_DW_C_HV_CONS/�¶ȸ�ѹ�õ�ͻ�������
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  �����������¶ȸ�ѹ�õ�ͻ���������ڹ���,�����ݿ�JOB����
  
  ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�
  
  �޸���:
  �޸�����:
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
                                 
  /**(������Ϣ��Դ�ڡ�ҵ��ܿ����ݲֿ���嵥20140226.xlsx��)
   �������ƣ�P_ENT_DW_O_EMP/��Ա
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  ������������Ա��ڹ���,�����ݿ�JOB����
  
  ͳ��Ƶ�ȣ��������ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�
  
  �޸���:
  �޸�����:
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

  /**(������Ϣ��Դ�ڡ�ҵ��ܿ����ݲֿ���嵥20140226.xlsx��)
   �������ƣ�P_ENT_DW_C_CONS_COMP/�¶ȵ�λ�õ�ͻ���ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  �����������¶ȵ�λ�õ�ͻ���ڹ���,�����ݿ�JOB����
  
  ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�
  
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_C_CONS_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_C_CONS_COMP', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_C_CONS_COMP(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_C_CONS_COMP(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_C_CONS_COMP A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE A.STAT_YM = V_YM;
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_C_CONS_COMP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_C_CONS_COMP  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_C_CONS_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    --ͳ���ڽ�ֹ�գ�ͳ����ĩ��
    V_LT_DAY VARCHAR2(8);
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_CONS_COMP', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_C_CONS_COMP X WHERE X.STAT_YM = V_YM;
  
    --Ϊ����,����˫��Դ�����Դ�û���
    DELETE FROM TMP_PS_NUM_CODE_CONS;
    INSERT INTO TMP_PS_NUM_CODE_CONS
      (CONS_ID, PS_NUM_CODE)
      SELECT CONS_ID, MAX(PS_NUM_CODE)
        FROM SY_SG_C_SP C
       WHERE C.PS_NUM_CODE <> '1'
       GROUP BY CONS_ID;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_C_CONS_COMP
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      --Ϊ����,���������˱�����Դ���û���,���õ�λ����
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
      *modify by:���ѵ� 
      *���ӱ�׼����ת���߼�,ת������pkg_gk_public.f_trans_code�����������group by��֤����ת������ֶ����ͬ���͵�ά�Ⱥ󱻻���,��ֹ�����ظ�.
      *pkg_gk_public.f_trans_code�ĵ�һ������Ϊҵ��ܿصı�׼��������,�Ѿ����ο�����92�ű������ά���ֶζ�Ӧ�ı�׼���������ҵ�,
      *���Բ���<<��׼�����Ӧ��׼��������20140305.xlsx>>��ı�׼��������.
      *pkg_gk_public.f_trans_code���߼�Ϊ�����Ѿ�������dw_gk_code_trans����еı�׼�������ת��,���û����������ԭ����ά�ȴ��뷵��
      *
      ***ǧ��ע��:���������select ��group by���ڱ�׼����ת��,��Ҫ����׼����ת����ҵ���߼���һ�����ڲ��select��,��������Ӫ���������
      *��ǧ�����ݶ���μӱ�׼����ת��.!!!�����ҵ���߼�ɸѡ��������select�н��д���ת��!!!
      */
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               ORG_NO,
               STAT_YM,
               PS_BUSI_AREA_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', PS_VOLT_CODE),
               --�����ѹ
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
               --��ҵ����
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
               --�û�����
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
               --�õ����
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          HEC_TRADE_CODE),
               --�ߺ�����ҵ����
               PKG_GK_PUBLIC.F_TRANS_CODE('CONS_STATUS_CODE', CUST_STATUS),
               --�ͻ�״̬
               PKG_GK_PUBLIC.F_TRANS_CODE('PS_NUM_CODE', PS_NUM_SORT),
               --��Դ��Ŀ����
               WEATHER_SECURITY,
               --�Ƿ��䱸������Դ
               PKG_GK_PUBLIC.F_TRANS_CODE('TMP_FLAG', TMP_FLAG),
               --��ʱ�õ��־
               PKG_GK_PUBLIC.F_TRANS_CODE('MARK_NOTES_TYPE', NOTE_TYPE_CODE),
               --Ʊ������
               PKG_GK_PUBLIC.F_TRANS_CODE('NOTIFY_MODE', NOTIFY_MODE),
               --���֪ͨ��ʽ
               PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', SETTLE_MODE),
               --��ѽ��㷽ʽ
               PKG_GK_PUBLIC.F_TRANS_CODE('IMPORTANCE_LEVEL', RRIO_CODE),
               --��Ҫ�Եȼ�
               PKG_GK_PUBLIC.F_TRANS_CODE('TRANSFER_CODE', TRANSFER_FLAG),
               --ת����־
               SUM(CC),
               SUM(CTRT_CAP),
               SUM(RUN_CAP),
               SYSDATE
          FROM (SELECT
                /*+parallel(A 4) (B 4) (D 4)*/
                 A.ORG_NO ORG_NO,
                 --ͳ������
                 V_YM STAT_YM,
                 --Ϊ�ռ��ɣ�Ӫҵ�����������ܲ����߳��򲹳�.
                 '' PS_BUSI_AREA_CODE,
                 --�����ѹ
                 A.VOLT_CODE PS_VOLT_CODE,
                 --��ҵ����
                 A.TRADE_CODE TRADE_CODE,
                 --�û�����
                 A.CONS_SORT_CODE CONS_SORT_CODE,
                 --�õ����
                 A.ELEC_TYPE_CODE ELEC_TYPE_CODE,
                 --�ߺ�����ҵ����
                 A.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                 --�ͻ�״̬
                 A.STATUS_CODE CUST_STATUS,
                 --��Դ����1 ����Դ 2 ˫��Դ 3 ���Դ
                 NVL(B.PS_NUM_CODE, 1) PS_NUM_SORT,
                 --�Ƿ��䱸������Դ
                 DECODE(D.WEATHER_SECURITY, 1, 1, 0) WEATHER_SECURITY,
                 --��ʱ�õ��־
                 A.TMP_FLAG TMP_FLAG,
                 --Ʊ������
                 A.NOTE_TYPE_CODE NOTE_TYPE_CODE,
                 --���֪ͨ��ʽ
                 A.NOTIFY_MODE NOTIFY_MODE,
                 --��ѽ��㷽ʽ
                 A.SETTLE_MODE SETTLE_MODE,
                 --��Ҫ�Եȼ�
                 A.RRIO_CODE RRIO_CODE,
                 --ת����־
                 A.TRANSFER_CODE TRANSFER_FLAG,
                 --����
                 COUNT(A.CONS_ID) CC,
                 --��ͬ����
                 SUM(NVL(A.CONTRACT_CAP, 0)) CTRT_CAP,
                 --��������
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
        --�˴���groupby �������ݽ���ά��ת���󲻳����ظ�
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_C_CONS_COMP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_C_CONS_COMP  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_C_CONS_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_C_CONS_COMP', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_C_CONS_COMP X WHERE X.STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_C_CONS_COMP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_C_CONS_COMP  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;
  /**
    �������ƣ�P_ENT_DW_C_BUSI_COMP/�¶ȵ�λӪҵ��ͳ����ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ����������ͳ�Ƹ��㼶��λ������Ӫҵ���ĵ����������,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ������1�����
    ��θ�ʽ��I_DATA ��YYYYMM
    �޸���:
    �޸�����:
  **/
  PROCEDURE P_ENT_DW_C_BUSI_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
  
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_C_BUSI_COMP', I_DATA);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_BUSI_COMP��
    P_INS_DW_C_BUSI_COMP(I_DATA, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_BUSI_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_BUSI_COMP��
      P_ETL_DW_C_BUSI_COMP(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_C_BUSI_COMP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_C_DIFF_PRC_DET  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_C_BUSI_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --��ʡ��λ
    V_PRO_ORG_NO DW_C_BUSI_COMP.PRO_ORG_NO%TYPE;
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_BUSI_COMP', I_DATA);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_C_BUSI_COMP X WHERE X.STAT_YM = V_YM;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_C_BUSI_COMP
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      --�Ƚ������������ݲ��뵽��ʱ����                  
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
              --ȡ�ͻ�������
           AND C.TYPE_CODE = '01'
           AND B.ORG_NO = C.ORG_NO
           AND B.TARIFF_ID = C.TARIFF_ID
           AND C.RUN_DATE < V_BEGIN_NEXT_MONTH
              --�ų��������ļ���
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
    
      --��ʼ������۰汾��
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
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID, --����
               V_PRO_ORG_NO PRO_ORG_NO, --��ʡ���� 
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_C_BUSI_COMP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_C_BUSI_COMP  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_C_BUSI_COMP(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    V_YM VARCHAR2(6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_C_BUSI_COMP', I_DATA);
    --����
    V_YM := SUBSTR(I_DATA, 1, 6);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_C_BUSI_COMP X WHERE X.STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_C_BUSI_COMP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_C_BUSI_COMP  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;
  /**
    �������ƣ�P_ENT_DW_C_DIFF_PRC_DET/�¶Ȳ�����û��嵥��ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ����������ͳ�Ƹ���λ�㼶������ִ�в���۵�����ϸ���,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ������1�����
    ��θ�ʽ��I_DATA ��YYYYMM
    �޸���:
    �޸�����:
  **/
  PROCEDURE P_ENT_DW_C_DIFF_PRC_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_C_DIFF_PRC_DET', I_DATA);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_BUSI_COMP��
    P_INS_DW_C_DIFF_PRC_DET(I_DATA, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_BUSI_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_BUSI_COMP��
      P_ETL_DW_C_DIFF_PRC_DET(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_C_DIFF_PRC_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_C_DIFF_PRC_DET  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_C_DIFF_PRC_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID VARCHAR2(24);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_CODE_PRC   VARCHAR2(16) DEFAULT 'difPrcCode'; --����������ã�k_code���룩
    V_YM         VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_LT_YMD     VARCHAR2(8);
    V_COUNT      NUMBER;
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  BEGIN
    --��ʼ��¼��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_DIFF_PRC_DET', I_DATA);
    --ͳ�ƽ�ֹ���ڣ�ͳ����ĩ��
    V_LT_YMD := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    DELETE FROM DW_C_DIFF_PRC_DET WHERE STAT_YM = V_YM;
  
    --Ϊ����,����˫��Դ�����Դ�û���
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
    
      --���ڲ���۵��û����ر���,���ҵ�ִ�в���۵��û�(������ʡ�����ñ������õĲ������)               
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
    
      --�жϱ����Ƿ������ݣ�����������ֹ����                
      SELECT /*+FIRST_ROWS*/
       COUNT(1)
        INTO V_COUNT
        FROM TMP_CONS_PRC_DIFF_PRC_DET
       WHERE ROWNUM = 1;
    
      IF 0 <> V_COUNT THEN
      
        --Ϊ����,���������˱�����Դ���û���,���õ�λ����
        INSERT INTO TMP_WEATHER_SECURITY_CONS
          (CONS_ID, WEATHER_SECURITY)
          SELECT CONS_ID, 1 WEATHER_SECURITY
            FROM SY_SG_C_PS C
           WHERE C.PS_ATTR = '30'
             AND C.ORG_NO LIKE TSS.ORG_NO || '%';
      
        --���뵽����룬׼������������
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_C_DIFF_PRC_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_C_DIFF_PRC_DET  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_C_DIFF_PRC_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    V_YM VARCHAR2(6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_C_BUSI_COMP', I_DATA);
    --����
    V_YM := SUBSTR(I_DATA, 1, 6);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_C_DIFF_PRC_DET X WHERE X.STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
  
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_C_DIFF_PRC_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_C_DIFF_PRC_DET  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /**
    �������ƣ�P_ENT_DW_C_MP_COMP/�¶ȹؿڼ�����ͳ����ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ����������ͳ�Ƹ��㼶��λ�Ĺؿڼ�����������,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ������1�����
    ��θ�ʽ��I_DATA ��YYYYMM
    �޸���:
    �޸�����:
  **/
  PROCEDURE P_ENT_DW_C_MP_COMP(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_C_MP_COMP', I_DATA);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_BUSI_COMP��
    P_INS_DW_C_MP_COMP(I_DATA, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_BUSI_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_BUSI_COMP��
      P_ETL_DW_C_MP_COMP(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_C_MP_COMP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_C_MP_COMP  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_C_MP_COMP(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_LT_YMD     DATE;
  BEGIN
    --��ʼ��¼��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_MP_COMP', I_DATA);
  
    --ͳ�ƽ�ֹ���ڣ�ͳ����ĩ��
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_C_MP_COMP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_C_MP_COMP  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_C_MP_COMP(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    V_YM VARCHAR2(6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_C_MP_COMP', I_DATA);
    --����
    V_YM := SUBSTR(I_DATA, 1, 6);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_C_MP_COMP X WHERE X.STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
  
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_C_MP_COMP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_C_MP_COMP  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /**
    �������ƣ�P_ENT_DW_E_PRC_MERGE/�ϱ�������ñ���ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    �������������¸��¸���λ�ϱ��û��������,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ������1�����
    ��θ�ʽ��I_DATA ��YYYYMM
    �޸���:
    �޸�����:
  **/
  PROCEDURE P_ENT_DW_E_PRC_MERGE(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_PRC_MERGE', I_DATA);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_BUSI_COMP��
    P_INS_DW_E_PRC_MERGE(I_DATA, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_BUSI_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_BUSI_COMP��
      P_ETL_DW_E_PRC_MERGE(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_E_PRC_MERGE  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_E_PRC_MERGE  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_E_PRC_MERGE(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID    VARCHAR2(24);
    V_CODE_PRC   VARCHAR2(16) DEFAULT 'comPrcCode'; --�ϱ���������ã�k_code���룩
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��ʼ��¼��־
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_E_PRC_MERGE  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_E_PRC_MERGE  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_E_PRC_MERGE(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_PRC_MERGE', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_E_PRC_MERGE;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
  
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_E_PRC_MERGE  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_E_PRC_MERGE  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  FUNCTION F_GET_CURVER(IN_PAR_VER_TYPE IN NUMBER,
                        IN_YM           VARCHAR2,
                        IN_ORG_NO       IN VARCHAR2) RETURN NUMBER IS
    /*********************************
    #function:--�õ���ǰ�汾��(���,������)
    #version:--version 1.0
    #author:-- xixi
    #createdate:--2008-5-1 13:38:48
    #input:--in_par_ver_type   ��Ѳ����汾���
    #input:--in_org_no   ��λ
    #modifyexplain:--
    **********************************/
    V_PAR_VN SY_SG_E_BILL_PARA_VER.PARA_VN%TYPE;
    V_BGN_DATE CONSTANT VARCHAR2(10) := '2000-01-01';
    V_END_DATE CONSTANT VARCHAR2(10) := '2099-01-01';
    V_PRICE_ORG_NO SY_SG_E_CONS_SNAP.ORG_NO%TYPE;
  BEGIN
    --�����û���λȡ��������۵�λ
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

  /**(������Ϣ��Դ�ڡ�ҵ��ܿ����ݲֿ���嵥20140226.xlsx��)
   �������ƣ�P_ENT_DW_C_HV_CONS/�¶ȸ�ѹ�õ�ͻ�������
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  �����������¶ȸ�ѹ�õ�ͻ���������ڹ���,�����ݿ�JOB����
  
  ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�
  
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_C_HV_CONS(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_C_HV_CONS', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_HV_CONS��
    P_INS_DW_C_HV_CONS(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_C_HV_CONS��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_HV_CONS��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_C_HV_CONS(V_YM, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_C_HV_CONS  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_C_HV_CONS  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_C_HV_CONS(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    --ͳ���ڽ�ֹ�գ�ͳ����ĩ��
    V_LT_DAY VARCHAR2(8);
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_HV_CONS', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
  
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_C_HV_CONS X WHERE X.STAT_YM = V_YM;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_C_HV_CONS
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
              --��ȡ�õ�ͻ�����Ϊ��ѹ���û�
           AND A.CONS_SORT_CODE LIKE '01%'
              --��������С����ĩ
           AND A.BUILD_DATE < V_BEGIN_NEXT_MONTH
           AND (A.CANCEL_DATE >= V_BEGIN_MONTH OR
               (A.CANCEL_DATE IS NULL AND A.STATUS_CODE <> '9'));
    
      COMMIT;
    END LOOP;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_C_HV_CONS  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_C_HV_CONS  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_C_HV_CONS(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_C_HV_CONS', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_C_HV_CONS X WHERE X.STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_C_HV_CONS  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_C_HV_CONS  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**(������Ϣ��Դ�ڡ�ҵ��ܿ����ݲֿ���嵥20140226.xlsx��)
   �������ƣ�P_ENT_DW_O_EMP/��Ա
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  ������������Ա��ڹ���,�����ݿ�JOB����
  
  ͳ��Ƶ�ȣ��������ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�
  
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_O_EMP(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_EMP', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_O_EMP��
    P_INS_DW_O_EMP(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_O_EMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_O_EMP��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_O_EMP(V_YM, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_O_EMP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_O_EMP  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_O_EMP(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    --ͳ���ڽ�ֹ�գ�ͳ����ĩ��
    V_LT_DAY VARCHAR2(8);
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_EMP', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
  
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
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
             --��������Ϊ��
             '',
             --���Ϊ��
             '',
             SYSDATE
        FROM SY_SG_O_STAFF A, SY_SG_O_DEPT B
       WHERE A.DEPT_NO = B.DEPT_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_O_EMP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_O_EMP  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_O_EMP(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_O_EMP', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_O_EMP X;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_O_EMP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_O_EMP  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

END PKG_YWGK_DW_AR;
/
