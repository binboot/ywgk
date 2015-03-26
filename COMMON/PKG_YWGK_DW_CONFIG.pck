CREATE OR REPLACE PACKAGE PKG_YWGK_DW_CONFIG IS

  -- Author  : Jiangyoude
  -- Created : 2014-4-7 21:53:21
  -- Purpose : ҵ��ܿ����ñ����г����

  /**
  *����������ϵ���ձ�
  *����Ƶ�ʣ����裬����ÿ��
  */
  PROCEDURE P_ENT_DW_O_PL_PARA(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_O_PL_PARA(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_O_PL_PARA(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);

  /**
  *����ھ������û��嵥
  *����Ƶ�ʣ�ÿ��
  */
  PROCEDURE P_ENT_DW_O_BULK_USER(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_O_BULK_USER(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_O_BULK_USER(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);

  /**
  *�ϱ�������ñ�
  *����Ƶ�ʣ����裬����ÿ��
  */
  PROCEDURE P_ENT_DW_E_PRC_MERGE(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_E_PRC_MERGE(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_E_PRC_MERGE(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2);

  /**
  *��ʱ�����׼ʱ�ε������
  *����Ƶ�ʣ����裬����ÿ��
  */
  PROCEDURE P_ENT_DW_O_PRC_CONFIG(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_O_PRC_CONFIG(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_O_PRC_CONFIG(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);

  /**
  *����Ա,���鰴������.Ƶ��Ϊÿ��
  */
  PROCEDURE P_ENT_DW_O_STAFF(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);

  PROCEDURE P_INS_DW_O_STAFF(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_O_STAFF(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2);

END PKG_YWGK_DW_CONFIG;
/
CREATE OR REPLACE PACKAGE BODY PKG_YWGK_DW_CONFIG IS

  PROCEDURE P_ENT_DW_O_PL_PARA(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_PL_PARA', V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_O_PL_PARA(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_O_PL_PARA(V_YMD, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_O_PL_PARA  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_O_PL_PARA  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_O_PL_PARA(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_PL_PARA', V_YMD);
    --ɾ����¼
    DELETE FROM DW_O_PL_PARA;
  
    INSERT INTO DW_O_PL_PARA
      (DATA_ID,
       PRO_ORG_NO,
       PL_CODE,
       PL_NAME,
       PL_ABBR,
       PRC_IO_FLAG,
       HEAD_PL_CODE,
       HEAD_PL_NAME,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             B.PL_CODE,
             B.PL_NAME,
             B.PL_ABBR,
             B.PRC_IO_FLAG,
             PKG_GK_PUBLIC.F_TRANS_CODE('HEAD_PL_CODE', B.PL_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('HEAD_PL_CODE', B.PL_NAME),
             SYSDATE
        FROM SY_SG_E_BILL_PARA_VER A, SY_SG_E_PL_ITEM B
       WHERE TO_DATE(V_YMD, 'YYYYMMDD') BETWEEN A.PAR_BGN_DATE AND A.PAR_END_DATE
         AND A.RELEASE_FLAG = '1'
         AND A.PAR_VER_TYPE = '1'
         AND A.PARA_VN = B.PARA_VN;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_O_PL_PARA  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_O_PL_PARA  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_O_PL_PARA(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_O_PL_PARA', V_YMD);
    --ɾ����¼
    DELETE FROM SY_OM_DW_O_PL_PARA;
  
    INSERT INTO SY_OM_DW_O_PL_PARA
      (DATA_ID,
       PRO_ORG_NO,
       PL_CODE,
       PL_NAME,
       PL_ABBR,
       PRC_IO_FLAG,
       HEAD_PL_CODE,
       HEAD_PL_NAME,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             PL_CODE,
             PL_NAME,
             PL_ABBR,
             PRC_IO_FLAG,
             HEAD_PL_CODE,
             HEAD_PL_NAME,
             TIME_STAMP
        FROM DW_O_PL_PARA;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_O_PL_PARA  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_O_PL_PARA  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /**
  *����ھ������û��嵥
  *����Ƶ�ʣ�ÿ��
  */
  PROCEDURE P_ENT_DW_O_BULK_USER(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_BULK_USER', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_O_BULK_USER(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_O_BULK_USER(V_YM, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_O_BULK_USER  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_O_BULK_USER  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_O_BULK_USER(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_BULK_USER', V_YM);
    --ɾ����ʷ����
    DELETE FROM DW_O_BULK_USER WHERE AMT_YM = V_YM;
  
    --ѭ��������˾��Ӫҵվ
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_O_BULK_USER
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         CALC_RULE,
         AMT_YM,
         CONS_ID,
         CONS_NO,
         PRC_CODE,
         SPECIAL_TYPE,
         REMARK,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '02',
               V_YM,
               CONS_ID,
               CONS_NO,
               PRC_CODE,
               --����
               '01',
               '�����û�',
               SYSDATE
          FROM (SELECT DISTINCT A.ORG_NO   ORG_NO,
                                A.YM       YM,
                                A.CONS_ID  CONS_ID,
                                A.CONS_NO  CONS_NO,
                                C.PRC_CODE PRC_CODE
                  FROM SY_SG_ARC_E_CONS_SNAP A, SY_SG_ARC_E_CONS_PRC_AMT C
                 WHERE A.ELEC_TYPE_CODE IN
                       ('500', '501', '502', '503', '504', '505', '506')
                   AND A.YM = V_YM
                   AND A.CALC_ID = C.CALC_ID
                   AND A.ORG_NO LIKE TSS.ORG_NO);
      COMMIT;
    
    END LOOP;
  
    --ʡ��˾�����й�˾      
    FOR TSS1 IN (SELECT ORG_NO
                   FROM SY_SG_O_ORG
                  WHERE ORG_TYPE IN ('02', '03')) LOOP
    
      INSERT INTO DW_O_BULK_USER
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         CALC_RULE,
         AMT_YM,
         CONS_ID,
         CONS_NO,
         PRC_CODE,
         SPECIAL_TYPE,
         REMARK,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '02',
               V_YM,
               CONS_ID,
               CONS_NO,
               PRC_CODE,
               --����
               '01',
               '�����û�',
               SYSDATE
          FROM (SELECT DISTINCT A.ORG_NO   ORG_NO,
                                A.YM       YM,
                                A.CONS_ID  CONS_ID,
                                A.CONS_NO  CONS_NO,
                                C.PRC_CODE PRC_CODE
                  FROM SY_SG_ARC_E_CONS_SNAP A, SY_SG_ARC_E_CONS_PRC_AMT C
                 WHERE A.ELEC_TYPE_CODE IN
                       ('500', '501', '502', '503', '504', '505', '506')
                   AND A.YM = V_YM
                   AND A.CALC_ID = C.CALC_ID
                   AND A.ORG_NO = TSS1.ORG_NO);
      COMMIT;
    
    END LOOP;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_O_BULK_USER  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_O_BULK_USER  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_O_BULK_USER(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_O_BULK_USER', V_YM);
    --ɾ����ʷ����
    DELETE FROM SY_OM_DW_O_BULK_USER WHERE AMT_YM = V_YM;
  
    INSERT INTO SY_OM_DW_O_BULK_USER
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       CALC_RULE,
       AMT_YM,
       CONS_ID,
       CONS_NO,
       PRC_CODE,
       SPECIAL_TYPE,
       REMARK,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             CALC_RULE,
             AMT_YM,
             CONS_ID,
             CONS_NO,
             PRC_CODE,
             SPECIAL_TYPE,
             REMARK,
             TIME_STAMP
        FROM DW_O_BULK_USER
       WHERE AMT_YM = V_YM;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_O_BULK_USER  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_O_BULK_USER  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /**
  *�ϱ�������ñ�
  *����Ƶ�ʣ����裬����ÿ��
  */
  PROCEDURE P_ENT_DW_E_PRC_MERGE(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_E_PRC_MERGE', V_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_E_PRC_MERGE(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_E_PRC_MERGE(V_YMD, OUT_CODE, OUT_MSG);
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
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_E_PRC_MERGE', V_YMD);
    --ɾ����ʷ����
    DELETE FROM DW_E_PRC_MERGE;
  
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
             ORG_NO,
             A.PARA_VN,
             B.CAT_PRC_ID,
             B.PRC_CODE,
             SYSDATE
        FROM SY_SG_E_BILL_PARA_VER A,
             SY_SG_E_CAT_PRC       B,
             SY_SG_E_CAT_PRC_DET   C
       WHERE TO_DATE(V_YMD, 'YYYYMMDD') BETWEEN A.PAR_BGN_DATE AND
             A.PAR_END_DATE
         AND A.RELEASE_FLAG = '1'
         AND A.PAR_VER_TYPE = '1'
         AND A.PARA_VN = B.PARA_VN
         AND B.CAT_PRC_NAME LIKE '%�ϱ�%'
         AND C.CAT_PRC_ID = B.CAT_PRC_ID;
  
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
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_E_PRC_MERGE', V_YMD);
    --ɾ����¼
    DELETE FROM SY_OM_DW_E_PRC_MERGE;
  
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

  /**
  *��ʱ�����׼ʱ�ε������
  *����Ƶ�ʣ����裬����ÿ��
  */
  PROCEDURE P_ENT_DW_O_PRC_CONFIG(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_PRC_CONFIG', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_O_PRC_CONFIG(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_O_PRC_CONFIG(V_YM, OUT_CODE, OUT_MSG);
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_O_PRC_CONFIG  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_O_PRC_CONFIG  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_O_PRC_CONFIG(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_PRC_CONFIG', V_YM);
    --ɾ����ʷ����
    DELETE FROM DW_O_PRC_CONFIG;
  
    INSERT INTO DW_O_PRC_CONFIG
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PARA_VN,
       PRC_CODE,
       PRC_TI_CODE,
       CAT_PRC_ID,
       CAT_KWH_PRC,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             ORG_NO,
             A.PARA_VN,
             A.PRC_CODE,
             B.PRC_TI_CODE,
             A.CAT_PRC_ID,
             NVL(CAT_KWH_PRC, 0) - CASE
               WHEN ELEC_TYPE_CODE LIKE '2%' AND TS_NUM > 1 THEN
                0.03
               ELSE
                0
             END,
             SYSDATE
        FROM SY_SG_E_CAT_PRC A, SY_SG_E_CAT_PRC_DET B
       WHERE A.CAT_PRC_ID = B.CAT_PRC_ID(+)
         AND NVL(B.PRC_TI_CODE, '03') = '03'
         AND NVL(B.RANGE_TYPE_CODE, '22') <> '22'
         AND RANGE_TYPE_CODE NOT IN ('32', '33');
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_O_PRC_CONFIG  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_O_PRC_CONFIG  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_O_PRC_CONFIG(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_O_PRC_CONFIG', V_YMD);
    --ɾ����¼
    DELETE FROM SY_OM_DW_O_PRC_CONFIG;
  
    INSERT INTO SY_OM_DW_O_PRC_CONFIG
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PARA_VN,
       PRC_CODE,
       PRC_TI_CODE,
       CAT_PRC_ID,
       CAT_KWH_PRC,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             PARA_VN,
             PRC_CODE,
             PRC_TI_CODE,
             CAT_PRC_ID,
             CAT_KWH_PRC,
             TIME_STAMP
        FROM DW_O_PRC_CONFIG;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_O_PRC_CONFIG  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_O_PRC_CONFIG  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  
   /**
  *����Ա,���鰴������.Ƶ��Ϊÿ��
  */
  PROCEDURE P_ENT_DW_O_STAFF(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_O_STAFF', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_O_STAFF(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_O_STAFF(V_YM, OUT_CODE, OUT_MSG);
      ELSE
      --����ģʽ���乩����������
      UPDATE DW_O_STAFF A
       set A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO);
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_O_STAFF  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_O_STAFF  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;
  
  /**
  *������ǰ̨��ʾ������������Ϣʱ����Ա���
  **/
  PROCEDURE P_INS_DW_O_STAFF(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_O_STAFF', V_YM);
    --ɾ����ʷ����ȫ��ɾ��
    DELETE FROM DW_O_STAFF;
  
    INSERT INTO DW_O_STAFF
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       EMP_NO,
       DEPT_NO,
       DEPT_NAME,
       CHOICE_FLAG,
       NAME,
       GENDER,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             A.ORG_NO,
             NULL,
             A.SYS_USER_NAME,
             A.DEPT_NO,
             B.NAME DEPT_NAME,
             '1' CHOICE_FLAG,--Ĭ��Ϊ���ܲ�ѡ��
             A.USER_NAME,
             --�Ա��ֶΰ��մ˱���ô�û�����壬������������ֶ�Ĭ����д1(��).
             PKG_GK_PUBLIC.F_TRANS_CODE('GENDER', '1'),
             SYSDATE
       FROM SY_SG_P_SYS_USER A,SY_SG_O_DEPT B
       --�ų�����ǰ״̬Ϊ03 Ҫɾ�����û�
       WHERE A.CUR_STATUS_CODE<>'03'
       AND A.DEPT_NO=B.DEPT_NO;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_O_STAFF  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_O_STAFF  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  
  PROCEDURE P_ETL_DW_O_STAFF(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_O_STAFF', V_YMD);
    --ɾ����¼
    DELETE FROM SY_OM_DW_O_STAFF;
  
    INSERT INTO SY_OM_DW_O_STAFF
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       EMP_NO,
       DEPT_NO,
       DEPT_NAME,
       CHOICE_FLAG,
       NAME,
       GENDER,
       TIME_STAMP)
      SELECT/*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/ A.DATA_ID,
             A.PRO_ORG_NO,
             A.ORG_NO,
             B.BUSI_AREA_STAT_CODE,
             EMP_NO,
             DEPT_NO,
             DEPT_NAME,
             CHOICE_FLAG,
             NAME,
             GENDER,
             TIME_STAMP
        FROM DW_O_STAFF A,SY_OM_DW_O_ORG_CONTRAST B
        WHERE A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_O_STAFF  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_O_STAFF  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

END PKG_YWGK_DW_CONFIG;
/
