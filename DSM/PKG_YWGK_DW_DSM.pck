CREATE OR REPLACE PACKAGE PKG_YWGK_DW_DSM IS

  --��λ�ղɼ��ɹ�����ʱ���ã�ע�͵�
  /*\**
  �������ƣ�P_ENT_DW_R_COLL_SUCCR_DAY/��λ�ղɼ��ɹ�����ڹ���
  ���ߣ�����
  ��д���ڣ�2014-03-08 14:00:37
  ������������λ�ղɼ��ɹ�����ڹ���,�����ݿ�JOB����
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ����� 
  �޸���:
  �޸�����:
  **\
  PROCEDURE P_ENT_DW_R_COLL_SUCCR_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
  
  \**
  �������ƣ�P_INS_DW_R_COLL_SUCCR_DAY/��λ�ղɼ��ɹ��ʳ�ȡ����
  ���ߣ�����
  ��д���ڣ�2014-03-08 15:02:39
  ������������λ�ղɼ��ɹ��ʳ�ȡ����,��P_ENT_DW_R_COLL_SUCCR_DAY���ã����������к�������ݵ������OMAC��DW_R_COLL_SUCCR_DAY����
  **\
  PROCEDURE P_INS_DW_R_COLL_SUCCR_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
  
  \**
  �������ƣ�P_ETL_DW_R_COLL_SUCCR_DAY/��λ�ղɼ��ɹ������͹���
  ���ߣ�����
  ��д���ڣ�2014-03-08 17:00:55
  ������������λ�ղɼ��ɹ������͹���,��ȡ���̱���ڹ��̵��ú󣬴ӹ����OMAC�Ľ������ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_COLL_SUCCR_DAY��
  **\
  PROCEDURE P_ETL_DW_R_COLL_SUCCR_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);*/

  /**
  �������ƣ�P_ENT_DW_R_COLL_SUCCR_DAY/��λ�²ɼ��ɹ�����ڹ���
  ���ߣ�����
  ��д���ڣ�2014-03-08 14:00:37
  ������������λ�²ɼ��ɹ�����ڹ���,�����ݿ�JOB����
  ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ����� 
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_R_COLL_SUCCR_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�P_INS_DW_R_COLL_SUCCR_MON/��λ�²ɼ��ɹ��ʳ�ȡ����
  ���ߣ�����
  ��д���ڣ�2014-03-08 15:02:39
  ������������λ�²ɼ��ɹ��ʳ�ȡ����,��P_ENT_DW_R_COLL_SUCCR_MON���ã����������к�������ݵ������OMAC��DW_R_COLL_SUCCR_MON����
  **/
  PROCEDURE P_INS_DW_R_COLL_SUCCR_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�P_ETL_DW_R_COLL_SUCCR_MON/��λ�²ɼ��ɹ������͹���
  ���ߣ�����
  ��д���ڣ�2014-03-08 17:00:55
  ������������λ�²ɼ��ɹ������͹���,��ȡ���̱���ڹ��̵��ú󣬴ӹ����OMAC�Ľ������ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_COLL_SUCCR_MON��
  **/
  PROCEDURE P_ETL_DW_R_COLL_SUCCR_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�P_ENT_DW_R_INTEL_METER_INFO/�¶����ܵ����Ϣ
  ���ߣ�����
  ��д���ڣ�2014-03-08 14:00:37
  �����������¶����ܵ����Ϣ��ڹ���,�����ݿ�JOB����
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ����� 
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_R_INTEL_METER_INFO(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_ins_dw_r_intel_meter_info/�¶����ܵ����Ϣ��ȡ����
  ���ߣ�����
  ��д���ڣ�2014-03-08 15:02:39
  �����������¶����ܵ����Ϣ��ȡ����,��P_ENT_DW_R_INTEL_METER_INFO���ã����������к�������ݵ������OMAC��DW_R_INTEL_METER_INFO����
  **/
  PROCEDURE P_INS_DW_R_INTEL_METER_INFO(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_etl_dw_r_intel_meter_info/�¶����ܵ����Ϣ���͹���
  ���ߣ�����
  ��д���ڣ�2014-03-08 17:00:55
  �����������¶����ܵ����Ϣ���͹���,��ȡ���̱���ڹ��̵��ú󣬴ӹ����OMAC�Ľ������ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_INTEL_METER_INFO��
  **/
  PROCEDURE P_ETL_DW_R_INTEL_METER_INFO(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_ent_dw_r_gate_coll_cove/�¶ȹؿڲɼ��������
  ���ߣ�����
  ��д���ڣ�2014-03-08 14:00:37
  �����������¶ȹؿڲɼ����������ڹ���,�����ݿ�JOB����
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ����� 
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_R_GATE_COLL_COVE(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_ins_dw_r_gate_coll_cove/�¶ȹؿڲɼ����������ȡ����
  ���ߣ�����
  ��д���ڣ�2014-03-08 15:02:39
  �����������¶ȹؿڲɼ����������ȡ����,��P_ENT_DW_R_INTEL_METER_INFO���ã����������к�������ݵ������OMAC��dw_r_gate_coll_cove����
  **/
  PROCEDURE P_INS_DW_R_GATE_COLL_COVE(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_etl_dw_r_gate_coll_cove/�¶ȹؿڲɼ�����������͹���
  ���ߣ�����
  ��д���ڣ�2014-03-08 17:00:55
  �����������¶ȹؿڲɼ�����������͹���,��ȡ���̱���ڹ��̵��ú󣬴ӹ����OMAC�Ľ������ȡ���ݲ��뵽�����OMAC�û��µ�dw_r_gate_coll_cove��
  **/
  PROCEDURE P_ETL_DW_R_GATE_COLL_COVE(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_ent_dw_r_cons_coll_cover/�¶ȵ�λ�û��ɼ��������
  ���ߣ�����
  ��д���ڣ�2014-03-08 14:00:37
  �����������¶ȵ�λ�û��ɼ����������ڹ���,�����ݿ�JOB����
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ����� 
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_R_CONS_COLL_COVER(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_ins_dw_r_cons_coll_cover/�¶ȵ�λ�û��ɼ����������ȡ����
  ���ߣ�����
  ��д���ڣ�2014-03-08 15:02:39
  �����������¶ȵ�λ�û��ɼ����������ȡ����,��P_ENT_DW_R_INTEL_METER_INFO���ã����������к�������ݵ������OMAC��dw_r_cons_coll_cover����
  **/
  PROCEDURE P_INS_DW_R_CONS_COLL_COVER(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_etl_dw_r_cons_coll_cover/�¶ȵ�λ�û��ɼ�����������͹���
  ���ߣ�����
  ��д���ڣ�2014-03-08 17:00:55
  �����������¶ȵ�λ�û��ɼ�����������͹���,��ȡ���̱���ڹ��̵��ú󣬴ӹ����OMAC�Ľ������ȡ���ݲ��뵽�����OMAC�û��µ�dw_r_cons_coll_cover��
  **/
  PROCEDURE P_ETL_DW_R_CONS_COLL_COVER(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_ent_dw_r_coll_coverage/�¶ȵ�λӪҵ���ɼ��������
  ���ߣ�����
  ��д���ڣ�2014-03-08 14:00:37
  �����������¶ȵ�λӪҵ���ɼ����������ڹ���,�����ݿ�JOB����
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ����� 
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_R_COLL_COVERAGE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_ins_dw_r_coll_coverage/�¶ȵ�λӪҵ���ɼ����������ȡ����
  ���ߣ�����
  ��д���ڣ�2014-03-08 15:02:39
  �����������¶ȵ�λӪҵ���ɼ����������ȡ����,��P_ENT_DW_R_INTEL_METER_INFO���ã����������к�������ݵ������OMAC��dw_r_coll_coverage����
  **/
  PROCEDURE P_INS_DW_R_COLL_COVERAGE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_etl_dw_r_coll_coverage/�¶ȵ�λӪҵ���ɼ�����������͹���
  ���ߣ�����
  ��д���ڣ�2014-03-08 17:00:55
  �����������¶ȵ�λӪҵ���ɼ�����������͹���,��ȡ���̱���ڹ��̵��ú󣬴ӹ����OMAC�Ľ������ȡ���ݲ��뵽�����OMAC�û��µ�dw_r_coll_coverage��
  **/
  PROCEDURE P_ETL_DW_R_COLL_COVERAGE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_ent_dw_r_coll_master/�¶ȹؿڲɼ��������
  ���ߣ�����
  ��д���ڣ�2014-03-08 14:00:37
  �����������ɼ���վ���������ڹ���,�����ݿ�JOB����
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ����� 
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_R_COLL_MASTER(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_ins_dw_r_coll_master/�ɼ���վ���������ȡ����
  ���ߣ�����
  ��д���ڣ�2014-03-08 15:02:39
  �����������ɼ���վ���������ȡ����,��P_ENT_DW_R_INTEL_METER_INFO���ã����������к�������ݵ������OMAC��dw_r_coll_maste����
  **/
  PROCEDURE P_INS_DW_R_COLL_MASTER(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_etl_dw_r_coll_master/�ɼ���վ����������͹���
  ���ߣ�����
  ��д���ڣ�2014-03-08 17:00:55
  �����������ɼ���վ����������͹���,��ȡ���̱���ڹ��̵��ú󣬴ӹ����OMAC�Ľ������ȡ���ݲ��뵽�����OMAC�û��µ�dw_r_coll_maste��
  **/
  PROCEDURE P_ETL_DW_R_COLL_MASTER(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  /**
   �������ƣ�P_ENT_DW_R_PA_CONTROL_MON/��λ�·ѿظ��������ڹ���
  ���ߣ�chenyulian
  ��д���ڣ�2014-03-07 10:37
  ������������λ�·ѿظ��������ڹ���,�����ݿ�JOB���� 
  
  ͳ��Ƶ�ȣ����³�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ��·� 
  **/
  PROCEDURE P_ENT_DW_R_PA_CONTROL_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�P_INS_DW_R_PA_CONTROL_MON/��λ�·ѿظ��������ȡ����
  ���ߣ�chenyulian
  ��д���ڣ�2014-03-07 10:37
  ������������λ�·ѿظ��������ȡ����,��P_ENT_DW_R_PA_CONTROL_MON���ã����������к�������ݵ������OMAC��DW_R_PA_CONTROL_MON����
  */
  PROCEDURE P_INS_DW_R_PA_CONTROL_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�P_ETL_DW_R_PA_CONTROL_MON/��λ�·ѿظ���������͹���
  ���ߣ�chenyulian
  ��д���ڣ�2014-03-07 10:37
  ������������λ�·ѿظ���������͹���,��ȡ���̱���ڹ��̵��ú󣬴ӹ����OMAC�Ľ������ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_PA_CONTROL_MON��
  */
  PROCEDURE P_ETL_DW_R_PA_CONTROL_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_ent_DW_R_AUTO_CALC_MON/�¶��Զ����������Ӧ�����
  ���ߣ�����
  ��д���ڣ�2014-03-08 14:00:37
  �����������¶��Զ����������Ӧ�������ڹ���,�����ݿ�JOB����
  ͳ��Ƶ�ȣ����ճ�ȡ, I_DATA ΪҪ�������ݵ�ͳ�Ƶ����� 
  �޸���:
  �޸�����:
  **/
  PROCEDURE P_ENT_DW_R_AUTO_CALC_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_ins_DW_R_AUTO_CALC_MON/�¶��Զ����������Ӧ�������ȡ����
  ���ߣ�����
  ��д���ڣ�2014-03-08 15:02:39
  �����������¶��Զ����������Ӧ�������ȡ����,��P_ENT_DW_R_INTEL_METER_INFO���ã����������к�������ݵ������OMAC��DW_R_AUTO_CALC_MON����
  **/
  PROCEDURE P_INS_DW_R_AUTO_CALC_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�p_etl_DW_R_AUTO_CALC_MON/�¶��Զ����������Ӧ��������͹���
  ���ߣ�����
  ��д���ڣ�2014-03-08 17:00:55
  �����������¶��Զ����������Ӧ��������͹���,��ȡ���̱���ڹ��̵��ú󣬴ӹ����OMAC�Ľ������ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_AUTO_CALC_MON��
  **/
  PROCEDURE P_ETL_DW_R_AUTO_CALC_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /**
  �������ƣ�P_ENT_DW_BM_TGPQ_DAY/Ӫ�������ն���������,ÿ��16������
  ���ߣ����ѵ�
  ��д���ڣ�2014-10-03 00:02:55
  ����������ÿ��16�����У���ÿ��12:00�ɼ�ϵͳ���͹����Ĳɼ������ն����������л�ȡ.
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
  �������ƣ�P_ENT_DW_BM_CONSPQ_DAY/Ӫ���û��ն���������,ÿ��16������
  ���ߣ����ѵ�
  ��д���ڣ�2014-10-03 00:44:25
  ����������ÿ��16�����У���ÿ��12:00�ɼ�ϵͳ���͹����Ĳɼ��û��ն�����������ȡ.
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
  �������ƣ�P_ENT_CP_EXP_DAY/�ɼ��ն�������쳣���,ÿ��16������
  ���ߣ����ѵ�
  ��д���ڣ�2014-10-03 02:31:10
  ����������ÿ��16�����У�Ӫ�����ɼ��ṩ�Ķ�Ӧ���ϻ�����̨��ID��Ϣ������д�룬�����ܲ�ҵ��ܿ�ƽ̨���ݲֿ�Ͳɼ�ϵͳ��
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
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_COLL_SUCCR_DAY', V_YMD);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_R_COLL_SUCCR_DAY��
    P_INS_DW_R_COLL_SUCCR_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_R_COLL_SUCCR_DAY��ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_COLL_SUCCR_DAY��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_R_COLL_SUCCR_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_R_COLL_SUCCR_DAY A
         SET A.PS_BUSI_AREA_CODE = (SELECT \*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*\
                                     B.BUSI_AREA_STAT_CODE
                                      FROM SY_OM_DW_O_ORG_CONTRAST B
                                     WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE A.STAT_YMD = V_YMD;
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_R_COLL_SUCCR_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_R_COLL_SUCCR_DAY  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  
  PROCEDURE P_INS_DW_R_COLL_SUCCR_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --����
    --V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    --ͳ������
    V_LT_DAY VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_R_COLL_SUCCR_DAY', I_DATA);
    --V_LT_DAY := TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_R_COLL_SUCCR_DAY X WHERE X.STAT_YMD = V_LT_DAY;
    --��ʼ����ͳ��,���뵽��������OMAC��DW_R_COLL_SUCCR_DAY
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_R_COLL_SUCCR_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_R_COLL_SUCCR_DAY  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  
  PROCEDURE P_ETL_DW_R_COLL_SUCCR_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YMD VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_COLL_SUCCR_DAY', I_DATA);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_R_COLL_SUCCR_DAY X WHERE X.STAT_YMD = V_YMD;
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YMD = V_YMD
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_R_COLL_SUCCR_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_R_COLL_SUCCR_DAY  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;*/

  PROCEDURE P_ENT_DW_R_COLL_SUCCR_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_COLL_SUCCR_MON', V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_R_COLL_SUCCR_MON��
    P_INS_DW_R_COLL_SUCCR_MON(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_R_COLL_SUCCR_MON��ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_COLL_SUCCR_MON��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_R_COLL_SUCCR_MON(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_R_COLL_SUCCR_MON  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_R_COLL_SUCCR_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_COLL_SUCCR_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --����
    V_YM VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_R_COLL_SUCCR_MON', I_DATA);
    --ɾ��ԭ�еĳ�ȡ�ļ�¼
    DELETE FROM DW_R_COLL_SUCCR_MON X WHERE X.STAT_YM = V_YM;
    --��ʼ����ͳ��,���뵽��������OMAC��DW_R_COLL_SUCCR_MON
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_R_COLL_SUCCR_MON  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_R_COLL_SUCCR_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_COLL_SUCCR_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_COLL_SUCCR_MON', I_DATA);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_R_COLL_SUCCR_MON X WHERE X.STAT_YM = V_YM;
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_R_COLL_SUCCR_MON  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_R_COLL_SUCCR_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_INTEL_METER_INFO(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_INTEL_METER_INFO', V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_R_INTEL_METER_INFO��
    P_INS_DW_R_INTEL_METER_INFO(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_R_INTEL_METER_INFO��ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_INTEL_METER_INFO��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_R_INTEL_METER_INFO(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_R_INTEL_METER_INFO  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_R_INTEL_METER_INFO  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_INTEL_METER_INFO(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_Y        VARCHAR2(6) := SUBSTR(I_DATA, 1, 4);
    BEG_V_DATE DATE := TO_DATE(V_YM || '01', 'yyyymmdd'); --����1��
    --end_v_date date := last_day(beg_v_date); --�������һ��
    Y_V_DATE DATE := TO_DATE(V_Y || '0101', 'yyyymmdd'); --����1��1��
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��ʼ��¼��־  
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_R_INTEL_METER_INFO  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_R_INTEL_METER_INFO  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_INTEL_METER_INFO(I_DATA   VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_INTEL_METER_INFO',
                                        I_DATA);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_R_INTEL_METER_INFO X WHERE X.STAT_YM = V_YM;
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_R_INTEL_METER_INFO  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_R_INTEL_METER_INFO  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_GATE_COLL_COVE(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_GATE_COLL_COVE', V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_R_GATE_COLL_COVE��
    P_INS_DW_R_GATE_COLL_COVE(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_R_GATE_COLL_COVE��ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_GATE_COLL_COVE��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_R_GATE_COLL_COVE(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_R_GATE_COLL_COVE  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_R_GATE_COLL_COVE  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_GATE_COLL_COVE(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    BEG_V_DATE DATE := TO_DATE(V_YM || '01', 'yyyymmdd'); --����1��
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��ʼ��¼��־  
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_R_GATE_COLL_COVE  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_R_GATE_COLL_COVE  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_GATE_COLL_COVE(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_GATE_COLL_COVE', I_DATA);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_R_GATE_COLL_COVE X WHERE X.STAT_YM = V_YM;
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_R_GATE_COLL_COVE  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_R_GATE_COLL_COVE  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_CONS_COLL_COVER(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_CONS_COLL_COVER', V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_R_CONS_COLL_COVER��
    P_INS_DW_R_CONS_COLL_COVER(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_R_CONS_COLL_COVER��ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_CONS_COLL_COVER��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_R_CONS_COLL_COVER(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_R_CONS_COLL_COVER  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_R_CONS_COLL_COVER  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_CONS_COLL_COVER(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    BEG_V_DATE DATE := TO_DATE(V_YM || '01', 'yyyymmdd'); --����1��
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��ʼ��¼��־  
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
                     --AND AA.STATUS_CODE = '01'  ---ͳ�Ƹ����ʲ����ն��Ƿ�Ͷ�˶��㸲��
                  AND ROWNUM = 1)) AS NOTCOLL_CC,
         COUNT((SELECT CONS_ID
                 FROM SY_SG_R_TMNL_RUN AA, SY_SG_R_CP_CONS_RELA E
                WHERE AA.CP_NO = E.CP_NO
                  AND E.CONS_ID = D.CONS_ID
                  AND AA.RUN_DATE < ADD_MONTHS(BEG_V_DATE, 1)
                     -- AND AA.STATUS_CODE = '01' ---ͳ�Ƹ����ʲ����ն��Ƿ�Ͷ�˶��㸲��
                  AND ROWNUM = 1)) AS COLL_CC,
         COUNT((SELECT CONS_ID
                 FROM SY_SG_R_TMNL_RUN AA, SY_SG_R_CP_CONS_RELA E
                WHERE AA.CP_NO = E.CP_NO
                  AND E.CONS_ID = D.CONS_ID
                  AND AA.RUN_DATE < ADD_MONTHS(BEG_V_DATE, 1)
                  AND AA.STATUS_CODE = '01' ---�ն�Ͷ��״̬
                  AND ROWNUM = 1)) AS CONS_RUN_NUM,
         SYSDATE
          FROM SY_SG_C_CONS D
         WHERE EXISTS (SELECT 1 ---ֻ����ʵ����������û���ͳ��
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_R_CONS_COLL_COVER  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_R_CONS_COLL_COVER  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_CONS_COLL_COVER(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_CONS_COLL_COVER',
                                        I_DATA);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_R_CONS_COLL_COVER X WHERE X.STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_R_CONS_COLL_COVER  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_R_CONS_COLL_COVER  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_COLL_COVERAGE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_COLL_COVERAGE', V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_R_COLL_COVERAGE��
    P_INS_DW_R_COLL_COVERAGE(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_R_COLL_COVERAGE��ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_COLL_COVERAGE��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_R_COLL_COVERAGE(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_R_COLL_COVERAGE  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_R_COLL_COVERAGE  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_COLL_COVERAGE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    BEG_V_DATE DATE := TO_DATE(V_YM || '01', 'yyyymmdd'); --����1��
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��ʼ��¼��־  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_R_COLL_COVERAGE', I_DATA);
    --ͳ�ƽ�ֹ���ڣ�ͳ����ĩ��
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
                   --  AND BB.STATUS_CODE = '01'  ---ͳ�Ƹ����ʲ����ն��Ƿ�Ͷ�˶��㸲��
                AND BB.RUN_DATE < ADD_MONTHS(BEG_V_DATE, 1))) AS NOTCOLL_BUSI_CC,
       COUNT((SELECT DISTINCT (C.MP_ID)
               FROM SY_SG_R_TMNL_RUN BB, SGPM.R_CP_MP_RELA CC
              WHERE CC.CP_NO = BB.CP_NO
                AND CC.MP_ID = C.MP_ID
                AND BB.STATUS_CODE = '01' --�ն������е�  �ն����в���Ͷ��
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_R_COLL_COVERAGE  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_R_COLL_COVERAGE  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_COLL_COVERAGE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_COLL_COVERAGE', I_DATA);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_R_COLL_COVERAGE X WHERE X.STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_R_COLL_COVERAGE  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_R_COLL_COVERAGE  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_COLL_MASTER(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_COLL_MASTER', V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_R_COLL_MASTER��
    P_INS_DW_R_COLL_MASTER(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_R_COLL_MASTER��ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_COLL_MASTER��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_R_COLL_MASTER(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_R_COLL_MASTER  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_R_COLL_MASTER  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_COLL_MASTER(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��ʼ��¼��־  
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_R_COLL_MASTER  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_R_COLL_MASTER  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_COLL_MASTER(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_COLL_MASTER', I_DATA);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_R_COLL_MASTER X WHERE X.STAT_YM = V_YM;
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_R_COLL_MASTER  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_R_COLL_MASTER  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_PA_CONTROL_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('DW_R_PA_CONTROL_MON', V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_R_PA_CONTROL_MON��
    P_INS_DW_R_PA_CONTROL_MON(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_R_PA_CONTROL_MON��ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_PA_CONTROL_MON��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_R_PA_CONTROL_MON(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� DW_R_PA_CONTROL_MON  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� DW_R_PA_CONTROL_MON  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_PA_CONTROL_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --����
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    BEG_V_DATE DATE := TO_DATE(V_YM || '01', 'yyyymmdd'); --����1��
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_R_PA_CONTROL_MON', I_DATA);
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    -- DELETE FROM DW_R_PA_CONTROL_MON X WHERE X.STAT_YM = V_YM;
    --��ʼ����ͳ��,���뵽��������OMAC��DW_R_PA_CONTROL_MON
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
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
      *���ӱ�׼����ת���߼�,ת������pkg_gk_public.f_trans_code�����������group by��֤����ת����
      *���ֶ����ͬ���͵�ά�Ⱥ󱻻���,��ֹ�����ظ�.
      */
        SELECT /*+parallel(N 4) parallel(C 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO) DATA_ID,
         --����
         V_PRO_ORG_NO PRO_ORG_NO,
         --��ʡ����
         N.ORG_NO,
         '',
         V_YM,
         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', N.CONS_SORT_CODE),
         --�û�����
         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', N.ELEC_TYPE_CODE),
         --�õ����
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', N.VOLT_CODE),
         --��ѹ�ȼ� 
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
              --�ų������õ����� 
           AND N.ELEC_TYPE_CODE <> '000'
           AND N.ORG_NO LIKE TSS.ORG_NO || '%'
              --���û�״̬�����ų�,���û�������״̬������״̬Ϊ�������û�״̬�ж�,���ٵ������û�status_code�����ж�
           AND N.BUILD_DATE < V_BEGIN_NEXT_MONTH
           AND (N.CANCEL_DATE >= V_BEGIN_MONTH OR
               (N.CANCEL_DATE IS NULL AND N.STATUS_CODE <> '9'))
         GROUP BY N.ORG_NO, N.CONS_SORT_CODE, N.ELEC_TYPE_CODE, N.VOLT_CODE;
      COMMIT;
    END LOOP;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_R_PA_CONTROL_MON  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_R_PA_CONTROL_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_PA_CONTROL_MON(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����SUBSTR
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_PA_CONTROL_MON', I_DATA);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_R_PA_CONTROL_MON X WHERE X.STAT_YM = V_YM;
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_R_PA_CONTROL_MON  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_R_PA_CONTROL_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ENT_DW_R_AUTO_CALC_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_R_AUTO_CALC_MON', V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_R_AUTO_CALC_MON��
    P_INS_DW_R_AUTO_CALC_MON(V_YM, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_R_AUTO_CALC_MON��ȡ���ݲ��뵽�����OMAC�û��µ�DW_R_AUTO_CALC_MON��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_R_AUTO_CALC_MON(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_R_AUTO_CALC_MON  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_R_AUTO_CALC_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_R_AUTO_CALC_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    BEG_V_DATE DATE := TO_DATE(V_YM || '01', 'yyyymmdd'); --����1��
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO  VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_OUT_PRCCODE VARCHAR2(2000) := PKG_GK_PUBLIC.F_TRANS_CODE('DW_R_AUTO_CALC_MON_OUT_PRCCODE',
                                                               'DW_R_AUTO_CALC_MON_OUT_PRCCODE'); -- ���������ŵĵ����ֱ�ӹ��� ��ȡֵ
  BEGIN
    --��ʼ��¼��־  
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
                             AND RD.SRC_CODE = '01' --������Դ���������
                           GROUP BY CALC_ID
                          HAVING COUNT(1) = SUM(DECODE(ACTUAL_MODE, '301', 1, '302', 1, '303', 1, '401', 1, 0)) --��¼�������Զ�����ļ�¼��һ��
                          ) D,
                         SY_SG_C_CONS E
                   WHERE A.YM = V_YM
                     AND B.YM = V_YM
                     AND A.ELEC_TYPE_CODE >= '100' --�ų������û�
                     AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                     AND A.CALC_ID = B.CALC_ID
                     AND A.CALC_ID = D.CALC_ID
                     AND A.CONS_ID = E.CONS_ID
                     AND A.CONS_NO = E.CONS_NO
                     AND B.PRC_CODE = C.PRC_CODE
                     AND B.PARA_VN = C.PARA_VN
                     AND C.ELEC_TYPE_CODE >= '100' --�ų����˵���
                     AND INSTR(V_OUT_PRCCODE, B.PRC_CODE) <= 0 --�ų����ñ�ĵ����
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_R_AUTO_CALC_MON  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_R_AUTO_CALC_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_R_AUTO_CALC_MON(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_R_AUTO_CALC_MON', I_DATA);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_R_AUTO_CALC_MON X WHERE X.STAT_YM = V_YM;
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_R_AUTO_CALC_MON  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_R_AUTO_CALC_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --Ӫ�������ն���������,ÿ��16������
  PROCEDURE P_ENT_DW_BM_TGPQ_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_BM_TGPQ_DAY', V_YMD);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_BM_TGPQ_DAY��
    P_INS_DW_BM_TGPQ_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_BM_TGPQ_DAY��ȡ���ݲ��뵽�����OMAC�û��µ�DW_BM_TGPQ_DAY��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_BM_TGPQ_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_BM_TGPQ_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_DATE = V_YMD;
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_BM_TGPQ_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_BM_TGPQ_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_BM_TGPQ_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��ʼ��¼��־  
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
       --����ҵ��ܿ����õ���ʡ
       V_PRO_ORG_NO,
       --��λת��������ɼ���ҵ��ܿ�ʹ�õĵ�λ������ͬ����ת��
       PKG_GK_PUBLIC.F_TRANS_CODE('ROLL_ORG_NO', A.ORG_NO),
       '',
       A.STAT_DATE,
       A.TG_ID,
       A.TG_NAME,
       A.FROZEN_TIME,
       A.DAY_TGPQ,
       --�ɼ��ɹ���׼,1�ɹ���2ʧ��
       PKG_GK_PUBLIC.F_TRANS_CODE('ROLL_SUCC_FLAG', A.SUCC_FLAG),
       A.REMARK,
       A.TIME_STAMP
        FROM SY_SG_CP_TGPQ_DAY A, SY_SG_G_TG B
       WHERE A.STAT_DATE = V_YMD
         AND A.TG_ID = B.TG_ID;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_BM_TGPQ_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_BM_TGPQ_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_BM_TGPQ_DAY(I_DATA   VARCHAR2,
                                 OUT_CODE OUT NUMBER,
                                 OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_BM_TGPQ_DAY', I_DATA);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_BM_TGPQ_DAY A WHERE A.STAT_DATE = V_YMD;
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_DATE = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_BM_TGPQ_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_BM_TGPQ_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --Ӫ���û��ն���������,ÿ��16������
  PROCEDURE P_ENT_DW_BM_CONSPQ_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_BM_CONSPQ_DAY', V_YMD);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_BM_TGPQ_DAY��
    P_INS_DW_BM_CONSPQ_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_BM_TGPQ_DAY��ȡ���ݲ��뵽�����OMAC�û��µ�DW_BM_TGPQ_DAY��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_DW_BM_CONSPQ_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_BM_CONSPQ_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_DATE = V_YMD;
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_BM_CONSPQ_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_BM_CONSPQ_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_BM_CONSPQ_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��ʼ��¼��־  
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
         --����ҵ��ܿ����õ���ʡ
         V_PRO_ORG_NO,
         --��λת��������ɼ���ҵ��ܿ�ʹ�õĵ�λ������ͬ����ת��
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
         --�ɼ��ɹ���׼,1�ɹ���2ʧ��
         PKG_GK_PUBLIC.F_TRANS_CODE('ROLL_SUCC_FLAG', A.SUCC_FLAG),
         A.REMARK,
         A.TIME_STAMP
          FROM SY_SG_CP_CONSPQ_DAY A, SY_SG_C_CONS B
         WHERE A.STAT_DATE = V_YMD
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.CONS_NO = B.CONS_NO;
    
    END LOOP;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_BM_CONSPQ_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_BM_CONSPQ_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_BM_CONSPQ_DAY(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_BM_CONSPQ_DAY', I_DATA);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_BM_CONSPQ_DAY A WHERE A.STAT_DATE = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_DATE = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_BM_CONSPQ_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_BM_CONSPQ_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --�ɼ��ն�������쳣���,ÿ��16������
  PROCEDURE P_ENT_CP_EXP_DAY(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_CP_EXP_DAY', V_YMD);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_BM_TGPQ_DAY��
    P_INS_CP_EXP_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�CP_EXP_DAY��ȡ���ݲ��뵽�����OMAC�û��µ�CP_EXP_DAY��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
      P_ETL_CP_EXP_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE CP_EXP_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_DATE = V_YMD;
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_CP_EXP_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_CP_EXP_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_CP_EXP_DAY(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��ʼ��¼��־  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_CP_EXP_DAY', I_DATA);
  
    DELETE FROM CP_EXP_DAY WHERE STAT_DATE = V_YMD;
  
    --�ڲɼ��д��ڵ�����Ӫ���ڲ����ڵ�̨��
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
       --����ƥ�䲹�ϵ�̨�������ǵ�λ���������쳣���е�λ��ת��
       A.ORG_NO,
       '',
       A.STAT_DATE,
       --02��ʾ̨��,
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
    --����ƥ�䲹�ϵ�̨�������ǵ�λ���������쳣���е�λ��ת��
    A.ORG_NO,
    '',
    A.STAT_DATE,
    --02��ʾ̨��,
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
  
    --�ڲɼ��д��ڵ�����Ӫ���ڲ����ڵ��û�,�����޷�ʹ�÷����ٶȻ����,�ɲ��������NOT EXITS��ʽ    
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
       --����ƥ�䲹�ϵ�̨�������ǵ�λ���������쳣���е�λ��ת��
       A.ORG_NO,
       '',
       A.STAT_DATE,
       --02��ʾ̨��,
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_CP_EXP_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_CP_EXP_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_CP_EXP_DAY(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_CP_EXP_DAY', I_DATA);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_CP_EXP_DAY A WHERE A.STAT_DATE = V_YMD;
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_DATE = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_CP_EXP_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_CP_EXP_DAY  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  --�ɼ��ն�������쳣���,ÿ��16������
  PROCEDURE P_ENT_DW_BM_CONSREAD_DAY(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_BM_CONSREAD_DAY', V_YMD);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_BM_TGPQ_DAY��
    P_INS_DW_BM_CONSREAD_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --�������͹��̣��ӹ����OMAC�û��µ�DW_BM_CONSREAD_DAY��ȡ���ݲ��뵽�����OMAC�û��µ�DW_BM_CONSREAD_DAY��
    IF V_DATAMODE = '2' THEN
      --����ģʽִ��
    P_ETL_DW_BM_CONSREAD_DAY(V_YMD, OUT_CODE, OUT_MSG);
    /*
    ELSE
      
      --����ģʽ���乩����������
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
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_BM_CONSREAD_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_BM_CONSREAD_DAY  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_BM_CONSREAD_DAY(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��ʼ��¼��־  
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
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_BM_CONSREAD_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_BM_CONSREAD_DAY  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_BM_CONSREAD_DAY(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_BM_CONSREAD_DAY', I_DATA);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_BM_CONSREAD_DAY A WHERE A.STAT_DATE = V_YMD;
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
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
      --����ʱ��ɸѡ����
       WHERE A.STAT_DATE = V_YMD;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_BM_CONSREAD_DAY  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_BM_CONSREAD_DAY  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

END PKG_YWGK_DW_DSM;
/
