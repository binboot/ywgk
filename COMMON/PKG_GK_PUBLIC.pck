CREATE OR REPLACE PACKAGE PKG_GK_PUBLIC IS

  FUNCTION F_GET_TABLE_SEQ(V_ORG_NO IN VARCHAR2) RETURN VARCHAR2;
  /********************************
      �������� ��ȡ������
      ���ߣ�   Jiangyoude
      ʱ�䣺   2013-11-13 9:45:59
      �޸���:
      ����ֵ��V_ORG_NO ��ʡ����(5λ)
      ���ֵ: �ַ���
  
  ************************************/

  FUNCTION F_PRO_ORG_NO RETURN VARCHAR2;
  /********************************
      �������� ��ȡ��ʡ
      ���ߣ�   Jiangyoude
      ʱ�䣺   2013-11-13 9:45:59
      �޸���:
      ����ֵ��
      ���ֵ: �ַ���
  
  ************************************/

  /*FUNCTION F_TRANS_ORG_NO(IN_ORG VARCHAR2) RETURN VARCHAR2;*/
  /********************************
      �������� ��ȡ��λת�����루�ӱ�������ͻ��
      ���ߣ�   Jiangyoude
      ʱ�䣺   2013-11-13 9:45:59
      �޸���:
      ����ֵ��
      ���ֵ: �ַ���
  
  ************************************/

  FUNCTION F_TRANS_CODE(IN_CODE_TYPE VARCHAR2, IN_VALUE VARCHAR2)
    RETURN VARCHAR2;
  /********************************
      �������� ��ȡת������
      ���ߣ�   �����
      ʱ�䣺   2013-11-13 9:45:59
      �޸���:
      ����ֵ��
      ���ֵ: �ַ���
  
  ************************************/

  /*FUNCTION F_INDUSTRYCODE_CODE(IN_CODE_TYPE      VARCHAR2,
                               IN_ELEC_TYPE_CODE VARCHAR2,
                               IN_TRADE_CODE     VARCHAR2) RETURN VARCHAR2;*/
  /********************************
      �������� ��ȡ��ҵ�������
      ���ߣ�   Quoqiang
      ʱ�䣺   2013-11-13 9:45:59
      �޸���:
      ����ֵ��
      ���ֵ: �ַ���
  
  ************************************/

  PROCEDURE P_GARBAGE_COLLECTION(V_TABLENAME IN VARCHAR2);
  /*****************************
      -- Author  : Jiangyoude
  -- Created : 2013-10-11 18:00:22
  -- Purpose : ��������������ݵĻ��մ������
  /*
  * v_tableNameΪ�����
  * v_type,v_date ������ڲ�����ͬ
  */

  -- Author  : Jiangyoude
  -- Created : 2013-10-12 15:57:27
  -- Purpose : ��õ�ǰ��������������
  --v_ymΪyyyyMM �������
  --v_ymdΪyyyyMMdd ����ʱ��
  FUNCTION F_GETTIMEINTERVAL(V_YM IN VARCHAR2, V_YMD IN VARCHAR2)
    RETURN VARCHAR2;

  /*FUNCTION F_GET_ORG_DIM_CODE RETURN VARCHAR2;*/
  /********************************
      �������� ��ȡ��ʡ�ĵ�λ��DIM_CODE
      ���ߣ�   Jiangyoude
      ʱ�䣺   2008-3-12 9:45:59
      �޸���:
      ����ֵ��
      ���ֵ: �ַ���
  ****************************/

  --PKG_GK_PUBLIC.F_TRANSORG2AA�������ڽ����к����ع�˾�ĵ�λ�����AA��
  --��������ܹ��Զ��жϴ���ĵ�λ�Ƿ�Ϊ���л����أ�����ǵ��к����أ�
  --�򷵻�ֵΪ��λ����+AA���������ĵ�λ���ǵ��к����ؽ�����ԭ����λ
  /*FUNCTION F_TRANSORG2AA(V_ORG_NO VARCHAR2) RETURN VARCHAR2;*/

  /*************************************
    �������ƣ�
    ����������
          �ɼ��Ȼ�ȡ��ֹ�·�
    �޸���:Guoqiang
    �޸�����:
  ************************************/
  PROCEDURE P_SEASON2MON(V_SEASONSTR     IN VARCHAR2,
                         V_STAT_BGNMONTH OUT VARCHAR2,
                         V_STAT_ENDMONTH OUT VARCHAR2);

  --F_TRANS_CODE2���ڽ�ȡ���ά��ά���ڶ��cont1�еĴ���ʽ
  /*FUNCTION F_TRANS_CODE2(V_CODE_TYPE IN VARCHAR2, V_CODE_VALUE IN VARCHAR2)
    RETURN VARCHAR2;*/
  /********************************
      �������� ��ȡ��ʡ���ά�ȶ�Ӧ�ܲ�һ��ά��ά���ɶ�����¼��ת������
      ���ߣ�   hyh
      ʱ�䣺   2012-11-21 14:45:59
      �޸���:
      ����ֵ��
      ���ֵ: �ַ���
  
  ************************************/

  --��ȡ�յ�����
  FUNCTION F_GET_DAY_LC(IN_YMD VARCHAR2) RETURN VARCHAR2;
  --��ȡ�յ�ͬ��
  FUNCTION F_GET_DAY_LY(IN_YMD VARCHAR2) RETURN VARCHAR2;
  --��ȡ�µ�����
  FUNCTION F_GET_MONTH_LC(IN_YM VARCHAR2) RETURN VARCHAR2;
  --��ȡ�µ�ͬ��
  FUNCTION F_GET_MONTH_LY(IN_YM VARCHAR2) RETURN VARCHAR2;
  --��ȡ��������
  FUNCTION F_GET_SEASON_LC(IN_YQ VARCHAR2) RETURN VARCHAR2;
  --��ȡ����ͬ��
  FUNCTION F_GET_SEASON_LY(IN_YQ VARCHAR2) RETURN VARCHAR2;
  --��ȡ�������
  FUNCTION F_GET_YEAR_LC(IN_Y VARCHAR2) RETURN VARCHAR2;
  --��ȡ���ͬ��
  FUNCTION F_GET_YEAR_LY(IN_Y VARCHAR2) RETURN VARCHAR2;
  --���մ���������ַ������Ⱥ������жϵõ�����ֵ
  FUNCTION F_GET_LC(IN_DATE VARCHAR2) RETURN VARCHAR2;
  --���մ���������ַ������Ⱥ������жϵõ�ͬ��ֵ
  FUNCTION F_GET_LY(IN_DATE VARCHAR2) RETURN VARCHAR2;

  --���ջ�ȡ����K_dim_rela�е�dim_codeֵ��Ĭ��ΪgkOrg
  /*FUNCTION F_GETGKORG RETURN VARCHAR2;*/

  --��¼��ʼ��־
  FUNCTION PROC_BGN(V_OBJ_NAME VARCHAR2, IN_PARA VARCHAR2) RETURN VARCHAR2;
  --��¼������־
  procedure PROC_END(V_DATA_ID     VARCHAR2,
                    V_LOG_TYPE    VARCHAR2,
                    V_RETURN_INFO VARCHAR2);
  
  FUNCTION F_GET_DATAMODE RETURN VARCHAR2;

END PKG_GK_PUBLIC;
/
CREATE OR REPLACE PACKAGE BODY PKG_GK_PUBLIC IS

  FUNCTION F_GET_TABLE_SEQ(V_ORG_NO IN VARCHAR2) RETURN VARCHAR2 IS
    /********************************
        �������� ��ȡ������
        ���ߣ�   Jiangyoude
        ʱ�䣺   2013-9-12 9:45:59
        �޸���:
        ����ֵ��V_ORG_NO ��ʡ����(5λ)
        ���ֵ: �ַ���
    
    ************************************/
  
    V_RESULT VARCHAR2(256);
  BEGIN
    SELECT V_ORG_NO || SEQ_YWGK_DW.NEXTVAL INTO V_RESULT FROM DUAL;
    RETURN V_RESULT;
  EXCEPTION
    WHEN OTHERS THEN
      V_RESULT := V_ORG_NO;
      RETURN V_RESULT;
  END F_GET_TABLE_SEQ;

  FUNCTION F_PRO_ORG_NO RETURN VARCHAR2 IS
    /********************************
        �������� ��ȡ��ʡ
        ���ߣ�   Jiangyoude
        ʱ�䣺   2013-11-13 9:45:59
        �޸���:
        ����ֵ��
        ���ֵ: �ַ���
    
    ************************************/
    V_RESULT VARCHAR2(32);
  BEGIN
    SELECT TRANS_VALUE
      INTO V_RESULT
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = 'proOrg';
    RETURN V_RESULT;
  EXCEPTION
    WHEN OTHERS THEN
      V_RESULT := '00000';
      RETURN V_RESULT;
  END F_PRO_ORG_NO;

  /*FUNCTION F_TRANS_ORG_NO(IN_ORG VARCHAR2) RETURN VARCHAR2 IS
    \********************************
        �������� ��ȡҵ��ܿر�׼����
        ���ߣ�   Jiangyoude
        ʱ�䣺   2013-11-13 9:45:59
        �޸���:
        ����ֵ��
        ���ֵ: �ַ���
    
    ************************************\
    V_RESULT VARCHAR2(32);
  BEGIN
    SELECT TRANS_VALUE
      INTO V_RESULT
      FROM GK_K_CODE_TRANS
     WHERE CODE_TYPE = 'org'
       AND CONT1 = IN_ORG;
    RETURN V_RESULT;
  EXCEPTION
    WHEN OTHERS THEN
      V_RESULT := IN_ORG;
      RETURN V_RESULT;
  END F_TRANS_ORG_NO;*/

  FUNCTION F_TRANS_CODE(IN_CODE_TYPE VARCHAR2, IN_VALUE VARCHAR2)
    RETURN VARCHAR2 IS
    /********************************
        �������� ��ȡת������
        ���ߣ�   Jiangyoude
        ʱ�䣺   2013-11-13 9:45:59
        �޸���:
        ����ֵ��
        ���ֵ: �ַ���
    
    ************************************/
    V_RESULT VARCHAR2(32);
  BEGIN
  
    SELECT MIN(TRANS_VALUE)
      INTO V_RESULT
      FROM GK_DW_CODE_TRANS
     WHERE CODE_TYPE = IN_CODE_TYPE;
  
    IF V_RESULT IS NULL THEN
      --û��ά�����룬Ĭ�Ϸ���IN_VALUE����
      RETURN IN_VALUE;
    ELSE
    
      IF IN_VALUE IS NOT NULL THEN
      
        SELECT TRANS_VALUE
          INTO V_RESULT
          FROM GK_DW_CODE_TRANS
         WHERE CODE_TYPE = IN_CODE_TYPE
           AND INSTR('/' || CONT1 || '/', '/' || IN_VALUE || '/') > 0
           AND ROWNUM = 1;
        ELSE
        	SELECT TRANS_VALUE
          INTO V_RESULT
          FROM GK_DW_CODE_TRANS
         WHERE CODE_TYPE = IN_CODE_TYPE
           AND CONT1 IS NULL
           AND ROWNUM = 1;
      END IF;
    END IF;
  
    RETURN V_RESULT;
  EXCEPTION
    WHEN OTHERS THEN
      V_RESULT := IN_VALUE;
      RETURN V_RESULT;
    
  END F_TRANS_CODE;

  /*FUNCTION F_INDUSTRYCODE_CODE(IN_CODE_TYPE      VARCHAR2,
                               IN_ELEC_TYPE_CODE VARCHAR2,
                               IN_TRADE_CODE     VARCHAR2) RETURN VARCHAR2
  \********************************
        �������� ��ȡ��ҵ�������
        ���ߣ�   Guoqiang
        ʱ�䣺   2013-11-19 9:45:59
        �޸���:
        ����ֵ��
        ���ֵ: �ַ���
    ************************************\
   IS
    V_RESULT VARCHAR2(32);
  BEGIN
  
    SELECT MAX((CASE
                 WHEN INSTR(CONT3, IN_TRADE_CODE, 1) > 0 AND
                      IN_ELEC_TYPE_CODE NOT LIKE '50%' THEN
                  TRANS_VALUE
                 WHEN IN_ELEC_TYPE_CODE LIKE '50%' THEN
                  '6'
               END))
      INTO V_RESULT
      FROM GK_K_CODE_TRANS
     WHERE CODE_TYPE = IN_CODE_TYPE;
  
    RETURN V_RESULT;
  EXCEPTION
    WHEN OTHERS THEN
      V_RESULT := NULL;
      RETURN V_RESULT;
    
  END F_INDUSTRYCODE_CODE;*/

  -- Author  : Jiangyoude
  -- Created : 2013-10-11 18:00:22
  -- Purpose : ��������������ݵĻ��մ������
  /*
  * v_tableNameΪ�����
  * v_type,in_date ������ڲ�����ͬ
  */
  PROCEDURE P_GARBAGE_COLLECTION(V_TABLENAME IN VARCHAR2) IS
  BEGIN
    --ɾ����ʡ�Ķ�����ܵĹ���������
    EXECUTE IMMEDIATE 'DELETE FROM ' || V_TABLENAME ||
                      ' WHERE ORG_NO=''0000''';
  END P_GARBAGE_COLLECTION;

  -- Author  : Jiangyoude
  -- Created : 2013-10-12 15:57:27
  -- Purpose : ��õ�ǰ��������������
  --v_ymΪyyyyMM �������
  --v_ymdΪyyyyMMdd ����ʱ��
  FUNCTION F_GETTIMEINTERVAL(V_YM IN VARCHAR2, V_YMD IN VARCHAR2)
    RETURN VARCHAR2 IS
    RESULT VARCHAR2(4);
    I_T    NUMBER := TO_NUMBER(SUBSTR(V_YMD, 7, 8));
    S_YM   VARCHAR2(6) := SUBSTR(V_YMD, 1, 6);
  BEGIN
    --�����·����ϸ��µ��ʱ����Ϊ03
    --�����·����¸��µ��ʱ����Ϊ01
    IF V_YM = S_YM THEN
      --�³���15��Ϊ01
      IF I_T >= 1 AND I_T <= 15 THEN
        RESULT := '01';
      ELSE
        --16�ŵ�24��֮��Ϊ02
        IF I_T >= 16 AND I_T <= 24 THEN
          RESULT := '02';
        ELSE
          --25��֮��������һ��Ϊ03(ʵ��Ӧ�ð������һ��),�����ĩ���һ��Ϊ04.
          --03=0301+04
          IF I_T >= 25 AND TO_DATE(V_YMD, 'yyyyMMdd') <>
             LAST_DAY(TO_DATE(S_YM, 'yyyyMM')) THEN
            RESULT := '0301';
          ELSE
            RESULT := '04';
          END IF;
        END IF;
      END IF;
    ELSE
      IF V_YM < S_YM THEN
        RESULT := '03';
      ELSE
        RESULT := '01';
      END IF;
    END IF;
    RETURN(RESULT);
  END F_GETTIMEINTERVAL;

  /*FUNCTION F_GET_ORG_DIM_CODE RETURN VARCHAR2 IS
    V_ORGDIMCODE VARCHAR2(32) := 'gkOrg';
  BEGIN
    SELECT TRANS_VALUE
      INTO V_ORGDIMCODE
      FROM GK_K_CODE_TRANS
     WHERE CODE_TYPE = 'ORGDIMCODE'
       AND ROWNUM = 1;
    RETURN V_ORGDIMCODE;
  EXCEPTION
    WHEN OTHERS THEN
      RETURN V_ORGDIMCODE;
    
  END F_GET_ORG_DIM_CODE;*/

  --PKG_GK_PUBLIC.F_TRANSORG2AA�������ڽ����к����ع�˾�ĵ�λ�����AA��
  --��������ܹ��Զ��жϴ���ĵ�λ�Ƿ�Ϊ���л����أ�����ǵ��к����أ�
  --�򷵻�ֵΪ��λ����+AA���������ĵ�λ���ǵ��к����ؽ�����ԭ����λ
  /*FUNCTION F_TRANSORG2AA(V_ORG_NO VARCHAR2) RETURN VARCHAR2 IS
    V_RESULT VARCHAR2(32);
  BEGIN
    \*select decode(instr('03/04/05', dim_level),
                  0,
                  dim_value,
                  dim_value || 'AA')
      into V_RESULT
    from OMAC.k_Dim_Rela where dim_code = 'gkOrg' 
    AND dim_value=v_org_no
    and rownum = 1;
    return V_RESULT;
    *\
    SELECT DIM_VALUE
      INTO V_RESULT
      FROM OMAC.K_DIM_RELA
     WHERE DIM_CODE = 'gkOrg'
       AND DIM_VALUE = V_ORG_NO || 'AA'
       AND ROWNUM = 1;
    RETURN V_RESULT;
  EXCEPTION
    WHEN OTHERS THEN
      V_RESULT := V_ORG_NO;
      RETURN V_RESULT;
  END F_TRANSORG2AA;*/

  PROCEDURE P_SEASON2MON(V_SEASONSTR     IN VARCHAR2,
                         V_STAT_BGNMONTH OUT VARCHAR2,
                         V_STAT_ENDMONTH OUT VARCHAR2) IS
    /*************************************
      �������ƣ�
      ����������
            �ɼ��Ȼ�ȡ��ֹ�·�
      �޸���:Guoqiang
      �޸�����:
    ************************************/
    V_SEASON        VARCHAR2(1);
    V_STAT_CYCLE_LC VARCHAR2(255);
    V_YEAR          VARCHAR2(255) := SUBSTR(V_SEASONSTR, 1, 4);
  BEGIN
    V_SEASON := SUBSTR(V_SEASONSTR, 6, 6);
    SELECT DECODE(V_SEASON, '1', V_YEAR - 1, V_YEAR) || 'Q' ||
           DECODE(V_SEASON, '1', '4', V_SEASON - 1)
      INTO V_STAT_CYCLE_LC
      FROM DUAL;
    SELECT DECODE(V_SEASON,
                  '1',
                  V_YEAR || '01',
                  '2',
                  V_YEAR || '04',
                  '3',
                  V_YEAR || '07',
                  '4',
                  V_YEAR || '10')
      INTO V_STAT_BGNMONTH
      FROM DUAL;
    SELECT DECODE(V_SEASON,
                  '1',
                  V_YEAR || '03',
                  '2',
                  V_YEAR || '06',
                  '3',
                  V_YEAR || '09',
                  '4',
                  V_YEAR || '12')
      INTO V_STAT_ENDMONTH
      FROM DUAL;
  END;

  /*FUNCTION F_TRANS_CODE2(V_CODE_TYPE IN VARCHAR2, V_CODE_VALUE IN VARCHAR2)
    RETURN VARCHAR2 IS
    \********************************
        �������� ��ȡ��ʡ���ά�ȶ�Ӧ�ܲ�һ��ά��ά���ɶ�����¼��ת������
        ���ߣ�   hyh
        ��ע:������ʡ���ô˺���
        ʱ�䣺   2012-11-21 14:45:59
        �޸���:
        ����ֵ��
        ���ֵ: �ַ���
    
    ************************************\
    V_RESULT VARCHAR2(256);
  BEGIN
    SELECT TRANS_VALUE
      INTO V_RESULT
      FROM GK_K_CODE_TRANS
     WHERE CODE_TYPE = V_CODE_TYPE
       AND CONT1 = V_CODE_VALUE
       AND ROWNUM = 1;
    RETURN V_RESULT;
  EXCEPTION
    WHEN OTHERS THEN
      V_RESULT := V_CODE_VALUE;
      RETURN V_RESULT;
  END F_TRANS_CODE2;*/

  --��ȡ�յ�����,Ϊ����
  FUNCTION F_GET_DAY_LC(IN_YMD VARCHAR2) RETURN VARCHAR2 IS
  BEGIN
    RETURN TO_CHAR(TO_DATE(IN_YMD, 'yyyymmdd') - 1, 'yyyymmdd');
  END;

  --��ȡ�յ�ͬ�ڣ�Ϊȥ��Ľ���
  FUNCTION F_GET_DAY_LY(IN_YMD VARCHAR2) RETURN VARCHAR2 IS
  BEGIN
    RETURN TO_CHAR(ADD_MONTHS(TO_DATE(IN_YMD, 'yyyymmdd'), -12),
                   'yyyymmdd');
  END;

  --��ȡ�µ����ڣ�Ϊ����
  FUNCTION F_GET_MONTH_LC(IN_YM VARCHAR2) RETURN VARCHAR2 IS
  BEGIN
    RETURN TO_CHAR(ADD_MONTHS(TO_DATE(IN_YM, 'yyyymm'), -1), 'yyyymm');
  END;

  --��ȡ�µ�ͬ�ڣ�Ϊȥ��ĵ���
  FUNCTION F_GET_MONTH_LY(IN_YM VARCHAR2) RETURN VARCHAR2 IS
  BEGIN
    RETURN TO_CHAR(ADD_MONTHS(TO_DATE(IN_YM, 'yyyymm'), -12), 'yyyymm');
  END;

  --��ȡ��������
  FUNCTION F_GET_SEASON_LC(IN_YQ VARCHAR2) RETURN VARCHAR2 IS
    V_RESULT VARCHAR2(6);
  BEGIN
    SELECT DECODE(SUBSTR(IN_YQ, 6, 1),
                  '1',
                  SUBSTR(IN_YQ, 1, 4) - 1 || 'Q4',
                  SUBSTR(IN_YQ, 1, 5) || (SUBSTR(IN_YQ, 6, 1) - 1))
      INTO V_RESULT
      FROM DUAL;
    RETURN V_RESULT;
  END;

  --��ȡ����ͬ��
  FUNCTION F_GET_SEASON_LY(IN_YQ VARCHAR2) RETURN VARCHAR2 IS
  BEGIN
    RETURN SUBSTR(IN_YQ, 1, 4) - 1 || SUBSTR(IN_YQ, 5, 2);
  END;

  --��ȡ�������
  FUNCTION F_GET_YEAR_LC(IN_Y VARCHAR2) RETURN VARCHAR2 IS
  BEGIN
    RETURN IN_Y - 1;
  END;

  --��ȡ���ͬ��
  FUNCTION F_GET_YEAR_LY(IN_Y VARCHAR2) RETURN VARCHAR2 IS
  BEGIN
    RETURN IN_Y - 1;
  END;

  --���մ���������ַ������Ⱥ������жϵõ�����ֵ
  FUNCTION F_GET_LC(IN_DATE VARCHAR2) RETURN VARCHAR2 IS
    V_LENGTH NUMBER;
  BEGIN
    V_LENGTH := LENGTH(TRIM(IN_DATE));
  
    IF 8 = V_LENGTH THEN
      --��
      RETURN F_GET_DAY_LC(IN_DATE);
    ELSE
      IF (6 = V_LENGTH) AND (INSTR(UPPER(IN_DATE), 'Q') <= 0) THEN
        --��
        RETURN F_GET_MONTH_LC(IN_DATE);
      ELSE
        IF (6 = V_LENGTH) AND (INSTR(UPPER(IN_DATE), 'Q') > 0) THEN
          --����
          RETURN F_GET_SEASON_LC(IN_DATE);
        ELSE
          --��
          IF 4 = V_LENGTH THEN
            RETURN F_GET_YEAR_LC(IN_DATE);
          END IF;
        END IF;
      END IF;
    
    END IF;
  
  END;

  --���մ���������ַ������Ⱥ������жϵõ�ͬ��ֵ
  FUNCTION F_GET_LY(IN_DATE VARCHAR2) RETURN VARCHAR2 IS
    V_LENGTH NUMBER;
  BEGIN
    V_LENGTH := LENGTH(TRIM(IN_DATE));
  
    IF 8 = V_LENGTH THEN
      --��
      RETURN F_GET_DAY_LY(IN_DATE);
    ELSE
      IF (6 = V_LENGTH) AND (INSTR(UPPER(IN_DATE), 'Q') <= 0) THEN
        --��
        RETURN F_GET_MONTH_LY(IN_DATE);
      ELSE
        IF (6 = V_LENGTH) AND (INSTR(UPPER(IN_DATE), 'Q') > 0) THEN
          --����
          RETURN F_GET_SEASON_LY(IN_DATE);
        ELSE
          --��
          IF 4 = V_LENGTH THEN
            RETURN F_GET_YEAR_LY(IN_DATE);
          END IF;
        END IF;
      END IF;
    
    END IF;
  END;

  --���ջ�ȡ����K_dim_rela�е�dim_codeֵ��Ĭ��ΪgkOrg
  /*FUNCTION F_GETGKORG RETURN VARCHAR2 IS
    V_RESULT VARCHAR2(32);
  BEGIN
  
    SELECT A.TRANS_VALUE
      INTO V_RESULT
      FROM OMAC.GK_K_CODE_TRANS A
     WHERE CODE_TYPE = 'gkOrg';
    RETURN V_RESULT;
  EXCEPTION
    WHEN OTHERS THEN
      V_RESULT := 'gkOrg';
      RETURN V_RESULT;
  END;*/

--��¼��ʼ��־
  FUNCTION PROC_BGN(V_OBJ_NAME  VARCHAR2,
                    IN_PARA     VARCHAR2) RETURN VARCHAR2 IS
    V_DATA_ID       VARCHAR2(24) := F_GET_TABLE_SEQ(F_PRO_ORG_NO);
    V_BGN_EXEC_DATE DATE := SYSDATE;
  
  BEGIN
  
    INSERT INTO DW_STATISTICS_LOG
      (DATA_ID,
       OBJ_NAME,
       BGN_EXEC_DATE,
       END_EXEC_DATE,
       LOG_TYPE,
       RETURN_INFO,
       IN_PARA)
    VALUES
      (V_DATA_ID, V_OBJ_NAME, V_BGN_EXEC_DATE, NULL, NULL, NULL, NULL);
    COMMIT;
    RETURN V_DATA_ID;
  END;


--��¼������־
  procedure PROC_END(V_DATA_ID     VARCHAR2,
                    V_LOG_TYPE    VARCHAR2,
                    V_RETURN_INFO VARCHAR2) IS
    V_END_EXEC_DATE DATE := SYSDATE;
  
  BEGIN
  
    UPDATE DW_STATISTICS_LOG
       SET END_EXEC_DATE = V_END_EXEC_DATE,
           LOG_TYPE      = V_LOG_TYPE,
           RETURN_INFO   = V_RETURN_INFO
     WHERE DATA_ID = V_DATA_ID;
    COMMIT;
  END;

 FUNCTION F_GET_DATAMODE RETURN VARCHAR2 IS
  
    /********************************************************************
    #function:ȡ����ʡ����ϵͳ���ݿⲿ��ģʽ��1����ؿ�͹����Ϊͬһ���� ��2����ؿ�͹����Ϊ��ͬ��,Ĭ��Ϊ2
    #version:1.01
    #author:�����
    #createdate:2010-11-24
    #input��
    #input��
    #output�� VARCHAR2
    #modifyexplain:
    ************************************************/
    V_DATAMODE VARCHAR2(8);
  
  BEGIN
    BEGIN
    
      SELECT NVL(MAX(TRANS_VALUE), 1)
        INTO V_DATAMODE
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'dataMode';
    
    EXCEPTION
      WHEN OTHERS THEN
        V_DATAMODE := '2';
    END;
    RETURN V_DATAMODE;
  END F_GET_DATAMODE;
  
END PKG_GK_PUBLIC;
/
