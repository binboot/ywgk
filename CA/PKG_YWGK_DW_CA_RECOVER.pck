create or replace package PKG_YWGK_DW_CA_RECOVER is

  /**
   �������ƣ�P_ENT_DW_A_CASHCHK/�ն���;�����ϸ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2015-01-29 23:37
  �����������ն���;�����ϸ����ڹ���,�����ݿ�JOB����,ÿ���賿1�㿪ʼ����
  
  ͳ��Ƶ�ȣ�ÿ��1���賿1�㡢7���賿1�㡢16���賿1�㡢26���賿1�� ��ȡ��ͳ�����ڴ������TO_CHAR(SYSDATE-1,'YYYYMMDD')��
  1����Ӫ����A_CASHCHK_FLOW�е���״̬��ACCT_STATUS_CODE��Ϊ01�Ľ���¼
   ͳ�����ڴ���������ڡ�
  2����ӦӪ����A_CASHCHK_FLOW
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_A_PAY/�ն���;�շѼ�¼����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2015-01-29 23:37
  �����������ն���;�շѼ�¼����ڹ���,��P_ENT_DW_A_CASHCHKִ����Ϻ���ִ�д˹���
  
  ͳ��Ƶ�ȣ�ÿ��1���賿1�㡢7���賿1�㡢16���賿1�㡢26���賿1�� ��ȡ��ͳ�����ڴ������TO_CHAR(SYSDATE-1,'YYYYMMDD')��
  1������DW_A_CASHCHK�е�CASHCHK_ID��Ӫ��A_PAY_FLOW��ȡ���շѼ�¼��
    ͳ��������DW_A_CASHCHK�е�ͳ��������ͬ
  2��Ӫ����A_PAY_FLOW
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_A_RCVED/�ն���;ʵ�յ����Ϣ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2015-01-29 23:37
  �����������ն���;ʵ�յ����Ϣ����ڹ���,��P_ENT_DW_A_PAYִ����Ϻ���ִ�д˹���
  
  ͳ��Ƶ�ȣ�ÿ��1���賿1�㡢7���賿1�㡢16���賿1�㡢26���賿1�� ��ȡ��ͳ�����ڴ������TO_CHAR(SYSDATE-1,'YYYYMMDD')��
  1������DW_A_PAY�е�CHARGE_ID��Ӫ��A_RCVED_FLOW��ȡ��ʵ�ռ�¼��
    ͳ��������DW_A_PAY�е�ͳ��������ͬ
  2��Ӫ����A_RCVED_FLOW
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_A_RCVBL/�ն���;Ӧ�յ����Ϣ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2015-01-29 23:37
  �����������ն���;Ӧ�յ����Ϣ����ڹ���,��P_ENT_DW_A_RCVEDִ����Ϻ���ִ�д˹���
  
  ͳ��Ƶ�ȣ�ÿ��1���賿1�㡢7���賿1�㡢16���賿1�㡢26���賿1�� ��ȡ��ͳ�����ڴ������TO_CHAR(SYSDATE-1,'YYYYMMDD')��
  1������DW_A_RCVED�е�RCVBL_AMT_ID����Ӫ��A_RCVBL_FLOW��ȡ��Ӧ�ռ�¼��
     ͳ��������DW_A_RCVED�е�ͳ��������ͬ
  2��Ӫ����A_RCVBL_FLOW
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_E_CONS_SNAP_TRANSIT/�¶���;�ʽ��û���ѿ��ձ���ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2015-01-29 23:37
  �����������¶���;�ʽ��û���ѿ��ձ���ڹ���,��P_ENT_DW_A_RCVEDִ����Ϻ���ִ�д˹���
  
  ͳ��Ƶ�ȣ�ÿ��1���賿1�㡢7���賿1�㡢16���賿1�㡢26���賿1�� ��ȡ��ͳ�����ڴ������TO_CHAR(SYSDATE-1,'YYYYMMDD')��
  1������DW_A_RCVED�е�RCVBL_AMT_ID����Ӫ��A_RCVBL_FLOW��ȡ��Ӧ�ռ�¼��
     ͳ��������DW_A_RCVED�е�ͳ��������ͬ
  2��Ӫ����A_RCVBL_FLOW
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_ARC_E_CONS_SNAP/�û����ձ���ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2015-01-29 23:37
  �����������û����ձ���ڹ���,��P_ENT_DW_A_RCVEDִ����Ϻ���ִ�д˹���
  
  ͳ��Ƶ�ȣ�ÿ���ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ�����.ÿ������
  �޸���:
  �޸�����:
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
   �������ƣ�P_ENT_DW_A_CASHCHK/�ն���;�����ϸ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2015-01-29 23:37
  �����������ն���;�����ϸ����ڹ���,�����ݿ�JOB����,ÿ���賿1�㿪ʼ����
  
  ͳ��Ƶ�ȣ�ÿ��1���賿1�㡢7���賿1�㡢16���賿1�㡢26���賿1�� ��ȡ��ͳ�����ڴ������TO_CHAR(SYSDATE-1,'YYYYMMDD')��
  1����Ӫ����A_CASHCHK_FLOW�е���״̬��ACCT_STATUS_CODE��Ϊ01�Ľ���¼
   ͳ�����ڴ���������ڡ�
  2����ӦӪ����A_CASHCHK_FLOW
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_A_CASHCHK(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_CASHCHK', V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_A_CASHCHK��
    P_INS_DW_A_CASHCHK(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_A_CASHCHK��ȡ���ݲ��뵽�����OMAC�û��µ�DW_A_CASHCHK��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_A_CASHCHK(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_A_CASHCHK A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_A_CASHCHK  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_A_CASHCHK  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_CASHCHK(I_DATA   VARCHAR2,
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
    V_DATE             DATE := TO_DATE(V_YMD || '010000',
                                       'YYYYMMDDhh24miss') + 1;
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_CASHCHK', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
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
       --�����ʶ
       PKG_GK_PUBLIC.F_TRANS_CODE('C_SETTLE_MODE', A.SETTLE_MODE),
       A.CASHCHK_AMT,
       A.CASHCHK_DATE,
       A.SETTLE_NOTE_NO,
       A.SETTLE_BANK_CODE,
       A.CASHCHK_BANK_CODE,
       A.CASHCHK_BANK_ACCT,
       A.ACCOUNTANT_NO,
       A.DISPOSE_DATE,
       --����,��Ʊ����ת��
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
      --���շ�δ��������,������ʷ���������֣����ڵ�������������� 
       NVL(A.CASHCHK_DATE, (SYSDATE - 1)) <= V_DATE
      --����״̬Ϊ01
       AND PKG_GK_PUBLIC.F_TRANS_CODE('ACCT_STATUS_CODE', A.ACCT_STATUS_CODE) = '01';
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_CASHCHK  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_CASHCHK  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_CASHCHK(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_CASHCHK', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_A_CASHCHK X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_A_CASHCHK  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_A_CASHCHK  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   �������ƣ�P_ENT_DW_A_PAY/�ն���;�շѼ�¼����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2015-01-29 23:37
  �����������ն���;�շѼ�¼����ڹ���,��P_ENT_DW_A_CASHCHKִ����Ϻ���ִ�д˹���
  
  ͳ��Ƶ�ȣ�ÿ��1���賿1�㡢7���賿1�㡢16���賿1�㡢26���賿1�� ��ȡ��ͳ�����ڴ������TO_CHAR(SYSDATE-1,'YYYYMMDD')��
  1������DW_A_CASHCHK�е�CASHCHK_ID��Ӫ��A_PAY_FLOW��ȡ���շѼ�¼��
    ͳ��������DW_A_CASHCHK�е�ͳ��������ͬ
  2��Ӫ����A_PAY_FLOW
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_A_PAY(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_PAY', V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_A_PAY��
    P_INS_DW_A_PAY(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_A_PAY��ȡ���ݲ��뵽�����OMAC�û��µ�DW_A_PAY��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_A_PAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_A_PAY A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_A_PAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_A_PAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_PAY(I_DATA   VARCHAR2,
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
    V_DATE             DATE := TO_DATE(V_YMD || '010000',
                                       'YYYYMMDDhh24miss') + 1;
    V_MONTH            DATE := TO_DATE('200801', 'YYYYMM');
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_PAY', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_A_PAY X WHERE X.STAT_YMD = V_YMD;
  
    --�����ϴ�ͳ�Ƶ�CHARGE_YM��Сֵ��ʼѭ��
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
  
    --����A_PAY_FLOW�е�CHARGE_YM����
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
        --����A_PAY_FLOW�ڵ�CHARGE_YM���� 
         A.CHARGE_YM = TO_CHAR(V_MONTH, 'YYYYMM')
        --�����Ѿ�ͳ�ƺõ�DW_A_CASHCHK���е�STAT_YMD����
         AND EXISTS (SELECT /*+PARALLEL(B 4)*/
           1
            FROM DW_A_CASHCHK B
           WHERE B.STAT_YMD = V_YMD
             AND B.CASHCHK_ID = A.CASHCHK_ID);
      COMMIT;
      --V_MONTH����
      V_MONTH := ADD_MONTHS(V_MONTH, 1);
    END LOOP;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_PAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_PAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_PAY(I_DATA   VARCHAR2,
                           OUT_CODE OUT NUMBER,
                           OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_PAY', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_A_PAY X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_A_PAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_A_PAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   �������ƣ�P_ENT_DW_A_RCVED/�ն���;ʵ�յ����Ϣ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2015-01-29 23:37
  �����������ն���;ʵ�յ����Ϣ����ڹ���,��P_ENT_DW_A_PAYִ����Ϻ���ִ�д˹���
  
  ͳ��Ƶ�ȣ�ÿ��1���賿1�㡢7���賿1�㡢16���賿1�㡢26���賿1�� ��ȡ��ͳ�����ڴ������TO_CHAR(SYSDATE-1,'YYYYMMDD')��
  1������DW_A_PAY�е�CHARGE_ID��Ӫ��A_RCVED_FLOW��ȡ��ʵ�ռ�¼��
    ͳ��������DW_A_PAY�е�ͳ��������ͬ
  2��Ӫ����A_RCVED_FLOW
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_A_RCVED(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_RCVED', V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_A_RCVED��
    P_INS_DW_A_RCVED(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_A_RCVED��ȡ���ݲ��뵽�����OMAC�û��µ�DW_A_RCVED��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_A_RCVED(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_A_RCVED A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_A_RCVED  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_A_RCVED  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_RCVED(I_DATA   VARCHAR2,
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
    V_DATE             DATE := TO_DATE(V_YMD || '010000',
                                       'YYYYMMDDhh24miss') + 1;
  
    V_MONTH     DATE := TO_DATE('200801', 'YYYYMM');
    V_MONTH_MIN DATE := TO_DATE('200801', 'YYYYMM');
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_RCVED', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_A_RCVED X WHERE X.STAT_YMD = V_YMD;
  
    --�����ϴ�ͳ�Ƶ�CHARGE_YM��Сֵ��ʼѭ��
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
  
    --A_RCVED_FLOW�еĵ�λΪ������
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      V_MONTH := V_MONTH_MIN;
    
      --����A_RCVED_FLOW�е�CHARGE_YM����
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
           --  ������ʡ����a_rcved_flow���е�note_id�����ϱ��裬�ֳ�Ϊvarchar2(32) ����Ϊnumber(16).���������Աȷ�������ֶ���Ϊ0���ɡ�
           '0',
           A.RCVBL_YM,
           SYSDATE
            FROM SY_SG_A_RCVED_FLOW A
           WHERE
          --����A_RCVED_FLOW�еĵ�λ������
           A.ORG_NO LIKE TSS.ORG_NO || '%'
          --����A_RCVED_FLOW�е�ʵ�����´ӷ���
           AND A.RCVED_YM = TO_CHAR(V_MONTH, 'YYYYMM')
           AND EXISTS (SELECT /*+PARALLEL(B 4)*/
             1
              FROM DW_A_PAY B
            --����DW_A_PAY������ͳ�Ƴ��������ݣ�����STAT_YMD�еķ���
             WHERE B.STAT_YMD = V_YMD
                  --����B������ݹ�ģ
               AND B.CHARGE_YM = TO_CHAR(V_MONTH, 'YYYYMM')
                  --Ҫ���շѼ�¼��a_pay_flow�е��շ�����CHARGE_YM����ʵ�ձ���a_reved_flow�е�ʵ������RCVED_YM
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
           --  ������ʡ����a_rcved_flow���е�note_id�����ϱ��裬�ֳ�Ϊvarchar2(32) ����Ϊnumber(16).���������Աȷ�������ֶ���Ϊ0���ɡ�
           '0',
           A.RCVBL_YM,
           SYSDATE
            FROM SY_SG_ARC_A_RCVED_FLOW A, DW_A_PAY B
           WHERE
          --����A_RCVED_FLOW�еĵ�λ������
           A.ORG_NO LIKE TSS.ORG_NO || '%'
          --����A_RCVED_FLOW�е�ʵ�����´ӷ���
           AND A.RCVED_YM = TO_CHAR(V_MONTH, 'YYYYMM')
           AND EXISTS (SELECT /*+PARALLEL(B 4)*/
             1
              FROM DW_A_PAY B
            --����DW_A_PAY������ͳ�Ƴ��������ݣ�����STAT_YMD�еķ���
             WHERE B.STAT_YMD = V_YMD
                  --����B������ݹ�ģ
               AND B.CHARGE_YM = TO_CHAR(V_MONTH, 'YYYYMM')
                  --Ҫ���շѼ�¼��a_pay_flow�е��շ�����CHARGE_YM����ʵ�ձ���a_reved_flow�е�ʵ������RCVED_YM
               AND B.CHARGE_YM = A.RCVED_YM
               AND B.CHARGE_ID = A.CHARGE_ID);
        COMMIT;
        --V_MONTH����
        V_MONTH := ADD_MONTHS(V_MONTH, 1);
      END LOOP;
    END LOOP;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_RCVED  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_RCVED  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_RCVED(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_RCVED', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_A_RCVED X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_A_RCVED  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_A_RCVED  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   �������ƣ�P_ENT_DW_A_RCVBL/�ն���;Ӧ�յ����Ϣ����ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2015-01-29 23:37
  �����������ն���;Ӧ�յ����Ϣ����ڹ���,��P_ENT_DW_A_RCVEDִ����Ϻ���ִ�д˹���
  
  ͳ��Ƶ�ȣ�ÿ��1���賿1�㡢7���賿1�㡢16���賿1�㡢26���賿1�� ��ȡ��ͳ�����ڴ������TO_CHAR(SYSDATE-1,'YYYYMMDD')��
  1������DW_A_RCVED�е�RCVBL_AMT_ID����Ӫ��A_RCVBL_FLOW��ȡ��Ӧ�ռ�¼��
     ͳ��������DW_A_RCVED�е�ͳ��������ͬ
  2��Ӫ����A_RCVBL_FLOW
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_A_RCVBL(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_A_RCVBL', V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_A_RCVBL��
    P_INS_DW_A_RCVBL(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_A_RCVBL��ȡ���ݲ��뵽�����OMAC�û��µ�DW_A_RCVBL��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_A_RCVBL(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_A_RCVBL A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_A_RCVBL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_A_RCVBL  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_A_RCVBL(I_DATA   VARCHAR2,
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
    V_DATE             DATE := TO_DATE(V_YMD || '010000',
                                       'YYYYMMDDhh24miss') + 1;
  
    V_MONTH     DATE := TO_DATE('200801', 'YYYYMM');
    V_MONTH_MIN DATE := TO_DATE('200801', 'YYYYMM');
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_A_RCVBL', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_A_RCVBL X WHERE X.STAT_YMD = V_YMD;
  
    --�����ϴ�ͳ�Ƶ�CHARGE_YM��Сֵ��ʼѭ��
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
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_A_RCVBL
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      V_MONTH := V_MONTH_MIN;
    
      --����A_RCVED_FLOW�е�CHARGE_YM����
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
          --����Ӧ�ձ��еĵ�λ����
           A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.RCVBL_YM = TO_CHAR(V_MONTH, 'YYYYMM')
           AND EXISTS (SELECT /*+PARALLEL(B 4)*/
             1
              FROM DW_A_RCVED B
            --����DW_A_RCVED���Ѿ�ͳ�Ƴ��������ݣ�STAT_YMDΪ����
             WHERE B.STAT_YMD = V_YMD
               AND B.RCVBL_YM = TO_CHAR(V_MONTH, 'YYYYMM')
                  --Ҫ��ʵ�ձ��е�Ӧ�����µ���Ӧ�ձ��еĵ������
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
          --����Ӧ�ձ��еĵ�λ����
           A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.RCVBL_YM = TO_CHAR(V_MONTH, 'YYYYMM')
           AND EXISTS (SELECT /*+PARALLEL(B 4)*/
             1
              FROM DW_A_RCVED B
            --����DW_A_RCVED���Ѿ�ͳ�Ƴ��������ݣ�STAT_YMDΪ����
             WHERE B.STAT_YMD = V_YMD
               AND B.RCVBL_YM = TO_CHAR(V_MONTH, 'YYYYMM')
                  --Ҫ��ʵ�ձ��е�Ӧ�����µ���Ӧ�ձ��еĵ������
               AND A.RCVBL_YM = B.RCVBL_YM
               AND B.RCVBL_AMT_ID = A.RCVBL_AMT_ID);
      
        COMMIT;
        --V_MONTH����
        V_MONTH := ADD_MONTHS(V_MONTH, 1);
      END LOOP;
    END LOOP;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_A_RCVBL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_A_RCVBL  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_A_RCVBL(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_A_RCVBL', I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_A_RCVBL X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_A_RCVBL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_A_RCVBL  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   �������ƣ�P_ENT_DW_E_CONS_SNAP_TRANSIT/�¶���;�ʽ��û���ѿ��ձ���ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2015-01-29 23:37
  �����������¶���;�ʽ��û���ѿ��ձ���ڹ���,��P_ENT_DW_A_RCVEDִ����Ϻ���ִ�д˹���
  
  ͳ��Ƶ�ȣ�ÿ��1���賿1�㡢7���賿1�㡢16���賿1�㡢26���賿1�� ��ȡ��ͳ�����ڴ������TO_CHAR(SYSDATE-1,'YYYYMMDD')��
  1������DW_A_RCVED�е�RCVBL_AMT_ID����Ӫ��A_RCVBL_FLOW��ȡ��Ӧ�ռ�¼��
     ͳ��������DW_A_RCVED�е�ͳ��������ͬ
  2��Ӫ����A_RCVBL_FLOW
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_E_CONS_SNAP_TRANSIT(I_DATA   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_CONS_SNAP_TRANSIT',
                                        V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_E_CONS_SNAP_TRANSIT��
    P_INS_DW_E_CONS_SNAP_TRANSIT(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_E_CONS_SNAP_TRANSIT��ȡ���ݲ��뵽�����OMAC�û��µ�DW_E_CONS_SNAP_TRANSIT��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_E_CONS_SNAP_TRANSIT(V_YMD, OUT_CODE, OUT_MSG);
      /*ELSE
      --����ģʽ���乩����������
      UPDATE DW_E_CONS_SNAP_TRANSIT A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT 
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_YMD;*/
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_E_CONS_SNAP_TRANSIT  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_E_CONS_SNAP_TRANSIT  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_E_CONS_SNAP_TRANSIT(I_DATA   VARCHAR2,
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
    V_DATE             DATE := TO_DATE(V_YMD || '010000',
                                       'YYYYMMDDhh24miss') + 1;
  
    V_MONTH     DATE := TO_DATE('200801', 'YYYYMM');
    V_MONTH_MIN DATE := TO_DATE('200801', 'YYYYMM');
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_CONS_SNAP_TRANSIT',
                                        I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_E_CONS_SNAP_TRANSIT X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_E_CONS_SNAP_TRANSIT
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
        --����Ӧ�ձ��еĵ�λ����
         A.ORG_NO LIKE TSS.ORG_NO || '%'
         AND EXISTS (SELECT /*+PARALLEL(B 4)*/
           1
            FROM DW_A_RCVBL B
          --����DW_A_RCVED���Ѿ�ͳ�Ƴ��������ݣ�STAT_YMDΪ����
           WHERE B.STAT_YMD = V_YMD
                --Ҫ��ʵ�ձ��е�Ӧ�����µ���Ӧ�ձ��еĵ������
             AND A.YM = B.RCVBL_YM
             AND B.CALC_ID = A.CALC_ID);
      COMMIT;
    END LOOP;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_E_CONS_SNAP_TRANSIT  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_E_CONS_SNAP_TRANSIT  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_E_CONS_SNAP_TRANSIT(I_DATA   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_CONS_SNAP_TRANSIT',
                                        I_DATA);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_E_CONS_SNAP_TRANSIT X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YMD = V_YMD;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_E_CONS_SNAP_TRANSIT  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_E_CONS_SNAP_TRANSIT  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
   �������ƣ�P_ENT_DW_ARC_E_CONS_SNAP/�û����ձ���ڹ���
  ���ߣ����ѵ�
  ��д���ڣ�2015-01-29 23:37
  �����������û����ձ���ڹ���,��P_ENT_DW_A_RCVEDִ����Ϻ���ִ�д˹���
  
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ�����.ÿ������
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_ARC_E_CONS_SNAP(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_ARC_E_CONS_SNAP', V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_ARC_E_CONS_SNAP��
    P_INS_DW_ARC_E_CONS_SNAP(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_ARC_E_CONS_SNAP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_ARC_E_CONS_SNAP��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_ARC_E_CONS_SNAP(V_YMD, OUT_CODE, OUT_MSG);
      /*ELSE
      --����ģʽ���乩����������
      UPDATE DW_ARC_E_CONS_SNAP A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT 
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = V_YMD;*/
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_ARC_E_CONS_SNAP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_ARC_E_CONS_SNAP  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_ARC_E_CONS_SNAP(I_DATA   VARCHAR2,
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
    V_DATE             DATE := TO_DATE(V_YMD || '010000',
                                       'YYYYMMDDhh24miss') + 1;
  
    V_MONTH     DATE := TO_DATE('200801', 'YYYYMM');
    V_MONTH_MIN DATE := TO_DATE('200801', 'YYYYMM');
  
    V_DATE_START_D DATE := TO_DATE(V_YMD, 'YYYYMMDD'); --��ʼʱ��
    V_DATE_END_D   DATE := V_DATE_START_D + 1; --����ʱ��
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_ARC_E_CONS_SNAP', I_DATA);
    V_LT_DAY  := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
  
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_ARC_E_CONS_SNAP X
     WHERE X.SEND_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_ARC_E_CONS_SNAP
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
        --����Ӧ�ձ��еĵ�λ����
         A.ORG_NO LIKE TSS.ORG_NO || '%'
         AND A.SEND_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D;
      COMMIT;
    END LOOP;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_ARC_E_CONS_SNAP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_ARC_E_CONS_SNAP  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_ARC_E_CONS_SNAP(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_ARC_E_CONS_SNAP', I_DATA);
  
    /*
      --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
      DELETE FROM SY_OM_DW_ARC_E_CONS_SNAP X WHERE X.STAT_YMD = V_YMD;
    
      --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
        --����ʱ��ɸѡ����
         WHERE A.SEND_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D;
    */
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_ARC_E_CONS_SNAP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_ARC_E_CONS_SNAP  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

end PKG_YWGK_DW_CA_RECOVER;
/
