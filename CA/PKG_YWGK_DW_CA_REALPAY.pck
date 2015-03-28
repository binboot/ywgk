CREATE OR REPLACE PACKAGE PKG_YWGK_DW_CA_REALPAY IS

  /**
   �������ƣ�P_ENT_DW_A_CASHCHK_FLOW/��ʵ�յ�ѵ�����ϸ��Ϣ��ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  ������������ʵ�յ�ѵ�����ϸ��Ϣ��ڹ���,�����ݿ�JOB����
  
  ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�
  
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_A_RCVED_ADJUST_DET/��ʵ�յ�ѵ�����ϸ��Ϣ��ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  ������������ʵ�յ�ѵ�����ϸ��Ϣ��ڹ���,�����ݿ�JOB����,ֻ��ȡ�������˷ѵ�����
  
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ���
  
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_A_TODAY_RCVBL/���յ��Ӧ��ͳ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  �������������յ��Ӧ��ͳ����ڹ���,�����ݿ�JOB����.
  
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ���
  
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_E_RS_LOG/�˲�������¼��ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  �����������˲�������¼��ڹ���,�����ݿ�JOB����.
  
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ���
  
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_A_CUR_AMT_DAY/�������ۼ�Ƿ��ͳ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  �����������������ۼ�Ƿ��ͳ����ڹ���,�����ݿ�JOB����.
  
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ���
  
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_A_RCVED_DAY/��ʵ�յ��ͳ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  ������������ʵ�յ��ͳ����ڹ���,�����ݿ�JOB����.
  
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ���
  
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_A_RCVED_MON/�¶�ʵ�յ��ͳ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-12-14 05:37
  �����������¶�ʵ�յ��ͳ����ڹ���,�����ݿ�JOB����
  
  ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�,ÿ��7���������µ�����
  
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_A_UNUSUAL_PAY/�쳣�ɷ���Ϣ��ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  �����������쳣�ɷ���Ϣ��ڹ���,�����ݿ�JOB����.
  
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ���
  ͳ���߼�Ϊ�����Ϊ��;�������ҽ�������0
  
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_A_GP_AGREEMENT/�¶ȷִλ���Э����ϸ��Ϣ��ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-12-14 05:37
  �����������¶ȷִλ���Э����ϸ��Ϣ��ڹ���,�����ݿ�JOB����
  
  ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�,ÿ��7���������µ�����
  ������Ȼ��ÿ��7��ͳ�����зִλ���Э��ǩ������������Ƿ���ֹ��ȫ����ȡ��
  
  �޸���:
  �޸�����:
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
     �������ƣ�P_ENT_DW_A_GP_EXEC_DET/�¶ȷִλ����ƻ��뷢����ϸ��ڹ���
    ���ߣ����ѵ�
    ��д���ڣ�2014-12-14 05:37
    �����������¶ȷִλ����ƻ��뷢����ϸ��ڹ���,�����ݿ�JOB����
    
    ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�,ÿ��7��ͳ�����·ִλ����������
  ÿ���û���ÿ���¶Ȼ��ж�Ӧ����+������ѵĶ�μ�¼ֵ��
  ����A����10�·ִλ���Э�鷢��3�ڣ��˱��д��4����¼������������Ѽ�¼����ͬʱ���ڵ��µ�1���˲���¼����˱��д��5����¼��
    
    �޸���:
    �޸�����:
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
   �������ƣ�P_ENT_DW_A_CASHCHK_FLOW/�¶Ƚ���ʽ���ϸ��Ϣ��ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-12-14 05:37
  �����������¶Ƚ���ʽ���ϸ��Ϣ��ڹ���,�����ݿ�JOB����
  
  ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�
  
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_A_CASHCHK_FLOW(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_CASHCHK_FLOW', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_A_CASHCHK_FLOW��
    P_INS_DW_A_CASHCHK_FLOW(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_A_CASHCHK_FLOW��ȡ���ݲ��뵽�����OMAC�û��µ�DW_A_CASHCHK_FLOW��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_A_CASHCHK_FLOW(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_A_CASHCHK_FLOW  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_A_CASHCHK_FLOW  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_CASHCHK_FLOW(I_DATA   VARCHAR2,
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
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_CASHCHK_FLOW', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_A_CASHCHK_FLOW X WHERE X.STAT_YM = V_YM;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_A_CASHCHK_FLOW
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
      --��;��ȡ��;���ݣ��������Ҫ����;������ͳ��Ϊ���������10�����ϣ��ҵ���״̬Ϊ��;,�ҽ�����������·�Ϊͳ���·ݼ���ǰ�����·ݵĽ���¼��������;��¼��
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               A.ORG_NO,
               '01',
               V_YM,
               A.CASHCHK_ID,
               A.CASHCHK_EMP_NO,
               --��ѽ��㷽ʽ
               PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', A.SETTLE_MODE),
               --���ڴ������ʡA_CASHCHK_FLOW�ڵĽ��Ϊ�գ����տ��¼A_PAY_FLOW�л�ȡ���
               A.CASHCHK_AMT,
               A.CASHCHK_DATE,
               A.SETTLE_NOTE_NO,
               A.SETTLE_BANK_CODE,
               A.CASHCHK_BANK_CODE,
               A.CASHCHK_BANK_ACCT,
               A.ACCOUNTANT_NO,
               A.DISPOSE_DATE,
               --��;
               '01',
               A.ARRIVE_DATE,
               A.BANK_NOTE_NO,
               A.ACCT_BOOK_ID,
               A.RCV_ORG_NO,
               SYSDATE
          FROM SY_SG_A_CASHCHK_FLOW A
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
              --�������Ϊͳ���·ݼ���ǰ�����·ݵ�����
           AND A.CASHCHK_DATE < V_BEGIN_NEXT_MONTH
              --����ʱ��Ϊ�ռ�Ϊ��;
           AND A.DISPOSE_DATE IS NULL
              --ͳ�ƽ������10������
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
      --����,��Ʊͳ��
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               A.ORG_NO,
               '01',
               V_YM,
               A.CASHCHK_ID,
               A.CASHCHK_EMP_NO,
               --��ѽ��㷽ʽ
               PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', A.SETTLE_MODE),
               --���ڴ������ʡA_CASHCHK_FLOW�ڵĽ��Ϊ�գ����տ��¼A_PAY_FLOW�л�ȡ���
               A.CASHCHK_AMT,
               A.CASHCHK_DATE,
               A.SETTLE_NOTE_NO,
               A.SETTLE_BANK_CODE,
               A.CASHCHK_BANK_CODE,
               A.CASHCHK_BANK_ACCT,
               A.ACCOUNTANT_NO,
               A.DISPOSE_DATE,
               --����,��Ʊ����ת��
               PKG_GK_PUBLIC.F_TRANS_CODE('ACCT_STATUS_CODE',
                                          A.ACCT_STATUS_CODE),
               A.ARRIVE_DATE,
               A.BANK_NOTE_NO,
               A.ACCT_BOOK_ID,
               A.RCV_ORG_NO,
               SYSDATE
          FROM SY_SG_A_CASHCHK_FLOW A
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
              --�������Ϊ�����·ݵ�����
           AND A.CASHCHK_DATE BETWEEN V_BEGIN_MONTH AND V_BEGIN_NEXT_MONTH
              --������Ͳ�Ϊ�ղ��Ҳ�Ϊ01��ͷ��Ϊ����,��Ʊ
           AND A.ACCT_STATUS_CODE IS NOT NULL
           AND A.ACCT_STATUS_CODE NOT LIKE '01%'
              --ͳ�ƽ������10������
           AND A.CASHCHK_AMT >= 100000;
    
      COMMIT;
    END LOOP;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_CASHCHK_FLOW  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_CASHCHK_FLOW  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_CASHCHK_FLOW(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_CASHCHK_FLOW', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_A_CASHCHK_FLOW X WHERE X.STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_A_CASHCHK_FLOW  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_A_CASHCHK_FLOW  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   �������ƣ�P_ENT_DW_A_RCVED_ADJUST_DET/��ʵ�յ�ѵ�����ϸ��Ϣ��ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  ������������ʵ�յ�ѵ�����ϸ��Ϣ��ڹ���,�����ݿ�JOB����.ֻ��ȡ�������˷ѵ�����
  
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ���
  
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_A_RCVED_ADJUST_DET(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_RCVED_ADJUST_DET',
                                        V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_A_RCVED_ADJUST_DET��
    P_INS_DW_A_RCVED_ADJUST_DET(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_A_RCVED_ADJUST_DET��ȡ���ݲ��뵽�����OMAC�û��µ�DW_A_RCVED_ADJUST_DET��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_A_RCVED_ADJUST_DET(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_A_RCVED_ADJUST_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_YMD;
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_A_RCVED_ADJUST_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_A_RCVED_ADJUST_DET  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_RCVED_ADJUST_DET(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --����
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --ͳ���ڽ�ֹ�գ�ͳ����ĩ��
    V_LT_DAY VARCHAR2(8);
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_RCVED_ADJUST_DET',
                                        I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_A_RCVED_ADJUST_DET X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_A_RCVED_ADJUST_DET
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
               '01',
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
               --�շ�����
               PKG_GK_PUBLIC.F_TRANS_CODE('CHARGE_TYPE_CODE', B.TYPE_CODE),
               B.RCV_AMT,
               B.THIS_CHG,
               B.LAST_CHG,
               B.CHARGE_EMP_NO,
               --�ɷѷ�ʽ
               PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', B.PAY_MODE),
               --��ѽ��㷽ʽ
               PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', B.SETTLE_MODE),
               B.SETTLE_NOTE_NO,
               B.SETTLE_BANK_CODE,
               B.ACCT_NO,
               B.CHARGE_REMARK,
               SYSDATE
          FROM SY_SG_A_RCVED_FLOW A, SY_SG_A_PAY_FLOW B
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
              --����ʵ�����ڰ���ͳ�Ƶ�������
           AND A.RCVED_DATE = V_YMD
              --����ʵ�յ�ѵ��ʽ��10�����ϡ�
           AND ABS(A.THIS_RCVED_AMT) >= 100000
              --�շ�����Ϊ2��ͷ ����Ϊ��ʡ�Լ���GK_DW_CODE_TRANS���������
              --��Ϊ�����˷�����
           AND ((B.TYPE_CODE LIKE '2%') OR
               (INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('CZTFLX', 'XXX'),
                       B.TYPE_CODE) > 0))
           AND A.CHARGE_ID = B.CHARGE_ID
        UNION ALL
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
               V_PRO_ORG_NO PRO_ORG_NO,
               A.ORG_NO,
               '01',
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
               --�շ�����
               PKG_GK_PUBLIC.F_TRANS_CODE('CHARGE_TYPE_CODE', B.TYPE_CODE),
               B.RCV_AMT,
               B.THIS_CHG,
               B.LAST_CHG,
               B.CHARGE_EMP_NO,
               --�ɷѷ�ʽ
               PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', B.PAY_MODE),
               --��ѽ��㷽ʽ
               PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', B.SETTLE_MODE),
               B.SETTLE_NOTE_NO,
               B.SETTLE_BANK_CODE,
               B.ACCT_NO,
               B.CHARGE_REMARK,
               SYSDATE
          FROM SY_SG_ARC_A_RCVED_FLOW A, SY_SG_A_PAY_FLOW B
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
              --����ʵ�����ڰ���ͳ�Ƶ�������
           AND A.RCVED_DATE = V_YMD
              --����ʵ�յ�ѵ��ʽ��10�����ϡ�
           AND ABS(A.THIS_RCVED_AMT) >= 100000
              --�շ�����Ϊ2��ͷ ����Ϊ��ʡ�Լ���GK_DW_CODE_TRANS���������
              --��Ϊ�����˷�����
           AND ((B.TYPE_CODE LIKE '2%') OR
               (INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('CZTFLX', 'XXX'),
                       B.TYPE_CODE) > 0))
           AND A.CHARGE_ID = B.CHARGE_ID;
    
      COMMIT;
    END LOOP;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_RCVED_ADJUST_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_RCVED_ADJUST_DET  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_RCVED_ADJUST_DET(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_RCVED_ADJUST_DET',
                                        I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_A_RCVED_ADJUST_DET X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_A_RCVED_ADJUST_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_A_RCVED_ADJUST_DET  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   �������ƣ�P_ENT_DW_A_TODAY_RCVBL/���յ��Ӧ��ͳ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  �������������յ��Ӧ��ͳ����ڹ���,�����ݿ�JOB����.
  
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ���
  
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_A_TODAY_RCVBL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_TODAY_RCVBL', V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_A_TODAY_RCVBL��
    P_INS_DW_A_TODAY_RCVBL(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_A_TODAY_RCVBL��ȡ���ݲ��뵽�����OMAC�û��µ�DW_A_TODAY_RCVBL��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_A_TODAY_RCVBL(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_A_TODAY_RCVBL A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_YMD;
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_A_TODAY_RCVBL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_A_TODAY_RCVBL  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_TODAY_RCVBL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO  VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD         VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    V_CURRENT_DAY DATE := TO_CHAR(V_YMD, 'YYYYMMDD');
    V_NEXT_DAY    DATE := V_CURRENT_DAY + 1;
    --����
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --ͳ���ڽ�ֹ�գ�ͳ����ĩ��
    V_LT_DAY VARCHAR2(8);
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_TODAY_RCVBL', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_A_TODAY_RCVBL X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_A_TODAY_RCVBL
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
               '01',
               V_YMD,
               RCVBL_YM,
               MR_SECT_NO,
               --�õ����
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
               --�û�����
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
               --��ҵ����
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
               --�ߺ�����ҵ����
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          HEC_TRADE_CODE),
               --������
               PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE),
               --��ѹ�ȼ�
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
                  --�õ����
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             ELEC_TYPE_CODE),
                  --�û�����
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             CONS_SORT_CODE),
                  --��ҵ����
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
                  --�ߺ�����ҵ����
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             HEC_TRADE_CODE),
                  --������
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE),
                  --��ѹ�ȼ�
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE);
    
      COMMIT;
    END LOOP;  
      P_INS_DW_A_TODAY_RCVBL_SH(V_YMD, OUT_CODE, OUT_MSG);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_TODAY_RCVBL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_TODAY_RCVBL  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_A_TODAY_RCVBL_SH(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO  VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD         VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    V_CURRENT_DAY DATE := TO_CHAR(V_YMD, 'YYYYMMDD');
    V_NEXT_DAY    DATE := V_CURRENT_DAY + 1;
    --����
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --ͳ���ڽ�ֹ�գ�ͳ����ĩ��
    V_LT_DAY VARCHAR2(8);
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_TODAY_RCVBL', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_A_TODAY_RCVBL X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_A_TODAY_RCVBL
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
               '01',
               V_YMD,
               RCVBL_YM,
               MR_SECT_NO,
               --�õ����
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
               --�û�����
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
               --��ҵ����
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
               --�ߺ�����ҵ����
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          HEC_TRADE_CODE),
               --������
               PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE),
               --��ѹ�ȼ�
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
                  --�õ����
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             ELEC_TYPE_CODE),
                  --�û�����
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             CONS_SORT_CODE),
                  --��ҵ����
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
                  --�ߺ�����ҵ����
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             HEC_TRADE_CODE),
                  --������
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMT_TYPE', AMT_TYPE),
                  --��ѹ�ȼ�
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE);
    
      COMMIT;
    END LOOP;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_TODAY_RCVBL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_TODAY_RCVBL  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_TODAY_RCVBL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_TODAY_RCVBL', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_A_TODAY_RCVBL X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_A_TODAY_RCVBL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_A_TODAY_RCVBL  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   �������ƣ�P_ENT_DW_E_RS_LOG/�˲�������¼��ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  �����������˲�������¼��ڹ���,�����ݿ�JOB����.
  
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ���
  
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_E_RS_LOG(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_RS_LOG', V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_E_RS_LOG��
    P_INS_DW_E_RS_LOG(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_E_RS_LOG��ȡ���ݲ��뵽�����OMAC�û��µ�DW_E_RS_LOG��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_E_RS_LOG(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_E_RS_LOG A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.RS_DATE = V_YMD;
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_E_RS_LOG  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_E_RS_LOG  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_RS_LOG(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --����
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --ͳ���ڽ�ֹ�գ�ͳ����ĩ��
    V_LT_DAY VARCHAR2(8);
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
    --�Ƿ�ɾ��20150121�����Լ���ǰ���ݵı�־.
    V_DELHistoryFlag VARCHAR2(256);
  
  BEGIN
  
    --�Ƿ�ɾ��20150121�����Լ���ǰ���ݵı�־.
    V_DELHistoryFlag := PKG_GK_PUBLIC.F_TRANS_CODE('DW_E_RS_LOG_20150121',
                                                   'XXX');
  
    IF ('XXX' = V_DELHistoryFlag) THEN
      --ɾ��2015021֮ǰ�ļ�¼
      DELETE FROM DW_E_RS_LOG WHERE 1 = 1;
      DELETE FROM DW_E_RS_PRC_AMT WHERE 1 = 1;
      DELETE FROM DW_E_RS_SORT_RELA WHERE 1 = 1;
      DELETE FROM SY_OM_DW_E_RS_LOG WHERE 1 = 1;
      DELETE FROM SY_OM_DW_E_RS_PRC_AMT WHERE 1 = 1;
      DELETE FROM SY_OM_DW_E_RS_SORT_RELA WHERE 1 = 1;
    
      --����ɾ����־
      INSERT INTO GK_DW_CODE_TRANS
        (CODE_TYPE, TRANS_VALUE, CONT1)
      VALUES
        ('DW_E_RS_LOG_20150121', 'DELETED', 'XXX');
    
      COMMIT;
    END IF;
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_RS_LOG', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    DELETE FROM DW_E_RS_LOG X WHERE X.RS_DATE = V_YMD;
    --��ʼ����ͳ��,���뵽��������OMAC��DW_E_RS_LOG
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
               '01',
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_E_RS_LOG  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_E_RS_LOG  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_E_RS_LOG(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_RS_LOG', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_E_RS_LOG X WHERE X.RS_DATE = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.RS_DATE = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    P_ETL_DW_E_RS_PRC_AMT(I_DATA, OUT_CODE, OUT_MSG);
    P_ETL_DW_E_RS_SORT_RELA(I_DATA, OUT_CODE, OUT_MSG);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_E_RS_LOG  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_E_RS_LOG  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_E_RS_PRC_AMT(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --����
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --ͳ���ڽ�ֹ�գ�ͳ����ĩ��
    V_LT_DAY VARCHAR2(8);
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_RS_PRC_AMT', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
  
    DELETE FROM DW_E_RS_PRC_AMT X
     WHERE EXISTS (SELECT 1
              FROM SY_SG_E_RS_LOG C
             WHERE C.RS_DATE = V_YMD
               AND C.RS_ID = X.RS_ID);
    --��ʼ����ͳ��,���뵽��������OMAC��DW_E_RS_PRC_AMT
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
             '01',
             A.RS_PRC_AMT_ID,
             A.RS_ID,
             A.PRC_ID,
             A.CONS_ID,
             A.ORG_NO,
             A.YM,
             A.PRC_CODE,
             A.RS_PARA_VN,
             --������
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_E_RS_PRC_AMT  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_E_RS_PRC_AMT  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_E_RS_SORT_RELA(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --����
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --ͳ���ڽ�ֹ�գ�ͳ����ĩ��
    V_LT_DAY VARCHAR2(8);
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
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
             '01',
             A.RS_TYPE_RELA_ID,
             A.RS_ID,
             A.RS_TYPE,
             A.TYPE_CODE,
             SYSDATE
        FROM SY_SG_E_RS_SORT_RELA A, TMPC C
       WHERE A.RS_ID = C.RS_ID;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_E_RS_SORT_RELA  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_E_RS_SORT_RELA  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_E_RS_PRC_AMT(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_RS_PRC_AMT', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
  
    DELETE FROM SY_OM_DW_E_RS_PRC_AMT X
     WHERE EXISTS (SELECT 1
              FROM SY_SG_E_RS_LOG C
             WHERE C.RS_DATE = V_YMD
               AND C.RS_ID = X.RS_ID);
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_E_RS_PRC_AMT  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_E_RS_PRC_AMT  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_E_RS_SORT_RELA(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_RS_SORT_RELA', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_E_RS_SORT_RELA X
     WHERE EXISTS (SELECT 1
              FROM SY_SG_E_RS_LOG C
             WHERE C.RS_DATE = V_YMD
               AND C.RS_ID = X.RS_ID);
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_E_RS_SORT_RELA  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_E_RS_SORT_RELA  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   �������ƣ�P_ENT_DW_A_CUR_AMT_DAY/�������ۼ�Ƿ��ͳ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  �����������������ۼ�Ƿ��ͳ����ڹ���,�����ݿ�JOB����.
  
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ���
  
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_A_CUR_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_CUR_AMT_DAY', V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_A_CUR_AMT_DAY��
    P_INS_DW_A_CUR_AMT_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_A_CUR_AMT_DAY��ȡ���ݲ��뵽�����OMAC�û��µ�DW_A_CUR_AMT_DAY��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_A_CUR_AMT_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_A_CUR_AMT_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_YMD;
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_A_CUR_AMT_DAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_A_CUR_AMT_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_CUR_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --����
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --ͳ���ڽ�ֹ�գ�ͳ����ĩ��
    V_LT_DAY VARCHAR2(8);
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_CUR_AMT_DAY', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_A_CUR_AMT_DAY X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_A_CUR_AMT_DAY
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
               '01',
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
                      --ͳ��Ƿ�ѡ�����Ƿ�ѵ����
                   AND A.SETTLE_FLAG IN ('01', '02')
                      --�������Ϊ����
                   AND A.RCVBL_YM = V_YM
                      --��������С�ڵ���ͳ����
                   AND A.RELEASE_DATE <= V_YMD
                      --����calc_id���й���
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
                      --ͳ��Ƿ�ѡ�����Ƿ�ѵ����
                   AND A.SETTLE_FLAG IN ('01', '02')
                      --�������Ϊ����
                   AND A.RCVBL_YM = V_YM
                      --��������С�ڵ���ͳ����
                   AND A.RELEASE_DATE <= V_YMD
                      --����calc_id���й���
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_CUR_AMT_DAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_CUR_AMT_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_CUR_AMT_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_CUR_AMT_DAY', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_A_CUR_AMT_DAY X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_A_CUR_AMT_DAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_A_CUR_AMT_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   �������ƣ�P_ENT_DW_A_RCVED_DAY/��ʵ�յ��ͳ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  ������������ʵ�յ��ͳ����ڹ���,�����ݿ�JOB����.
  
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ���
  
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_A_RCVED_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_RCVED_DAY', V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_A_RCVED_DAY��
    P_INS_DW_A_RCVED_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_A_RCVED_DAY��ȡ���ݲ��뵽�����OMAC�û��µ�DW_A_RCVED_DAY��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_A_RCVED_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_A_RCVED_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_YMD;
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_A_RCVED_DAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_A_RCVED_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_RCVED_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --����
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --ͳ���ڽ�ֹ�գ�ͳ����ĩ��
    V_LT_DAY VARCHAR2(8);
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_RCVED_DAY', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_A_RCVED_DAY X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_A_RCVED_DAY
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
               '01',
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_RCVED_DAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_RCVED_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_RCVED_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_RCVED_DAY', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_A_RCVED_DAY X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_A_RCVED_DAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_A_RCVED_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   �������ƣ�P_ENT_DW_A_RCVED_MON/�¶�ʵ�յ��ͳ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-12-14 05:37
  �����������¶�ʵ�յ��ͳ����ڹ���,�����ݿ�JOB����
  
  ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�,ÿ��7���������µ�����
  
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_A_RCVED_MON(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_RCVED_MON', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_A_RCVED_MON��
    P_INS_DW_A_RCVED_MON(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_A_RCVED_MON��ȡ���ݲ��뵽�����OMAC�û��µ�DW_A_RCVED_MON��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_A_RCVED_MON(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_A_RCVED_MON  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_A_RCVED_MON  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_RCVED_MON(I_DATA   VARCHAR2,
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
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_RCVED_MON', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_A_RCVED_MON X WHERE X.RCVED_YM = V_YM;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_A_RCVED_MON
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
               '01',
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_RCVED_MON  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_RCVED_MON  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_RCVED_MON(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_RCVED_MON', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_A_RCVED_MON WHERE RCVED_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.RCVED_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_A_RCVED_MON  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_A_RCVED_MON  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   �������ƣ�P_ENT_DW_A_UNUSUAL_PAY/�쳣�ɷ���Ϣ��ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-02-28 01:37
  �����������쳣�ɷ���Ϣ��ڹ���,�����ݿ�JOB����.
  
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ���
  ͳ���߼�Ϊ�����Ϊ��;�������ҽ�������0
  
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_A_UNUSUAL_PAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_UNUSUAL_PAY', V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_A_UNUSUAL_PAY��
    P_INS_DW_A_UNUSUAL_PAY(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_A_UNUSUAL_PAY��ȡ���ݲ��뵽�����OMAC�û��µ�DW_A_UNUSUAL_PAY��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_A_UNUSUAL_PAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_A_UNUSUAL_PAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_YMD;
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_A_UNUSUAL_PAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_A_UNUSUAL_PAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_UNUSUAL_PAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    CURRENT_DAY  DATE := TO_DATE(V_YMD, 'YYYYMMDD');
    NEXT_DAY     DATE := CURRENT_DAY + 1;
    --����
    V_YM   VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_S_YM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), -6),
                                  'YYYYMM');
    V_E_YM VARCHAR2(6) := TO_CHAR(ADD_MONTHS(TO_DATE(V_YM, 'YYYYMM'), 6),
                                  'YYYYMM');
    --ͳ���ڽ�ֹ�գ�ͳ����ĩ��
    V_LT_DAY VARCHAR2(8);
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_UNUSUAL_PAY', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
  
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_A_UNUSUAL_PAY X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_A_UNUSUAL_PAY
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
               '01',
               A.ORG_NO,
               V_YMD,
               A.CHARGE_ID,
               A.CASHCHK_ID,
               A.CONS_NO,
               A.CHARGE_YM,
               A.CHARGE_DATE,
               A.ACCT_YM,
               --�շ�����
               PKG_GK_PUBLIC.F_TRANS_CODE('CHARGE_TYPE_CODE', A.TYPE_CODE),
               A.RCV_AMT,
               A.THIS_CHG,
               A.LAST_CHG,
               A.CHARGE_EMP_NO,
               --���ʽ
               PKG_GK_PUBLIC.F_TRANS_CODE('PAY_MODE', A.PAY_MODE),
               --��ѽ��㷽ʽ
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
              --Ϊ��֤�������������ֶ�,ʱ���ȡǰ��6����
           AND A.CHARGE_YM BETWEEN V_S_YM AND V_E_YM
              --��;������
           AND PKG_GK_PUBLIC.F_TRANS_CODE('ACCT_STATUS_CODE',
                                          B.ACCT_STATUS_CODE) IN
               ('01', '02')
              --�ֽ�POS��ˢ��
           AND PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', A.SETTLE_MODE) IN
               ('01', '05')
              --�����ڵ���10��
           AND A.RCV_AMT >= 100000
           AND A.CHARGE_DATE BETWEEN CURRENT_DAY AND NEXT_DAY
           AND A.CASHCHK_ID = B.CASHCHK_ID;
    
      COMMIT;
    END LOOP;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_UNUSUAL_PAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_UNUSUAL_PAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_UNUSUAL_PAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_UNUSUAL_PAY', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_A_UNUSUAL_PAY X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_A_UNUSUAL_PAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_A_UNUSUAL_PAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   �������ƣ�P_ENT_DW_A_GP_AGREEMENT/�¶ȷִλ���Э����ϸ��Ϣ��ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2014-12-14 05:37
  �����������¶ȷִλ���Э����ϸ��Ϣ��ڹ���,�����ݿ�JOB����
  
  ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�,ÿ��7���������µ�����
  ������Ȼ��ÿ��7��ͳ�����зִλ���Э��ǩ������������Ƿ���ֹ��ȫ����ȡ��
  
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_A_GP_AGREEMENT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_GP_AGREEMENT', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_A_GP_AGREEMENT��
    P_INS_DW_A_GP_AGREEMENT(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_A_GP_AGREEMENT��ȡ���ݲ��뵽�����OMAC�û��µ�DW_A_GP_AGREEMENT��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_A_GP_AGREEMENT(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_A_GP_AGREEMENT  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_A_GP_AGREEMENT  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_GP_AGREEMENT(I_DATA   VARCHAR2,
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
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_GP_AGREEMENT', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_A_GP_AGREEMENT X WHERE X.STAT_YM = V_YM;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_A_GP_AGREEMENT
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
               '01',
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_GP_AGREEMENT  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_GP_AGREEMENT  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_GP_AGREEMENT(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_GP_AGREEMENT', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_A_GP_AGREEMENT WHERE STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_A_GP_AGREEMENT  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_A_GP_AGREEMENT  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
     �������ƣ�P_ENT_DW_A_GP_EXEC_DET/�¶ȷִλ����ƻ��뷢����ϸ��ڹ���
    ���ߣ����ѵ�
    ��д���ڣ�2014-12-14 05:37
    �����������¶ȷִλ����ƻ��뷢����ϸ��ڹ���,�����ݿ�JOB����
    
    ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·�,ÿ��7��ͳ�����·ִλ����������
  ÿ���û���ÿ���¶Ȼ��ж�Ӧ����+������ѵĶ�μ�¼ֵ��
  ����A����10�·ִλ���Э�鷢��3�ڣ��˱��д��4����¼������������Ѽ�¼����ͬʱ���ڵ��µ�1���˲���¼����˱��д��5����¼��
    
    �޸���:
    �޸�����:
    **/
  PROCEDURE P_ENT_DW_A_GP_EXEC_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_GP_EXEC_DET', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_A_GP_EXEC_DET��
    P_INS_DW_A_GP_EXEC_DET(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_A_GP_EXEC_DET��ȡ���ݲ��뵽�����OMAC�û��µ�DW_A_GP_EXEC_DET��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_A_GP_EXEC_DET(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_A_GP_EXEC_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_A_GP_EXEC_DET  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_GP_EXEC_DET(I_DATA   VARCHAR2,
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
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_GP_EXEC_DET', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_A_GP_EXEC_DET X WHERE X.STAT_YM = V_YM;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_A_GP_EXEC_DET
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
               '01',
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
               '01',
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_GP_EXEC_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_GP_EXEC_DET  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_GP_EXEC_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_GP_EXEC_DET', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_A_GP_EXEC_DET WHERE STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_A_GP_EXEC_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_A_GP_EXEC_DET  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

END PKG_YWGK_DW_CA_REALPAY;
/
