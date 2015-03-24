CREATE OR REPLACE PACKAGE PKG_YWGK_DW_BE IS

  TYPE T_STRING IS TABLE OF VARCHAR2(2000) INDEX BY BINARY_INTEGER;

  -- Author  : jkx 32078
  -- Created : 2014/2/28 14:07:35
  -- Purpose : ҵ��
  -- Description
  /**��ȡ�洢���̣�Ϊ��ȡӪ����������ݵ�Ӫ�������OMAC�û������ݲֿ��Ĺ��̡�
  ���ʹ洢���̣�Ϊ��Ӫ�������OMAC�û������ݲֿ��������ɾ���Ͳ��뵽�����OMAC�û��µĹ��̡�
  ��ڴ洢���̣�Ϊ�����ݿ�JOB���õ���ڹ��̣�����������ó�ȡ�洢���̺�������ʹ洢����*/

  /******************************
  #function: �յ�λҵ����װͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-02-28
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_BUSI_CCCAP_DAY(IN_YMD   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �յ�λҵ����װͳ��  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-02-28
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_BUSI_CCCAP_DAY(IN_YMD   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /******************************
  #function: �յ�λҵ����װͳ�� (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-02-28
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_BUSI_CCCAP_DAY(IN_YMD   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �µ�λҵ����װͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-03
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_BUSI_CCCAP_MON(IN_YM    VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �µ�λҵ����װͳ��  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-03
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_BUSI_CCCAP_MON(IN_YM    VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /******************************
  #function: �µ�λҵ����װͳ�� (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-03
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_BUSI_CCCAP_MON(IN_YM    VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);

  /******************************
  #function: �굥λҵ����װͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-03
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_BUSI_CCCAP_YEAR(IN_YEAR  VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_S_BUSI_CCCAP_YEAR(IN_YEAR  VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_S_BUSI_CCCAP_YEAR(IN_YEAR  VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: ����;ҵ�����������嵥  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_BUSI_WKST_ING(IN_YMD   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: ����;ҵ�����������嵥 (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_BUSI_WKST_ING(IN_YMD   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /******************************
  #function: ����;ҵ�����������嵥 (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_BUSI_WKST_ING(IN_YMD   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �չ鵵ҵ�����������嵥  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_BUSI_WKST_ARC(IN_YMD   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �չ鵵ҵ�����������嵥 (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_BUSI_WKST_ARC(IN_YMD   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /******************************
  #function: �չ鵵ҵ�����������嵥 (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_BUSI_WKST_ARC(IN_YMD   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �¹鵵ҵ�����������嵥  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_BUSI_WKST_MON(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �¹鵵ҵ�����������嵥 (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_BUSI_WKST_MON(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /******************************
  #function: �¹鵵ҵ�����������嵥 (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_BUSI_WKST_MON(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �¶ȵ�λ��ͬ�������ͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-04
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_CTRT_ARC_SIGN(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �¶ȵ�λ��ͬ�������ͳ��  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-04
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_CTRT_ARC_SIGN(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /******************************
  #function: �¶ȵ�λ��ͬ�������ͳ�� (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-04
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_CTRT_ARC_SIGN(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �¶Ⱥ�ͬ��ϸ  (��ʱ��)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-04
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  /*PROCEDURE P_INS_DW_S_CTRT_PRO_TMP(IN_YMD   VARCHAR2,
  OUT_CODE OUT NUMBER,
  OUT_MSG  OUT VARCHAR2);*/
  /******************************
  #function: �¶ȵ�λ��ͬ����ǩ��ͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-04
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_CTRT_PRO_SIGN(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �¶ȵ�λ��ͬ����ǩ��ͳ��  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-04
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_CTRT_PRO_SIGN(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);

  /******************************
  #function: �¶ȵ�λ��ͬ����ǩ��ͳ�� (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-04
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_CTRT_PRO_SIGN(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �¶���ʱ�õ糬���û���ϸ  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_TEMP_PQ_DET(IN_YM    VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �¶���ʱ�õ糬���û���ϸ  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_TEMP_PQ_DET(IN_YM    VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);

  /******************************
  #function: �¶���ʱ�õ糬���û���ϸ (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_TEMP_PQ_DET(IN_YM    VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �¶���ʱ�õ糬�����ͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_TEMP_PQ_STAT(IN_YM    VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �¶���ʱ�õ糬�����ͳ��  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_TEMP_PQ_STAT(IN_YM    VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);

  /******************************
  #function: �¶���ʱ�õ糬�����ͳ�� (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_TEMP_PQ_STAT(IN_YM    VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �¶���ʱ�������ͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
    1������ͳ�Ƹ��㼶��λ��ʱ���ݹ鵵���������������
  2��ÿ��1�����ͳ��
  3�����һ����ʱ����ͬ������26���������25��24ʱ��ͳ��Ϊ��������
  �磺��ǰΪ20141201��ʼ����ͳ�ƹ��̣�����Ĳ���Ϊ201411��Ҫͳ�Ƶ�����Ϊ20141026-20141126ֱ�ӵ�����
  �����е�STAT_YM��д201411
  4���ų��õ����Ϊ��000�����ˡ����Ĺ���
  *********************/
  PROCEDURE P_ENT_DW_S_TEMP_REDUCE_CAP(IN_YM    VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �¶���ʱ�������ͳ��  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_TEMP_REDUCE_CAP(IN_YM    VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2);

  /******************************
  #function: �¶���ʱ�������ͳ�� (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_TEMP_REDUCE_CAP(IN_YM    VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2);

  /**
    �������ƣ�P_ENT_DW_S_SAFETY_CHG/�հ�ȫ��������ͳ����ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ��������������ͳ�ư�ȫ�������������Ϣ,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����ճ�ȡ,�������
    ��θ�ʽ��I_DATA ��YYYYMMDD
    �޸���:
    �޸�����:
  **/
  PROCEDURE P_ENT_DW_S_SAFETY_CHG(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_S_SAFETY_CHG(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_S_SAFETY_CHG(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);
  /**
    �������ƣ�P_ENT_DW_S_CHECK_COMPL/�¶��õ���ͳ����ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ��������������ͳ���õ���������,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ,����1�����
    ��θ�ʽ��I_DATA ��YYYYMMDD
    �޸���:
    �޸�����:
  **/
  PROCEDURE P_ENT_DW_S_CHECK_COMPL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_S_CHECK_COMPL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_S_CHECK_COMPL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  /**
    �������ƣ�P_ENT_DW_S_VIOLATE_DET/ΥԼ�õ��Ե���ϸ��ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ��������������ͳ��ΥԼ�õ��Ե���ϸ��Ϣ,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ,����1�����
    ��θ�ʽ��I_DATA ��YYYYMMDD
    �޸���:
    �޸�����:
  **/
  PROCEDURE P_ENT_DW_S_VIOLATE_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_S_VIOLATE_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_S_VIOLATE_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2);
  /**
    �������ƣ�P_ENT_DW_S_VIOLATE_INFO/�¶�ΥԼ�õ��Ե�ͳ����ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ��������������ͳ��ΥԼ�õ��Ե����,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ,����1�����
    ��θ�ʽ��I_DATA ��YYYYMMDD
    �޸���:
    �޸�����:
  **/
  PROCEDURE P_ENT_DW_S_VIOLATE_INFO(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_S_VIOLATE_INFO(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_S_VIOLATE_INFO(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2);
  /**
    �������ƣ�P_ENT_DW_S_HR_IMPORTANT_CUST/�¶Ȱ�ȫ��������ͳ����ڹ���
    ���ߣ�ll
    ��д���ڣ�2014-03-17 14:37
    ������������Σ��Ҫ�ͻ�������Ϣ
    ͳ��Ƶ�ȣ����³�ȡ,����1�����
    ��θ�ʽ��IN_YM ��YYYYMM
  **/
  PROCEDURE P_ENT_DW_S_HR_IMPORTANT_CUST(IN_YM    VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_S_HR_IMPORTANT_CUST(IN_YM    VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_S_HR_IMPORTANT_CUST(IN_YM    VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);
  /**
    �������ƣ�P_ENT_DW_S_VIP_SAFETY_DETAIL/�նȸ�Σ��Ҫ�ͻ�����������ϸͳ����ڹ���
    ���ߣ�ll
    ��д���ڣ�2014-03-18 14:37
    �����������նȸ�Σ��Ҫ�ͻ�����������ϸ
    ͳ��Ƶ�ȣ����ճ�ȡ,����1�����
    ��θ�ʽ��IN_YM ��YYYYMMDD
  **/
  PROCEDURE P_ENT_DW_S_VIP_SAFETY_DETAIL(IN_YMD   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_S_VIP_SAFETY_DETAIL(IN_YMD   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_S_VIP_SAFETY_DETAIL(IN_YMD   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);
  /**
      �������ƣ�P_ENT_DW_S_NATIONAL_PRJ_STAT/�¶ȹ����ص�ҵ����Ŀ��װͳ��
      ���ߣ�jyd
      ��д���ڣ�2014-03-18 14:37
      �����������¶ȹ����ص�ҵ����Ŀ��װͳ��:�¶ȹ����ص�ҵ����Ŀ��װͳ��
  1������ͳ�Ƹ��㼶��λ�����ص�ҵ����Ŀ�������ص�ҵ����Ŀָ�û�����10��ǧ�������ϵ��û�
      ͳ��Ƶ�ȣ����³�ȡ,����1�����
      ��θ�ʽ��IN_YM ��YYYYMM
    **/
  PROCEDURE P_ENT_DW_S_NATIONAL_PRJ_STAT(IN_YM    VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_S_NATIONAL_PRJ_STAT(IN_YM    VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_S_NATIONAL_PRJ_STAT(IN_YM    VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);

  /**
    �������ƣ�P_ENT_DW_C_G_TRAN/�¶ȵ�λ��ѹ����Ϣͳ����ϸͳ����ڹ���
    ���ߣ�ll
    ��д���ڣ�2014-03-18 14:37
    �����������¶ȵ�λ��ѹ����Ϣͳ����ϸ
    ͳ��Ƶ�ȣ����ճ�ȡ,�������
    ��θ�ʽ��IN_YMD ��YYYYMMDD
  **/
  PROCEDURE P_ENT_DW_C_G_TRAN(IN_YM    VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_C_G_TRAN(IN_YM    VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_C_G_TRAN(IN_YM    VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �շֲ�ʽ��Դ���뻷���嵥  (��ȡ�洢����)
  #version:1.01
  #author:liubin 32237
  #createdate:2014-09-22
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  /*PROCEDURE P_ENT_DW_S_DISTR_ENERGY_WKST(IN_YMD   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);*/
  /******************************
  #function: �շֲ�ʽ��Դ���뻷���嵥  (��ȡ�洢����)
  #version:1.01
  #author:liubin 32237
  #createdate:2014-09-22
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  /*PROCEDURE P_INS_DW_S_DISTR_ENERGY_WKST(IN_YMD   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);*/
  /******************************
  #function: �շֲ�ʽ��Դ���뻷���嵥  (���ʹ洢����)
  #version:1.01
  #author:liubin 32237
  #createdate:2014-09-22
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  /*PROCEDURE P_ETL_DW_S_DISTR_ENERGY_WKST(IN_YMD   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2);*/
  /******************************
  #function: �·ֲ�ʽ��Դ���뻷���嵥  (��ȡ�洢����)
  #version:1.01
  #author:liubin 32237
  #createdate:2014-09-22
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_DISTR_ENERGY_MON(IN_YM    VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �·ֲ�ʽ��Դ���뻷���嵥  (��ȡ�洢����)
  #version:1.01
  #author:liubin 32237
  #createdate:2014-09-22
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_DISTR_ENERGY_MON(IN_YM    VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);
  /******************************
  #function: �·ֲ�ʽ��Դ���뻷���嵥  (���ʹ洢����)
  #version:1.01
  #author:liubin 32237
  #createdate:2014-09-22
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_DISTR_ENERGY_MON(IN_YM    VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2);

  FUNCTION DECODE_BE(V_PARAM         VARCHAR2,
                     V_DEFAULTRESULT VARCHAR2,
                     V_RETURNRESULT  VARCHAR2,
                     V_OTHERRSULT    VARCHAR2) RETURN VARCHAR2;

  --���ճ��Ȳ���ַ���
  PROCEDURE SP_PARSESTRING_LENGTH(P_STRING   IN VARCHAR2,
                                  DELMLENGTH IN NUMBER,
                                  P_T_STRING OUT T_STRING);
END PKG_YWGK_DW_BE;
/
CREATE OR REPLACE PACKAGE BODY PKG_YWGK_DW_BE IS

  -- Author  : jkx 32078
  -- Created : 2014/2/28 14:07:35
  -- Purpose : ҵ��

  /******************************
  #function: �յ�λҵ����װͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-02-28
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_BUSI_CCCAP_DAY(IN_YMD   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
  
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_BUSI_CCCAP_DAY', IN_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_S_BUSI_CCCAP_DAY(IN_YMD, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
      P_ETL_DW_S_BUSI_CCCAP_DAY(IN_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_S_BUSI_CCCAP_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND IN_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YMD = IN_YMD;
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_S_BUSI_CCCAP_DAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_BUSI_CCCAP_DAY  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �յ�λҵ����װͳ��  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-02-28
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_BUSI_CCCAP_DAY(IN_YMD   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO   VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM           VARCHAR2(6);
    V_YMD          VARCHAR2(8);
    V_DATE_START_D DATE; --��ʼʱ��
    V_DATE_END_D   DATE; --����ʱ��
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID      := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_CONS_COMP', IN_YMD);
    V_YM           := SUBSTR(IN_YMD, 1, 6);
    V_YMD          := SUBSTR(IN_YMD, 1, 8);
    V_DATE_START_D := TO_DATE(SUBSTR(IN_YMD, 1, 8) || ' 00:00:00',
                              'yyyy-mm-dd hh24:mi:ss');
    V_DATE_END_D   := TO_DATE(SUBSTR(IN_YMD, 1, 8) || ' 23:59:59',
                              'yyyy-mm-dd hh24:mi:ss');
  
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_S_BUSI_CCCAP_DAY X WHERE X.STAT_YMD = IN_YMD;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_C_CONS_COMP
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --�������
      INSERT INTO DW_S_BUSI_CCCAP_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         BUSI_TYPE_CODE,
         APP_CC,
         APP_CAP,
         CMPL_CC,
         CMPL_CAP,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '',
               --Ӫҵ������
               V_YMD,
               BUSI_TYPE_CODE,
               SUM(APP_CC) APP_CC,
               SUM(ABS(APP_CAP)) APP_CAP,
               SUM(CMPL_CC) CMPL_CC,
               SUM(ABS(CMPL_CAP)) CMPL_CAP,
               SYSDATE
          FROM (SELECT ORG_NO,
                       PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  T1.BUSI_TYPE_CODE) BUSI_TYPE_CODE,
                       COUNT(DISTINCT T1.CONS_NO) APP_CC,
                       SUM(T1.CAP) APP_CAP,
                       0 CMPL_CC,
                       0 CMPL_CAP
                  FROM (SELECT A.PS_ORG_NO ORG_NO,
                               A.CONS_NO,
                               B.PRO_NAME  BUSI_TYPE_CODE,
                               --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                               DECODE(SIGN(INSTR('/203/204/201/202/201/202/',
                                                 '/' ||
                                                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                                            B.PRO_NAME) || '/')),
                                      1,
                                      ABS(A.APP_RUN_CAP),
                                      A.CONTRACT_CAP) CAP
                          FROM SY_SG_S_APP A, SY_SG_INDYWF_INSTANCES_CUR B
                         WHERE A.APP_NO = B.ITEM_KEY
                           AND B.BEGIN_DATE BETWEEN V_DATE_START_D AND
                               V_DATE_END_D
                              ---����Ҫ���ų���������
                           AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                           AND B.DEPT_NAME LIKE TSS.ORG_NO || '%'
                           AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                           AND B.ITEM_TYPE = '01'
                              --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����GK_DW_CODE_TRANS�����á�
                           AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ',
                                                                '103'),
                                     B.PRO_NAME) <= 0
                        UNION ALL
                        SELECT A.PS_ORG_NO ORG_NO,
                               A.CONS_NO,
                               B.PRO_NAME  BUSI_TYPE_CODE,
                               --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                               DECODE(SIGN(INSTR('/203/204/201/202/201/202/',
                                                 '/' ||
                                                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                                            B.PRO_NAME) || '/')),
                                      1,
                                      ABS(A.APP_RUN_CAP),
                                      A.CONTRACT_CAP) CAP
                          FROM SY_SG_ARC_S_APP            A,
                               SY_SG_INDYWF_INSTANCES_CUR B
                         WHERE A.APP_NO = B.ITEM_KEY
                           AND B.BEGIN_DATE BETWEEN V_DATE_START_D AND
                               V_DATE_END_D
                              ---����Ҫ���ų���������
                           AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                           AND B.DEPT_NAME LIKE TSS.ORG_NO || '%'
                           AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                           AND B.ITEM_TYPE = '01'
                              --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����GK_DW_CODE_TRANS�����á�
                           AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ',
                                                                '103'),
                                     B.PRO_NAME) <= 0
                        UNION ALL
                        SELECT A.PS_ORG_NO ORG_NO,
                               B.CONS_NO,
                               C.PRO_NAME  BUSI_TYPE_CODE,
                               --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                               DECODE(SIGN(INSTR('/203/204/201/202/201/202/',
                                                 '/' ||
                                                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                                            C.PRO_NAME) || '/')),
                                      1,
                                      ABS(A.APP_RUN_CAP),
                                      A.CONTRACT_CAP) CAP
                          FROM SY_SG_S_APP                A,
                               SY_SG_S_BATCH_CUST_APP     B,
                               SY_SG_INDYWF_INSTANCES_CUR C
                         WHERE A.APP_NO = C.ITEM_KEY
                           AND C.BEGIN_DATE BETWEEN V_DATE_START_D AND
                               V_DATE_END_D
                              ---����Ҫ���ų���������
                           AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                           AND A.APP_ID = B.APP_ID
                           AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                          C.PRO_NAME) = '112'
                           AND C.ITEM_TYPE = '01'
                           AND C.DEPT_NAME LIKE TSS.ORG_NO || '%'
                           AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                        UNION ALL
                        SELECT A.PS_ORG_NO ORG_NO,
                               B.CONS_NO,
                               C.PRO_NAME  BUSI_TYPE_CODE,
                               --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                               B.CONTRACT_CAP CAP
                          FROM SY_SG_ARC_S_APP            A,
                               SY_SG_ARC_S_BATCH_CUST_APP B,
                               SY_SG_INDYWF_INSTANCES_CUR C
                         WHERE A.APP_NO = C.ITEM_KEY
                           AND C.BEGIN_DATE BETWEEN V_DATE_START_D AND
                               V_DATE_END_D
                              ---����Ҫ���ų���������
                           AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                           AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                          C.PRO_NAME) = '112'
                           AND C.ITEM_TYPE = '01'
                           AND C.DEPT_NAME LIKE TSS.ORG_NO || '%'
                           AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                           AND A.APP_ID = B.APP_ID) T1
                 GROUP BY T1.ORG_NO,
                          PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                     T1.BUSI_TYPE_CODE)
                UNION ALL
                SELECT ORG_NO,
                       PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  T2.BUSI_TYPE_CODE) BUSI_TYPE_CODE,
                       0 APP_CC,
                       0 APP_CAP,
                       COUNT(DISTINCT T2.CONS_NO) CMPL_CC,
                       SUM(T2.CAP) CMPL_CAP
                  FROM (SELECT A.PS_ORG_NO ORG_NO,
                               A.CONS_NO,
                               PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                          B.PRO_NAME) BUSI_TYPE_CODE,
                               --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                               DECODE(SIGN(INSTR('/203/204/201/202/201/202/',
                                                 '/' ||
                                                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                                            B.PRO_NAME) || '/')),
                                      1,
                                      ABS(A.APP_RUN_CAP),
                                      A.CONTRACT_CAP) CAP
                          FROM SY_SG_ARC_S_APP            A,
                               SY_SG_INDYWF_INSTANCES_CUR B
                         WHERE A.APP_NO = B.ITEM_KEY
                           AND B.ITEM_TYPE = '01'
                           AND B.STATE <> 'ABORT'
                           AND B.END_DATE BETWEEN V_DATE_START_D AND
                               V_DATE_END_D
                              ---����Ҫ���ų���������
                           AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                           AND B.DEPT_NAME LIKE TSS.ORG_NO || '%'
                           AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                              --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����GK_DW_CODE_TRANS�����á�
                           AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ',
                                                                '103'),
                                     B.PRO_NAME) <= 0
                        UNION ALL
                        SELECT A.PS_ORG_NO ORG_NO,
                               B.CONS_NO,
                               PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                          C.PRO_NAME) BUSI_TYPE_CODE,
                               --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                               B.CONTRACT_CAP CAP
                          FROM SY_SG_ARC_S_APP            A,
                               SY_SG_ARC_S_BATCH_CUST_APP B,
                               SY_SG_INDYWF_INSTANCES_CUR C
                         WHERE A.APP_NO = C.ITEM_KEY
                           AND C.ITEM_TYPE = '01'
                           AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                          C.PRO_NAME) = '112'
                           AND C.STATE <> 'ABORT'
                           AND A.APP_ID = B.APP_ID
                           AND C.END_DATE BETWEEN V_DATE_START_D AND
                               V_DATE_END_D
                              ---����Ҫ���ų���������
                           AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                           AND C.DEPT_NAME LIKE TSS.ORG_NO || '%'
                           AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%') T2
                 GROUP BY T2.ORG_NO,
                          PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                     T2.BUSI_TYPE_CODE))
         GROUP BY ORG_NO, BUSI_TYPE_CODE;
      COMMIT;
    END LOOP;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_BUSI_CCCAP_DAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_BUSI_CCCAP_DAY  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �յ�λҵ����װͳ�� (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-02-28
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_BUSI_CCCAP_DAY(IN_YMD   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_BUSI_CCCAP_DAY', IN_YMD);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_BUSI_CCCAP_DAY X WHERE X.STAT_YMD = IN_YMD;
  
    INSERT INTO SY_OM_DW_S_BUSI_CCCAP_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       BUSI_TYPE_CODE,
       APP_CC,
       APP_CAP,
       CMPL_CC,
       CMPL_CAP,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_YMD,
       A.BUSI_TYPE_CODE,
       A.APP_CC,
       A.APP_CAP,
       A.CMPL_CC,
       A.CMPL_CAP,
       A.TIME_STAMP
        FROM DW_S_BUSI_CCCAP_DAY A, SY_OM_DW_O_ORG_CONTRAST B
      --����ʱ��ɸѡ����
       WHERE A.STAT_YMD = IN_YMD
         AND IN_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_BUSI_CCCAP_DAY  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    /* --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);*/
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_BUSI_CCCAP_DAY  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �µ�λҵ����װͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-03
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_BUSI_CCCAP_MON(IN_YM    VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_BUSI_CCCAP_MON', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
  
    IF '31102' = V_PRO_ORG_NO THEN
      --�Ϻ���ʡҵ����
      P_INS_DW_S_BUSI_CCCAP_MON_SH(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      P_INS_DW_S_BUSI_CCCAP_MON(V_YM, OUT_CODE, OUT_MSG);
    END IF;
  
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
      P_ETL_DW_S_BUSI_CCCAP_MON(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_S_BUSI_CCCAP_MON A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_S_BUSI_CCCAP_MON  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_BUSI_CCCAP_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /******************************
  #function: �µ�λҵ����װͳ��  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-03
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_BUSI_CCCAP_MON(IN_YM    VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --����
    V_YM VARCHAR2(6);
    --��εĵ����һ��һ��
    V_DATE_START_D DATE; --��ʼʱ��
    V_DATE_END_D   DATE; --����ʱ��
    V_DATE_START_S VARCHAR2(8); --��ʼʱ��
    V_DATE_END_S   VARCHAR2(8); --����ʱ��
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID      := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_CONS_COMP', IN_YM);
    V_YM           := SUBSTR(IN_YM, 1, 6);
    V_DATE_END_D   := TO_DATE(V_YM || '26' || ' 00:00:00',
                              'YYYY-MM-DD HH24:MI:SS');
    V_DATE_START_D := ADD_MONTHS(V_DATE_END_D, -1);
  
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_S_BUSI_CCCAP_MON X WHERE X.STAT_YM = V_YM;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_C_CONS_COMP
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO TMP_CCAP_MON
        (ORG_NO,
         BUSI_TYPE_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ELEC_TYPE_CODE,
         APP_CC,
         APP_CAP,
         CMPL_CC,
         CMPL_CAP,
         HEC_TRADE_CODE,
         STOP_LAST_APP_CC,
         STOP_APP_CC,
         STOP_LAST_APP_CAP,
         STOP_APP_CAP,
         CMPL_BAL_CC,
         CMPL_BAL_CAP,
         CMPL_APP_SPQ,
         YEAR_EFFECT_SPQ)
      --�����������������뻧��
        SELECT AA.ORG_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', AA.APP_TYPE_CODE) BUSI_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', AA.TRADE_CODE) TRADE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', AA.VOLT_CODE) VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                          AA.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
               COUNT(AA.CONS_NO) APP_CC,
               SUM(ABS(AA.CAP)) APP_CAP,
               0 CMPL_CC,
               0 CMPL_CAP,
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          AA.HEC_INDUSTRY_CODE) HEC_TRADE_CODE,
               0 STOP_LAST_APP_CC,
               0 STOP_APP_CC,
               0 STOP_LAST_APP_CAP,
               0 STOP_APP_CAP,
               0 CMPL_BAL_CC,
               0 CMPL_BAL_CAP,
               0 CMPL_APP_SPQ,
               0 YEAR_EFFECT_SPQ
          FROM (SELECT /*+ parallel(A 2) parallel(B 2) parallel(C 2) */
                 A.PS_ORG_NO         ORG_NO,
                 A.CONS_NO,
                 B.PRO_NAME          APP_TYPE_CODE,
                 A.TRADE_CODE,
                 A.VOLT_CODE,
                 A.ELEC_TYPE_CODE,
                 A.HEC_INDUSTRY_CODE HEC_INDUSTRY_CODE,
                 --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                 DECODE(SIGN(INSTR('/203/204/201/202/',
                                   '/' ||
                                   PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                              B.PRO_NAME) || '/')),
                        1,
                        ABS(NVL(A.T_RUN_CAP, 0) - NVL(A.ORGN_RUN_CAP, 0)),
                        DECODE(SIGN(INSTR('/216/106/108/',
                                          '/' ||
                                          PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                                     B.PRO_NAME) || '/')),
                               1,
                               ABS(A.ORGN_CONTRACT_CAP),
                               ABS(NVL(A.T_CONTRACT_CAP, 0) -
                                   NVL(A.ORGN_CONTRACT_CAP, 0)))) CAP
                  FROM SY_SG_S_APP A, SY_SG_INDYWF_INSTANCES_CUR B
                 WHERE A.APP_NO = B.ITEM_KEY
                   AND B.BEGIN_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  B.PRO_NAME) NOT IN
                       ('112', '217')
                   AND B.ITEM_TYPE = '01'
                      --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����GK_DW_CODE_TRANS�����á�
                   AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ', '103'),
                             B.PRO_NAME) <= 0
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                UNION ALL
                SELECT /*+ parallel(A 2) parallel(B 2) */
                 A.PS_ORG_NO         ORG_NO,
                 A.CONS_NO,
                 B.PRO_NAME          APP_TYPE_CODE,
                 A.TRADE_CODE,
                 A.VOLT_CODE,
                 A.ELEC_TYPE_CODE,
                 A.HEC_INDUSTRY_CODE HEC_INDUSTRY_CODE,
                 --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                 DECODE(SIGN(INSTR('/203/204/201/202/',
                                   '/' ||
                                   PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                              B.PRO_NAME) || '/')),
                        1,
                        ABS(NVL(A.T_RUN_CAP, 0) - NVL(A.ORGN_RUN_CAP, 0)),
                        DECODE(SIGN(INSTR('/216/106/108/',
                                          '/' ||
                                          PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                                     B.PRO_NAME) || '/')),
                               1,
                               ABS(A.ORGN_CONTRACT_CAP),
                               ABS(NVL(A.T_CONTRACT_CAP, 0) -
                                   NVL(A.ORGN_CONTRACT_CAP, 0)))) CAP
                  FROM SY_SG_ARC_S_APP A, SY_SG_INDYWF_INSTANCES_CUR B
                 WHERE A.APP_NO = B.ITEM_KEY
                   AND B.BEGIN_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  B.PRO_NAME) NOT IN
                       ('112', '217')
                   AND B.ITEM_TYPE = '01'
                      --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����GK_DW_CODE_TRANS�����á�
                   AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ', '103'),
                             B.PRO_NAME) <= 0
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                UNION ALL
                SELECT /*+ parallel(A 2) parallel(B 2) parallel(C 2) */
                 A.PS_ORG_NO         ORG_NO,
                 B.CONS_NO,
                 C.PRO_NAME          APP_TYPE_CODE,
                 B.TRADE_CODE,
                 B.VOLT_CODE,
                 B.ELEC_TYPE_CODE,
                 A.HEC_INDUSTRY_CODE HEC_INDUSTRY_CODE,
                 B.CONTRACT_CAP      CAP
                  FROM SY_SG_S_APP                A,
                       SY_SG_S_BATCH_CUST_APP     B,
                       SY_SG_INDYWF_INSTANCES_CUR C
                 WHERE A.APP_NO = C.ITEM_KEY
                   AND C.BEGIN_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.APP_ID = B.APP_ID
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  C.PRO_NAME) IN
                       ('112', '217')
                   AND C.ITEM_TYPE = '01'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                UNION ALL
                SELECT /*+ parallel(A 2) parallel(B 2) parallel(C 2) */
                 A.PS_ORG_NO         ORG_NO,
                 B.CONS_NO,
                 C.PRO_NAME          APP_TYPE_CODE,
                 B.TRADE_CODE,
                 B.VOLT_CODE,
                 B.ELEC_TYPE_CODE,
                 A.HEC_INDUSTRY_CODE HEC_INDUSTRY_CODE,
                 B.CONTRACT_CAP      CAP
                  FROM SY_SG_ARC_S_APP            A,
                       SY_SG_ARC_S_BATCH_CUST_APP B,
                       SY_SG_INDYWF_INSTANCES_CUR C
                 WHERE A.APP_NO = C.ITEM_KEY
                   AND C.BEGIN_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.APP_ID = B.APP_ID
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  C.PRO_NAME) IN
                       ('112', '217')
                   AND C.ITEM_TYPE = '01'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%') AA
         GROUP BY AA.ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                             AA.APP_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                             AA.TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', AA.VOLT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             AA.ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             AA.HEC_INDUSTRY_CODE);
      INSERT INTO TMP_CCAP_MON
        (ORG_NO,
         BUSI_TYPE_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ELEC_TYPE_CODE,
         APP_CC,
         APP_CAP,
         CMPL_CC,
         CMPL_CAP,
         HEC_TRADE_CODE,
         STOP_LAST_APP_CC,
         STOP_APP_CC,
         STOP_LAST_APP_CAP,
         STOP_APP_CAP,
         CMPL_BAL_CC,
         CMPL_BAL_CAP,
         CMPL_APP_SPQ,
         YEAR_EFFECT_SPQ)
      -- ������ɻ���������,�����۵���,��� �����滧��������
        SELECT A2.ORG_NO,
               BUSI_TYPE_CODE,
               A2.TRADE_CODE,
               A2.VOLT_CODE,
               A2.ELEC_TYPE_CODE,
               0 APP_CC,
               0 APP_CAP,
               COUNT(A2.CONS_NO) CMPL_CC,
               SUM(ABS(A2.CAP)) CMPL_CAP,
               A2.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
               0 STOP_LAST_APP_CC,
               0 STOP_APP_CC,
               0 STOP_LAST_APP_CAP,
               0 STOP_APP_CAP,
               COUNT((CASE
                       WHEN A2.BEGIN_DATE <
                            TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD') THEN
                        A2.CONS_NO
                       ELSE
                        NULL
                     END)) CMPL_BAL_CC,
               SUM((CASE
                     WHEN A2.BEGIN_DATE <
                          TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD') THEN
                      NVL(A2.CAP, 0)
                     ELSE
                      0
                   END)) CMPL_BAL_CAP,
               SUM(CASE
                     WHEN A2.BUSI_TYPE_CODE IN ('101',
                                                '102',
                                                '104',
                                                '105',
                                                '106',
                                                '109',
                                                '110',
                                                '111') THEN
                      NVL(A3.PQ, 0)
                     ELSE
                      0
                   END) CMPL_APP_SPQ,
               0 YEAR_EFFECT_SPQ
          FROM (SELECT /*+ parallel(A 2) parallel(B 2) */
                 A.PS_ORG_NO ORG_NO,
                 A.CONS_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', B.PRO_NAME) BUSI_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', A.TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            A.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_INDUSTRY_CODE) HEC_INDUSTRY_CODE,
                 B.BEGIN_DATE BEGIN_DATE,
                 --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                 DECODE(SIGN(INSTR('/203/204/201/202/',
                                   '/' ||
                                   PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                              B.PRO_NAME) || '/')),
                        1,
                        ABS(NVL(A.T_RUN_CAP, 0) - NVL(A.ORGN_RUN_CAP, 0)),
                        DECODE(SIGN(INSTR('/216/106/108/',
                                          '/' ||
                                          PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                                     B.PRO_NAME) || '/')),
                               1,
                               ABS(A.ORGN_CONTRACT_CAP),
                               ABS(NVL(A.T_CONTRACT_CAP, 0) -
                                   NVL(A.ORGN_CONTRACT_CAP, 0)))) CAP
                  FROM SY_SG_ARC_S_APP A, SY_SG_INDYWF_INSTANCES_CUR B
                 WHERE A.APP_NO = B.ITEM_KEY
                   AND B.ITEM_TYPE = '01'
                   AND B.STATE <> 'ABORT'
                   AND B.END_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  B.PRO_NAME) NOT IN
                       ('112', '217')
                      --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����GK_DW_CODE_TRANS�����á�
                   AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ', '103'),
                             B.PRO_NAME) <= 0
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                UNION ALL
                SELECT /*+ parallel(A 2) parallel(B 2) parallel(C 2) */
                 A.PS_ORG_NO ORG_NO,
                 B.CONS_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', C.PRO_NAME) BUSI_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_INDUSTRY_CODE) HEC_INDUSTRY_CODE,
                 C.BEGIN_DATE BEGIN_DATE,
                 B.CONTRACT_CAP CAP
                  FROM SY_SG_ARC_S_APP            A,
                       SY_SG_ARC_S_BATCH_CUST_APP B,
                       SY_SG_INDYWF_INSTANCES_CUR C
                 WHERE A.APP_NO = C.ITEM_KEY
                   AND C.ITEM_TYPE = '01'
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  C.PRO_NAME) IN
                       ('112', '217')
                   AND C.STATE <> 'ABORT'
                   AND A.APP_ID = B.APP_ID
                   AND C.END_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%') A2,
               (SELECT /*+ use_hash(T1) use_hash(T2) parallel(T1 2) parallel(T2 2) */
                 T1.ORG_NO, T2.CONS_NO, SUM(T_SETTLE_PQ) PQ
                  FROM SY_SG_ARC_E_CONS_PRC_AMT T1, SY_SG_ARC_E_CONS_SNAP T2
                 WHERE T1.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND T2.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND T1.YM = V_YM
                   AND T2.YM = V_YM
                   AND T1.CALC_ID = T2.CALC_ID
                   AND T1.PRC_CODE NOT LIKE '0%'
                 GROUP BY T1.ORG_NO, T2.CONS_NO) A3
         WHERE A2.CONS_NO = A3.CONS_NO(+)
         GROUP BY A2.ORG_NO,
                  A2.BUSI_TYPE_CODE,
                  A2.TRADE_CODE,
                  A2.VOLT_CODE,
                  A2.ELEC_TYPE_CODE,
                  A2.HEC_INDUSTRY_CODE;
    
      INSERT INTO TMP_CCAP_MON
        (ORG_NO,
         BUSI_TYPE_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ELEC_TYPE_CODE,
         APP_CC,
         APP_CAP,
         CMPL_CC,
         CMPL_CAP,
         HEC_TRADE_CODE,
         STOP_LAST_APP_CC,
         STOP_APP_CC,
         STOP_LAST_APP_CAP,
         STOP_APP_CAP,
         CMPL_BAL_CC,
         CMPL_BAL_CAP,
         CMPL_APP_SPQ,
         YEAR_EFFECT_SPQ)
      ----������ֹ�������뻧��/������ֹ������������/������ֹ�������뻧��/������ֹ������������
        SELECT AA.ORG_NO,
               BUSI_TYPE_CODE,
               TRADE_CODE,
               VOLT_CODE,
               ELEC_TYPE_CODE,
               0 APP_CC,
               0 APP_CAP,
               0 CMPL_CC,
               0 CMPL_CAP,
               HEC_INDUSTRY_CODE HEC_TRADE_CODE,
               COUNT((CASE
                       WHEN AA.BEGIN_DATE <
                            TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD') THEN
                        AA.CONS_NO
                       ELSE
                        NULL
                     END)) STOP_LAST_APP_CC,
               COUNT((CASE
                       WHEN AA.BEGIN_DATE >=
                            TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD') THEN
                        AA.CONS_NO
                       ELSE
                        NULL
                     END)) STOP_APP_CC,
               SUM((CASE
                     WHEN AA.BEGIN_DATE <
                          TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD') THEN
                      NVL(AA.CAP, 0)
                     ELSE
                      0
                   END)) STOP_LAST_APP_CAP,
               SUM((CASE
                     WHEN AA.BEGIN_DATE >=
                          TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD') THEN
                      NVL(AA.CAP, 0)
                     ELSE
                      0
                   END)) STOP_APP_CAP,
               0 CMPL_BAL_CC,
               0 CMPL_BAL_CAP,
               0 CMPL_APP_SPQ,
               0 YEAR_EFFECT_SPQ
          FROM (SELECT /*+ parallel(A 2) parallel(B 2) */
                 A.PS_ORG_NO ORG_NO,
                 A.CONS_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', B.PRO_NAME) BUSI_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', A.TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            A.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_INDUSTRY_CODE) HEC_INDUSTRY_CODE,
                 B.BEGIN_DATE,
                 --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                 DECODE(SIGN(INSTR('/203/204/201/202/',
                                   '/' ||
                                   PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                              B.PRO_NAME) || '/')),
                        1,
                        ABS(NVL(A.T_RUN_CAP, 0) - NVL(A.ORGN_RUN_CAP, 0)),
                        DECODE(SIGN(INSTR('/216/106/108/',
                                          '/' ||
                                          PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                                     B.PRO_NAME) || '/')),
                               1,
                               ABS(A.ORGN_CONTRACT_CAP),
                               ABS(NVL(A.T_CONTRACT_CAP, 0) -
                                   NVL(A.ORGN_CONTRACT_CAP, 0)))) CAP
                  FROM SY_SG_ARC_S_APP A, SY_SG_INDYWF_INSTANCES_CUR B
                 WHERE A.APP_NO = B.ITEM_KEY
                   AND B.ITEM_TYPE = '01'
                   AND B.STATE = 'ABORT'
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  B.PRO_NAME) NOT IN
                       ('112', '217')
                   AND B.END_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����GK_DW_CODE_TRANS�����á�
                   AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ', '103'),
                             B.PRO_NAME) <= 0
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                UNION ALL
                SELECT /*+ parallel(A 2) parallel(B 2) parallel(C 2) */
                 A.PS_ORG_NO ORG_NO,
                 B.CONS_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', C.PRO_NAME) BUSI_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_INDUSTRY_CODE) HEC_INDUSTRY_CODE,
                 C.BEGIN_DATE,
                 --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                 B.CONTRACT_CAP CAP
                  FROM SY_SG_ARC_S_APP            A,
                       SY_SG_ARC_S_BATCH_CUST_APP B,
                       SY_SG_INDYWF_INSTANCES_CUR C
                 WHERE A.APP_NO = C.ITEM_KEY
                   AND C.ITEM_TYPE = '01'
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  C.PRO_NAME) IN
                       ('112', '217')
                   AND C.STATE = 'ABORT'
                   AND A.APP_ID = B.APP_ID
                   AND C.END_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)) AA
         GROUP BY AA.ORG_NO,
                  AA.BUSI_TYPE_CODE,
                  AA.TRADE_CODE,
                  AA.VOLT_CODE,
                  AA.ELEC_TYPE_CODE,
                  AA.HEC_INDUSTRY_CODE;
    
      INSERT INTO TMP_CCAP_MON
        (ORG_NO,
         BUSI_TYPE_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ELEC_TYPE_CODE,
         APP_CC,
         APP_CAP,
         CMPL_CC,
         CMPL_CAP,
         HEC_TRADE_CODE,
         STOP_LAST_APP_CC,
         STOP_APP_CC,
         STOP_LAST_APP_CAP,
         STOP_APP_CAP,
         CMPL_BAL_CC,
         CMPL_BAL_CAP,
         CMPL_APP_SPQ,
         YEAR_EFFECT_SPQ)
      --������װ��������û����ڱ�����װ���ݺ��ڱ���������۵����ϼ�
        SELECT AA.ORG_NO,
               BUSI_TYPE_CODE,
               AA.TRADE_CODE,
               AA.VOLT_CODE,
               AA.ELEC_TYPE_CODE,
               0 APP_CC,
               0 APP_CAP,
               0 CMPL_CC,
               0 CMPL_CAP,
               AA.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
               0 STOP_LAST_APP_CC,
               0 STOP_APP_CC,
               0 STOP_LAST_APP_CAP,
               0 STOP_APP_CAP,
               0 CMPL_BAL_CC,
               0 CMPL_BAL_CAP,
               0 CMPL_APP_SPQ,
               NVL(SUM(A3.PQ), 0) YEAR_EFFECT_SPQ
          FROM (SELECT /*+ parallel(A 2) parallel(B 2) */
                 A.PS_ORG_NO ORG_NO,
                 A.CONS_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', B.PRO_NAME) BUSI_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', A.TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            A.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_INDUSTRY_CODE) HEC_INDUSTRY_CODE
                  FROM SY_SG_ARC_S_APP A, SY_SG_INDYWF_INSTANCES_CUR B
                 WHERE A.APP_NO = B.ITEM_KEY
                   AND B.ITEM_TYPE = '01'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  B.PRO_NAME) IN
                       ('101',
                        '102',
                        '104',
                        '105',
                        '106',
                        '109',
                        '110',
                        '111')
                   AND B.STATE <> 'ABORT'
                   AND B.END_DATE >=
                       TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD')
                   AND B.END_DATE <= V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND B.DEPT_NAME LIKE TSS.ORG_NO || '%'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����GK_DW_CODE_TRANS�����á�
                   AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ', '103'),
                             
                             B.PRO_NAME) <= 0
                UNION ALL
                SELECT /*+ parallel(A 2) parallel(B 2) parallel(C 2) */
                 A.PS_ORG_NO ORG_NO,
                 B.CONS_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', C.PRO_NAME) BUSI_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_INDUSTRY_CODE) HEC_INDUSTRY_CODE
                  FROM SY_SG_ARC_S_APP            A,
                       SY_SG_ARC_S_BATCH_CUST_APP B,
                       SY_SG_INDYWF_INSTANCES_CUR C
                 WHERE A.APP_NO = C.ITEM_KEY
                   AND C.ITEM_TYPE = '01'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  C.PRO_NAME) IN
                       ('112', '217')
                   AND C.STATE <> 'ABORT'
                   AND A.APP_ID = B.APP_ID
                   AND C.END_DATE >=
                       TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD')
                   AND C.END_DATE <= V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND C.DEPT_NAME LIKE TSS.ORG_NO || '%'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%') AA,
               (SELECT /*+ use_hash(T1) use_hash(T2) parallel(T1 2) parallel(T2 2) */
                 T1.ORG_NO, T2.CONS_NO, SUM(T_SETTLE_PQ) PQ
                  FROM SY_SG_ARC_E_CONS_PRC_AMT T1, SY_SG_ARC_E_CONS_SNAP T2
                 WHERE T1.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND T2.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND T1.YM >= SUBSTR(V_YM, 1, 4) || '01'
                   AND T1.YM <= V_YM
                   AND T2.YM >= SUBSTR(V_YM, 1, 4) || '01'
                   AND T2.YM <= V_YM
                   AND T1.CALC_ID = T2.CALC_ID
                   AND T1.PRC_CODE NOT LIKE '0%'
                 GROUP BY T1.ORG_NO, T2.CONS_NO) A3
         WHERE A3.CONS_NO = AA.CONS_NO
         GROUP BY AA.ORG_NO,
                  AA.BUSI_TYPE_CODE,
                  AA.TRADE_CODE,
                  AA.VOLT_CODE,
                  AA.ELEC_TYPE_CODE,
                  AA.HEC_INDUSTRY_CODE;
    
      --�������
      INSERT INTO DW_S_BUSI_CCCAP_MON
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         BUSI_TYPE_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ELEC_TYPE_CODE,
         APP_CC,
         APP_CAP,
         CMPL_CC,
         CMPL_CAP,
         HEC_TRADE_CODE,
         STOP_LAST_APP_CC,
         STOP_APP_CC,
         STOP_LAST_APP_CAP,
         STOP_APP_CAP,
         CMPL_BAL_CC,
         CMPL_BAL_CAP,
         CMPL_APP_SPQ,
         YEAR_EFFECT_SPQ,
         TIME_STAMP)
        SELECT /*+ parallel(A 4) */
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         ORG_NO,
         '',
         --Ӫҵ������        
         V_YM,
         BUSI_TYPE_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ELEC_TYPE_CODE,
         SUM(APP_CC),
         SUM(APP_CAP) APP_CAP,
         SUM(CMPL_CC),
         --��ɻ���         
         SUM(CMPL_CAP),
         --�������         
         HEC_TRADE_CODE,
         SUM(STOP_LAST_APP_CC),
         --��ֹ�������뻧��         
         SUM(STOP_APP_CC),
         --��ֹ�������뻧��         
         SUM(STOP_LAST_APP_CAP),
         --��ֹ������������         
         SUM(STOP_APP_CAP),
         --��ֹ������������
         SUM(CMPL_BAL_CC),
         --��������滧��
         SUM(CMPL_BAL_CAP),
         --�������������
         SUM(CMPL_APP_SPQ),
         --���µ��
         SUM(YEAR_EFFECT_SPQ),
         --�ۼƵ��
         SYSDATE
          FROM TMP_CCAP_MON A
         GROUP BY ORG_NO,
                  BUSI_TYPE_CODE,
                  TRADE_CODE,
                  VOLT_CODE,
                  ELEC_TYPE_CODE,
                  HEC_TRADE_CODE;
      COMMIT;
    END LOOP;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_BUSI_CCCAP_MON  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_BUSI_CCCAP_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_S_BUSI_CCCAP_MON_SH(IN_YM    VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --����
    V_YM VARCHAR2(6);
    --��εĵ����һ��һ��
    V_DATE_START_D DATE; --��ʼʱ��
    V_DATE_END_D   DATE; --����ʱ��
    V_DATE_START_S VARCHAR2(8); --��ʼʱ��
    V_DATE_END_S   VARCHAR2(8); --����ʱ��
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID      := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_BUSI_CCCAP_MON_SH',
                                             IN_YM);
    V_YM           := SUBSTR(IN_YM, 1, 6);
    V_DATE_END_D   := TO_DATE(V_YM || '26' || ' 00:00:00',
                              'YYYY-MM-DD HH24:MI:SS');
    V_DATE_START_D := ADD_MONTHS(V_DATE_END_D, -1);
  
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_S_BUSI_CCCAP_MON X WHERE X.STAT_YM = V_YM;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_C_CONS_COMP
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO TMP_CCAP_MON
        (ORG_NO,
         BUSI_TYPE_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ELEC_TYPE_CODE,
         APP_CC,
         APP_CAP,
         CMPL_CC,
         CMPL_CAP,
         HEC_TRADE_CODE,
         STOP_LAST_APP_CC,
         STOP_APP_CC,
         STOP_LAST_APP_CAP,
         STOP_APP_CAP,
         CMPL_BAL_CC,
         CMPL_BAL_CAP,
         CMPL_APP_SPQ,
         YEAR_EFFECT_SPQ)
      --�����������������뻧��
        SELECT AA.ORG_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', AA.APP_TYPE_CODE) BUSI_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', AA.TRADE_CODE) TRADE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', AA.VOLT_CODE) VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                          AA.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
               COUNT(AA.CONS_NO) APP_CC,
               SUM(ABS(AA.CAP)) APP_CAP,
               0 CMPL_CC,
               0 CMPL_CAP,
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          AA.HEC_INDUSTRY_CODE) HEC_TRADE_CODE,
               0 STOP_LAST_APP_CC,
               0 STOP_APP_CC,
               0 STOP_LAST_APP_CAP,
               0 STOP_APP_CAP,
               0 CMPL_BAL_CC,
               0 CMPL_BAL_CAP,
               0 CMPL_APP_SPQ,
               0 YEAR_EFFECT_SPQ
          FROM (SELECT /*+ parallel(A 2) parallel(B 2) parallel(C 2) */
                 A.PS_ORG_NO         ORG_NO,
                 A.CONS_NO,
                 B.PRO_NAME          APP_TYPE_CODE,
                 A.TRADE_CODE,
                 A.VOLT_CODE,
                 A.ELEC_TYPE_CODE,
                 A.HEC_INDUSTRY_CODE HEC_INDUSTRY_CODE,
                 --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                 DECODE(SIGN(INSTR('/203/204/201/202/',
                                   '/' ||
                                   PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                              B.PRO_NAME) || '/')),
                        1,
                        ABS(NVL(A.T_RUN_CAP, 0) - NVL(A.ORGN_RUN_CAP, 0)),
                        DECODE(SIGN(INSTR('/216/106/108/',
                                          '/' ||
                                          PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                                     B.PRO_NAME) || '/')),
                               1,
                               ABS(A.ORGN_CONTRACT_CAP),
                               ABS(NVL(A.T_CONTRACT_CAP, 0) -
                                   NVL(A.ORGN_CONTRACT_CAP, 0)))) CAP
                  FROM SY_SG_S_APP A, SY_SG_INDYWF_INSTANCES_CUR B
                 WHERE A.APP_NO = B.ITEM_KEY
                   AND B.BEGIN_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  B.PRO_NAME) NOT IN
                       ('112', '217', '103')
                   AND B.ITEM_TYPE = '01'
                      --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����GK_DW_CODE_TRANS�����á�
                   AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ', '103'),
                             B.PRO_NAME) <= 0
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                UNION ALL
                SELECT /*+ parallel(A 2) parallel(B 2) */
                 A.PS_ORG_NO         ORG_NO,
                 A.CONS_NO,
                 B.PRO_NAME          APP_TYPE_CODE,
                 A.TRADE_CODE,
                 A.VOLT_CODE,
                 A.ELEC_TYPE_CODE,
                 A.HEC_INDUSTRY_CODE HEC_INDUSTRY_CODE,
                 --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                 DECODE(SIGN(INSTR('/203/204/201/202/',
                                   '/' ||
                                   PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                              B.PRO_NAME) || '/')),
                        1,
                        ABS(NVL(A.T_RUN_CAP, 0) - NVL(A.ORGN_RUN_CAP, 0)),
                        DECODE(SIGN(INSTR('/216/106/108/',
                                          '/' ||
                                          PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                                     B.PRO_NAME) || '/')),
                               1,
                               ABS(A.ORGN_CONTRACT_CAP),
                               ABS(NVL(A.T_CONTRACT_CAP, 0) -
                                   NVL(A.ORGN_CONTRACT_CAP, 0)))) CAP
                  FROM SY_SG_ARC_S_APP A, SY_SG_INDYWF_INSTANCES_CUR B
                 WHERE A.APP_NO = B.ITEM_KEY
                   AND B.BEGIN_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  B.PRO_NAME) NOT IN
                       ('112', '217', '103')
                   AND B.ITEM_TYPE = '01'
                      --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����GK_DW_CODE_TRANS�����á�
                   AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ', '103'),
                             B.PRO_NAME) <= 0
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                UNION ALL
                SELECT /*+ parallel(A 2) parallel(B 2) parallel(C 2) */
                 A.PS_ORG_NO         ORG_NO,
                 B.CONS_NO,
                 C.PRO_NAME          APP_TYPE_CODE,
                 B.TRADE_CODE,
                 B.VOLT_CODE,
                 B.ELEC_TYPE_CODE,
                 A.HEC_INDUSTRY_CODE HEC_INDUSTRY_CODE,
                 B.CONTRACT_CAP      CAP
                  FROM SY_SG_S_APP                A,
                       SY_SG_S_BATCH_CUST_APP     B,
                       SY_SG_INDYWF_INSTANCES_CUR C
                 WHERE A.APP_NO = C.ITEM_KEY
                   AND C.BEGIN_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.APP_ID = B.APP_ID
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  C.PRO_NAME) IN
                       ('112', '217', '103')
                   AND C.ITEM_TYPE = '01'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                UNION ALL
                SELECT /*+ parallel(A 2) parallel(B 2) parallel(C 2) */
                 A.PS_ORG_NO         ORG_NO,
                 B.CONS_NO,
                 C.PRO_NAME          APP_TYPE_CODE,
                 B.TRADE_CODE,
                 B.VOLT_CODE,
                 B.ELEC_TYPE_CODE,
                 A.HEC_INDUSTRY_CODE HEC_INDUSTRY_CODE,
                 B.CONTRACT_CAP      CAP
                  FROM SY_SG_ARC_S_APP            A,
                       SY_SG_ARC_S_BATCH_CUST_APP B,
                       SY_SG_INDYWF_INSTANCES_CUR C
                 WHERE A.APP_NO = C.ITEM_KEY
                   AND C.BEGIN_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.APP_ID = B.APP_ID
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  C.PRO_NAME) IN
                       ('112', '217', '103')
                   AND C.ITEM_TYPE = '01'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%') AA
         GROUP BY AA.ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                             AA.APP_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                             AA.TRADE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', AA.VOLT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             AA.ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             AA.HEC_INDUSTRY_CODE);
      INSERT INTO TMP_CCAP_MON
        (ORG_NO,
         BUSI_TYPE_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ELEC_TYPE_CODE,
         APP_CC,
         APP_CAP,
         CMPL_CC,
         CMPL_CAP,
         HEC_TRADE_CODE,
         STOP_LAST_APP_CC,
         STOP_APP_CC,
         STOP_LAST_APP_CAP,
         STOP_APP_CAP,
         CMPL_BAL_CC,
         CMPL_BAL_CAP,
         CMPL_APP_SPQ,
         YEAR_EFFECT_SPQ)
      -- ������ɻ���������,�����۵���,��� �����滧��������
        SELECT A2.ORG_NO,
               BUSI_TYPE_CODE,
               A2.TRADE_CODE,
               A2.VOLT_CODE,
               A2.ELEC_TYPE_CODE,
               0 APP_CC,
               0 APP_CAP,
               COUNT(A2.CONS_NO) CMPL_CC,
               SUM(ABS(A2.CAP)) CMPL_CAP,
               A2.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
               0 STOP_LAST_APP_CC,
               0 STOP_APP_CC,
               0 STOP_LAST_APP_CAP,
               0 STOP_APP_CAP,
               COUNT((CASE
                       WHEN A2.BEGIN_DATE <
                            TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD') THEN
                        A2.CONS_NO
                       ELSE
                        NULL
                     END)) CMPL_BAL_CC,
               SUM((CASE
                     WHEN A2.BEGIN_DATE <
                          TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD') THEN
                      NVL(A2.CAP, 0)
                     ELSE
                      0
                   END)) CMPL_BAL_CAP,
               SUM(CASE
                     WHEN A2.BUSI_TYPE_CODE IN ('101',
                                                '102',
                                                '104',
                                                '105',
                                                '106',
                                                '109',
                                                '110',
                                                '111') THEN
                      NVL(A3.PQ, 0)
                     ELSE
                      0
                   END) CMPL_APP_SPQ,
               0 YEAR_EFFECT_SPQ
          FROM (SELECT /*+ parallel(A 2) parallel(B 2) */
                 A.PS_ORG_NO ORG_NO,
                 A.CONS_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', B.PRO_NAME) BUSI_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', A.TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            A.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_INDUSTRY_CODE) HEC_INDUSTRY_CODE,
                 B.BEGIN_DATE BEGIN_DATE,
                 --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                 DECODE(SIGN(INSTR('/203/204/201/202/',
                                   '/' ||
                                   PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                              B.PRO_NAME) || '/')),
                        1,
                        ABS(NVL(A.T_RUN_CAP, 0) - NVL(A.ORGN_RUN_CAP, 0)),
                        DECODE(SIGN(INSTR('/216/106/108/',
                                          '/' ||
                                          PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                                     B.PRO_NAME) || '/')),
                               1,
                               ABS(A.ORGN_CONTRACT_CAP),
                               ABS(NVL(A.T_CONTRACT_CAP, 0) -
                                   NVL(A.ORGN_CONTRACT_CAP, 0)))) CAP
                  FROM SY_SG_ARC_S_APP A, SY_SG_INDYWF_INSTANCES_CUR B
                 WHERE A.APP_NO = B.ITEM_KEY
                   AND B.ITEM_TYPE = '01'
                   AND B.STATE <> 'ABORT'
                   AND B.END_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  B.PRO_NAME) NOT IN
                       ('112', '217', '103')
                      --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����GK_DW_CODE_TRANS�����á�
                   AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ', '103'),
                             B.PRO_NAME) <= 0
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                UNION ALL
                SELECT /*+ parallel(A 2) parallel(B 2) parallel(C 2) */
                 A.PS_ORG_NO ORG_NO,
                 B.CONS_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', C.PRO_NAME) BUSI_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_INDUSTRY_CODE) HEC_INDUSTRY_CODE,
                 C.BEGIN_DATE BEGIN_DATE,
                 B.CONTRACT_CAP CAP
                  FROM SY_SG_ARC_S_APP            A,
                       SY_SG_ARC_S_BATCH_CUST_APP B,
                       SY_SG_INDYWF_INSTANCES_CUR C
                 WHERE A.APP_NO = C.ITEM_KEY
                   AND C.ITEM_TYPE = '01'
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  C.PRO_NAME) IN
                       ('112', '217', '103')
                   AND C.STATE <> 'ABORT'
                   AND A.APP_ID = B.APP_ID
                   AND C.END_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%') A2,
               (SELECT /*+ use_hash(T1) use_hash(T2) parallel(T1 2) parallel(T2 2) */
                 T1.ORG_NO, T2.CONS_NO, SUM(T_SETTLE_PQ) PQ
                  FROM SY_SG_ARC_E_CONS_PRC_AMT T1, SY_SG_ARC_E_CONS_SNAP T2
                 WHERE T1.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND T2.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND T1.YM = V_YM
                   AND T2.YM = V_YM
                   AND T1.CALC_ID = T2.CALC_ID
                   AND T1.PRC_CODE NOT LIKE '0%'
                 GROUP BY T1.ORG_NO, T2.CONS_NO) A3
         WHERE A2.CONS_NO = A3.CONS_NO(+)
         GROUP BY A2.ORG_NO,
                  A2.BUSI_TYPE_CODE,
                  A2.TRADE_CODE,
                  A2.VOLT_CODE,
                  A2.ELEC_TYPE_CODE,
                  A2.HEC_INDUSTRY_CODE;
    
      INSERT INTO TMP_CCAP_MON
        (ORG_NO,
         BUSI_TYPE_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ELEC_TYPE_CODE,
         APP_CC,
         APP_CAP,
         CMPL_CC,
         CMPL_CAP,
         HEC_TRADE_CODE,
         STOP_LAST_APP_CC,
         STOP_APP_CC,
         STOP_LAST_APP_CAP,
         STOP_APP_CAP,
         CMPL_BAL_CC,
         CMPL_BAL_CAP,
         CMPL_APP_SPQ,
         YEAR_EFFECT_SPQ)
      ----������ֹ�������뻧��/������ֹ������������/������ֹ�������뻧��/������ֹ������������
        SELECT AA.ORG_NO,
               BUSI_TYPE_CODE,
               TRADE_CODE,
               VOLT_CODE,
               ELEC_TYPE_CODE,
               0 APP_CC,
               0 APP_CAP,
               0 CMPL_CC,
               0 CMPL_CAP,
               HEC_INDUSTRY_CODE HEC_TRADE_CODE,
               COUNT((CASE
                       WHEN AA.BEGIN_DATE <
                            TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD') THEN
                        AA.CONS_NO
                       ELSE
                        NULL
                     END)) STOP_LAST_APP_CC,
               COUNT((CASE
                       WHEN AA.BEGIN_DATE >=
                            TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD') THEN
                        AA.CONS_NO
                       ELSE
                        NULL
                     END)) STOP_APP_CC,
               SUM((CASE
                     WHEN AA.BEGIN_DATE <
                          TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD') THEN
                      NVL(AA.CAP, 0)
                     ELSE
                      0
                   END)) STOP_LAST_APP_CAP,
               SUM((CASE
                     WHEN AA.BEGIN_DATE >=
                          TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD') THEN
                      NVL(AA.CAP, 0)
                     ELSE
                      0
                   END)) STOP_APP_CAP,
               0 CMPL_BAL_CC,
               0 CMPL_BAL_CAP,
               0 CMPL_APP_SPQ,
               0 YEAR_EFFECT_SPQ
          FROM (SELECT /*+ parallel(A 2) parallel(B 2) */
                 A.PS_ORG_NO ORG_NO,
                 A.CONS_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', B.PRO_NAME) BUSI_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', A.TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            A.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_INDUSTRY_CODE) HEC_INDUSTRY_CODE,
                 B.BEGIN_DATE,
                 --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                 DECODE(SIGN(INSTR('/203/204/201/202/',
                                   '/' ||
                                   PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                              B.PRO_NAME) || '/')),
                        1,
                        ABS(NVL(A.T_RUN_CAP, 0) - NVL(A.ORGN_RUN_CAP, 0)),
                        DECODE(SIGN(INSTR('/216/106/108/',
                                          '/' ||
                                          PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                                     B.PRO_NAME) || '/')),
                               1,
                               ABS(A.ORGN_CONTRACT_CAP),
                               ABS(NVL(A.T_CONTRACT_CAP, 0) -
                                   NVL(A.ORGN_CONTRACT_CAP, 0)))) CAP
                  FROM SY_SG_ARC_S_APP A, SY_SG_INDYWF_INSTANCES_CUR B
                 WHERE A.APP_NO = B.ITEM_KEY
                   AND B.ITEM_TYPE = '01'
                   AND B.STATE = 'ABORT'
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  B.PRO_NAME) NOT IN
                       ('112', '217', '103')
                   AND B.END_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����GK_DW_CODE_TRANS�����á�
                   AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ', '103'),
                             B.PRO_NAME) <= 0
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                UNION ALL
                SELECT /*+ parallel(A 2) parallel(B 2) parallel(C 2) */
                 A.PS_ORG_NO ORG_NO,
                 B.CONS_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', C.PRO_NAME) BUSI_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_INDUSTRY_CODE) HEC_INDUSTRY_CODE,
                 C.BEGIN_DATE,
                 --������ʡ��������������Ϊ��ͣ����ͣ�ָ������ݡ����ݻָ�ʱ,������ȡAPP_RUN_APP
                 B.CONTRACT_CAP CAP
                  FROM SY_SG_ARC_S_APP            A,
                       SY_SG_ARC_S_BATCH_CUST_APP B,
                       SY_SG_INDYWF_INSTANCES_CUR C
                 WHERE A.APP_NO = C.ITEM_KEY
                   AND C.ITEM_TYPE = '01'
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  C.PRO_NAME) IN
                       ('112', '217', '103')
                   AND C.STATE = 'ABORT'
                   AND A.APP_ID = B.APP_ID
                   AND C.END_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)) AA
         GROUP BY AA.ORG_NO,
                  AA.BUSI_TYPE_CODE,
                  AA.TRADE_CODE,
                  AA.VOLT_CODE,
                  AA.ELEC_TYPE_CODE,
                  AA.HEC_INDUSTRY_CODE;
    
      INSERT INTO TMP_CCAP_MON
        (ORG_NO,
         BUSI_TYPE_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ELEC_TYPE_CODE,
         APP_CC,
         APP_CAP,
         CMPL_CC,
         CMPL_CAP,
         HEC_TRADE_CODE,
         STOP_LAST_APP_CC,
         STOP_APP_CC,
         STOP_LAST_APP_CAP,
         STOP_APP_CAP,
         CMPL_BAL_CC,
         CMPL_BAL_CAP,
         CMPL_APP_SPQ,
         YEAR_EFFECT_SPQ)
      --������װ��������û����ڱ�����װ���ݺ��ڱ���������۵����ϼ�
        SELECT AA.ORG_NO,
               BUSI_TYPE_CODE,
               AA.TRADE_CODE,
               AA.VOLT_CODE,
               AA.ELEC_TYPE_CODE,
               0 APP_CC,
               0 APP_CAP,
               0 CMPL_CC,
               0 CMPL_CAP,
               AA.HEC_INDUSTRY_CODE HEC_TRADE_CODE,
               0 STOP_LAST_APP_CC,
               0 STOP_APP_CC,
               0 STOP_LAST_APP_CAP,
               0 STOP_APP_CAP,
               0 CMPL_BAL_CC,
               0 CMPL_BAL_CAP,
               0 CMPL_APP_SPQ,
               NVL(SUM(A3.PQ), 0) YEAR_EFFECT_SPQ
          FROM (SELECT /*+ parallel(A 2) parallel(B 2) */
                 A.PS_ORG_NO ORG_NO,
                 A.CONS_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', B.PRO_NAME) BUSI_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', A.TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            A.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_INDUSTRY_CODE) HEC_INDUSTRY_CODE
                  FROM SY_SG_ARC_S_APP A, SY_SG_INDYWF_INSTANCES_CUR B
                 WHERE A.APP_NO = B.ITEM_KEY
                   AND B.ITEM_TYPE = '01'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  B.PRO_NAME) IN
                       ('101',
                        '102',
                        '104',
                        '105',
                        '106',
                        '109',
                        '110',
                        '111')
                   AND B.STATE <> 'ABORT'
                   AND B.END_DATE >=
                       TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD')
                   AND B.END_DATE <= V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND B.DEPT_NAME LIKE TSS.ORG_NO || '%'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����GK_DW_CODE_TRANS�����á�
                   AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ', '103'),
                             
                             B.PRO_NAME) <= 0
                UNION ALL
                SELECT /*+ parallel(A 2) parallel(B 2) parallel(C 2) */
                 A.PS_ORG_NO ORG_NO,
                 B.CONS_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', C.PRO_NAME) BUSI_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', B.TRADE_CODE) TRADE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                            B.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                            A.HEC_INDUSTRY_CODE) HEC_INDUSTRY_CODE
                  FROM SY_SG_ARC_S_APP            A,
                       SY_SG_ARC_S_BATCH_CUST_APP B,
                       SY_SG_INDYWF_INSTANCES_CUR C
                 WHERE A.APP_NO = C.ITEM_KEY
                   AND C.ITEM_TYPE = '01'
                      --��ȡ����ʱ�Լ�������������
                   AND (A.PERMENANT_REDUCE_FLAG <> '02' OR
                       A.PERMENANT_REDUCE_FLAG IS NULL)
                   AND PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE',
                                                  C.PRO_NAME) IN
                       ('112', '217', '103')
                   AND C.STATE <> 'ABORT'
                   AND A.APP_ID = B.APP_ID
                   AND C.END_DATE >=
                       TO_DATE(SUBSTR(V_YM, 1, 4) || '0101', 'YYYYMMDD')
                   AND C.END_DATE <= V_DATE_END_D
                      ---����Ҫ���ų���������
                   AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                   AND C.DEPT_NAME LIKE TSS.ORG_NO || '%'
                   AND A.PS_ORG_NO LIKE TSS.ORG_NO || '%') AA,
               (SELECT /*+ use_hash(T1) use_hash(T2) parallel(T1 2) parallel(T2 2) */
                 T1.ORG_NO, T2.CONS_NO, SUM(T_SETTLE_PQ) PQ
                  FROM SY_SG_ARC_E_CONS_PRC_AMT T1, SY_SG_ARC_E_CONS_SNAP T2
                 WHERE T1.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND T2.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND T1.YM >= SUBSTR(V_YM, 1, 4) || '01'
                   AND T1.YM <= V_YM
                   AND T2.YM >= SUBSTR(V_YM, 1, 4) || '01'
                   AND T2.YM <= V_YM
                   AND T1.CALC_ID = T2.CALC_ID
                   AND T1.PRC_CODE NOT LIKE '0%'
                 GROUP BY T1.ORG_NO, T2.CONS_NO) A3
         WHERE A3.CONS_NO = AA.CONS_NO
         GROUP BY AA.ORG_NO,
                  AA.BUSI_TYPE_CODE,
                  AA.TRADE_CODE,
                  AA.VOLT_CODE,
                  AA.ELEC_TYPE_CODE,
                  AA.HEC_INDUSTRY_CODE;
    
      --�������
      INSERT INTO DW_S_BUSI_CCCAP_MON
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         BUSI_TYPE_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ELEC_TYPE_CODE,
         APP_CC,
         APP_CAP,
         CMPL_CC,
         CMPL_CAP,
         HEC_TRADE_CODE,
         STOP_LAST_APP_CC,
         STOP_APP_CC,
         STOP_LAST_APP_CAP,
         STOP_APP_CAP,
         CMPL_BAL_CC,
         CMPL_BAL_CAP,
         CMPL_APP_SPQ,
         YEAR_EFFECT_SPQ,
         TIME_STAMP)
        SELECT /*+ parallel(A 4) */
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         ORG_NO,
         '',
         --Ӫҵ������        
         V_YM,
         BUSI_TYPE_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ELEC_TYPE_CODE,
         SUM(APP_CC),
         SUM(APP_CAP) APP_CAP,
         SUM(CMPL_CC),
         --��ɻ���         
         SUM(CMPL_CAP),
         --�������         
         HEC_TRADE_CODE,
         SUM(STOP_LAST_APP_CC),
         --��ֹ�������뻧��         
         SUM(STOP_APP_CC),
         --��ֹ�������뻧��         
         SUM(STOP_LAST_APP_CAP),
         --��ֹ������������         
         SUM(STOP_APP_CAP),
         --��ֹ������������
         SUM(CMPL_BAL_CC),
         --��������滧��
         SUM(CMPL_BAL_CAP),
         --�������������
         SUM(CMPL_APP_SPQ),
         --���µ��
         SUM(YEAR_EFFECT_SPQ),
         --�ۼƵ��
         SYSDATE
          FROM TMP_CCAP_MON A
         GROUP BY ORG_NO,
                  BUSI_TYPE_CODE,
                  TRADE_CODE,
                  VOLT_CODE,
                  ELEC_TYPE_CODE,
                  HEC_TRADE_CODE;
      COMMIT;
    END LOOP;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_BUSI_CCCAP_MON  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_BUSI_CCCAP_MON_SH  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /******************************
  #function: �µ�λҵ����װͳ�� (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-03
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_BUSI_CCCAP_MON(IN_YM    VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_BUSI_CCCAP_MON', IN_YM);
    V_YM      := SUBSTR(IN_YM, 1, 6);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_BUSI_CCCAP_MON X WHERE X.STAT_YM = V_YM;
  
    INSERT INTO SY_OM_DW_S_BUSI_CCCAP_MON
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       BUSI_TYPE_CODE,
       TRADE_CODE,
       VOLT_CODE,
       ELEC_TYPE_CODE,
       APP_CC,
       APP_CAP,
       CMPL_CC,
       CMPL_CAP,
       HEC_TRADE_CODE,
       STOP_LAST_APP_CC,
       STOP_APP_CC,
       STOP_LAST_APP_CAP,
       STOP_APP_CAP,
       CMPL_BAL_CC,
       CMPL_BAL_CAP,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       BUSI_TYPE_CODE,
       TRADE_CODE,
       VOLT_CODE,
       ELEC_TYPE_CODE,
       APP_CC,
       APP_CAP,
       CMPL_CC,
       CMPL_CAP,
       HEC_TRADE_CODE,
       STOP_LAST_APP_CC,
       STOP_APP_CC,
       STOP_LAST_APP_CAP,
       STOP_APP_CAP,
       CMPL_BAL_CC,
       CMPL_BAL_CAP,
       TIME_STAMP
        FROM DW_S_BUSI_CCCAP_MON A, SY_OM_DW_O_ORG_CONTRAST B
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_BUSI_CCCAP_MON  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    /* --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);*/
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_BUSI_CCCAP_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: ����;ҵ�����������嵥  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_BUSI_WKST_ING(IN_YMD   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_BUSI_WKST_ING', IN_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_S_BUSI_WKST_ING(IN_YMD, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
      P_ETL_DW_S_BUSI_WKST_ING(IN_YMD, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_S_BUSI_WKST_ING  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_BUSI_WKST_ING  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: ����;ҵ�����������嵥 (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_BUSI_WKST_ING(IN_YMD   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_END        DATE := TO_DATE(IN_YMD, 'yyyymmddhh24miss') + 1;
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_BUSI_WKST_ING', IN_YMD);
    --����ҵ�������Ա��־ǿ���н������������ݣ�Ҫ��ɾ��ԭ�еĳ�ȡ�ļ�¼
    DELETE FROM DW_S_BUSI_WKST_ING X;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    INSERT INTO DW_S_BUSI_WKST_ING
      (DATA_ID,
       PRO_ORG_NO,
       APP_ID,
       APP_NO,
       ORG_NO,
       ACCEPT_DEPT_NO,
       BUSI_TYPE_CODE,
       APP_MODE,
       CONS_NO,
       CONS_NAME,
       ELEC_ADDR,
       TEL_NO,
       TRADE_CODE,
       VOLT_CODE,
       ELEC_TYPE_CODE,
       CONS_TYPE_CODE,
       PS_NUM_CODE,
       APP_CAP,
       RUN_CAP,
       ORGN_CTRT_CAP,
       CTRT_CAP,
       ACCEPT_YMD,
       POWER_ONOFF_YMD,
       RETURN_FLAG,
       LAST_STEP_NO,
       STEP_NO,
       STEP_NAME,
       SUB_PRO_FLAG,
       BGN_DATE,
       END_DATE,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO), --����
             V_PRO_ORG_NO, --��ʡ����
             APP_ID,
             APP_NO,
             ORG_NO,
             ACCEPT_DEPT_NO,
             PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('APP_MODE', APP_MODE),
             MAX(CONS_NO),
             MAX(CONS_NAME),
             MAX(ELEC_ADDR),
             MAX(TEL_NO),
             PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('PS_NUM_CODE', PS_NUM_CODE),
             SUM(APP_CAP),
             SUM(RUN_CAP),
             SUM(ORGN_CTRT_CAP),
             SUM(CTRT_CAP),
             MAX(ACCEPT_YMD),
             MAX(POWER_ONOFF_YMD),
             MAX(RETURN_FLAG),
             LAST_STEP_NO,
             STEP_NO,
             STEP_NAME,
             MAX(SUB_PRO_FLAG),
             MAX(BGN_DATE),
             MAX(END_DATE),
             SYSDATE
        FROM (SELECT /*+parallel(A 4) parallel(B 4) parallel(c 4) parallel(d 4) parallel(e 4) parallel(f 4)*/
               C.APP_ID,
               A.ITEM_KEY APP_NO,
               A.DEPT_NAME ORG_NO,
               C.HANDLE_DEPT_NO ACCEPT_DEPT_NO,
               B.PRO_NAME TYPE_CODE,
               C.APP_MODE,
               C.CONS_NO,
               C.CONS_NAME,
               C.ELEC_ADDR,
               (SELECT MAX(D.MOBILE)
                  FROM SY_SG_S_APP_CONTACT D
                 WHERE D.APP_ID = C.APP_ID) TEL_NO,
               C.TRADE_CODE,
               C.VOLT_CODE,
               C.ELEC_TYPE_CODE,
               C.CONS_SORT_CODE CONS_TYPE_CODE,
               (SELECT MAX(E.PS_NUM_CODE)
                  FROM SY_SG_S_SP_SCHEME E
                 WHERE E.CONS_ID = C.CONS_ID) PS_NUM_CODE,
               C.CONTRACT_CAP APP_CAP,
               C.ORGN_RUN_CAP RUN_CAP,
               C.ORGN_CONTRACT_CAP ORGN_CTRT_CAP,
               C.T_CONTRACT_CAP CTRT_CAP,
               TO_CHAR(C.HANDLE_TIME, 'yyyymmdd') ACCEPT_YMD,
               (SELECT MAX(TO_CHAR(F.POWERON_DATE, 'yyyymmdd'))
                  FROM SY_SG_S_POWERON F
                 WHERE F.APP_NO = C.APP_NO) POWER_ONOFF_YMD,
               DECODE((SELECT COUNT(1)
                        FROM SY_SG_INDYWF_BACK T
                       WHERE T.ITEM_TYPE = '01'
                         AND T.ITEM_KEY = A.ITEM_KEY
                         AND T.FROM_TASKID = A.ACTIVITY_ID),
                      0,
                      0,
                      1) RETURN_FLAG,
               (SELECT R.ACTIVITY_ID
                  FROM SY_SG_INDYWF_WORKLIST_COM R
                 WHERE R.ITEM_TYPE = '01'
                   AND R.ITEM_KEY = A.ITEM_KEY
                   AND R.TASKID = A.FROMTASKID) LAST_STEP_NO,
               A.ACTIVITY_ID STEP_NO,
               A.ACTIVITY_NAME STEP_NAME,
               DECODE((SELECT COUNT(1)
                        FROM SY_SG_INDYWF_INSTANCES_CUR X
                       WHERE X.ITEM_TYPE = '01'
                         AND X.PARENT_ITEM_KEY = B.ITEM_KEY),
                      0,
                      0,
                      1) SUB_PRO_FLAG,
               A.BEGIN_DATE BGN_DATE,
               A.END_DATE
                FROM SY_SG_INDYWF_WORKLIST_CUR  A,
                     SY_SG_INDYWF_INSTANCES_CUR B,
                     SY_SG_S_APP                C
               WHERE A.ITEM_TYPE = '01'
                 AND B.ITEM_TYPE = '01'
                 AND A.ITEM_KEY = B.ITEM_KEY
                 AND A.DEPT_NAME = B.DEPT_NAME
                 AND B.DEPT_NAME = C.PS_ORG_NO
                    ---����Ҫ���ų���������
                 AND C.ELEC_TYPE_CODE <> '000'
                 AND A.ITEM_KEY = C.APP_NO
                    --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����gk_dw_code_trans�����á�
                 AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ', '103'),
                           B.PRO_NAME) <= 0
                 AND (B.END_DATE IS NULL OR B.END_DATE > V_END)
              UNION ALL
              SELECT /*+parallel(A 4) parallel(B 4) parallel(c 4) parallel(d 4) parallel(e 4) parallel(f 4)*/
               C.APP_ID,
               A.ITEM_KEY,
               A.DEPT_NAME,
               C.HANDLE_DEPT_NO,
               B.PRO_NAME TYPE_CODE,
               C.APP_MODE,
               C.CONS_NO,
               C.CONS_NAME,
               C.ELEC_ADDR,
               (SELECT MAX(D.MOBILE)
                  FROM SY_SG_S_APP_CONTACT D
                 WHERE D.APP_ID = C.APP_ID) TEL_NO,
               C.TRADE_CODE,
               C.VOLT_CODE,
               C.ELEC_TYPE_CODE,
               C.CONS_SORT_CODE,
               (SELECT MAX(E.PS_NUM_CODE)
                  FROM SY_SG_S_SP_SCHEME E
                 WHERE E.CONS_ID = C.CONS_ID) PS_NUM_CODE,
               C.CONTRACT_CAP APP_CAP,
               C.ORGN_RUN_CAP RUN_CAP,
               C.ORGN_CONTRACT_CAP ORGN_CTRT_CAP,
               C.T_CONTRACT_CAP CTRT_CAP,
               TO_CHAR(C.HANDLE_TIME, 'yyyymmdd') ACCEPT_YMD,
               (SELECT MAX(TO_CHAR(F.POWERON_DATE, 'yyyymmdd'))
                  FROM SY_SG_S_POWERON F
                 WHERE F.APP_NO = C.APP_NO) POWER_ONOFF_YMD,
               DECODE((SELECT COUNT(1)
                        FROM SY_SG_INDYWF_BACK T
                       WHERE T.ITEM_TYPE = '01'
                         AND T.ITEM_KEY = A.ITEM_KEY
                         AND T.FROM_TASKID = A.ACTIVITY_ID),
                      0,
                      0,
                      1) RETURN_FLAG,
               (SELECT R.ACTIVITY_ID
                  FROM SY_SG_INDYWF_WORKLIST_COM R
                 WHERE R.ITEM_TYPE = '01'
                   AND R.ITEM_KEY = A.ITEM_KEY
                   AND R.TASKID = A.FROMTASKID) LAST_STEP_NO,
               A.ACTIVITY_ID STEP_NO,
               A.ACTIVITY_NAME STEP_NAME,
               DECODE((SELECT COUNT(1)
                        FROM SY_SG_INDYWF_INSTANCES_CUR X
                       WHERE X.ITEM_TYPE = '01'
                         AND X.PARENT_ITEM_KEY = B.ITEM_KEY),
                      0,
                      0,
                      1) SUB_PRO_FLAG,
               A.BEGIN_DATE BGN_DATE,
               A.END_DATE
                FROM SY_SG_INDYWF_WORKLIST_COM  A,
                     SY_SG_INDYWF_INSTANCES_CUR B,
                     SY_SG_S_APP                C
               WHERE A.ITEM_TYPE = '01'
                 AND B.ITEM_TYPE = '01'
                 AND A.ITEM_KEY = B.ITEM_KEY
                 AND A.ITEM_KEY = C.APP_NO
                 AND A.DEPT_NAME = B.DEPT_NAME
                 AND B.DEPT_NAME = C.PS_ORG_NO
                    ---����Ҫ���ų���������
                 AND C.ELEC_TYPE_CODE <> '000'
                    --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����gk_dw_code_trans�����á�
                 AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ', '103'),
                           B.PRO_NAME) <= 0
                 AND (B.END_DATE IS NULL OR B.END_DATE > V_END))
       GROUP BY APP_ID,
                APP_NO,
                ORG_NO,
                ACCEPT_DEPT_NO,
                PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', TYPE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('APP_MODE', APP_MODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_TYPE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('PS_NUM_CODE', PS_NUM_CODE),
                LAST_STEP_NO,
                STEP_NO,
                STEP_NAME;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_BUSI_WKST_ING  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_BUSI_WKST_ING  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �չ鵵ҵ�����������嵥 (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_BUSI_WKST_ING(IN_YMD   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_BUSI_WKST_ing', IN_YMD);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_BUSI_WKST_ING X;
  
    INSERT INTO SY_OM_DW_S_BUSI_WKST_ING
      (DATA_ID,
       PRO_ORG_NO,
       APP_ID,
       APP_NO,
       ORG_NO,
       ACCEPT_DEPT_NO,
       BUSI_TYPE_CODE,
       APP_MODE,
       CONS_NO,
       CONS_NAME,
       ELEC_ADDR,
       TEL_NO,
       TRADE_CODE,
       VOLT_CODE,
       ELEC_TYPE_CODE,
       CONS_TYPE_CODE,
       PS_NUM_CODE,
       APP_CAP,
       RUN_CAP,
       ORGN_CTRT_CAP,
       CTRT_CAP,
       ACCEPT_YMD,
       POWER_ONOFF_YMD,
       RETURN_FLAG,
       LAST_STEP_NO,
       STEP_NO,
       STEP_NAME,
       SUB_PRO_FLAG,
       BGN_DATE,
       END_DATE,
       WORKDAY_NUM,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             APP_ID,
             APP_NO,
             ORG_NO,
             ACCEPT_DEPT_NO,
             BUSI_TYPE_CODE,
             APP_MODE,
             CONS_NO,
             CONS_NAME,
             ELEC_ADDR,
             TEL_NO,
             TRADE_CODE,
             VOLT_CODE,
             ELEC_TYPE_CODE,
             CONS_TYPE_CODE,
             PS_NUM_CODE,
             APP_CAP,
             RUN_CAP,
             ORGN_CTRT_CAP,
             CTRT_CAP,
             ACCEPT_YMD,
             POWER_ONOFF_YMD,
             RETURN_FLAG,
             LAST_STEP_NO,
             STEP_NO,
             STEP_NAME,
             SUB_PRO_FLAG,
             BGN_DATE,
             END_DATE,
             WORKDAY_NUM,
             TIME_STAMP
        FROM DW_S_BUSI_WKST_ING A;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_BUSI_WKST_ing  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_BUSI_WKST_ing  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �չ鵵ҵ�����������嵥  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_BUSI_WKST_ARC(IN_YMD   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_BUSI_WKST_ARC', IN_YMD);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_S_BUSI_WKST_ARC(IN_YMD, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
      P_ETL_DW_S_BUSI_WKST_ARC(IN_YMD, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_S_BUSI_WKST_ARC  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_BUSI_WKST_ARC  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �չ鵵ҵ�����������嵥 (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_BUSI_WKST_ARC(IN_YMD   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_BGN        DATE := TO_DATE(IN_YMD, 'yyyymmddhh24miss');
    V_END        DATE := TO_DATE(IN_YMD, 'yyyymmddhh24miss') + 1;
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_BUSI_WKST_ARC', IN_YMD);
  
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_S_BUSI_WKST_ARC X
     WHERE X.ARC_DATE BETWEEN V_BGN AND V_END;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    INSERT INTO DW_S_BUSI_WKST_ARC
      (DATA_ID,
       PRO_ORG_NO,
       APP_ID,
       APP_NO,
       ORG_NO,
       ACCEPT_DEPT_NO,
       BUSI_TYPE_CODE,
       APP_MODE,
       CONS_NO,
       CONS_NAME,
       ELEC_ADDR,
       TEL_NO,
       TRADE_CODE,
       VOLT_CODE,
       ELEC_TYPE_CODE,
       CONS_TYPE_CODE,
       PS_NUM_CODE,
       APP_CAP,
       RUN_CAP,
       ORGN_CTRT_CAP,
       CTRT_CAP,
       ACCEPT_YMD,
       POWER_ONOFF_YMD,
       ARC_DATE,
       RETURN_FLAG,
       LAST_STEP_NO,
       STEP_NO,
       STEP_NAME,
       SUB_PRO_FLAG,
       BGN_DATE,
       END_DATE,
       WORKDAY_NUM,
       WKST_STATUS_CODE,
       TIME_STAMP,
       HEC_TRADE_CODE)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO), --����
             V_PRO_ORG_NO, --��ʡ����
             APP_ID,
             APP_NO,
             ORG_NO,
             ACCEPT_DEPT_NO,
             PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('APP_MODE', APP_MODE),
             MAX(CONS_NO),
             MAX(CONS_NAME),
             MAX(ELEC_ADDR),
             MAX(TEL_NO),
             PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('PS_NUM_CODE', PS_NUM_CODE),
             SUM(APP_CAP),
             SUM(RUN_CAP),
             SUM(ORGN_CTRT_CAP),
             SUM(CTRT_CAP),
             MAX(ACCEPT_YMD),
             MAX(POWER_ONOFF_YMD),
             MAX(ARC_DATE),
             MAX(RETURN_FLAG),
             LAST_STEP_NO,
             STEP_NO,
             STEP_NAME,
             MAX(SUB_PRO_FLAG),
             MAX(BGN_DATE),
             MAX(END_DATE),
             MAX(WORKDAY_NUM) WORKDAY_NUM,
             PKG_GK_PUBLIC.F_TRANS_CODE('WKST_STATUS_CODE',
                                        WKST_STATUS_CODE),
             SYSDATE,
             PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                        HEC_TRADE_CODE)
        FROM (SELECT /*+parallel(A 4) parallel(B 4) parallel(c 4)*/
               C.APP_ID,
               A.ITEM_KEY APP_NO,
               A.DEPT_NAME ORG_NO,
               C.HANDLE_DEPT_NO ACCEPT_DEPT_NO,
               B.PRO_NAME TYPE_CODE,
               C.APP_MODE,
               C.CONS_NO,
               C.CONS_NAME,
               C.ELEC_ADDR,
               (SELECT MAX(D.MOBILE)
                  FROM SY_SG_ARC_S_APP_CONTACT D
                 WHERE D.APP_ID = C.APP_ID) TEL_NO,
               C.TRADE_CODE,
               C.VOLT_CODE,
               C.ELEC_TYPE_CODE,
               C.CONS_SORT_CODE CONS_TYPE_CODE,
               (SELECT MAX(E.PS_NUM_CODE)
                  FROM SY_SG_C_SP E
                 WHERE E.CONS_ID = C.CONS_ID) PS_NUM_CODE,
               C.CONTRACT_CAP APP_CAP,
               C.ORGN_RUN_CAP RUN_CAP,
               C.ORGN_CONTRACT_CAP ORGN_CTRT_CAP,
               C.T_CONTRACT_CAP CTRT_CAP,
               TO_CHAR(C.HANDLE_TIME, 'yyyymmdd') ACCEPT_YMD,
               (SELECT MAX(TO_CHAR(F.POWERON_DATE, 'yyyymmdd'))
                  FROM SY_SG_ARC_S_POWERON F
                 WHERE F.APP_NO = C.APP_NO) POWER_ONOFF_YMD,
               B.END_DATE ARC_DATE,
               DECODE((SELECT COUNT(1)
                        FROM SY_SG_INDYWF_BACK T
                       WHERE T.ITEM_TYPE = '01'
                         AND T.ITEM_KEY = A.ITEM_KEY
                         AND T.FROM_TASKID = A.ACTIVITY_ID),
                      0,
                      0,
                      1) RETURN_FLAG,
               (SELECT R.ACTIVITY_ID
                  FROM SY_SG_INDYWF_WORKLIST_HIS R
                 WHERE R.ITEM_TYPE = '01'
                   AND R.ITEM_KEY = A.ITEM_KEY
                   AND R.TASKID = A.FROMTASKID) LAST_STEP_NO,
               A.ACTIVITY_ID STEP_NO,
               A.ACTIVITY_NAME STEP_NAME,
               DECODE((SELECT COUNT(1)
                        FROM SY_SG_INDYWF_INSTANCES_CUR X
                       WHERE X.ITEM_TYPE = '01'
                         AND X.PARENT_ITEM_KEY = B.ITEM_KEY),
                      0,
                      0,
                      1) SUB_PRO_FLAG,
               A.BEGIN_DATE BGN_DATE,
               A.END_DATE,
               ROUND((A.END_DATE - B.BEGIN_DATE) * 24, 2) WORKDAY_NUM,
               --��ȡ����״̬
               B.STATE             WKST_STATUS_CODE,
               C.HEC_INDUSTRY_CODE HEC_TRADE_CODE
                FROM SY_SG_INDYWF_WORKLIST_HIS  A,
                     SY_SG_INDYWF_INSTANCES_CUR B,
                     SY_SG_ARC_S_APP            C
               WHERE A.ITEM_TYPE = '01'
                 AND B.ITEM_TYPE = '01'
                 AND A.ITEM_KEY = B.ITEM_KEY
                 AND A.DEPT_NAME = B.DEPT_NAME
                 AND B.DEPT_NAME = C.PS_ORG_NO
                 AND A.ITEM_KEY = C.APP_NO
                    ---����Ҫ���ų���������
                 AND C.ELEC_TYPE_CODE <> '000'
                    --�ų���ֹ�Ĺ���
                 AND B.STATE <> 'ABORT'
                    --�ų�С����װ���͹���,����ɽ������С����װ���ͱ��Ĭ����103,������ʡ����벻ͬ����gk_dw_code_trans�����á�
                 AND INSTR(PKG_GK_PUBLIC.F_TRANS_CODE('GDXQXZ', '103'),
                           B.PRO_NAME) <= 0
                 AND B.END_DATE BETWEEN V_BGN AND V_END)
       GROUP BY APP_ID,
                APP_NO,
                ORG_NO,
                ACCEPT_DEPT_NO,
                PKG_GK_PUBLIC.F_TRANS_CODE('APP_TYPE_CODE', TYPE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('APP_MODE', APP_MODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_TYPE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('PS_NUM_CODE', PS_NUM_CODE),
                LAST_STEP_NO,
                STEP_NO,
                STEP_NAME,
                PKG_GK_PUBLIC.F_TRANS_CODE('WKST_STATUS_CODE',
                                           WKST_STATUS_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                           HEC_TRADE_CODE);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_BUSI_WKST_ARC  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_BUSI_WKST_ARC  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �չ鵵ҵ�����������嵥 (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_BUSI_WKST_ARC(IN_YMD   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_BUSI_WKST_ARC', IN_YMD);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_BUSI_WKST_ARC X
     WHERE SUBSTR(TO_CHAR(X.ARC_DATE, 'yyyymmdd'), 1, 8) = IN_YMD;
  
    INSERT INTO SY_OM_DW_S_BUSI_WKST_ARC
      (DATA_ID,
       PRO_ORG_NO,
       APP_ID,
       APP_NO,
       ORG_NO,
       ACCEPT_DEPT_NO,
       BUSI_TYPE_CODE,
       APP_MODE,
       CONS_NO,
       CONS_NAME,
       ELEC_ADDR,
       TEL_NO,
       TRADE_CODE,
       VOLT_CODE,
       ELEC_TYPE_CODE,
       CONS_TYPE_CODE,
       PS_NUM_CODE,
       APP_CAP,
       RUN_CAP,
       ORGN_CTRT_CAP,
       CTRT_CAP,
       ACCEPT_YMD,
       POWER_ONOFF_YMD,
       ARC_DATE,
       RETURN_FLAG,
       TERMINATE_FLAG,
       TERMINATE_YMD,
       LAST_STEP_NO,
       STEP_NO,
       STEP_NAME,
       SUB_PRO_FLAG,
       BGN_DATE,
       END_DATE,
       WORKDAY_NUM,
       WKST_STATUS_CODE,
       TIME_STAMP,
       HEC_TRADE_CODE)
      SELECT DATA_ID,
             PRO_ORG_NO,
             APP_ID,
             APP_NO,
             ORG_NO,
             ACCEPT_DEPT_NO,
             BUSI_TYPE_CODE,
             APP_MODE,
             CONS_NO,
             CONS_NAME,
             ELEC_ADDR,
             TEL_NO,
             TRADE_CODE,
             VOLT_CODE,
             ELEC_TYPE_CODE,
             CONS_TYPE_CODE,
             PS_NUM_CODE,
             APP_CAP,
             RUN_CAP,
             ORGN_CTRT_CAP,
             CTRT_CAP,
             ACCEPT_YMD,
             POWER_ONOFF_YMD,
             ARC_DATE,
             RETURN_FLAG,
             TERMINATE_FLAG,
             TERMINATE_YMD,
             LAST_STEP_NO,
             STEP_NO,
             STEP_NAME,
             SUB_PRO_FLAG,
             BGN_DATE,
             END_DATE,
             WORKDAY_NUM,
             WKST_STATUS_CODE,
             TIME_STAMP,
             HEC_TRADE_CODE
        FROM DW_S_BUSI_WKST_ARC A
      --����ʱ��ɸѡ����
       WHERE SUBSTR(TO_CHAR(A.ARC_DATE, 'yyyymmdd'), 1, 8) = IN_YMD;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_BUSI_WKST_ARC  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_BUSI_WKST_ARC  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �¹鵵ҵ�����������嵥  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  1��ÿ��1�����ͳ��
  2���˱�ͳ������26���������25��24ʱ��ͳ��Ϊ�������ݣ����һͳ������һ��
  �磺��ǰΪ20141201��ʼ����ͳ�ƹ��̣�����Ĳ���Ϊ201411����Ҫͳ�Ƶ�����Ϊ20141026-20141126ֱ�ӵ�����
  �����е�STAT_YM��д201411
  3���ų��õ����Ϊ��000�����ˡ����Ĺ����Լ���ֹ
  4�����ʱ��������ʵ��������ʱ��Ϊ׼��
  *********************/
  PROCEDURE P_ENT_DW_S_BUSI_WKST_MON(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_BUSI_WKST_MON', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_S_BUSI_WKST_MON(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
      P_ETL_DW_S_BUSI_WKST_MON(V_YM, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_S_BUSI_WKST_MON  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_BUSI_WKST_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �¹鵵ҵ�����������嵥 (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_BUSI_WKST_MON(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_L_MONTH  VARCHAR2(6);
    V_BGN_DATE DATE;
    V_END_DATE DATE;
    V_BGN      VARCHAR2(6);
    V_END      VARCHAR2(6);
    V_YM       VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_BUSI_WKST_MON', IN_YM);
    --��ȡ����ֵ
    V_L_MONTH := SUBSTR(TO_CHAR(ADD_MONTHS(TO_DATE(IN_YM, 'yyyymm'), -1),
                                'yyyymmdd'),
                        1,
                        6);
  
    BEGIN
      --�����ñ��ȡ�¹鵵��ͳ����ֹʱ��
      SELECT CONT1, CONT2
        INTO V_BGN, V_END
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'wkstMonPara';
      --�쳣����
    EXCEPTION
      WHEN OTHERS THEN
        V_BGN := NULL;
        V_END := NULL;
    END;
    --�����ʼʱ��Ϊ�գ���Ĭ�ϴ�26�ſ�ʼ
    IF V_BGN IS NULL THEN
      V_BGN_DATE := TO_DATE(V_L_MONTH || '26', 'yyyymmdd');
    ELSE
      V_BGN_DATE := TO_DATE(V_L_MONTH || V_BGN, 'yyyymmdd');
    END IF;
    --�������ʱ��Ϊ�գ���Ĭ�ϴ�25�Ž���
    IF V_END IS NULL THEN
      V_END_DATE := TO_DATE(IN_YM || '25', 'yyyymmdd');
    ELSE
      V_END_DATE := TO_DATE(IN_YM || V_END, 'yyyymmdd');
    END IF;
  
    --ɾ���ϴ�ͳ������
    DELETE DW_S_BUSI_WKST_MON X WHERE X.STAT_YM = V_YM;
  
    INSERT INTO DW_S_BUSI_WKST_MON
      (DATA_ID,
       PRO_ORG_NO,
       APP_ID,
       STAT_YM,
       APP_NO,
       ORG_NO,
       ACCEPT_DEPT_NO,
       BUSI_TYPE_CODE,
       APP_MODE,
       CONS_NO,
       CONS_NAME,
       ELEC_ADDR,
       TEL_NO,
       TRADE_CODE,
       VOLT_CODE,
       ELEC_TYPE_CODE,
       CONS_TYPE_CODE,
       PS_NUM_CODE,
       APP_CAP,
       RUN_CAP,
       ORGN_CTRT_CAP,
       CTRT_CAP,
       ACCEPT_YMD,
       POWER_ONOFF_YMD,
       ARC_DATE,
       RETURN_FLAG,
       TERMINATE_FLAG,
       TERMINATE_YMD,
       LAST_STEP_NO,
       STEP_NO,
       STEP_NAME,
       SUB_PRO_FLAG,
       BGN_DATE,
       END_DATE,
       WORKDAY_NUM,
       WKST_STATUS_CODE,
       TIME_STAMP,
       HEC_TRADE_CODE)
      SELECT DATA_ID,
             PRO_ORG_NO,
             APP_ID,
             V_YM,
             APP_NO,
             ORG_NO,
             ACCEPT_DEPT_NO,
             BUSI_TYPE_CODE,
             APP_MODE,
             CONS_NO,
             CONS_NAME,
             ELEC_ADDR,
             TEL_NO,
             TRADE_CODE,
             VOLT_CODE,
             ELEC_TYPE_CODE,
             CONS_TYPE_CODE,
             PS_NUM_CODE,
             APP_CAP,
             RUN_CAP,
             ORGN_CTRT_CAP,
             CTRT_CAP,
             ACCEPT_YMD,
             POWER_ONOFF_YMD,
             ARC_DATE,
             RETURN_FLAG,
             TERMINATE_FLAG,
             TERMINATE_YMD,
             LAST_STEP_NO,
             STEP_NO,
             STEP_NAME,
             SUB_PRO_FLAG,
             BGN_DATE,
             END_DATE,
             WORKDAY_NUM,
             WKST_STATUS_CODE,
             SYSDATE,
             HEC_TRADE_CODE
        FROM DW_S_BUSI_WKST_ARC
       WHERE ARC_DATE BETWEEN V_BGN_DATE AND V_END_DATE;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_BUSI_WKST_MON  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_BUSI_WKST_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �¹鵵ҵ�����������嵥 (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-06
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_BUSI_WKST_MON(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --����
    V_L_MONTH  VARCHAR2(6);
    V_BGN_DATE DATE;
    V_END_DATE DATE;
    V_BGN      VARCHAR2(6);
    V_END      VARCHAR2(6);
    V_YM       VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_BUSI_WKST_MON', IN_YM);
    --��ȡ����ֵ
    V_L_MONTH := SUBSTR(TO_CHAR(ADD_MONTHS(TO_DATE(IN_YM, 'yyyymm'), -1),
                                'yyyymmdd'),
                        1,
                        6);
  
    BEGIN
      --�����ñ��ȡ�¹鵵��ͳ����ֹʱ��
      SELECT CONT1, CONT2
        INTO V_BGN, V_END
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'wkstMonPara';
      --�쳣����
    EXCEPTION
      WHEN OTHERS THEN
        V_BGN := NULL;
        V_END := NULL;
    END;
    --�����ʼʱ��Ϊ�գ���Ĭ�ϴ�26�ſ�ʼ
    IF V_BGN IS NULL THEN
      V_BGN_DATE := TO_DATE(V_L_MONTH || '26', 'yyyymmdd');
    ELSE
      V_BGN_DATE := TO_DATE(V_L_MONTH || V_BGN, 'yyyymmdd');
    END IF;
    --�������ʱ��Ϊ�գ���Ĭ�ϴ�25�Ž���
    IF V_END IS NULL THEN
      V_END_DATE := TO_DATE(IN_YM || '25', 'yyyymmdd');
    ELSE
      V_END_DATE := TO_DATE(IN_YM || V_END, 'yyyymmdd');
    END IF;
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_BUSI_WKST_MON X WHERE X.STAT_YM = V_YM;
  
    INSERT INTO SY_OM_DW_S_BUSI_WKST_MON
      (DATA_ID,
       PRO_ORG_NO,
       APP_ID,
       APP_NO,
       ORG_NO,
       ACCEPT_DEPT_NO,
       BUSI_TYPE_CODE,
       APP_MODE,
       CONS_NO,
       CONS_NAME,
       ELEC_ADDR,
       TEL_NO,
       TRADE_CODE,
       VOLT_CODE,
       ELEC_TYPE_CODE,
       CONS_TYPE_CODE,
       PS_NUM_CODE,
       APP_CAP,
       RUN_CAP,
       ORGN_CTRT_CAP,
       CTRT_CAP,
       ACCEPT_YMD,
       POWER_ONOFF_YMD,
       ARC_DATE,
       RETURN_FLAG,
       TERMINATE_FLAG,
       TERMINATE_YMD,
       LAST_STEP_NO,
       STEP_NO,
       STEP_NAME,
       SUB_PRO_FLAG,
       BGN_DATE,
       END_DATE,
       WORKDAY_NUM,
       WKST_STATUS_CODE,
       TIME_STAMP,
       STAT_YM,
       HEC_TRADE_CODE)
      SELECT DATA_ID,
             PRO_ORG_NO,
             APP_ID,
             APP_NO,
             ORG_NO,
             ACCEPT_DEPT_NO,
             BUSI_TYPE_CODE,
             APP_MODE,
             CONS_NO,
             CONS_NAME,
             ELEC_ADDR,
             TEL_NO,
             TRADE_CODE,
             VOLT_CODE,
             ELEC_TYPE_CODE,
             CONS_TYPE_CODE,
             PS_NUM_CODE,
             APP_CAP,
             RUN_CAP,
             ORGN_CTRT_CAP,
             CTRT_CAP,
             ACCEPT_YMD,
             POWER_ONOFF_YMD,
             ARC_DATE,
             RETURN_FLAG,
             TERMINATE_FLAG,
             TERMINATE_YMD,
             LAST_STEP_NO,
             STEP_NO,
             STEP_NAME,
             SUB_PRO_FLAG,
             BGN_DATE,
             END_DATE,
             WORKDAY_NUM,
             WKST_STATUS_CODE,
             TIME_STAMP,
             STAT_YM,
             HEC_TRADE_CODE
        FROM DW_S_BUSI_WKST_MON A
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_BUSI_WKST_MON  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_BUSI_WKST_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �¶ȵ�λ��ͬ�������ͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-04
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_CTRT_ARC_SIGN(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_CTRT_ARC_SIGN', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_S_CTRT_ARC_SIGN(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
      P_ETL_DW_S_CTRT_ARC_SIGN(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_S_CTRT_ARC_SIGN A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_S_CTRT_ARC_SIGN  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_CTRT_ARC_SIGN  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �¶ȵ�λ��ͬ�������ͳ��  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-04
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_CTRT_ARC_SIGN(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(6);
    V_BEGIN      DATE;
    V_END        DATE;
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_CTRT_ARC_SIGN', IN_YM);
    V_YM      := SUBSTR(IN_YM, 1, 6);
    V_END     := LAST_DAY(TO_DATE(V_YM, 'yyyymm')) + 1;
    V_BEGIN   := TO_DATE(V_YM || '01', 'yyyymmdd');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_S_CTRT_ARC_SIGN WHERE STAT_YM = V_YM;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    INSERT INTO DW_S_CTRT_ARC_SIGN
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       TYPE_CODE,
       SIGN_TYPE,
       CONS_SORT_CODE,
       PS_VOLT_CODE,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       SHOULDSIGN_NUM,
       SHOULD_SIGN_CTRT_CAP,
       SIGN_NUM,
       SIGN_CAP,
       NOTSIGN_NUM,
       NOTSIGN_CAP,
       NOTSIGN_ODUE_NUM,
       NOTSIGN_ODUE_CAP,
       NEXT_DUE_NUM,
       NEXT_DUE_CAP,
       TIME_STAMP,
       OVER_SIGN_NUM,
       OVER_SIGN_CAP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             ORG_NO,
             PS_BUSI_AREA_CODE,
             STAT_YM,
             PKG_GK_PUBLIC.F_TRANS_CODE('CONT_TYPE_CODE', TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('CONTRACT_OPER_TYPE_CODE',
                                        SIGN_TYPE),
             PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', PS_VOLT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
             SUM(SHOULDSIGN_NUM),
             SUM(SHOULD_SIGN_CTRT_NUM),
             SUM(SIGN_NUM),
             SUM(SIGN_CAP),
             SUM(NOTSIGN_NUM),
             SUM(NOTSIGN_CAP),
             SUM(NOTSIGN_ODUE_NUM),
             SUM(NOTSIGN_ODUE_CAP),
             SUM(NEXT_DUE_NUM),
             SUM(NEXT_DUE_CAP),
             SYSDATE,
             SUM(OVER_SIGN_NUM) OVER_SIGN_NUM,
             SUM(OVER_SIGN_CAP) OVER_SIGN_CAP
        FROM (SELECT /*+parallel(A 4) parallel(B 4) */
               A.ORG_NO,
               '' PS_BUSI_AREA_CODE,
               V_YM STAT_YM,
               B.TYPE_CODE,
               B.OPER_TYPE_CODE SIGN_TYPE,
               A.CONS_SORT_CODE,
               A.VOLT_CODE PS_VOLT_CODE,
               A.ELEC_TYPE_CODE,
               A.TRADE_CODE,
               COUNT(1) SHOULDSIGN_NUM,
               SUM(CONTRACT_CAP) SHOULD_SIGN_CTRT_NUM,
               SUM(CASE
                     WHEN B.STATUS_CODE = '2' AND B.END_DATE >= V_END THEN
                      1
                   END) SIGN_NUM,
               SUM(CASE
                     WHEN B.STATUS_CODE = '2' AND B.END_DATE >= V_END THEN
                      A.CONTRACT_CAP
                   END) SIGN_CAP,
               SUM(CASE
                     WHEN B.STATUS_CODE = '1' AND B.END_DATE >= V_END THEN
                      1
                   END) NOTSIGN_NUM,
               SUM(CASE
                     WHEN B.STATUS_CODE = '1' AND B.END_DATE >= V_END THEN
                      A.CONTRACT_CAP
                   END) NOTSIGN_CAP,
               SUM(CASE
                     WHEN B.STATUS_CODE = '3' AND B.END_DATE < V_END THEN
                      1
                   END) NOTSIGN_ODUE_NUM,
               SUM(CASE
                     WHEN B.STATUS_CODE = '3' AND B.END_DATE < V_END THEN
                      A.CONTRACT_CAP
                   END) NOTSIGN_ODUE_CAP,
               SUM(CASE
                     WHEN B.STATUS_CODE = '2' AND B.END_DATE BETWEEN V_BEGIN AND
                          V_END THEN
                      1
                   END) NEXT_DUE_NUM,
               SUM(CASE
                     WHEN B.STATUS_CODE = '2' AND B.END_DATE BETWEEN V_BEGIN AND
                          V_END THEN
                      A.CONTRACT_CAP
                   END) NEXT_DUE_CAP,
               SUM(CASE
                     WHEN B.STATUS_CODE = '2' AND B.END_DATE >= V_END THEN
                      1
                   END) OVER_SIGN_NUM,
               SUM(CASE
                     WHEN B.STATUS_CODE = '2' AND B.END_DATE >= V_END THEN
                      A.CONTRACT_CAP
                   END) OVER_SIGN_CAP
                FROM SY_SG_C_CONS A, SY_SG_C_CUST_AGREEMENT B /*,                                                                                                                                SY_SG_INDYWF_INSTANCES_CUR C*/ --��ͬ������������������ʵ����
               WHERE A.CONS_NO = B.CONS_NO
                 AND A.STATUS_CODE <> '9'
                 AND B.SIGN_DATE BETWEEN V_BEGIN AND V_END
                 AND B.STATUS_CODE IN ('1', '2', '3')
              /*AND C.ITEM_KEY = B.APP_NO
              AND C.ITEM_TYPE = '01'
              AND C.END_DATE BETWEEN V_BEGIN AND V_END*/
               GROUP BY A.ORG_NO,
                        B.TYPE_CODE,
                        B.OPER_TYPE_CODE,
                        A.CONS_SORT_CODE,
                        A.VOLT_CODE,
                        A.ELEC_TYPE_CODE,
                        A.TRADE_CODE)
       GROUP BY ORG_NO,
                PS_BUSI_AREA_CODE,
                STAT_YM,
                PKG_GK_PUBLIC.F_TRANS_CODE('CONT_TYPE_CODE', TYPE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('CONTRACT_OPER_TYPE_CODE',
                                           SIGN_TYPE),
                PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', PS_VOLT_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_CTRT_ARC_SIGN  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_CTRT_ARC_SIGN  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /******************************
  #function: �¶ȵ�λ��ͬ�������ͳ�� (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-04
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_CTRT_ARC_SIGN(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_CTRT_ARC_SIGN', IN_YM);
    V_YM      := SUBSTR(IN_YM, 1, 6);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_CTRT_ARC_SIGN X WHERE X.STAT_YM = V_YM;
  
    INSERT INTO SY_OM_DW_S_CTRT_ARC_SIGN
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       TYPE_CODE,
       SIGN_TYPE,
       CONS_SORT_CODE,
       PS_VOLT_CODE,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       SHOULDSIGN_NUM,
       SHOULD_SIGN_CTRT_CAP,
       SIGN_NUM,
       SIGN_CAP,
       NOTSIGN_NUM,
       NOTSIGN_CAP,
       NOTSIGN_ODUE_NUM,
       NOTSIGN_ODUE_CAP,
       NEXT_DUE_NUM,
       NEXT_DUE_CAP,
       TIME_STAMP,
       OVER_SIGN_NUM,
       OVER_SIGN_CAP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       TYPE_CODE,
       SIGN_TYPE,
       CONS_SORT_CODE,
       PS_VOLT_CODE,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       SHOULDSIGN_NUM,
       SHOULD_SIGN_CTRT_CAP,
       SIGN_NUM,
       SIGN_CAP,
       NOTSIGN_NUM,
       NOTSIGN_CAP,
       NOTSIGN_ODUE_NUM,
       NOTSIGN_ODUE_CAP,
       NEXT_DUE_NUM,
       NEXT_DUE_CAP,
       TIME_STAMP,
       OVER_SIGN_NUM,
       OVER_SIGN_CAP
        FROM DW_S_CTRT_ARC_SIGN A, SY_OM_DW_O_ORG_CONTRAST B
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_CTRT_ARC_SIGN  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_CTRT_ARC_SIGN  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �¶Ⱥ�ͬ��ϸ  (��ʱ��)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-04
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  /*PROCEDURE P_INS_DW_S_CTRT_PRO_TMP(IN_YMD   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID   VARCHAR2(24);
    V_DUAL_FLAG NUMBER(1);
    I_COUNT     NUMBER(5);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_CTRT_PRO_TMP', IN_YMD);
  
    DELETE FROM DW_S_CTRT_PRO_TMP T
     WHERE SUBSTR(TO_CHAR(T.DRAFT_BGN_DATE, 'yyyymmdd'), 1, 8) = IN_YMD;
  
    --���쿪ʼ�Ļ���
    FOR T IN ( --��ǰ����
              SELECT \*+parallel(a,4) parallel(b,4) parallel(c,4)*\
               A.ACTIVITY_NAME,
                B.APP_ID,
                B.APP_NO,
                B.APP_MODE,
                B.CONS_ID,
                B.CONS_NO,
                'cur' DATA_TYPE,
                B.CONS_NAME,
                B.ELEC_ADDR,
                SUBSTR(B.CONS_SORT_CODE, 1, 2) CONS_SORT_CODE,
                B.ELEC_TYPE_CODE,
                A.PRO_NAME,
                B.TRADE_CODE,
                B.VOLT_CODE,
                B.PS_ORG_NO ORG_NO,
                A.BEGIN_DATE,
                A.END_DATE DRAFT_END_DATE,
                A.USER_NAME,
                A.CUR_STATE,
                B.TMP_FLAG,
                B.TMP_DATE,
                C.OPER_TYPE_CODE BUSI_TYPE_CODE,
                D.SORT_CODE SIGN_TYPE,
                D.CONTRACT_NO,
                D.END_DATE,
                B.CONTRACT_CAP
                FROM SY_SG_INDYWF_WORKLIST_CUR A,
                      SY_SG_S_APP               B,
                      SY_SG_S_CONTRACT_APP      C,
                      SY_SG_C_CUST_AGREEMENT    D
               WHERE A.ITEM_KEY = B.APP_NO
                 AND EXISTS
               (SELECT 1
                        FROM GK_dw_CODE_TRANS T
                       WHERE T.CODE_TYPE = 'htStatBusiType'
                         AND INSTR(T.CONT1, '/' || A.ITEM_TYPE || '/') > 0)
                 AND A.DEPT_NAME = B.PS_ORG_NO
                 AND C.APP_NO = B.APP_NO
                 AND C.APP_NO = D.APP_NO
                 AND A.BEGIN_DATE >= TO_DATE(IN_YMD, 'yyyymmdd')
                 AND A.BEGIN_DATE < TO_DATE(IN_YMD, 'yyyymmdd') + 1
                 AND TRUNC(A.BEGIN_DATE) = TO_DATE(IN_YMD, 'yyyymmdd')
              UNION ALL
              --��ɻ���
              SELECT \*+parallel(a,4) parallel(b,4) parallel(c,4)*\
               A.ACTIVITY_NAME,
               B.APP_ID,
               B.APP_NO,
               B.APP_MODE,
               B.CONS_ID,
               B.CONS_NO,
               'com' DATA_TYPE,
               B.CONS_NAME,
               B.ELEC_ADDR,
               SUBSTR(B.CONS_SORT_CODE, 1, 2) CONS_SORT_CODE,
               B.ELEC_TYPE_CODE,
               A.PRO_NAME,
               B.TRADE_CODE,
               B.VOLT_CODE,
               B.PS_ORG_NO ORG_NO,
               A.BEGIN_DATE,
               A.END_DATE DRAFT_END_DATE,
               A.USER_NAME,
               A.CUR_STATE,
               B.TMP_FLAG,
               B.TMP_DATE,
               C.OPER_TYPE_CODE BUSI_TYPE_CODE,
               D.SORT_CODE SIGN_TYPE,
               D.CONTRACT_NO,
               D.END_DATE,
               B.CONTRACT_CAP
                FROM SY_SG_INDYWF_WORKLIST_COM A,
                     SY_SG_S_APP               B,
                     SY_SG_S_CONTRACT_APP      C,
                     SY_SG_C_CUST_AGREEMENT    D
               WHERE A.ITEM_KEY = B.APP_NO
                 AND EXISTS
               (SELECT 1
                        FROM GK_dw_CODE_TRANS T
                       WHERE T.CODE_TYPE = 'htStatBusiType'
                         AND INSTR(T.CONT1, '/' || A.ITEM_TYPE || '/') > 0)
                 AND A.DEPT_NAME = B.PS_ORG_NO
                 AND C.APP_NO = B.APP_NO
                 AND C.APP_NO = D.APP_NO
                 AND A.BEGIN_DATE >= TO_DATE(IN_YMD, 'yyyymmdd')
                 AND A.BEGIN_DATE < TO_DATE(IN_YMD, 'yyyymmdd') + 1
                 AND TRUNC(A.BEGIN_DATE) = TO_DATE(IN_YMD, 'yyyymmdd')
              UNION ALL
              --�鵵����
              SELECT \*+parallel(a,4) parallel(b,4) parallel(c,4)*\
               A.ACTIVITY_NAME,
               B.APP_ID,
               B.APP_NO,
               B.APP_MODE,
               B.CONS_ID,
               B.CONS_NO,
               'his' DATA_TYPE,
               B.CONS_NAME,
               B.ELEC_ADDR,
               SUBSTR(B.CONS_SORT_CODE, 1, 2) CONS_SORT_CODE,
               B.ELEC_TYPE_CODE,
               A.PRO_NAME,
               B.TRADE_CODE,
               B.VOLT_CODE,
               B.PS_ORG_NO ORG_NO,
               A.BEGIN_DATE,
               A.END_DATE DRAFT_END_DATE,
               A.USER_NAME,
               A.CUR_STATE,
               B.TMP_FLAG,
               B.TMP_DATE,
               C.OPER_TYPE_CODE BUSI_TYPE_CODE,
               D.SORT_CODE SIGN_TYPE,
               D.CONTRACT_NO,
               D.END_DATE,
               B.CONTRACT_CAP
                FROM SY_SG_INDYWF_WORKLIST_HIS A,
                     SY_SG_ARC_S_APP           B,
                     SY_SG_S_CONTRACT_APP      C,
                     SY_SG_C_CUST_AGREEMENT    D
               WHERE A.ITEM_KEY = B.APP_NO
                 AND EXISTS
               (SELECT 1
                        FROM GK_dw_CODE_TRANS T
                       WHERE T.CODE_TYPE = 'htStatBusiType'
                         AND INSTR(T.CONT1, '/' || A.ITEM_TYPE || '/') > 0)
                 AND A.DEPT_NAME = B.PS_ORG_NO
                 AND C.APP_NO = B.APP_NO
                 AND C.APP_NO = D.APP_NO
                 AND A.BEGIN_DATE >= TO_DATE(IN_YMD, 'yyyymmdd')
                 AND A.BEGIN_DATE < TO_DATE(IN_YMD, 'yyyymmdd') + 1
                 AND TRUNC(A.BEGIN_DATE) = TO_DATE(IN_YMD, 'yyyymmdd')) LOOP
      --��ͬ���
      SELECT COUNT(1)
        INTO I_COUNT
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'htqc'
         AND CONT1 = T.ACTIVITY_NAME;
    
      IF I_COUNT > 0 AND T.CONS_SORT_CODE IN ('01', '02', '03') THEN
        V_DUAL_FLAG := 0;
        BEGIN
          INSERT INTO DW_S_CTRT_PRO_TMP
            ("APP_ID",
             "APP_NO",
             "ORG_NO",
             "CONS_NO",
             "CONS_NAME",
             "ELEC_ADDR",
             "TRADE_CODE",
             "VOLT_CODE",
             "ELEC_TYPE_CODE",
             "CONS_SORT_CODE",
             "TYPE_CODE",
             "SIGN_TYPE",
             "PROC_STATE",
             "ABORT_DATE",
             "DRAFT_BGN_DATE",
             "DRAFT_END_DATE",
             "SIGN_BGN_DATE",
             "SIGN_END_DATE",
             "END_DATE",
             "CONTRACT_NO",
             "CONTRACT_CAP")
          VALUES
            (T.APP_ID,
             T.APP_NO,
             T.ORG_NO,
             T.CONS_NO,
             T.CONS_NAME,
             T.ELEC_ADDR,
             T.TRADE_CODE,
             T.VOLT_CODE,
             T.ELEC_TYPE_CODE,
             T.CONS_SORT_CODE,
             T.BUSI_TYPE_CODE,
             T.SIGN_TYPE,
             NULL,
             NULL,
             T.BEGIN_DATE,
             T.DRAFT_END_DATE,
             NULL,
             NULL,
             T.END_DATE,
             T.CONTRACT_NO,
             T.CONTRACT_CAP);
        EXCEPTION
          WHEN DUP_VAL_ON_INDEX THEN
            V_DUAL_FLAG := 1;
        END;
        --���̻��˻�����ԭ���ٴγ��ֺ�ͬ��ݻ��ڣ���������ʱ��
        IF V_DUAL_FLAG = 1 THEN
          UPDATE DW_S_CTRT_PRO_TMP A
             SET A.DRAFT_BGN_DATE = T.BEGIN_DATE,
                 A.DRAFT_END_DATE = T.DRAFT_END_DATE
           WHERE A.APP_ID = T.APP_ID;
        END IF;
      END IF;
      --��ͬǩ��
      SELECT COUNT(*)
        INTO I_COUNT
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'htqc'
         AND CONT1 = T.ACTIVITY_NAME;
      IF I_COUNT > 0 AND T.CONS_SORT_CODE IN ('01', '02', '03') THEN
        UPDATE DW_S_CTRT_PRO_TMP A
           SET A.SIGN_BGN_DATE = T.BEGIN_DATE,
               A.SIGN_END_DATE = T.DRAFT_END_DATE
         WHERE A.APP_ID = T.APP_ID;
      END IF;
      UPDATE DW_S_CTRT_PRO_TMP A
         SET A.PROC_STATE = CASE
                              WHEN T.DATA_TYPE IN ('com', 'cur') THEN
                               DECODE(T.ACTIVITY_NAME, 'SUSPEND', '03', '01')
                              ELSE
                               DECODE(T.ACTIVITY_NAME, 'ABORT', '04', '02')
                            END
       WHERE APP_ID = T.APP_ID;
    END LOOP;
  
    --������ɵĻ���
    FOR T IN ( --��ɻ���
              SELECT \*+parallel(a,4) parallel(b,4) parallel(c,4)*\
               A.ACTIVITY_NAME,
                B.APP_ID,
                B.APP_NO,
                B.APP_MODE,
                B.CONS_ID,
                B.CONS_NO,
                'com' DATA_TYPE,
                B.CONS_NAME,
                B.ELEC_ADDR,
                SUBSTR(B.CONS_SORT_CODE, 1, 2) CONS_SORT_CODE,
                B.ELEC_TYPE_CODE,
                A.PRO_NAME,
                B.TRADE_CODE,
                B.VOLT_CODE,
                B.PS_ORG_NO ORG_NO,
                A.BEGIN_DATE,
                A.END_DATE DRAFT_END_DATE,
                A.USER_NAME,
                A.CUR_STATE,
                B.TMP_FLAG,
                B.TMP_DATE,
                C.OPER_TYPE_CODE BUSI_TYPE_CODE,
                D.SORT_CODE SIGN_TYPE,
                D.CONTRACT_NO,
                D.END_DATE,
                B.CONTRACT_CAP
                FROM SY_SG_INDYWF_WORKLIST_COM A,
                      SY_SG_S_APP               B,
                      SY_SG_S_CONTRACT_APP      C,
                      SY_SG_C_CUST_AGREEMENT    D
               WHERE A.ITEM_KEY = B.APP_NO
                 AND EXISTS
               (SELECT 1
                        FROM GK_dw_CODE_TRANS T
                       WHERE T.CODE_TYPE = 'htStatBusiType'
                         AND INSTR(T.CONT1, '/' || A.ITEM_TYPE || '/') > 0)
                 AND A.DEPT_NAME = B.PS_ORG_NO
                 AND C.APP_NO = B.APP_NO
                 AND C.APP_NO = D.APP_NO
                 AND A.END_DATE >= TO_DATE(IN_YMD, 'yyyymmdd')
                 AND A.END_DATE < TO_DATE(IN_YMD, 'yyyymmdd') + 1
                 AND TRUNC(A.END_DATE) = TO_DATE(IN_YMD, 'yyyymmdd')
              UNION ALL
              --�鵵����
              SELECT \*+parallel(a,4) parallel(b,4) parallel(c,4)*\
               A.ACTIVITY_NAME,
               B.APP_ID,
               B.APP_NO,
               B.APP_MODE,
               B.CONS_ID,
               B.CONS_NO,
               'his' DATA_TYPE,
               B.CONS_NAME,
               B.ELEC_ADDR,
               SUBSTR(B.CONS_SORT_CODE, 1, 2) CONS_SORT_CODE,
               B.ELEC_TYPE_CODE,
               A.PRO_NAME,
               B.TRADE_CODE,
               B.VOLT_CODE,
               B.PS_ORG_NO ORG_NO,
               A.BEGIN_DATE,
               A.END_DATE DRAFT_END_DATE,
               A.USER_NAME,
               A.CUR_STATE,
               B.TMP_FLAG,
               B.TMP_DATE,
               C.OPER_TYPE_CODE BUSI_TYPE_CODE,
               D.SORT_CODE SIGN_TYPE,
               D.CONTRACT_NO,
               D.END_DATE,
               B.CONTRACT_CAP
                FROM SY_SG_INDYWF_WORKLIST_HIS A,
                     SY_SG_ARC_S_APP           B,
                     SY_SG_S_CONTRACT_APP      C,
                     SY_SG_C_CUST_AGREEMENT    D
               WHERE A.ITEM_KEY = B.APP_NO
                 AND EXISTS
               (SELECT 1
                        FROM GK_dw_CODE_TRANS T
                       WHERE T.CODE_TYPE = 'htStatBusiType'
                         AND INSTR(T.CONT1, '/' || A.ITEM_TYPE || '/') > 0)
                 AND A.DEPT_NAME = B.PS_ORG_NO
                 AND C.APP_NO = B.APP_NO
                 AND C.APP_NO = D.APP_NO
                 AND A.END_DATE >= TO_DATE(IN_YMD, 'yyyymmdd')
                 AND A.END_DATE < TO_DATE(IN_YMD, 'yyyymmdd') + 1
                 AND TRUNC(A.END_DATE) = TO_DATE(IN_YMD, 'yyyymmdd')) LOOP
      --��ͬ���
      SELECT COUNT(*)
        INTO I_COUNT
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'htqc'
         AND CONT1 = T.ACTIVITY_NAME;
    
      IF I_COUNT > 0 AND T.CONS_SORT_CODE IN ('01', '02', '03') THEN
        V_DUAL_FLAG := 0;
        BEGIN
          INSERT INTO DW_S_CTRT_PRO_TMP
            ("APP_ID",
             "APP_NO",
             "ORG_NO",
             "CONS_NO",
             "CONS_NAME",
             "ELEC_ADDR",
             "TRADE_CODE",
             "VOLT_CODE",
             "ELEC_TYPE_CODE",
             "CONS_SORT_CODE",
             "TYPE_CODE",
             "SIGN_TYPE",
             "PROC_STATE",
             "ABORT_DATE",
             "DRAFT_BGN_DATE",
             "DRAFT_END_DATE",
             "SIGN_BGN_DATE",
             "SIGN_END_DATE",
             "END_DATE",
             "CONTRACT_NO",
             "CONTRACT_CAP")
          VALUES
            (T.APP_ID,
             T.APP_NO,
             T.ORG_NO,
             T.CONS_NO,
             T.CONS_NAME,
             T.ELEC_ADDR,
             T.TRADE_CODE,
             T.VOLT_CODE,
             T.ELEC_TYPE_CODE,
             T.CONS_SORT_CODE,
             T.BUSI_TYPE_CODE,
             T.SIGN_TYPE,
             NULL,
             NULL,
             T.BEGIN_DATE,
             T.DRAFT_END_DATE,
             NULL,
             NULL,
             T.END_DATE,
             T.CONTRACT_NO,
             T.CONTRACT_CAP);
        EXCEPTION
          WHEN DUP_VAL_ON_INDEX THEN
            V_DUAL_FLAG := 1;
        END;
        --���̻��˻�����ԭ���ٴγ��ֺ�ͬ��ݻ��ڣ���������ʱ��
        IF V_DUAL_FLAG = 1 THEN
          UPDATE DW_S_CTRT_PRO_TMP A
             SET A.DRAFT_BGN_DATE = T.BEGIN_DATE,
                 A.DRAFT_END_DATE = T.DRAFT_END_DATE
           WHERE A.APP_ID = T.APP_ID;
        END IF;
      END IF;
      --��ͬǩ��
      SELECT COUNT(*)
        INTO I_COUNT
        FROM GK_DW_CODE_TRANS
       WHERE CODE_TYPE = 'htqd'
         AND CONT1 = T.ACTIVITY_NAME;
      IF I_COUNT > 0 AND T.CONS_SORT_CODE IN ('01', '02', '03') THEN
        UPDATE DW_S_CTRT_PRO_TMP A
           SET A.SIGN_BGN_DATE = T.BEGIN_DATE,
               A.SIGN_END_DATE = T.DRAFT_END_DATE
         WHERE A.APP_ID = T.APP_ID;
      END IF;
      --����״̬
      UPDATE DW_S_CTRT_PRO_TMP A
         SET A.PROC_STATE = CASE
                              WHEN T.DATA_TYPE = 'com' THEN
                               DECODE(T.CUR_STATE, 'SUSPEND', '03', '01')
                              ELSE
                               DECODE(T.CUR_STATE, 'ABORT', '04', '02')
                            END
       WHERE APP_ID = T.APP_ID;
    END LOOP;
    --������ֹ
    UPDATE DW_S_CTRT_PRO_TMP A
       SET A.PROC_STATE = '04', A.ABORT_DATE = TO_DATE(IN_YMD, 'yyyymmdd')
     WHERE EXISTS (SELECT 1
              FROM SY_SG_INDYWF_ABORT B
             WHERE A.APP_NO = B.ITEM_KEY
               AND A.ORG_NO = B.DEPT_NAME
               AND B.ABORT_DATE >= TO_DATE(IN_YMD, 'yyyymmdd')
               AND B.ABORT_DATE < TO_DATE(IN_YMD, 'yyyymmdd') + 1
               AND TO_CHAR(B.ABORT_DATE, 'yyyymmdd') = IN_YMD);
  
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_CTRT_PRO_TMP  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_CTRT_PRO_TMP  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;*/
  /******************************
  #function: �¶ȵ�λ��ͬ�������ͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-04
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_CTRT_PRO_SIGN(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_CTRT_PRO_SIGN', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_S_CTRT_PRO_SIGN(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
      P_ETL_DW_S_CTRT_PRO_SIGN(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_S_CTRT_PRO_SIGN A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_S_CTRT_PRO_SIGN  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_CTRT_ARC_SIGN  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
    #function: �¶ȵ�λ��ͬ�������ͳ��  (��ȡ�洢����)
    #version:1.01
    #author:jkx 32078
    #createdate:2014-03-04
    #input:in_ymd  ͳ������
    #input:in_org_no  ���絥λ���
    #modifyexplain:
    1��ÿ��1�����ͳ��
  2�����һ����ʱ����ͬ������26���������25��24ʱ
  �磺��ǰΪ20141201��ʼ����ͳ�ƹ��̣�����Ĳ���Ϊ201411����Ҫͳ�Ƶ�����Ϊ20141026-20141126ֱ�ӵ�����
    �����е�STAT_YM��д201411
  3����������ʱ�䣬������ʵ�����еĿ�ʼʱ��Ϊ׼��
    *********************/
  PROCEDURE P_INS_DW_S_CTRT_PRO_SIGN(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    --����26��
    V_BEGIN_NEXT_MONTH DATE := TO_DATE(V_YM || '26', 'yyyymmdd');
  
    --����26��
    V_BEGIN_MONTH DATE := ADD_MONTHS(V_BEGIN_NEXT_MONTH, -1);
  
    --�¸���26��
    V_BEGIN_NEXT_MONTH_NEXT DATE := ADD_MONTHS(V_BEGIN_NEXT_MONTH, 1);
  
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_CTRT_ARC_SIGN', IN_YM);
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_S_CTRT_PRO_SIGN WHERE STAT_YM = V_YM;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_C_CONS_COMP
    --����ʵ�����ѡ���Ƿ���Ҫ��λѭ����һ���Ƿ��������Ҫ��
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      --���º�ͬ������Ϣ����
      INSERT INTO TMP_DW_S_CTRT_PRO_SIGN
        (ORG_NO,
         APP_NO,
         CONS_NO,
         TYPE_CODE,
         SIGN_TYPE,
         CONS_SORT_CODE,
         PS_VOLT_CODE,
         ELEC_TYPE_CODE,
         TRADE_CODE,
         STATUS_CODE,
         CONTRACT_ID,
         CTRT_CAP,
         SHOULD_SIGN_CTRT_CAP,
         SIGN_CAP)
        SELECT /*+parallel(w 4) (a 4) (b 4) (d 4)*/
         W.DEPT_NAME ORG_NO,
         W.ITEM_KEY APP_NO,
         NVL(B.CONS_NO, A.CONS_NO) CONS_NO,
         --��ͬ���ͣ���ѹ���õ��ͬ����ѹ���õ��ͬ����ʱ���õ��ͬ��ί��ת����Э�顢���ۺ�ͬ
         B.TYPE_CODE TYPE_CODE,
         --��ͬǩ������,��ǩ ��ǩ ��� ��ǩ ��ֹ
         B.OPER_TYPE_CODE SIGN_TYPE,
         A.CONS_SORT_CODE CONS_SORT_CODE,
         A.VOLT_CODE      PS_VOLT_CODE,
         A.ELEC_TYPE_CODE ELEC_TYPE_CODE,
         A.TRADE_CODE     TRADE_CODE,
         B.STATUS_CODE    STATUS_CODE,
         B.CONTRACT_ID    CONTRACT_ID,
         --�ϼƺ�ͬ����
         NVL(A.T_CONTRACT_CAP, 0) CTRT_CAP,
         --Ӧǩ��ͬ����
         NVL(A.CONTRACT_CAP, 0) SHOULD_SIGN_CTRT_CAP,
         --��ǩ����ͬ����
         DECODE(B.CONTRACT_ID, NULL, 0, A.CONTRACT_CAP) SIGN_CAP
          FROM WF_AMBER.INDYWF_INSTANCES_CUR W,
               SGPM.ARC_S_APP                A,
               SGPM.C_CUST_AGREEMENT         B
         WHERE W.ITEM_TYPE = '01'
           AND W.STATE = 'COMPLETE'
              ----����ɽ��ҵ����Ա����Ҫ��:������ֺ�ͬ����Ϊ�յ����
           AND W.PRO_NAME <> '112'
           AND W.END_DATE >= V_BEGIN_MONTH
           AND W.END_DATE < V_BEGIN_NEXT_MONTH
           AND W.ITEM_KEY = A.APP_NO
           AND W.DEPT_NAME LIKE TSS.ORG_NO || '%'
           AND W.DEPT_NAME = A.PS_ORG_NO
              --����ɽ����ѹ������û����Ͳ�ǩ����ͬ�ų�
           AND A.CONS_SORT_CODE IN ('01', '02')
           AND A.CONS_NO = B.CONS_NO(+)
           AND B.STATUS_CODE <> '4'
        UNION ALL
        SELECT /*+parallel(w 4) (a 4) (b 4) (c 4) (d 4)*/
         W.DEPT_NAME ORG_NO,
         W.ITEM_KEY APP_NO,
         NVL(B.CONS_NO, A.CONS_NO) CONS_NO,
         --��ͬ���ͣ���ѹ���õ��ͬ����ѹ���õ��ͬ����ʱ���õ��ͬ��ί��ת����Э�顢���ۺ�ͬ
         B.TYPE_CODE TYPE_CODE,
         --��ͬǩ������,��ǩ ��ǩ ��� ��ǩ ��ֹ
         B.OPER_TYPE_CODE SIGN_TYPE,
         NVL(C.CONS_SORT_CODE, A.CONS_SORT_CODE) CONS_SORT_CODE,
         NVL(C.VOLT_CODE, A.VOLT_CODE) PS_VOLT_CODE,
         NVL(C.ELEC_TYPE_CODE, A.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
         NVL(C.TRADE_CODE, A.TRADE_CODE) TRADE_CODE,
         B.STATUS_CODE STATUS_CODE,
         B.CONTRACT_ID CONTRACT_ID,
         --�ϼƺ�ͬ����
         NVL(A.T_CONTRACT_CAP, 0) CTRT_CAP,
         --Ӧǩ��ͬ����
         NVL(A.CONTRACT_CAP, 0) SHOULD_SIGN_CTRT_CAP,
         --��ǩ����ͬ����
         DECODE(B.CONTRACT_ID, NULL, 0, A.CONTRACT_CAP) SIGN_CAP
          FROM WF_AMBER.INDYWF_INSTANCES_CUR W,
               SGPM.ARC_S_APP                A,
               SGPM.C_CUST_AGREEMENT         B,
               SGPM.ARC_S_BATCH_CUST_APP     C
         WHERE W.ITEM_TYPE = '01'
           AND W.STATE = 'COMPLETE'
              --����ɽ��ҵ����Ա����Ҫ��:������ֺ�ͬ����Ϊ�յ����
           AND W.PRO_NAME = '112'
           AND W.END_DATE >= V_BEGIN_MONTH
           AND W.END_DATE < V_BEGIN_NEXT_MONTH
           AND W.ITEM_KEY = A.APP_NO
           AND W.DEPT_NAME LIKE TSS.ORG_NO || '%'
           AND W.DEPT_NAME = A.PS_ORG_NO
              --����ɽ����ѹ������û����Ͳ�ǩ����ͬ
           AND C.CONS_SORT_CODE IN ('01', '02')
           AND A.APP_ID = C.APP_ID
           AND C.CONS_NO = B.CONS_NO(+)
           AND A.CONS_SORT_CODE IN ('01', '02')
           AND B.STATUS_CODE <> '4';
    
      --���µ��ڵĺ�ͬ������
      INSERT INTO TMP_DW_S_CTRT_PRO_SIGN_NEXT
        (ORG_NO,
         CONS_NO,
         TYPE_CODE,
         SIGN_TYPE,
         CONS_SORT_CODE,
         PS_VOLT_CODE,
         ELEC_TYPE_CODE,
         TRADE_CODE,
         STATUS_CODE)
        SELECT /*+parallel(w 4) (a 4) (b 4) (d 4)*/
         A.ORG_NO  ORG_NO,
         A.CONS_NO CONS_NO,
         --��ͬ���ͣ���ѹ���õ��ͬ����ѹ���õ��ͬ����ʱ���õ��ͬ��ί��ת����Э�顢���ۺ�ͬ
         B.TYPE_CODE TYPE_CODE,
         --��ͬǩ������,��ǩ ��ǩ ��� ��ǩ ��ֹ
         B.OPER_TYPE_CODE SIGN_TYPE,
         A.CONS_SORT_CODE CONS_SORT_CODE,
         A.VOLT_CODE      PS_VOLT_CODE,
         A.ELEC_TYPE_CODE ELEC_TYPE_CODE,
         A.TRADE_CODE     TRADE_CODE,
         B.STATUS_CODE    STATUS_CODE
          FROM SY_SG_C_CONS A, SY_SG_C_CUST_AGREEMENT B
         WHERE A.CONS_NO = B.CONS_NO
           AND A.STATUS_CODE <> '9'
           AND A.CONS_SORT_CODE IN ('01', '02')
           AND B.END_DATE >= V_BEGIN_NEXT_MONTH
           AND B.END_DATE < V_BEGIN_NEXT_MONTH_NEXT
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.STATUS_CODE <> '4';
    
      INSERT INTO DW_S_CTRT_PRO_SIGN
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         TYPE_CODE,
         SIGN_TYPE,
         CONS_SORT_CODE,
         PS_VOLT_CODE,
         ELEC_TYPE_CODE,
         TRADE_CODE,
         NEXT_DUE_NUM,
         CTRT_CAP,
         SHOULDSIGN_NUM,
         SIGN_NUM,
         INTIME_SIGN_CTRT_NUM,
         NOTSIGN_NUM,
         SHOULD_SIGN_CTRT_CAP,
         SIGN_CAP,
         NOTSIGN_CAP,
         SIGN_ODUE_NUM,
         SIGN_ODUE_CAP,
         NOTSIGN_ODUE_NUM,
         NOTSIGN_ODUE_CAP,
         SHOULD_SIGN_CC,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '' PS_BUSI_AREA_CODE,
               V_YM,
               PKG_GK_PUBLIC.F_TRANS_CODE('CONT_TYPE_CODE', TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('CONTRACT_OPER_TYPE_CODE',
                                          SIGN_TYPE),
               PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', PS_VOLT_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
               SUM(NEXT_DUE_NUM),
               SUM(CTRT_CAP),
               SUM(SHOULDSIGN_NUM),
               SUM(SIGN_NUM),
               SUM(INTIME_SIGN_CTRT_NUM),
               SUM(SHOULDSIGN_NUM) - SUM(SIGN_NUM) NOTSIGN_NUM,
               SUM(CTRT_CAP),
               SUM(SIGN_CAP),
               SUM(CTRT_CAP) - SUM(SIGN_CAP) NOTSIGN_CAP,
               SUM(SIGN_ODUE_NUM),
               SUM(SIGN_ODUE_CAP),
               SUM(NOTSIGN_ODUE_NUM),
               SUM(NOTSIGN_ODUE_CAP),
               SUM(SHOULD_SIGN_CC),
               SYSDATE
          FROM (SELECT /*+parallel(t 4) (s 4)*/
                 T.ORG_NO,
                 T.TYPE_CODE,
                 T.SIGN_TYPE,
                 T.CONS_SORT_CODE,
                 T.PS_VOLT_CODE,
                 T.ELEC_TYPE_CODE,
                 T.TRADE_CODE,
                 --���µ��ں�ͬ��
                 COUNT(S.CONS_NO) NEXT_DUE_NUM,
                 --�ϼƺ�ͬ����
                 SUM(T.CTRT_CAP) CTRT_CAP,
                 --Ӧǩ����ͬ��
                 COUNT(T.CONS_NO) SHOULDSIGN_NUM,
                 --��ǩ����ͬ�� 
                 SUM(DECODE(T.CONS_SORT_CODE,
                            '03',
                            1,
                            '00',
                            1,
                            DECODE(T.CONTRACT_ID, NULL, 0, 1))) SIGN_NUM,
                 --��ʱǩ����ͬ�� 
                 SUM(DECODE(T.CONS_SORT_CODE,
                            '03',
                            1,
                            '00',
                            1,
                            DECODE(T.CONTRACT_ID, NULL, 0, 1))) INTIME_SIGN_CTRT_NUM,
                 --Ӧǩ��ͬ����
                 SUM(T.SHOULD_SIGN_CTRT_CAP) SHOULD_SIGN_CTRT_CAP,
                 --��ǩ����ͬ����
                 SUM(T.SIGN_CAP) SIGN_CAP,
                 --����ɽ��ҵ����Ա��⣬����ǩ����ͬ���޴˸���ӦΪ0
                 0 SIGN_ODUE_NUM,
                 --���ڼ춨��ͬ����
                 0 SIGN_ODUE_CAP,
                 --����δǩ����ͬ��
                 0 NOTSIGN_ODUE_NUM,
                 --����δǩ����ͬ����
                 0 NOTSIGN_ODUE_CAP,
                 ---Ӧǩ�����õ��ͬ���õ继��,����ɽ��ҵ����Ա��⣺Ӧǩ�����õ��ͬ���õ继��Ӧ�ø�Ӧǩ����ͬ��һ��
                 COUNT(T.CONS_NO) SHOULD_SIGN_CC
                  FROM TMP_DW_S_CTRT_PRO_SIGN      T,
                       TMP_DW_S_CTRT_PRO_SIGN_NEXT S
                 WHERE T.ORG_NO = S.ORG_NO(+)
                   AND T.TYPE_CODE = S.TYPE_CODE(+)
                   AND T.SIGN_TYPE = S.SIGN_TYPE(+)
                   AND T.CONS_SORT_CODE = S.CONS_SORT_CODE(+)
                   AND T.PS_VOLT_CODE = S.PS_VOLT_CODE(+)
                   AND T.ELEC_TYPE_CODE = S.ELEC_TYPE_CODE(+)
                   AND T.TRADE_CODE = S.TRADE_CODE(+)
                 GROUP BY T.ORG_NO,
                          T.TYPE_CODE,
                          T.SIGN_TYPE,
                          T.CONS_SORT_CODE,
                          T.PS_VOLT_CODE,
                          T.ELEC_TYPE_CODE,
                          T.TRADE_CODE)
         GROUP BY ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('CONT_TYPE_CODE', TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('CONTRACT_OPER_TYPE_CODE',
                                             SIGN_TYPE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                             CONS_SORT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', PS_VOLT_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             ELEC_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE);
    
      COMMIT;
    END LOOP;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_CTRT_pro_SIGN  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_CTRT_pro_SIGN  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /******************************
  #function: �¶ȵ�λ��ͬ�������ͳ�� (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-04
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_CTRT_PRO_SIGN(IN_YM    VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_CTRT_ARC_SIGN', IN_YM);
    V_YM      := SUBSTR(IN_YM, 1, 6);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_CTRT_PRO_SIGN X WHERE X.STAT_YM = V_YM;
  
    INSERT INTO SY_OM_DW_S_CTRT_PRO_SIGN
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       TYPE_CODE,
       SIGN_TYPE,
       CONS_SORT_CODE,
       PS_VOLT_CODE,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       NEXT_DUE_NUM,
       CTRT_CAP,
       SHOULDSIGN_NUM,
       SIGN_NUM,
       INTIME_SIGN_CTRT_NUM,
       NOTSIGN_NUM,
       SHOULD_SIGN_CTRT_CAP,
       SIGN_CAP,
       NOTSIGN_CAP,
       SIGN_ODUE_NUM,
       SIGN_ODUE_CAP,
       NOTSIGN_ODUE_NUM,
       NOTSIGN_ODUE_CAP,
       SHOULD_SIGN_CC,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       TYPE_CODE,
       SIGN_TYPE,
       CONS_SORT_CODE,
       PS_VOLT_CODE,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       NEXT_DUE_NUM,
       CTRT_CAP,
       SHOULDSIGN_NUM,
       SIGN_NUM,
       INTIME_SIGN_CTRT_NUM,
       NOTSIGN_NUM,
       SHOULD_SIGN_CTRT_CAP,
       SIGN_CAP,
       NOTSIGN_CAP,
       SIGN_ODUE_NUM,
       SIGN_ODUE_CAP,
       NOTSIGN_ODUE_NUM,
       NOTSIGN_ODUE_CAP,
       SHOULD_SIGN_CC,
       TIME_STAMP
        FROM DW_S_CTRT_PRO_SIGN A, SY_OM_DW_O_ORG_CONTRAST B
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_CTRT_ARC_SIGN  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_CTRT_ARC_SIGN  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
    #function: �¶���ʱ�õ糬���û���ϸ  (��ڴ洢����)
    #version:1.01
    #author:jkx 32078
    #createdate:2014-03-05
    #input:in_ym  ͳ������
    #input:in_org_no  ���絥λ���
    #modifyexplain:
    1������ͳ�Ƹ��㼶��λ��ʱ�õ��ѳ��ڵ��û�ͳ�������
  2��ÿ��1�����ͳ��
  3�����һ����ʱ����ͬ������26���������25��24ʱ��ͳ��Ϊ��������
  �磺��ǰΪ20141201��ʼ����ͳ�ƹ��̣�����Ĳ���Ϊ201411��Ҫͳ�Ƶ�����Ϊ20141026-20141126ֱ�ӵ�����
    �����е�STAT_YM��д201411
  4���ų��õ����Ϊ��000�����ˡ����Ĺ����Լ���ֹ
    *********************/
  PROCEDURE P_ENT_DW_S_TEMP_PQ_DET(IN_YM    VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_TEMP_PQ_DET', V_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_S_TEMP_PQ_DET(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
      P_ETL_DW_S_TEMP_PQ_DET(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_S_TEMP_PQ_DET A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_S_TEMP_PQ_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_TEMP_PQ_DET  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �¶���ʱ�õ糬���û���ϸ  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_TEMP_PQ_DET(IN_YM    VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(6);
    V_BEG_DATE   DATE;
    V_END_DATE   DATE;
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID  := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_CONS_COMP', IN_YM);
    V_YM       := SUBSTR(IN_YM, 1, 6);
    V_END_DATE := TO_DATE(V_YM || '26', 'yyyymmdd');
    V_BEG_DATE := ADD_MONTHS(V_END_DATE, -1);
  
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_S_TEMP_PQ_DET X WHERE X.STAT_YM = V_YM;
  
    INSERT INTO DW_S_TEMP_PQ_DET
      (DATA_ID,
       PRO_ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       ORG_NO,
       CONS_NO,
       CONS_NAME,
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
       BUILD_DATE,
       PS_DATE,
       CANCEL_DATE,
       STATUS_CODE,
       RRIO_CODE,
       MR_SECT_NO,
       TMP_FLAG,
       TMP_DATE,
       TIME_STAMP,
       CONS_ID)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             PS_BUSI_AREA_CODE,
             STAT_YM,
             ORG_NO,
             MAX(CONS_NO),
             MAX(CONS_NAME),
             PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
             MAX(ELEC_ADDR),
             PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
             SUM(CONTRACT_CAP),
             SUM(RUN_CAP),
             MAX(SHIFT_NO),
             MAX(LODE_ATTR_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', PS_VOLT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                        HEC_TRADE_CODE),
             MAX(BUILD_DATE),
             MAX(PS_DATE),
             MAX(CANCEL_DATE),
             MAX(STATUS_CODE),
             MAX(RRIO_CODE),
             MAX(MR_SECT_NO),
             MAX(TMP_FLAG),
             MAX(TMP_DATE),
             SYSDATE,
             MAX(CONS_ID)
        FROM (SELECT '' PS_BUSI_AREA_CODE,
                     V_YM STAT_YM,
                     ORG_NO,
                     CONS_NO,
                     CONS_NAME,
                     CONS_SORT_CODE,
                     ELEC_ADDR,
                     TRADE_CODE,
                     ELEC_TYPE_CODE,
                     CONTRACT_CAP,
                     RUN_CAP,
                     SHIFT_NO,
                     LODE_ATTR_CODE,
                     VOLT_CODE PS_VOLT_CODE,
                     HEC_INDUSTRY_CODE HEC_TRADE_CODE,
                     BUILD_DATE,
                     PS_DATE,
                     CANCEL_DATE,
                     STATUS_CODE,
                     RRIO_CODE,
                     MR_SECT_NO,
                     TMP_FLAG,
                     TMP_DATE,
                     CONS_ID
                FROM SY_SG_C_CONS T
               WHERE T.STATUS_CODE <> '9'
                 AND T.TMP_FLAG <> '03'
                 AND T.ELEC_TYPE_CODE <> '000'
                 AND T.TMP_DATE BETWEEN V_BEG_DATE AND V_END_DATE)
       GROUP BY PS_BUSI_AREA_CODE,
                STAT_YM,
                ORG_NO,
                PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', PS_VOLT_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                           HEC_TRADE_CODE);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_TEMP_PQ_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_TEMP_PQ_DET  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �¶���ʱ�õ糬���û���ϸ (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_TEMP_PQ_DET(IN_YM    VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_TEMP_PQ_DET', IN_YM);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_TEMP_PQ_DET X WHERE X.STAT_YM = V_YM;
  
    INSERT INTO SY_OM_DW_S_TEMP_PQ_DET
      (DATA_ID,
       PRO_ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       ORG_NO,
       CONS_NO,
       CONS_NAME,
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
       BUILD_DATE,
       PS_DATE,
       CANCEL_DATE,
       STATUS_CODE,
       RRIO_CODE,
       MR_SECT_NO,
       TMP_FLAG,
       TMP_DATE,
       TIME_STAMP,
       CONS_ID)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       ORG_NO,
       CONS_NO,
       CONS_NAME,
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
       BUILD_DATE,
       PS_DATE,
       CANCEL_DATE,
       STATUS_CODE,
       RRIO_CODE,
       MR_SECT_NO,
       TMP_FLAG,
       TMP_DATE,
       TIME_STAMP,
       CONS_ID
        FROM DW_S_TEMP_PQ_DET A, SY_OM_DW_O_ORG_CONTRAST B
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_TEMP_PQ_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_TEMP_PQ_DET  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
    #function: �¶���ʱ�õ糬�����ͳ��  (��ڴ洢����)
    #version:1.01
    #author:jkx 32078
    #createdate:2014-03-05
    #input:in_ym  ͳ������
    #input:in_org_no  ���絥λ���
    #modifyexplain:
    1������ͳ�Ƹ��㼶��λ��ʱ�õ��ѳ��ڵ��û����������
  2��ÿ��1�����ͳ��
  3�����һ����ʱ����ͬ������26���������25��24ʱ��ͳ��Ϊ��������
  �磺��ǰΪ20141201��ʼ����ͳ�ƹ��̣�����Ĳ���Ϊ201411��Ҫͳ�Ƶ�����Ϊ20141026-20141126ֱ�ӵ�����
    �����е�STAT_YM��д201411
  4���ų��õ����Ϊ��000�����ˡ����Ĺ����Լ���ֹ
    *********************/
  PROCEDURE P_ENT_DW_S_TEMP_PQ_STAT(IN_YM    VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_TEMP_PQ_STAT', IN_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_S_TEMP_PQ_STAT(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
      P_ETL_DW_S_TEMP_PQ_STAT(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_S_TEMP_PQ_STAT A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_S_TEMP_PQ_STAT  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_TEMP_PQ_STAT  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �¶���ʱ�õ糬�����ͳ��  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_TEMP_PQ_STAT(IN_YM    VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(6);
    V_YMD        DATE;
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_TEMP_PQ_STAT', IN_YM);
    V_YM      := SUBSTR(IN_YM, 1, 6);
    V_YMD     := TO_DATE(V_YM || '26', 'YYYYMMDD');
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_S_TEMP_PQ_STAT X WHERE X.STAT_YM = V_YM;
  
    INSERT INTO DW_S_TEMP_PQ_STAT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       PS_VOLT_CODE,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       OVER_NPER,
       OVER_CC,
       OVER_CAP,
       TMP_FLAG,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             ORG_NO,
             PS_BUSI_AREA_CODE,
             STAT_YM,
             PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', PS_VOLT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
             OVER_NPER,
             SUM(OVER_CC),
             SUM(OVER_CAP),
             PKG_GK_PUBLIC.F_TRANS_CODE('TMP_FLAG', TMP_FLAG),
             SYSDATE
        FROM (SELECT ORG_NO,
                     '' PS_BUSI_AREA_CODE,
                     V_YM STAT_YM,
                     CONS_SORT_CODE,
                     VOLT_CODE PS_VOLT_CODE,
                     ELEC_TYPE_CODE,
                     TRADE_CODE,
                     CASE
                       WHEN V_YMD - T.TMP_DATE > 0 AND
                            V_YMD - T.TMP_DATE <= 180 THEN
                        '01'
                       WHEN V_YMD - T.TMP_DATE > 180 AND
                            V_YMD - T.TMP_DATE <= 270 THEN
                        '02'
                       WHEN V_YMD - T.TMP_DATE > 270 AND
                            V_YMD - T.TMP_DATE <= 365 THEN
                        '03'
                       WHEN V_YMD - T.TMP_DATE > 365 AND
                            V_YMD - T.TMP_DATE <= 700 THEN
                        '04'
                       ELSE
                        '05'
                     END OVER_NPER,
                     COUNT(1) OVER_CC,
                     SUM(CONTRACT_CAP) OVER_CAP,
                     TMP_FLAG
                FROM DW_S_TEMP_PQ_DET T
               WHERE T.STAT_YM = V_YM
               GROUP BY ORG_NO,
                        CONS_SORT_CODE,
                        VOLT_CODE,
                        ELEC_TYPE_CODE,
                        TRADE_CODE,
                        CASE
                          WHEN V_YMD - T.TMP_DATE > 0 AND
                               V_YMD - T.TMP_DATE <= 180 THEN
                           '01'
                          WHEN V_YMD - T.TMP_DATE > 180 AND
                               V_YMD - T.TMP_DATE <= 270 THEN
                           '02'
                          WHEN V_YMD - T.TMP_DATE > 270 AND
                               V_YMD - T.TMP_DATE <= 365 THEN
                           '03'
                          WHEN V_YMD - T.TMP_DATE > 365 AND
                               V_YMD - T.TMP_DATE <= 700 THEN
                           '04'
                          ELSE
                           '05'
                        END,
                        TMP_FLAG)
       GROUP BY ORG_NO,
                PS_BUSI_AREA_CODE,
                STAT_YM,
                PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', PS_VOLT_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('TMP_FLAG', TMP_FLAG),
                OVER_NPER;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_TEMP_PQ_STAT  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_TEMP_PQ_DET  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /******************************
  #function: �¶���ʱ�õ糬�����ͳ�� (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_TEMP_PQ_STAT(IN_YM    VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_TEMP_PQ_STAT', IN_YM);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_TEMP_PQ_STAT X WHERE X.STAT_YM = V_YM;
  
    INSERT INTO SY_OM_DW_S_TEMP_PQ_STAT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       PS_VOLT_CODE,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       OVER_CC,
       OVER_NPER,
       OVER_CAP,
       TMP_FLAG,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       PS_VOLT_CODE,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       OVER_CC,
       OVER_NPER,
       OVER_CAP,
       TMP_FLAG,
       TIME_STAMP
        FROM DW_S_TEMP_PQ_STAT A, SY_OM_DW_O_ORG_CONTRAST B
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_TEMP_PQ_STAT  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_TEMP_PQ_DET  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �¶���ʱ�������ͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ymd  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  1������ͳ�Ƹ��㼶��λ��ʱ���ݹ鵵���������������
  2��ÿ��1�����ͳ��
  3�����һ����ʱ����ͬ������26���������25��24ʱ��ͳ��Ϊ��������
  �磺��ǰΪ20141201��ʼ����ͳ�ƹ��̣�����Ĳ���Ϊ201411����Ҫͳ�Ƶ�����Ϊ20141026-20141126ֱ�ӵ�����
  �����е�STAT_YM��д201411
  4���ų��õ����Ϊ��000�����ˡ����Ĺ���
  *********************/
  PROCEDURE P_ENT_DW_S_TEMP_REDUCE_CAP(IN_YM    VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_TEMP_REDUCE_CAP', IN_YM);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_S_TEMP_REDUCE_CAP(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_CONS_COMP��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_CONS_COMP��
      P_ETL_DW_S_TEMP_REDUCE_CAP(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_S_TEMP_REDUCE_CAP A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_S_TEMP_REDUCE_CAP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_TEMP_REDUCE_CAP  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �¶���ʱ�������ͳ��  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  #����־ǿ��ͨ��Ŀǰֻͳ�Ƽ��ݹ鵵���
  *********************/
  PROCEDURE P_INS_DW_S_TEMP_REDUCE_CAP(IN_YM    VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(6);
    V_BEG_DATE   DATE;
    V_END_DATE   DATE;
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID  := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_TEMP_REDUCE_CAP',
                                         IN_YM);
    V_YM       := SUBSTR(IN_YM, 1, 6);
    V_END_DATE := TO_DATE(V_YM || '26', 'yyyymmdd');
    V_BEG_DATE := ADD_MONTHS(V_END_DATE, -1);
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM DW_S_TEMP_REDUCE_CAP X WHERE X.STAT_YM = V_YM;
  
    INSERT INTO DW_S_TEMP_REDUCE_CAP
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       PS_VOLT_CODE,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       TEMP_REDUCE_CC,
       TEMP_REDUCE_CAP,
       ORGN_RUN_CAP,
       CTRT_CAP,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             ORG_NO,
             PS_BUSI_AREA_CODE,
             STAT_YM,
             PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', PS_VOLT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE),
             SUM(TEMP_REDUCE_CC),
             SUM(TEMP_REDUCE_CAP),
             SUM(ORGN_RUN_CAP),
             SUM(CTRT_CAP),
             SYSDATE
        FROM (SELECT /*PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       V_PRO_ORG_NO,*/
               B.DEPT_NAME ORG_NO,
               '' PS_BUSI_AREA_CODE,
               V_YM STAT_YM,
               A.CONS_SORT_CODE,
               A.VOLT_CODE PS_VOLT_CODE,
               A.ELEC_TYPE_CODE,
               A.TRADE_CODE,
               COUNT(1) TEMP_REDUCE_CC,
               SUM(ABS(A.APP_RUN_CAP)) TEMP_REDUCE_CAP,
               SUM(A.ORGN_RUN_CAP) ORGN_RUN_CAP,
               SUM(A.ORGN_CONTRACT_CAP) CTRT_CAP
                FROM SY_SG_ARC_S_APP A, SY_SG_INDYWF_INSTANCES_CUR B
               WHERE B.ITEM_TYPE = '01'
                 AND B.ITEM_KEY = A.APP_NO
                 AND B.PRO_NAME = '201'
                 AND A.PERMENANT_REDUCE_FLAG = '02'
                 AND NVL(A.ELEC_TYPE_CODE, '1') <> '000'
                 AND B.END_DATE BETWEEN V_BEG_DATE AND V_END_DATE
               GROUP BY B.DEPT_NAME,
                        A.CONS_SORT_CODE,
                        A.VOLT_CODE,
                        A.ELEC_TYPE_CODE,
                        A.TRADE_CODE)
       GROUP BY ORG_NO,
                PS_BUSI_AREA_CODE,
                STAT_YM,
                PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', CONS_SORT_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', PS_VOLT_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', ELEC_TYPE_CODE),
                PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', TRADE_CODE);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_TEMP_REDUCE_CAP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_TEMP_REDUCE_CAP  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /******************************
  #function: �¶���ʱ�������ͳ�� (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-05
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_TEMP_REDUCE_CAP(IN_YM    VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_TEMP_REDUCE_CAP', IN_YM);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_TEMP_REDUCE_CAP X WHERE X.STAT_YM = V_YM;
  
    INSERT INTO SY_OM_DW_S_TEMP_REDUCE_CAP
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       PS_VOLT_CODE,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       TEMP_REDUCE_CC,
       TEMP_REDUCE_CAP,
       ORGN_RUN_CAP,
       CTRT_CAP,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       CONS_SORT_CODE,
       PS_VOLT_CODE,
       ELEC_TYPE_CODE,
       TRADE_CODE,
       TEMP_REDUCE_CC,
       TEMP_REDUCE_CAP,
       ORGN_RUN_CAP,
       CTRT_CAP,
       TIME_STAMP
        FROM DW_S_TEMP_REDUCE_CAP A, SY_OM_DW_O_ORG_CONTRAST B
      --����ʱ��ɸѡ����
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_TEMP_REDUCE_CAP  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_TEMP_REDUCE_CAP  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /**
    �������ƣ�P_ENT_DW_S_SAFETY_CHG/�հ�ȫ��������ͳ����ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ��������������ͳ�ư�ȫ�������������Ϣ,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����ճ�ȡ,�������
    ��θ�ʽ��I_DATA ��YYYYMMDD
    �޸���:
    �޸�����:
  **/
  PROCEDURE P_ENT_DW_S_SAFETY_CHG(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_SAFETY_CHG', V_YMD);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_S_SAFETY_CHG��
    P_INS_DW_S_SAFETY_CHG(V_YMD, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_S_SAFETY_CHG��ȡ���ݲ��뵽�����OMAC�û��µ�DW_S_SAFETY_CHG��
      P_ETL_DW_S_SAFETY_CHG(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_S_SAFETY_CHG A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_S_SAFETY_CHG  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_SAFETY_CHG  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_S_SAFETY_CHG(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��ʼ��¼��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_SAFETY_CHG', V_YMD);
  
    DELETE FROM DW_S_SAFETY_CHG WHERE STAT_YMD = V_YMD;
  
    INSERT INTO TMP_DW_S_SAFETY_CHG
      (CONS_NO,
       CHECK_FLAG,
       SAFETY_NUM,
       IMPR_NOTIFY_NUM,
       COMP_NUM,
       REMA_SAFETY_NUM)
      SELECT CONS_ID,
             CHECK_FLAG,
             SAFETY_NUM,
             IMPR_NOTIFY_NUM,
             COMP_NUM,
             CASE
               WHEN SAFETY_NUM - COMP_NUM < 0 THEN
                0
               ELSE
                SAFETY_NUM - COMP_NUM
             END
        FROM (SELECT /*+parallel(A 4) parallel(B 4) parallel(C 4) parallel(D 4)*/
               A.CONS_ID,
               MAX(DECODE(B.ID, NULL, '0', '1')) CHECK_FLAG,
               COUNT(C.ID) SAFETY_NUM,
               SUM(DECODE(NVL(D.NOTIFY_FLAG, '0'), '1', 1, 0)) IMPR_NOTIFY_NUM,
               SUM(CASE
                     WHEN D.STATUS_CODE = '1' AND
                          TO_CHAR(D.FINISH_DATE, 'YYYYMMDD') = V_YMD THEN
                      1
                     ELSE
                      0
                   END) COMP_NUM
                FROM SY_SG_S_CHK_PLAN_DET A,
                     SY_SG_S_INSPECT_RSLT B,
                     SY_SG_S_SAFETY_BUG   C,
                     SY_SG_S_IMPROVE      D,
                     SY_SG_S_CHK_PLAN     E
               WHERE A.PLAN_NO = E.PLAN_NO
                 AND A.DTL_ID = B.DTL_ID(+)
                 AND B.ID = C.ID2(+)
                 AND C.ID = D.ID2(+)
                 AND A.CHK_DATE = V_YMD
                 AND A.PLAN_STATUS_CODE <> '11' --��ȡ��
               GROUP BY A.CONS_ID);
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_S_SAFETY_CHG
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YMD,
         PS_BUSI_AREA_CODE,
         PS_VOLT_CODE,
         TRADE_CODE,
         CONS_SORT_CODE,
         ELEC_TYPE_CODE,
         USER_TYPE,
         CC,
         DUAL_PS_CC,
         SECUREPS_CC,
         PLAN_CHECK_NUM,
         CHECK_NUM,
         ACCU_SAFETY_NUM,
         ACCU_ISSUE_IMPR_NOTIFY,
         COMP_CHG_NUM,
         REMA_SAFETY_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               V_YMD,
               '',
               PS_VOLT_CODE,
               TRADE_CODE,
               CONS_SORT_CODE,
               ELEC_TYPE_CODE,
               USER_TYPE,
               SUM(CC),
               SUM(DUAL_PS_CC),
               SUM(SECUREPS_CC),
               SUM(PLAN_CHECK_NUM),
               SUM(CHECK_NUM),
               SUM(ACCU_SAFETY_NUM),
               SUM(ACCU_ISSUE_IMPR_NOTIFY),
               SUM(COMP_CHG_NUM),
               SUM(REMA_SAFETY_NUM),
               SYSDATE
          FROM (SELECT ORG_NO,
                       PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE) PS_VOLT_CODE,
                       PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                                  TRADE_CODE) TRADE_CODE,
                       PKG_GK_PUBLIC.F_TRANS_CODE('CONS_SORT_CODE',
                                                  CONS_SORT_CODE) CONS_SORT_CODE,
                       PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                                  ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                       PKG_GK_PUBLIC.F_TRANS_CODE('USER_TYPE', USER_TYPE) USER_TYPE,
                       SUM(CC) CC,
                       SUM(DUAL_PS_CC) DUAL_PS_CC,
                       SUM(SECUREPS_CC) SECUREPS_CC,
                       SUM(PLAN_CHECK_NUM) PLAN_CHECK_NUM,
                       SUM(CHECK_NUM) CHECK_NUM,
                       SUM(ACCU_SAFETY_NUM) ACCU_SAFETY_NUM,
                       SUM(ACCU_ISSUE_IMPR_NOTIFY) ACCU_ISSUE_IMPR_NOTIFY,
                       SUM(COMP_CHG_NUM) COMP_CHG_NUM,
                       SUM(REMA_SAFETY_NUM) REMA_SAFETY_NUM
                  FROM (SELECT F.ORG_NO,
                               F.VOLT_CODE,
                               F.TRADE_CODE,
                               F.CONS_SORT_CODE,
                               F.ELEC_TYPE_CODE,
                               F.USER_TYPE,
                               COUNT(DISTINCT F.CONS_NO) CC,
                               SUM(DECODE(F.PS_NUM_CODE, 2, 1, 0)) DUAL_PS_CC,
                               SUM(DECODE(NVL(F.PS_ATTR, 0), 0, 0, 1)) SECUREPS_CC,
                               SUM(DECODE(T.CONS_NO, NULL, 0, 1)) PLAN_CHECK_NUM,
                               SUM(DECODE(T.CHECK_FLAG, '1', 1, 0)) CHECK_NUM,
                               SUM(NVL(T.SAFETY_NUM, 0)) ACCU_SAFETY_NUM,
                               SUM(NVL(T.IMPR_NOTIFY_NUM, 0)) ACCU_ISSUE_IMPR_NOTIFY,
                               SUM(NVL(T.COMP_NUM, 0)) COMP_CHG_NUM,
                               SUM(NVL(T.REMA_SAFETY_NUM, 0)) REMA_SAFETY_NUM
                          FROM (SELECT /*+parallel(A 4) (B,4) (C,4) (E,4)*/
                                 A.ORG_NO,
                                 A.CONS_ID,
                                 A.CONS_NO,
                                 A.VOLT_CODE,
                                 A.TRADE_CODE,
                                 A.CONS_SORT_CODE,
                                 A.ELEC_TYPE_CODE,
                                 C.PS_NUM_CODE PS_NUM_CODE,
                                 COUNT(B.CONS_ID) PS_ATTR,
                                 DECODE(E.CUST_NO,
                                        NULL,
                                        '03',
                                        DECODE(E.HR_TYPE_CODE, NULL, '02', '01')) USER_TYPE
                                  FROM SY_SG_C_CONS              A,
                                       SY_SG_C_PS                B,
                                       SY_SG_C_SP                C,
                                       SY_SG_S_HR_IMPORTANT_CUST E,
                                       SY_SG_C_CUST              CC
                                 WHERE CC.CUST_NO = E.CUST_NO
                                   AND CC.CUST_ID = A.CUST_ID
                                   AND A.CONS_ID = B.CONS_ID(+)
                                   AND A.CONS_ID = C.CONS_ID(+)
                                      --���Ա�����Դ���ָ�Σ�û�
                                      --AND B.PS_ATTR = '30'
                                   AND A.ORG_NO = B.ORG_NO(+)
                                   AND A.ORG_NO LIKE TSS.ORG_NO || '%'
                                --AND CC.ORG_NO LIKE TSS.ORG_NO || '%'
                                 GROUP BY A.ORG_NO,
                                          A.CONS_ID,
                                          A.CONS_NO,
                                          A.VOLT_CODE,
                                          A.TRADE_CODE,
                                          A.CONS_SORT_CODE,
                                          A.ELEC_TYPE_CODE,
                                          E.CUST_NO,
                                          E.HR_TYPE_CODE,
                                          C.PS_NUM_CODE) F,
                               TMP_DW_S_SAFETY_CHG T
                         WHERE F.CONS_ID = T.CONS_NO(+)
                         GROUP BY F.ORG_NO,
                                  F.VOLT_CODE,
                                  F.TRADE_CODE,
                                  F.CONS_SORT_CODE,
                                  F.ELEC_TYPE_CODE,
                                  F.USER_TYPE)
                 GROUP BY ORG_NO,
                          PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', VOLT_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                                     TRADE_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('CONS_SORT_CODE',
                                                     CONS_SORT_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                                     ELEC_TYPE_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('USER_TYPE', USER_TYPE))
         GROUP BY ORG_NO,
                  PS_VOLT_CODE,
                  TRADE_CODE,
                  CONS_SORT_CODE,
                  ELEC_TYPE_CODE,
                  USER_TYPE;
    
    END LOOP;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_SAFETY_CHG  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_SAFETY_CHG  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_S_SAFETY_CHG(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_SAFETY_CHG', I_DATA);
    V_YMD     := SUBSTR(I_DATA, 1, 8);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_SAFETY_CHG X WHERE X.STAT_YMD = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
  
    INSERT INTO SY_OM_DW_S_SAFETY_CHG
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_YMD,
       PS_BUSI_AREA_CODE,
       PS_VOLT_CODE,
       TRADE_CODE,
       CONS_SORT_CODE,
       ELEC_TYPE_CODE,
       USER_TYPE,
       CC,
       DUAL_PS_CC,
       SECUREPS_CC,
       PLAN_CHECK_NUM,
       CHECK_NUM,
       ACCU_SAFETY_NUM,
       ACCU_ISSUE_IMPR_NOTIFY,
       COMP_CHG_NUM,
       REMA_SAFETY_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       STAT_YMD,
       B.BUSI_AREA_STAT_CODE,
       PS_VOLT_CODE,
       TRADE_CODE,
       CONS_SORT_CODE,
       ELEC_TYPE_CODE,
       USER_TYPE,
       CC,
       DUAL_PS_CC,
       SECUREPS_CC,
       PLAN_CHECK_NUM,
       CHECK_NUM,
       ACCU_SAFETY_NUM,
       ACCU_ISSUE_IMPR_NOTIFY,
       COMP_CHG_NUM,
       REMA_SAFETY_NUM,
       TIME_STAMP
        FROM DW_S_SAFETY_CHG A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YMD = V_YMD
         AND V_YMD BETWEEN B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_SAFETY_CHG  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_SAFETY_CHG  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /**
    �������ƣ�P_ENT_DW_S_CHECK_COMPL/�¶��õ���ͳ����ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ��������������ͳ���õ���������,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ,����1�����
    ��θ�ʽ��I_DATA ��YYYYMMDD
    �޸���:
    �޸�����:
  **/
  PROCEDURE P_ENT_DW_S_CHECK_COMPL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_CHECK_COMPL', V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_S_CHECK_COMPL��
    P_INS_DW_S_CHECK_COMPL(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_S_CHECK_COMPL��ȡ���ݲ��뵽�����OMAC�û��µ�DW_S_CHECK_COMPL��
      P_ETL_DW_S_CHECK_COMPL(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_S_CHECK_COMPL A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_S_CHECK_COMPL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_CHECK_COMPL  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_S_CHECK_COMPL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��ʼ��¼��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_CHECK_COMPL', I_DATA);
  
    DELETE FROM DW_S_CHECK_COMPL WHERE STAT_YM = V_YM;
  
    INSERT INTO DW_S_CHECK_COMPL
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       PS_BUSI_AREA_CODE,
       ELEC_TYPE_CODE,
       VOLT_CODE,
       TRADE_CODE,
       IMPORTANT_TYPE_CODE,
       HR_TYPE_CODE,
       PLAN_CC,
       UNCMPL_CC,
       CMPL_CC,
       TIME_STAMP,
       CHK_TYPE_CODE)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             ORG_NO,
             V_YM,
             '',
             ELEC_TYPE_CODE,
             VOLT_CODE,
             TRADE_CODE,
             IMPORTANT_TYPE_CODE,
             HR_TYPE_CODE,
             SUM(PLAN_CC),
             SUM(UNCMPL_CC),
             SUM(CMPL_CC),
             SYSDATE,
             CHK_TYPE_CODE
        FROM (SELECT /*+parallel(B 4) parallel(C 4) parallel(D 4) parallel(E 4)*/
               A.ORG_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', C.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', C.VOLT_CODE) VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', C.TRADE_CODE) TRADE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('IMPORTANCE_TYPE',
                                          B.IMPORTANT_TYOE_CODE) IMPORTANT_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('DANGEROUS_CUST_TYPE',
                                          B.HR_TYPE_CODE) HR_TYPE_CODE,
               COUNT(D.DTL_ID) PLAN_CC,
               SUM(CASE
                     WHEN D.PLAN_STATUS_CODE = '10' AND
                          SUBSTR(D.CHK_DATE, 1, 6) = V_YM THEN
                      0
                     ELSE
                      1
                   END) UNCMPL_CC,
               SUM(CASE
                     WHEN D.PLAN_STATUS_CODE = '10' AND
                          SUBSTR(D.CHK_DATE, 1, 6) = V_YM THEN
                      1
                     ELSE
                      0
                   END) CMPL_CC,
               --SUM(DECODE(F.ATTR_CODE '01', 1, 0)),--ΥԼ�õ���
               --SUM(DECODE(F.ATTR_CODE '02', 1, 0))--�Ե���
               PKG_GK_PUBLIC.F_TRANS_CODE('CHK_TYPE_CODE', A.TYPE_CODE) CHK_TYPE_CODE
                FROM SY_SG_S_CHK_PLAN          A,
                     SY_SG_S_HR_IMPORTANT_CUST B,
                     SY_SG_C_CONS              C,
                     SY_SG_S_CHK_PLAN_DET      D,
                     SY_SG_S_INSPECT_RSLT      E /*,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             SY_SG_S_POWER_VIOLATE_STEAL F*/
               WHERE A.PLAN_NO = D.PLAN_NO
                 AND D.CONS_ID = C.CONS_ID
                 AND C.CONS_NO = B.CUST_NO(+)
                 AND D.DTL_ID = E.DTL_ID(+)
                    --AND E.ID = F.ID(+)
                 AND A.CHK_MONTH = V_YM
                 AND D.PLAN_STATUS_CODE <> '11' --��ȡ��
               GROUP BY A.ORG_NO,
                        PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                                   C.ELEC_TYPE_CODE),
                        PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', C.VOLT_CODE),
                        PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                                   C.TRADE_CODE),
                        PKG_GK_PUBLIC.F_TRANS_CODE('IMPORTANCE_TYPE',
                                                   B.IMPORTANT_TYOE_CODE),
                        PKG_GK_PUBLIC.F_TRANS_CODE('DANGEROUS_CUST_TYPE',
                                                   B.HR_TYPE_CODE),
                        PKG_GK_PUBLIC.F_TRANS_CODE('CHK_TYPE_CODE',
                                                   A.TYPE_CODE))
       GROUP BY ORG_NO,
                ELEC_TYPE_CODE,
                VOLT_CODE,
                TRADE_CODE,
                IMPORTANT_TYPE_CODE,
                HR_TYPE_CODE,
                CHK_TYPE_CODE;
  
    UPDATE DW_S_CHECK_COMPL T
       SET T.OVER_CMPL_NUM =
           (SELECT OVER_CMPL_NUM
              FROM (SELECT ORG_NO,
                           ELEC_TYPE_CODE,
                           VOLT_CODE,
                           TRADE_CODE,
                           IMPORTANT_TYPE_CODE,
                           HR_TYPE_CODE,
                           CHK_TYPE_CODE,
                           SUM(OVER_CMPL_NUM)
                      FROM (SELECT A.ORG_NO,
                                   PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                                              C.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                                   PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE',
                                                              C.VOLT_CODE) VOLT_CODE,
                                   PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                                              C.TRADE_CODE) TRADE_CODE,
                                   PKG_GK_PUBLIC.F_TRANS_CODE('IMPORTANCE_TYPE',
                                                              B.IMPORTANT_TYOE_CODE) IMPORTANT_TYPE_CODE,
                                   PKG_GK_PUBLIC.F_TRANS_CODE('DANGEROUS_CUST_TYPE',
                                                              B.HR_TYPE_CODE) HR_TYPE_CODE,
                                   PKG_GK_PUBLIC.F_TRANS_CODE('CHK_TYPE_CODE',
                                                              A.TYPE_CODE) CHK_TYPE_CODE,
                                   COUNT(D.DTL_ID) OVER_CMPL_NUM
                              FROM SY_SG_S_CHK_PLAN          A,
                                   SY_SG_S_HR_IMPORTANT_CUST B,
                                   SY_SG_C_CONS              C,
                                   SY_SG_S_CHK_PLAN_DET      D
                             WHERE A.PLAN_NO = D.PLAN_NO
                               AND D.CONS_ID = C.CONS_ID
                               AND C.CONS_NO = B.CUST_NO(+)
                               AND D.CHK_MONTH <> V_YM
                               AND SUBSTR(D.ACTUAL_CHK_DATE, 1, 6) = V_YM
                               AND D.PLAN_STATUS_CODE = '10'
                             GROUP BY A.ORG_NO,
                                      PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                                                 C.ELEC_TYPE_CODE),
                                      PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE',
                                                                 C.VOLT_CODE),
                                      PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                                                 C.TRADE_CODE),
                                      PKG_GK_PUBLIC.F_TRANS_CODE('IMPORTANCE_TYPE',
                                                                 B.IMPORTANT_TYOE_CODE),
                                      PKG_GK_PUBLIC.F_TRANS_CODE('DANGEROUS_CUST_TYPE',
                                                                 B.HR_TYPE_CODE),
                                      PKG_GK_PUBLIC.F_TRANS_CODE('CHK_TYPE_CODE',
                                                                 A.TYPE_CODE))
                     GROUP BY ORG_NO,
                              ELEC_TYPE_CODE,
                              VOLT_CODE,
                              TRADE_CODE,
                              IMPORTANT_TYPE_CODE,
                              HR_TYPE_CODE,
                              CHK_TYPE_CODE) F
             WHERE T.ORG_NO = F.ORG_NO
               AND T.ELEC_TYPE_CODE = F.ELEC_TYPE_CODE
               AND T.VOLT_CODE = F.VOLT_CODE
               AND T.TRADE_CODE = F.TRADE_CODE
               AND T.HR_TYPE_CODE = F.HR_TYPE_CODE
               AND T.IMPORTANT_TYPE_CODE = F.IMPORTANT_TYPE_CODE
               AND T.CHK_TYPE_CODE = F.CHK_TYPE_CODE)
     WHERE T.STAT_YM = V_YM;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_CHECK_COMPL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_CHECK_COMPL  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_S_CHECK_COMPL(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_CHECK_COMPL', I_DATA);
    --����
    V_YM := SUBSTR(I_DATA, 1, 6);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_CHECK_COMPL X WHERE X.STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
  
    INSERT INTO SY_OM_DW_S_CHECK_COMPL
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       PS_BUSI_AREA_CODE,
       ELEC_TYPE_CODE,
       VOLT_CODE,
       TRADE_CODE,
       IMPORTANT_TYPE_CODE,
       HR_TYPE_CODE,
       PLAN_CC,
       UNCMPL_CC,
       CMPL_CC,
       OVER_CMPL_NUM,
       TIME_STAMP,
       CHK_TYPE_CODE)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       B.BUSI_AREA_STAT_CODE,
       ELEC_TYPE_CODE,
       VOLT_CODE,
       TRADE_CODE,
       IMPORTANT_TYPE_CODE,
       HR_TYPE_CODE,
       PLAN_CC,
       UNCMPL_CC,
       CMPL_CC,
       OVER_CMPL_NUM,
       TIME_STAMP,
       CHK_TYPE_CODE
        FROM DW_S_CHECK_COMPL A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_CHECK_COMPL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_CHECK_COMPL  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /**
    �������ƣ�P_ENT_DW_S_VIOLATE_DET/ΥԼ�õ��Ե���ϸ��ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ��������������ͳ��ΥԼ�õ��Ե���ϸ��Ϣ,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ,����1�����
    ��θ�ʽ��I_DATA ��YYYYMMDD
    �޸���:
    �޸�����:
  **/
  PROCEDURE P_ENT_DW_S_VIOLATE_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_VIOLATE_DET', V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_S_VIOLATE_DET��
    P_INS_DW_S_VIOLATE_DET(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_S_VIOLATE_DET��ȡ���ݲ��뵽�����OMAC�û��µ�DW_S_VIOLATE_DET��
      P_ETL_DW_S_VIOLATE_DET(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_S_VIOLATE_DET A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_S_VIOLATE_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_VIOLATE_DET  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_S_VIOLATE_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
    --���µ����³�
    V_BEGIN_NEXT_MONTH_NEXT DATE := ADD_MONTHS(V_BEGIN_NEXT_MONTH, 1);
  BEGIN
    --��ʼ��¼��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_VIOLATE_DET', I_DATA);
  
    DELETE FROM DW_S_VIOLATE_DET WHERE STAT_YM = V_YM;
  
    INSERT INTO DW_S_VIOLATE_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       PS_BUSI_AREA_CODE,
       PS_VOLT_CODE,
       TRADE_CODE,
       CONS_SORT_CODE,
       ELEC_TYPE_CODE,
       ATTR_CODE,
       APP_NO,
       CONS_NO,
       ACCEPT_TIME,
       HANDLE_DATE,
       END_DATE,
       RS_PQ,
       RS_PA,
       VIOLATE_USE_PA,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             D.ORG_NO,
             V_YM,
             '',
             PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', D.VOLT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', D.TRADE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE', D.CONS_SORT_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', D.ELEC_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('ATTR_CODE', A.ATTR_CODE),
             A.APP_NO,
             D.CONS_NO,
             TO_DATE(A.OCCUR_TIME, 'YYYYMMDD'),
             E.BGN_TIME,
             E.END_TIME,
             A.ADD_PQ,
             A.ADD_AMT,
             A.AMT,
             SYSDATE
        FROM SY_SG_S_POWER_VIOLATE_STEAL A,
             -- SY_SG_S_SITE_SURVEY         B,--����ȡ֤��Ϣ��APP_NO��S_POWER_VIOLATE_STEAL������
             SY_SG_S_INSPECT_RSLT  C,
             SY_SG_C_CONS          D,
             SY_SG_P_PROC_INSTANCE E
       WHERE C.CONS_NO = D.CONS_NO
         AND C.ID = A.ID
            --DW_S_VIOLATE_DETͳ��Ӧ����ֹ�ȹ���ȥ�����������ڷ������鵵�������µĸ�����Ϣȱʧ���ܲ�У��
         AND E.STATUS_CODE <> '04'
         AND A.ATTR_CODE IS NOT NULL
         AND A.ATTR_CODE <> '-1'
            -- AND A.VIOLATE_NO = B.S_P_VIOLATE_NO
            -- AND B.APP_NO = E.APP_NO
         AND A.APP_NO = E.APP_NO
            --AND SUBSTR(TO_CHAR(E.END_TIME, 'YYYYMMDD'), 1, 6) = V_YM;
         AND E.BGN_TIME >= V_BEGIN_MONTH
         AND E.BGN_TIME < V_BEGIN_NEXT_MONTH;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_VIOLATE_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_VIOLATE_DET  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_S_VIOLATE_DET(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_VIOLATE_DET', I_DATA);
    --����
    V_YM := SUBSTR(I_DATA, 1, 6);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_VIOLATE_DET X WHERE X.STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
  
    INSERT INTO SY_OM_DW_S_VIOLATE_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       PS_BUSI_AREA_CODE,
       PS_VOLT_CODE,
       TRADE_CODE,
       CONS_SORT_CODE,
       ELEC_TYPE_CODE,
       ATTR_CODE,
       APP_NO,
       CONS_NO,
       ACCEPT_TIME,
       HANDLE_DATE,
       END_DATE,
       RS_PQ,
       RS_PA,
       VIOLATE_USE_PA,
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
       ATTR_CODE,
       APP_NO,
       CONS_NO,
       ACCEPT_TIME,
       HANDLE_DATE,
       END_DATE,
       RS_PQ,
       RS_PA,
       VIOLATE_USE_PA,
       TIME_STAMP
        FROM DW_S_VIOLATE_DET A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_VIOLATE_DET  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_VIOLATE_DET  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /**
    �������ƣ�P_ENT_DW_S_VIOLATE_INFO/�¶�ΥԼ�õ��Ե�ͳ����ڹ���
    ���ߣ�jpl
    ��д���ڣ�2014-03-07 01:37
    ��������������ͳ��ΥԼ�õ��Ե����,�����ݿ�JOB����
    ͳ��Ƶ�ȣ����³�ȡ,����1�����
    ��θ�ʽ��I_DATA ��YYYYMMDD
    �޸���:
    �޸�����:
  **/
  PROCEDURE P_ENT_DW_S_VIOLATE_INFO(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_VIOLATE_INFO', V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_S_VIOLATE_INFO��
    P_INS_DW_S_VIOLATE_INFO(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_S_VIOLATE_INFO��ȡ���ݲ��뵽�����OMAC�û��µ�DW_S_VIOLATE_INFO��
      P_ETL_DW_S_VIOLATE_INFO(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_S_VIOLATE_INFO A
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
    OUT_MSG  := 'ִ�� P_ENT_DW_S_VIOLATE_INFO  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_VIOLATE_INFO  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;
  /*
    PROCEDURE P_INS_DW_S_VIOLATE_INFO(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    
      V_DATA_ID VARCHAR2(24);
      V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
      --��ȡ��ʡ�ĵ�λ����
      V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    
      --�����³�
      V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
      --�����³�
      V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
    
      --���µ����³�
      V_BEGIN_NEXT_MONTH_NEXT DATE := ADD_MONTHS(V_BEGIN_NEXT_MONTH, 1);
      --�ַ�������
      P_T_STRING T_STRING;
      I          NUMBER;
    BEGIN
      --��ʼ��¼��־
      V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_VIOLATE_INFO', I_DATA);
    
      DELETE FROM DW_S_VIOLATE_INFO WHERE STAT_YM = V_YM;
    
      --��ʼ���ΥԼ�õ����
      SP_PARSESTRING_LENGTH('010203040506070809101199', 2, P_T_STRING);
    
      I := P_T_STRING.FIRST;
    
      WHILE I IS NOT NULL LOOP
      
        INSERT INTO DW_S_VIOLATE_INFO
          (DATA_ID,
           PRO_ORG_NO,
           ORG_NO,
           STAT_YM,
           PS_BUSI_AREA_CODE,
           PS_VOLT_CODE,
           TRADE_CODE,
           CONS_SORT_CODE,
           ELEC_TYPE_CODE,
           ATTR_CODE,
           TYPE_CODE,
           ACCEPT_CC,
           TRANSIT_CC,
           CMPL_CC,
           RS_PQ,
           RS_PA,
           VIOLATE_USE_PA,
           TIME_STAMP)
          WITH PAR_STEAL_SINGL AS
           (SELECT A.ATTR_CODE,
                   P_T_STRING(I) TYPE_CODE,
                   A.ID,
                   --(length(A.TYPE_CODE)/2)���������Ϊ��ΥԼ�Ե����ͣ�A.TYPE_CODE����һ���ֶ��д洢��������ʱ���ն�����Ͳ��,����ֵƽ�������ֹ����ֵ����
                   A.ADD_PQ / (LENGTH(A.TYPE_CODE) / 2) ADD_PQ,
                   A.ADD_AMT / (LENGTH(A.TYPE_CODE) / 2) ADD_AMT,
                   A.AMT / (LENGTH(A.TYPE_CODE) / 2) AMT,
                   A.APP_NO,
                   E.STATUS_CODE,
                   E.END_TIME
              FROM SY_SG_S_POWER_VIOLATE_STEAL A, SY_SG_P_PROC_INSTANCE E
             WHERE A.APP_NO = E.APP_NO
               AND E.BGN_TIME >= V_BEGIN_MONTH
               AND E.BGN_TIME < V_BEGIN_NEXT_MONTH
               AND INSTR(A.TYPE_CODE, P_T_STRING(I)) > 0
               AND A.ATTR_CODE IS NOT NULL
               AND A.ATTR_CODE <> '-1'
                  --DW_S_VIOLATE_INFOͳ��Ӧ����ֹ�ȹ���ȥ�����������ڷ������鵵�������µĸ�����Ϣȱʧ���ܲ�У��
               AND E.STATUS_CODE <> '04')
          SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
                 V_PRO_ORG_NO,
                 ORG_NO,
                 V_YM,
                 '',
                 PS_VOLT_CODE,
                 TRADE_CODE,
                 CONS_SORT_CODE,
                 ELEC_TYPE_CODE,
                 ATTR_CODE,
                 TYPE_CODE,
                 SUM(ACCEPT_CC),
                 SUM(TRANSIT_CC),
                 SUM(CMPL_CC),
                 SUM(RS_PQ),
                 SUM(RS_PA),
                 SUM(VIOLATE_USE_PA),
                 SYSDATE
            FROM (SELECT D.ORG_NO,
                         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', D.VOLT_CODE) PS_VOLT_CODE,
                         PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                                    D.TRADE_CODE) TRADE_CODE,
                         PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                                    D.CONS_SORT_CODE) CONS_SORT_CODE,
                         PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                                    D.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                         PKG_GK_PUBLIC.F_TRANS_CODE('ATTR_CODE', A.ATTR_CODE) ATTR_CODE,
                         P_T_STRING(I) TYPE_CODE,
                         --(length(A.TYPE_CODE)/2)���������Ϊ��ΥԼ�Ե����ͣ�A.TYPE_CODE����һ���ֶ��д洢��������ʱ���ն�����Ͳ��,����ֵƽ�������ֹ����ֵ����
                         COUNT(DISTINCT A.ID) ACCEPT_CC,
                         SUM(DECODE(A.STATUS_CODE, '01', 1, 0)) TRANSIT_CC,
                         SUM(CASE
                               WHEN SUBSTR(TO_CHAR(A.END_TIME, 'YYYYMMDD'), 1, 6) = V_YM THEN
                                1
                               ELSE
                                0
                             END) CMPL_CC,
                         SUM(A.ADD_PQ) RS_PQ,
                         SUM(A.ADD_AMT) RS_PA,
                         SUM(A.AMT) VIOLATE_USE_PA
                    FROM PAR_STEAL_SINGL      A,
                         SY_SG_S_INSPECT_RSLT C,
                         SY_SG_C_CONS         D
                   WHERE C.CONS_NO = D.CONS_NO
                     AND C.ID = A.ID
                   GROUP BY D.ORG_NO,
                            PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE',
                                                       D.VOLT_CODE),
                            PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                                       D.TRADE_CODE),
                            PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                                       D.CONS_SORT_CODE),
                            PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                                       D.ELEC_TYPE_CODE),
                            PKG_GK_PUBLIC.F_TRANS_CODE('ATTR_CODE',
                                                       A.ATTR_CODE))
           GROUP BY ORG_NO,
                    PS_VOLT_CODE,
                    TRADE_CODE,
                    CONS_SORT_CODE,
                    ELEC_TYPE_CODE,
                    ATTR_CODE,
                    TYPE_CODE;
      
        I := P_T_STRING.NEXT(I);
      END LOOP;
    
      --OUT_CODEΪ1�������гɹ�,�ύ����
      OUT_CODE := 1;
      OUT_MSG  := 'ִ�� P_INS_DW_S_VIOLATE_INFO  �ɹ�';
      COMMIT;
    
      --��¼����������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
      --�쳣����
    EXCEPTION
      WHEN OTHERS THEN
        --OUT_CODEΪ0��������ʧ��,�ع�����
        OUT_CODE := 0;
        OUT_MSG  := 'ִ�� P_INS_DW_S_VIOLATE_INFO  �����쳣' || ',�쳣��ϢΪ��' ||
                    SQLCODE || ',' || SQLERRM;
        ROLLBACK;
        --��¼�쳣������־
        PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
      
    END;
  */

  PROCEDURE P_INS_DW_S_VIOLATE_INFO(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  
    --���µ����³�
    V_BEGIN_NEXT_MONTH_NEXT DATE := ADD_MONTHS(V_BEGIN_NEXT_MONTH, 1);
    --�ַ�������
    P_T_STRING T_STRING;
    I          NUMBER;
  BEGIN
    --��ʼ��¼��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_VIOLATE_INFO', I_DATA);
  
    DELETE FROM DW_S_VIOLATE_INFO WHERE STAT_YM = V_YM;
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_S_VIOLATE_INFO
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         PS_BUSI_AREA_CODE,
         PS_VOLT_CODE,
         TRADE_CODE,
         CONS_SORT_CODE,
         ELEC_TYPE_CODE,
         ATTR_CODE,
         TYPE_CODE,
         ACCEPT_CC,
         TRANSIT_CC,
         CMPL_CC,
         RS_PQ,
         RS_PA,
         VIOLATE_USE_PA,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               V_YM,
               '',
               PS_VOLT_CODE,
               TRADE_CODE,
               CONS_SORT_CODE,
               ELEC_TYPE_CODE,
               ATTR_CODE,
               TYPE_CODE,
               SUM(ACCEPT_CC),
               SUM(TRANSIT_CC),
               SUM(CMPL_CC),
               SUM(RS_PQ),
               SUM(RS_PA),
               SUM(VIOLATE_USE_PA),
               SYSDATE
          FROM (SELECT D.ORG_NO,
                       PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', D.VOLT_CODE) PS_VOLT_CODE,
                       PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                                  D.TRADE_CODE) TRADE_CODE,
                       PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                                  D.CONS_SORT_CODE) CONS_SORT_CODE,
                       PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                                  D.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
                       PKG_GK_PUBLIC.F_TRANS_CODE('ATTR_CODE', A.ATTR_CODE) ATTR_CODE,
                       --��Ӫ�����ݴ�Ų��淶,��Ӫ����type_code�д�Ŷ��ΥԼ�Ե�����ʱֻ��ȡ��һ��ΥԼ�Ե�����
                       PKG_GK_PUBLIC.F_TRANS_CODE('S_VIOLATE_TYPE_CODE',
                                                  SUBSTR(A.TYPE_CODE, 1, 2)) TYPE_CODE,
                       COUNT(DISTINCT A.ID) ACCEPT_CC,
                       SUM(DECODE(E.STATUS_CODE, '01', 1, 0)) TRANSIT_CC,
                       SUM(CASE
                             WHEN SUBSTR(TO_CHAR(E.END_TIME, 'YYYYMMDD'), 1, 6) = V_YM THEN
                              1
                             ELSE
                              0
                           END) CMPL_CC,
                       SUM(A.ADD_PQ) RS_PQ,
                       SUM(A.ADD_AMT) RS_PA,
                       SUM(A.AMT) VIOLATE_USE_PA
                  FROM SY_SG_S_POWER_VIOLATE_STEAL A,
                       SY_SG_P_PROC_INSTANCE       E,
                       SY_SG_S_INSPECT_RSLT        C,
                       SY_SG_C_CONS                D
                 WHERE D.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND C.CONS_NO = D.CONS_NO
                   AND C.ID = A.ID
                   AND A.APP_NO = E.APP_NO
                   AND A.ATTR_CODE <> '-1'
                   AND E.STATUS_CODE <> '04'
                   AND E.BGN_TIME >= V_BEGIN_MONTH
                   AND E.BGN_TIME < V_BEGIN_NEXT_MONTH
                 GROUP BY D.ORG_NO,
                          PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE',
                                                     D.VOLT_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                                     D.TRADE_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('CUST_TYPE_CODE',
                                                     D.CONS_SORT_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                                     D.ELEC_TYPE_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('ATTR_CODE',
                                                     A.ATTR_CODE),
                          PKG_GK_PUBLIC.F_TRANS_CODE('S_VIOLATE_TYPE_CODE',
                                                     SUBSTR(A.TYPE_CODE, 1, 2)))
         GROUP BY ORG_NO,
                  PS_VOLT_CODE,
                  TRADE_CODE,
                  CONS_SORT_CODE,
                  ELEC_TYPE_CODE,
                  ATTR_CODE,
                  TYPE_CODE;
      COMMIT;
    
    END LOOP;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_VIOLATE_INFO  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_VIOLATE_INFO  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_S_VIOLATE_INFO(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_VIOLATE_INFO', I_DATA);
    --����
    V_YM := SUBSTR(I_DATA, 1, 6);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_VIOLATE_INFO X WHERE X.STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
  
    INSERT INTO SY_OM_DW_S_VIOLATE_INFO
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       PS_BUSI_AREA_CODE,
       PS_VOLT_CODE,
       TRADE_CODE,
       CONS_SORT_CODE,
       ELEC_TYPE_CODE,
       ATTR_CODE,
       TYPE_CODE,
       ACCEPT_CC,
       TRANSIT_CC,
       CMPL_CC,
       RS_PQ,
       RS_PA,
       VIOLATE_USE_PA,
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
       ATTR_CODE,
       TYPE_CODE,
       ACCEPT_CC,
       TRANSIT_CC,
       CMPL_CC,
       RS_PQ,
       RS_PA,
       VIOLATE_USE_PA,
       TIME_STAMP
        FROM DW_S_VIOLATE_INFO A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_VIOLATE_INFO  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_VIOLATE_INFO  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /**
    �������ƣ�P_ENT_DW_S_HR_IMPORTANT_CUST/�¶ȸ�Σ��Ҫ�ͻ�������Ϣͳ����ڹ���
    ���ߣ�ll
    ��д���ڣ�2014-03-17 14:37
    ������������Σ��Ҫ�ͻ�������Ϣ
    ͳ��Ƶ�ȣ����³�ȡ,����1�����
    ��θ�ʽ��IN_YM ��YYYYMM
  **/
  PROCEDURE P_ENT_DW_S_HR_IMPORTANT_CUST(IN_YM    VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_HR_IMPORTANT_CUST',
                                        V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_S_HR_IMPORTANT_CUST��
    P_INS_DW_S_HR_IMPORTANT_CUST(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_S_HR_IMPORTANT_CUST��ȡ���ݲ��뵽�����OMAC�û��µ�DW_S_HR_IMPORTANT_CUST��
      P_ETL_DW_S_HR_IMPORTANT_CUST(V_YM, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_S_HR_IMPORTANT_CUST  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_HR_IMPORTANT_CUST  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_S_HR_IMPORTANT_CUST(IN_YM    VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --�����³�
    V_BEGIN_MONTH DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_BEGIN_NEXT_MONTH DATE := ADD_MONTHS(V_BEGIN_MONTH, 1);
  BEGIN
    --��ʼ��¼��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_HR_IMPORTANT_CUST',
                                        IN_YM);
  
    --ɾ����ÿ�β����������ݣ�֮ǰ��ȫ��ɾ����
    DELETE FROM DW_S_HR_IMPORTANT_CUST WHERE STAT_YM = V_YM;
  
    --��������
    INSERT INTO DW_S_HR_IMPORTANT_CUST
      (DATA_ID,
       PRO_ORG_NO,
       CUST_NO,
       VOLT_CODE, --��ѹ�ȼ�
       ELEC_TYPE_CODE, --�õ����
       TRADE_CODE, --��ҵ����
       HEC_TRADE_CODE, --�ߺ�����ҵ���
       HR_TYPE_CODE, --��Σ�ͻ����
       IMPORTANT_TYOE_CODE, --��Ҫ�ͻ����
       TRANSFER_FLAG, --�Ƿ���ת����ؿͻ�
       CUST_PRIO_CODE, --�ͻ���Ҫ�Եȼ�
       EMERGENCY_PS_FLAG, --���ޱ�����Դ
       SPARE_POWER_FLAG, --�����Ա���Դ
       SPARE_SWITCH_FLAG, --�����Ա���ԴͶ���л�װ��
       EMERGENCY_MEAS, --Ӧ��Ԥ�������¹ʴ�ʩ
       NE_SAFETY_MEAS, --�ǵ����ʱ�����ʩ
       EQUIP_STATUS_CODE, --�ܵ��豸״��
       SAFETY_MEAS, --��ȫ��ʩ
       SAFETY_TOOL, --��ȫ������
       MANAGE_PERFECT_FLAG, --�����ƶ����Ʊ�־
       SAFETY_EQUIP_STATUS, --�̵籣������ȫ�Զ�װ�����
       OPER_STATUS, --���й������
       CHK_CYCLE, --�������
       ELEC_ADDR, --��ַ
       CONS_NAME, --����
       CHECKER_NAME, --���С���鳤������
       CHK_DATE, --ʵ���³���������
       TIME_STAMP,
       STAT_YM,
       ORG_NO,
       CTRT_CAP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             B.CUST_NO,
             PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', A.VOLT_CODE) VOLT_CODE,
             PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE', A.ELEC_TYPE_CODE) ELEC_TYPE_CODE,
             PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', A.TRADE_CODE) TRADE_CODE,
             PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                        A.HEC_INDUSTRY_CODE) HEC_TRADE_CODE,
             PKG_GK_PUBLIC.F_TRANS_CODE('DANGEROUS_CUST_TYPE',
                                        B.HR_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('IMPORTANCE_TYPE',
                                        B.IMPORTANT_TYOE_CODE),
             NVL(A.TRANSFER_CODE, 0),
             B.CUST_PRIO_CODE,
             PKG_GK_PUBLIC.F_TRANS_CODE('EMERGENCY_PS_FLAG',
                                        NVL(B.EMERGENCY_PS_FLAG, '0')),
             PKG_GK_PUBLIC.F_TRANS_CODE('SPARE_POWER_FLAG',
                                        NVL(B.SPARE_POWER_FLAG, '0')),
             PKG_GK_PUBLIC.F_TRANS_CODE('SPARE_SWITCH_FLAG',
                                        NVL(B.SPARE_SWITCH_FLAG, '0')),
             B.EMERGENCY_MEAS,
             B.NE_SAFETY_MEAS,
             PKG_GK_PUBLIC.F_TRANS_CODE('EQUIP_STATUS_CODE',
                                        NVL(B.EQUIP_STATUS_CODE, '01')),
             B.SAFETY_MEAS,
             B.SAFETY_TOOL,
             NVL(B.MANAGE_PERFECT_FLAG, '0'),
             B.SAFETY_EQUIP_STATUS,
             B.OPER__STATUS,
             B.CHK_CYCLE,
             A.ELEC_ADDR,
             A.CONS_NAME,
             B.CHECKER_NAME,
             B.CHK_DATE,
             SYSDATE,
             V_YM,
             A.ORG_NO,
             A.CONTRACT_CAP
        FROM SY_SG_C_CONS A, SY_SG_S_HR_IMPORTANT_CUST B
       WHERE A.CONS_NO = B.CUST_NO
            --���û�״̬�����ų�,���û�������״̬������״̬Ϊ�������û�״̬�ж�,���ٵ������û�status_code�����ж�
         AND A.BUILD_DATE < V_BEGIN_NEXT_MONTH
         AND (A.CANCEL_DATE >= V_BEGIN_MONTH OR
             (A.CANCEL_DATE IS NULL AND A.STATUS_CODE <> '9'));
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_HR_IMPORTANT_CUST  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_HR_IMPORTANT_CUST  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_S_HR_IMPORTANT_CUST(IN_YM    VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_HR_IMPORTANT_CUST',
                                        IN_YM);
    --����
    V_YM := SUBSTR(IN_YM, 1, 6);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼
    DELETE FROM SY_OM_DW_S_HR_IMPORTANT_CUST X WHERE X.STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
    INSERT INTO SY_OM_DW_S_HR_IMPORTANT_CUST
      (DATA_ID,
       PRO_ORG_NO,
       CUST_NO,
       VOLT_CODE, --��ѹ�ȼ�
       ELEC_TYPE_CODE, --�õ����
       TRADE_CODE, --��ҵ����
       HEC_TRADE_CODE, --�ߺ�����ҵ���
       HR_TYPE_CODE, --��Σ�ͻ����
       IMPORTANT_TYOE_CODE, --��Ҫ�ͻ����
       TRANSFER_FLAG, --�Ƿ���ת����ؿͻ�
       CUST_PRIO_CODE, --�ͻ���Ҫ�Եȼ�
       EMERGENCY_PS_FLAG, --���ޱ�����Դ
       SPARE_POWER_FLAG, --�����Ա���Դ
       SPARE_SWITCH_FLAG, --�����Ա���ԴͶ���л�װ��
       EMERGENCY_MEAS, --Ӧ��Ԥ�������¹ʴ�ʩ
       NE_SAFETY_MEAS, --�ǵ����ʱ�����ʩ
       EQUIP_STATUS_CODE, --�ܵ��豸״��
       SAFETY_MEAS, --��ȫ��ʩ
       SAFETY_TOOL, --��ȫ������
       MANAGE_PERFECT_FLAG, --�����ƶ����Ʊ�־
       SAFETY_EQUIP_STATUS, --�̵籣������ȫ�Զ�װ�����
       OPER_STATUS, --���й������
       CHK_CYCLE, --�������
       ELEC_ADDR, --��ַ
       CONS_NAME, --����
       CHECKER_NAME, --���С���鳤������
       CHK_DATE, --ʵ���³���������
       TIME_STAMP,
       STAT_YM,
       ORG_NO,
       CTRT_CAP)
      SELECT A.DATA_ID,
             A.PRO_ORG_NO,
             A.CUST_NO,
             A.VOLT_CODE, --��ѹ�ȼ�
             A.ELEC_TYPE_CODE, --�õ����
             A.TRADE_CODE, --��ҵ����
             A.HEC_TRADE_CODE, --�ߺ�����ҵ���
             A.HR_TYPE_CODE, --��Σ�ͻ����
             A.IMPORTANT_TYOE_CODE, --��Ҫ�ͻ����
             A.TRANSFER_FLAG, --�Ƿ���ת����ؿͻ�
             A.CUST_PRIO_CODE, --�ͻ���Ҫ�Եȼ�
             A.EMERGENCY_PS_FLAG, --���ޱ�����Դ
             A.SPARE_POWER_FLAG, --�����Ա���Դ
             A.SPARE_SWITCH_FLAG, --�����Ա���ԴͶ���л�װ��
             A.EMERGENCY_MEAS, --Ӧ��Ԥ�������¹ʴ�ʩ
             A.NE_SAFETY_MEAS, --�ǵ����ʱ�����ʩ
             A.EQUIP_STATUS_CODE, --�ܵ��豸״��
             A.SAFETY_MEAS, --��ȫ��ʩ
             A.SAFETY_TOOL, --��ȫ������
             A.MANAGE_PERFECT_FLAG, --�����ƶ����Ʊ�־
             A.SAFETY_EQUIP_STATUS, --�̵籣������ȫ�Զ�װ�����
             A.OPER_STATUS, --���й������
             A.CHK_CYCLE, --�������
             A.ELEC_ADDR, --��ַ
             A.CONS_NAME, --����
             A.CHECKER_NAME, --���С���鳤������
             A.CHK_DATE, --ʵ���³���������
             SYSDATE,
             A.STAT_YM,
             A.ORG_NO,
             A.CTRT_CAP
        FROM DW_S_HR_IMPORTANT_CUST A
       WHERE A.STAT_YM = V_YM;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_HR_IMPORTANT_CUST  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_HR_IMPORTANT_CUST  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /**
    �������ƣ�P_ENT_DW_S_VIP_SAFETY_DETAIL/�նȸ�Σ��Ҫ�ͻ�����������ϸͳ����ڹ���
    ���ߣ�ll
    ��д���ڣ�2014-03-18 14:37
    �����������նȸ�Σ��Ҫ�ͻ�����������ϸ
    ͳ��Ƶ�ȣ����ճ�ȡ,�������
    ��θ�ʽ��IN_YMD ��YYYYMMDD
  **/
  PROCEDURE P_ENT_DW_S_VIP_SAFETY_DETAIL(IN_YMD   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YMD      VARCHAR2(8) := SUBSTR(IN_YMD, 1, 8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_VIP_SAFETY_DETAIL',
                                        V_YMD);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_S_VIP_SAFETY_DETAIL��
    P_INS_DW_S_VIP_SAFETY_DETAIL(V_YMD, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_S_VIP_SAFETY_DETAIL��ȡ���ݲ��뵽�����OMAC�û��µ�DW_S_VIP_SAFETY_DETAIL��
      P_ETL_DW_S_VIP_SAFETY_DETAIL(V_YMD, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_S_VIP_SAFETY_DETAIL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_VIP_SAFETY_DETAIL  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_S_VIP_SAFETY_DETAIL(IN_YMD   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(IN_YMD, 1, 8);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --��ʼ��¼��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_VIP_SAFETY_DETAIL',
                                        V_YMD);
  
    --ɾ����ÿ�β����������ݣ�֮ǰ��ȫ��ɾ����
    --DELETE FROM DW_S_VIP_SAFETY_DETAIL WHERE STAT_YM = V_YMD;
    DELETE FROM DW_S_VIP_SAFETY_DETAIL WHERE STAT_YMD = V_YMD;
    --��������
    INSERT INTO DW_S_VIP_SAFETY_DETAIL
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       CLINT_NO, --�ͻ����
       CLINT_NAME, --�ͻ�����
       CUST_PRIO_CODE, --�ͻ���Ҫ�Եȼ�
       CHK_TYPE_CODE, --������
       TYPE_CODE, --�������
       TROUBLE_NAME, --��������
       SAFETY_DESC, --��������
       ELIMINATE_FLAG, --�Ƿ���ȱ
       PLAN_ELIMINATE_DATE, --�ƻ���������
       ACTUAL_ELIMINATE_DATE, --ʵ����������
       BUG_LEVEL_CODE, --ȱ�ݵȼ�
       CHK_DATE, --ʵ���³���������
       CHECKER_NAME, --���С���鳤������
       STATUS_CODE, --����״̬
       NOTIFY_FLAG, --�Ƿ񷢷ż��֪ͨ��
       FINISH_DATE, --��ɵ�����
       CONTENT, --��ע
       TIME_STAMP,
       STAT_YMD,
       TROUBLE_ID)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             CON.ORG_NO,
             CON.CONS_NO,
             CON.CONS_NAME,
             F.CUST_PRIO_CODE,
             PKG_GK_PUBLIC.F_TRANS_CODE('CHK_TYPE_CODE', C.CHK_TYPE_CODE),
             PKG_GK_PUBLIC.F_TRANS_CODE('SECURITY_TYPE_CODE', C.TYPE_CODE),
             '', --��������
             C.SAFETY_DESC,
             PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG',
                                        NVL(C.ELIMINATE_FLAG, '0')),
             C.PLAN_ELIMINATE_DATE,
             C.ACTUAL_ELIMINATE_DATE,
             PKG_GK_PUBLIC.F_TRANS_CODE('BUG_LEVEL_CODE', C.BUG_LEVEL_CODE),
             D.CHK_DATE,
             D.CHECKER_NAME,
             D.STATUS_CODE,
             PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG',
                                        NVL(D.NOTIFY_FLAG, '0')),
             D.FINISH_DATE,
             D.CONTENT, --��ע
             SYSDATE,
             V_YMD,
             C.ID
        FROM SY_SG_S_CHK_PLAN_DET      A,
             SY_SG_S_INSPECT_RSLT      B,
             SY_SG_S_SAFETY_BUG        C,
             SY_SG_S_IMPROVE           D,
             SY_SG_S_CHK_PLAN          E,
             SY_SG_S_HR_IMPORTANT_CUST F,
             SY_SG_C_CONS              CON
       WHERE A.PLAN_NO = E.PLAN_NO
         AND A.CONS_ID = CON.CONS_ID
         AND CON.CONS_NO = F.CUST_NO
         AND A.DTL_ID = B.DTL_ID
         AND B.ID = C.ID2
         AND C.ID = D.ID2
         AND D.CHK_DATE = V_YMD
         AND A.PLAN_STATUS_CODE <> '11' --��ȡ��
      ;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_VIP_SAFETY_DETAIL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_VIP_SAFETY_DETAIL  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_S_VIP_SAFETY_DETAIL(IN_YMD   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_VIP_SAFETY_DETAIL',
                                        V_YMD);
    --����
    V_YMD := SUBSTR(IN_YMD, 1, 8);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼
    --DELETE FROM SY_OM_DW_S_VIP_SAFETY_DETAIL X WHERE X.STAT_YMD = V_YMD;
    DELETE FROM SY_OM_DW_S_VIP_SAFETY_DETAIL X WHERE STAT_YMD = V_YMD;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
    INSERT INTO SY_OM_DW_S_VIP_SAFETY_DETAIL
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       CLINT_NO, --�ͻ����
       CLINT_NAME, --�ͻ�����
       CUST_PRIO_CODE, --�ͻ���Ҫ�Եȼ�
       CHK_TYPE_CODE, --������
       TYPE_CODE, --�������
       TROUBLE_NAME, --��������
       SAFETY_DESC, --��������
       ELIMINATE_FLAG, --�Ƿ���ȱ
       PLAN_ELIMINATE_DATE, --�ƻ���������
       ACTUAL_ELIMINATE_DATE, --ʵ����������
       BUG_LEVEL_CODE, --ȱ�ݵȼ�
       CHK_DATE, --ʵ���³���������
       CHECKER_NAME, --���С���鳤������
       STATUS_CODE, --����״̬
       NOTIFY_FLAG, --�Ƿ񷢷ż��֪ͨ��
       FINISH_DATE, --��ɵ�����
       CONTENT, --��ע
       TIME_STAMP,
       STAT_YMD,
       TROUBLE_ID)
      SELECT A.DATA_ID,
             A.PRO_ORG_NO,
             A.ORG_NO,
             A.CLINT_NO,
             A.CLINT_NAME,
             A.CUST_PRIO_CODE,
             A.CHK_TYPE_CODE,
             A.TYPE_CODE,
             A.TROUBLE_NAME,
             A.SAFETY_DESC,
             A.ELIMINATE_FLAG,
             A.PLAN_ELIMINATE_DATE,
             A.ACTUAL_ELIMINATE_DATE,
             A.BUG_LEVEL_CODE,
             A.CHK_DATE,
             A.CHECKER_NAME,
             A.STATUS_CODE,
             A.NOTIFY_FLAG,
             A.FINISH_DATE,
             A.CONTENT,
             SYSDATE,
             A.STAT_YMD,
             A.TROUBLE_ID
        FROM DW_S_VIP_SAFETY_DETAIL A
       WHERE A.STAT_YMD = V_YMD;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_VIP_SAFETY_DETAIL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_VIP_SAFETY_DETAIL  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /**
    �������ƣ�P_ENT_DW_S_NATIONAL_PRJ_STAT/�¶ȹ����ص�ҵ����Ŀ��װͳ��
    ���ߣ�jyd
    ��д���ڣ�2014-03-18 14:37
    �����������¶ȹ����ص�ҵ����Ŀ��װͳ��:�¶ȹ����ص�ҵ����Ŀ��װͳ��
    1������ͳ�Ƹ��㼶��λ�����ص�ҵ����Ŀ�������ص�ҵ����Ŀָ�û���������10��ǧ�������ϵ��û�
    2��ÿ��1�����ͳ��
    3�����һ����ʱ����ͬ������26���������25��24ʱ
    �磺��ǰΪ20141201��ʼ����ͳ�ƹ��̣�����Ĳ���Ϊ201411����Ҫͳ�Ƶ�����Ϊ20141026-20141126ֱ�ӵ�����
    �����е�STAT_YM��д201411
    4����������ʱ�䣬������ʵ�����еĿ�ʼʱ��Ϊ׼��
                    ��θ�ʽ��IN_YM ��YYYYMM
  **/
  PROCEDURE P_ENT_DW_S_NATIONAL_PRJ_STAT(IN_YM    VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_NATIONAL_PRJ_STAT',
                                        V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_S_NATIONAL_PRJ_STAT��
    P_INS_DW_S_NATIONAL_PRJ_STAT(V_YM, OUT_CODE, OUT_MSG);
    --�������͹���
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_S_NATIONAL_PRJ_STAT(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_S_NATIONAL_PRJ_STAT X
         SET X.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = X.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
                     B.BGN_YMD AND NVL(B.END_YMD, '99991231'))
       WHERE X.STAT_YM = V_YM;
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_S_NATIONAL_PRJ_STAT  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_NATIONAL_PRJ_STAT  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_INS_DW_S_NATIONAL_PRJ_STAT(IN_YM    VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(IN_YM, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO   VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_DATE_END_D   DATE := TO_DATE(V_YM || '26', 'yyyymmdd');
    V_DATE_START_D DATE := ADD_MONTHS(V_DATE_END_D, -1);
  BEGIN
    --��ʼ��¼��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_VIP_SAFETY_DETAIL',
                                        V_YM);
  
    --ɾ����ÿ�β����������ݣ�֮ǰ��ȫ��ɾ����
    --DELETE FROM DW_S_VIP_SAFETY_DETAIL WHERE STAT_YM = V_YM;
    DELETE FROM DW_S_NATIONAL_PRJ_STAT WHERE STAT_YM = V_YM;
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --�������
      INSERT INTO DW_S_NATIONAL_PRJ_STAT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PS_PRJ_NUM,
         PS_CAP,
         CUR_HANDLE_PRJ_NUM,
         BUINDING_CAP,
         PRJ_USE_PQ,
         TIME_STAMP)
        WITH TMP_TABLE1 AS
        
         (SELECT T.ORG_NO ORG_NO,
                 COUNT(T.CONS_NO) HS,
                 SUM(T.RUN_CAP) RL,
                 0,
                 0,
                 SUM(T1.T_SETTLE_PQ) DL
            FROM SY_SG_C_CONS             T,
                 SY_SG_ARC_E_CONS_PRC_AMT T1,
                 SY_SG_ARC_E_CONS_SNAP    T2
           WHERE T.ORG_NO LIKE TSS.ORG_NO || '%'
             AND T1.ORG_NO LIKE TSS.ORG_NO || '%'
             AND T1.YM = V_YM
             AND T2.ORG_NO LIKE TSS.ORG_NO || '%'
             AND T2.YM = V_YM
             AND T1.YM = T2.YM
             AND T1.CALC_ID = T2.CALC_ID
             AND T.CONS_NO = T2.CONS_NO(+)
             AND T.RUN_CAP > 100000 --�����ص�ҵ����Ŀָ�û�����10��ǧ�������ϵ��û�
             AND T.STATUS_CODE <> '9'
           GROUP BY T.ORG_NO),
        TMP_TABLE2 AS
         (SELECT T3.PS_ORG_NO ORG_NO,
                 COUNT(T3.CONS_NO) BQHS,
                 SUM(T3.APP_RUN_CAP) BQRL
            FROM SY_SG_S_APP T3
           WHERE T3.PS_ORG_NO LIKE TSS.ORG_NO || '%'
             AND T3.HANDLE_TIME BETWEEN V_DATE_START_D AND V_DATE_END_D
             AND T3.APP_RUN_CAP > 100000
          --AND T3.STATUS_CODE <> '9'
           GROUP BY T3.PS_ORG_NO
          UNION ALL
          SELECT T4.PS_ORG_NO ORG_NO,
                 COUNT(T4.CONS_NO) BQHS,
                 SUM(T4.APP_RUN_CAP) BQRL
            FROM SY_SG_ARC_S_APP T4
           WHERE T4.PS_ORG_NO LIKE TSS.ORG_NO || '%'
             AND T4.HANDLE_TIME BETWEEN V_DATE_START_D AND V_DATE_END_D
             AND T4.APP_RUN_CAP > 100000
          --AND T4.STATUS_CODE <> '9'
           GROUP BY T4.PS_ORG_NO)
        
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               A.ORG_NO,
               '' PS_BUSI_AREA_CODE, --Ӫҵ������
               V_YM STAT_YM,
               SUM(A.HS),
               SUM(A.RL),
               SUM(B.BQHS),
               SUM(B.BQRL),
               SUM(A.DL),
               SYSDATE
          FROM TMP_TABLE1 A, TMP_TABLE2 B
         WHERE A.ORG_NO = B.ORG_NO
         GROUP BY A.ORG_NO;
    END LOOP;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_VIP_SAFETY_DETAIL  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_VIP_SAFETY_DETAIL  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  PROCEDURE P_ETL_DW_S_NATIONAL_PRJ_STAT(IN_YM    VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_NATIONAL_PRJ_STAT',
                                        IN_YM);
    --����
    V_YM := SUBSTR(IN_YM, 1, 6);
  
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼
    --DELETE FROM SY_OM_DW_S_VIP_SAFETY_DETAIL X WHERE X.STAT_YM = V_YM;
    DELETE FROM SY_OM_DW_S_NATIONAL_PRJ_STAT X WHERE STAT_YM = V_YM;
  
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
    INSERT INTO SY_OM_DW_S_NATIONAL_PRJ_STAT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       PS_PRJ_NUM,
       PS_CAP,
       CUR_HANDLE_PRJ_NUM,
       BUINDING_CAP,
       PRJ_USE_PQ,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       X.DATA_ID,
       X.PRO_ORG_NO,
       X.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       PS_PRJ_NUM,
       PS_CAP,
       CUR_HANDLE_PRJ_NUM,
       BUINDING_CAP,
       PRJ_USE_PQ,
       TIME_STAMP
        FROM DW_S_NATIONAL_PRJ_STAT X, SY_OM_DW_O_ORG_CONTRAST B
       WHERE X.STAT_YM = V_YM
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YM, 'YYYYMM')), 'YYYYMMDD') BETWEEN
             B.BGN_YMD AND NVL(B.END_YMD, '99991231')
         AND X.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_NATIONAL_PRJ_STAT  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_NATIONAL_PRJ_STAT  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /**
    �������ƣ�P_ENT_DW_C_G_TRAN/�¶ȵ�λ��ѹ����Ϣͳ����ϸͳ����ڹ���
    ���ߣ�ll
    ��д���ڣ�2014-03-18 14:37
    �����������¶ȵ�λ��ѹ����Ϣͳ����ϸ
    ͳ��Ƶ�ȣ����³�ȡ,����1�����
    ��θ�ʽ��IN_YM ��YYYYMM
  **/
  PROCEDURE P_ENT_DW_C_G_TRAN(IN_YM    VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YM       VARCHAR2(8) := SUBSTR(IN_YM, 1, 6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_C_G_TRAN', V_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_G_TRAN��
    P_INS_DW_C_G_TRAN(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_C_G_TRAN��ȡ���ݲ��뵽�����OMAC�û��µ�DW_C_G_TRAN��
      P_ETL_DW_C_G_TRAN(V_YM, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_C_G_TRAN  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_C_G_TRAN  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;
  PROCEDURE P_INS_DW_C_G_TRAN(IN_YM    VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(8) := SUBSTR(IN_YM, 1, 6);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --�����³�
    V_YMD_START DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    --�����³�
    V_YMD_END DATE := ADD_MONTHS(V_YMD_START, 1);
  BEGIN
    --��ʼ��¼��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_C_G_TRAN', V_YM);
    --ɾ����ÿ�β����������ݣ�֮ǰ��ȫ��ɾ����
    --DELETE FROM DW_S_VIP_SAFETY_DETAIL WHERE STAT_YM = V_YMD;
    DELETE FROM DW_C_G_TRAN WHERE STAT_YM = V_YM;
  
    --��ʼ������ѭ��
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --��������
      INSERT INTO DW_C_G_TRAN
        (DATA_ID,
         PRO_ORG_NO,
         STAT_YM,
         EQUIP_ID,
         TG_ID,
         ORG_NO,
         PS_VOLT_CODE,
         HEC_TRADE_CODE,
         CONS_NO,
         CONS_ID,
         TYPE_CODE,
         CHG_REMARK,
         TRAN_NAME,
         INST_ADDR,
         INST_DATE,
         PLATE_CAP,
         FRST_RUN_DATE,
         ACTUAL_START_DATE,
         ACTUAL_STOP_USE_DATE,
         PLAN_RESUME_DATE,
         MS_FLAG,
         RUN_STATUS_CODE,
         PUB_PRIV_FLAG,
         CHG_CAP,
         DUE_DATE,
         PROTECT_MODE,
         GROUND_FLAG,
         FRSTSIDE_VOLT_CODE,
         SNDSIDE_VOLT_CODE,
         MODEL_NO,
         K_VALUE,
         FACTORY_NAME,
         MADE_NO,
         MADE_DATE,
         WIRE_GROUP_CODE,
         COOL_MODE,
         RV_HV,
         RC_HV,
         RV_MV,
         RC_MV,
         RV_LV,
         RC_LV,
         SC_RESI,
         K_CURRENT,
         TEST_DATE,
         TEST_CYCLE,
         PR_CODE,
         MAIN_WIRING_MODE,
         OIL_NO,
         SUBJOINT_GRADE,
         SUBJOINT_LOC,
         GROUND_RESI,
         RP_TL_VALUE,
         AP_TL_VALUE,
         TS_NO,
         TS_ALG_FLAG,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               V_YM,
               A.EQUIP_ID,
               A.TG_ID,
               A.ORG_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE) PS_VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          B.HEC_INDUSTRY_CODE) HEC_TRADE_CODE,
               B.CONS_NO,
               A.CONS_ID,
               PKG_GK_PUBLIC.F_TRANS_CODE('ACCE_POWER_EQUIP_TYPE',
                                          A.TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('G_CHG_REMARK', A.CHG_REMARK),
               A.TRAN_NAME,
               A.INST_ADDR,
               A.INST_DATE,
               A.PLATE_CAP,
               A.FRST_RUN_DATE,
               A.ACTUAL_START_DATE,
               A.ACTUAL_STOP_USE_DATE,
               A.PLAN_RESUME_DATE,
               PKG_GK_PUBLIC.F_TRANS_CODE('MS_FLAG', A.MS_FLAG),
               PKG_GK_PUBLIC.F_TRANS_CODE('RUN_STATUS_CODE',
                                          A.RUN_STATUS_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('TRAN_PUB_PRIV_FLAG',
                                          A.PUB_PRIV_FLAG),
               A.CHG_CAP,
               A.DUE_DATE,
               PKG_GK_PUBLIC.F_TRANS_CODE('PROTECT_MODE', A.PROTECT_MODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', A.GROUND_FLAG),
               A.FRSTSIDE_VOLT_CODE,
               A.SNDSIDE_VOLT_CODE,
               A.MODEL_NO,
               A.K_VALUE,
               A.FACTORY_NAME,
               A.MADE_NO,
               A.MADE_DATE,
               PKG_GK_PUBLIC.F_TRANS_CODE('WIRE_GROUP_CODE',
                                          A.WIRE_GROUP_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('COOL_MODE', A.COOL_MODE),
               A.RV_HV,
               A.RC_HV,
               A.RV_MV,
               A.RC_MV,
               A.RV_LV,
               A.RC_LV,
               A.SC_RESI,
               A.K_CURRENT,
               A.TEST_DATE,
               A.TEST_CYCLE,
               PKG_GK_PUBLIC.F_TRANS_CODE('PR_CODE', A.PR_CODE),
               A.MAIN_WIRING_MODE,
               A.OIL_NO,
               A.SUBJOINT_GRADE,
               A.SUBJOINT_LOC,
               A.GROUND_RESI,
               A.RP_TL_VALUE,
               A.AP_TL_VALUE,
               A.TS_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('TL_ALG_CODE', A.TS_ALG_FLAG),
               SYSDATE TIME_STAMP
          FROM SY_SG_G_TRAN A, SY_SG_C_CONS B
         WHERE B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.CONS_ID = B.CONS_ID
           AND INST_DATE >= V_YMD_START
           AND INST_DATE < V_YMD_END;
      COMMIT;
    END LOOP;
  
    --���м�ʡ��ͳ��
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG O
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
      --��������
      INSERT INTO DW_C_G_TRAN
        (DATA_ID,
         PRO_ORG_NO,
         STAT_YM,
         EQUIP_ID,
         TG_ID,
         ORG_NO,
         PS_VOLT_CODE,
         HEC_TRADE_CODE,
         CONS_NO,
         CONS_ID,
         TYPE_CODE,
         CHG_REMARK,
         TRAN_NAME,
         INST_ADDR,
         INST_DATE,
         PLATE_CAP,
         FRST_RUN_DATE,
         ACTUAL_START_DATE,
         ACTUAL_STOP_USE_DATE,
         PLAN_RESUME_DATE,
         MS_FLAG,
         RUN_STATUS_CODE,
         PUB_PRIV_FLAG,
         CHG_CAP,
         DUE_DATE,
         PROTECT_MODE,
         GROUND_FLAG,
         FRSTSIDE_VOLT_CODE,
         SNDSIDE_VOLT_CODE,
         MODEL_NO,
         K_VALUE,
         FACTORY_NAME,
         MADE_NO,
         MADE_DATE,
         WIRE_GROUP_CODE,
         COOL_MODE,
         RV_HV,
         RC_HV,
         RV_MV,
         RC_MV,
         RV_LV,
         RC_LV,
         SC_RESI,
         K_CURRENT,
         TEST_DATE,
         TEST_CYCLE,
         PR_CODE,
         MAIN_WIRING_MODE,
         OIL_NO,
         SUBJOINT_GRADE,
         SUBJOINT_LOC,
         GROUND_RESI,
         RP_TL_VALUE,
         AP_TL_VALUE,
         TS_NO,
         TS_ALG_FLAG,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               V_YM,
               A.EQUIP_ID,
               A.TG_ID,
               A.ORG_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE) PS_VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          B.HEC_INDUSTRY_CODE) HEC_TRADE_CODE,
               B.CONS_NO,
               A.CONS_ID,
               PKG_GK_PUBLIC.F_TRANS_CODE('ACCE_POWER_EQUIP_TYPE',
                                          A.TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('G_CHG_REMARK', A.CHG_REMARK),
               A.TRAN_NAME,
               A.INST_ADDR,
               A.INST_DATE,
               A.PLATE_CAP,
               A.FRST_RUN_DATE,
               A.ACTUAL_START_DATE,
               A.ACTUAL_STOP_USE_DATE,
               A.PLAN_RESUME_DATE,
               PKG_GK_PUBLIC.F_TRANS_CODE('MS_FLAG', A.MS_FLAG),
               PKG_GK_PUBLIC.F_TRANS_CODE('RUN_STATUS_CODE',
                                          A.RUN_STATUS_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('TRAN_PUB_PRIV_FLAG',
                                          A.PUB_PRIV_FLAG),
               A.CHG_CAP,
               A.DUE_DATE,
               PKG_GK_PUBLIC.F_TRANS_CODE('PROTECT_MODE', A.PROTECT_MODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('YES_NO_FLAG', A.GROUND_FLAG),
               A.FRSTSIDE_VOLT_CODE,
               A.SNDSIDE_VOLT_CODE,
               A.MODEL_NO,
               A.K_VALUE,
               A.FACTORY_NAME,
               A.MADE_NO,
               A.MADE_DATE,
               PKG_GK_PUBLIC.F_TRANS_CODE('WIRE_GROUP_CODE',
                                          A.WIRE_GROUP_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('COOL_MODE', A.COOL_MODE),
               A.RV_HV,
               A.RC_HV,
               A.RV_MV,
               A.RC_MV,
               A.RV_LV,
               A.RC_LV,
               A.SC_RESI,
               A.K_CURRENT,
               A.TEST_DATE,
               A.TEST_CYCLE,
               PKG_GK_PUBLIC.F_TRANS_CODE('PR_CODE', A.PR_CODE),
               A.MAIN_WIRING_MODE,
               A.OIL_NO,
               A.SUBJOINT_GRADE,
               A.SUBJOINT_LOC,
               A.GROUND_RESI,
               A.RP_TL_VALUE,
               A.AP_TL_VALUE,
               A.TS_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('TL_ALG_CODE', A.TS_ALG_FLAG),
               SYSDATE TIME_STAMP
          FROM SY_SG_G_TRAN A, SY_SG_C_CONS B
         WHERE B.ORG_NO = TSS.ORG_NO
           AND A.ORG_NO = TSS.ORG_NO
           AND A.CONS_ID = B.CONS_ID
           AND INST_DATE >= V_YMD_START
           AND INST_DATE < V_YMD_END;
      COMMIT;
    
    END LOOP;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_C_G_TRAN  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_C_G_TRAN  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_C_G_TRAN(IN_YM    VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_C_G_TRAN', IN_YM);
    --����
    V_YM := SUBSTR(IN_YM, 1, 6);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼
    DELETE FROM SY_OM_DW_C_G_TRAN X WHERE X.STAT_YM = V_YM;
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
    INSERT INTO SY_OM_DW_C_G_TRAN
      (DATA_ID,
       PRO_ORG_NO,
       STAT_YM,
       EQUIP_ID,
       TG_ID,
       ORG_NO,
       PS_VOLT_CODE,
       HEC_TRADE_CODE,
       CONS_NO,
       CONS_ID,
       TYPE_CODE,
       CHG_REMARK,
       TRAN_NAME,
       INST_ADDR,
       INST_DATE,
       PLATE_CAP,
       FRST_RUN_DATE,
       ACTUAL_START_DATE,
       ACTUAL_STOP_USE_DATE,
       PLAN_RESUME_DATE,
       MS_FLAG,
       RUN_STATUS_CODE,
       PUB_PRIV_FLAG,
       CHG_CAP,
       DUE_DATE,
       PROTECT_MODE,
       GROUND_FLAG,
       FRSTSIDE_VOLT_CODE,
       SNDSIDE_VOLT_CODE,
       MODEL_NO,
       K_VALUE,
       FACTORY_NAME,
       MADE_NO,
       MADE_DATE,
       WIRE_GROUP_CODE,
       COOL_MODE,
       RV_HV,
       RC_HV,
       RV_MV,
       RC_MV,
       RV_LV,
       RC_LV,
       SC_RESI,
       K_CURRENT,
       TEST_DATE,
       TEST_CYCLE,
       PR_CODE,
       MAIN_WIRING_MODE,
       OIL_NO,
       SUBJOINT_GRADE,
       SUBJOINT_LOC,
       GROUND_RESI,
       RP_TL_VALUE,
       AP_TL_VALUE,
       TS_NO,
       TS_ALG_FLAG,
       TIME_STAMP)
      SELECT A.DATA_ID,
             A.PRO_ORG_NO,
             A.STAT_YM,
             A.EQUIP_ID,
             A.TG_ID,
             A.ORG_NO,
             A.PS_VOLT_CODE,
             A.HEC_TRADE_CODE,
             A.CONS_NO,
             A.CONS_ID,
             A.TYPE_CODE,
             A.CHG_REMARK,
             A.TRAN_NAME,
             A.INST_ADDR,
             A.INST_DATE,
             A.PLATE_CAP,
             A.FRST_RUN_DATE,
             A.ACTUAL_START_DATE,
             A.ACTUAL_STOP_USE_DATE,
             A.PLAN_RESUME_DATE,
             A.MS_FLAG,
             A.RUN_STATUS_CODE,
             A.PUB_PRIV_FLAG,
             A.CHG_CAP,
             A.DUE_DATE,
             A.PROTECT_MODE,
             A.GROUND_FLAG,
             A.FRSTSIDE_VOLT_CODE,
             A.SNDSIDE_VOLT_CODE,
             A.MODEL_NO,
             A.K_VALUE,
             A.FACTORY_NAME,
             A.MADE_NO,
             A.MADE_DATE,
             A.WIRE_GROUP_CODE,
             A.COOL_MODE,
             A.RV_HV,
             A.RC_HV,
             A.RV_MV,
             A.RC_MV,
             A.RV_LV,
             A.RC_LV,
             A.SC_RESI,
             A.K_CURRENT,
             A.TEST_DATE,
             A.TEST_CYCLE,
             A.PR_CODE,
             A.MAIN_WIRING_MODE,
             A.OIL_NO,
             A.SUBJOINT_GRADE,
             A.SUBJOINT_LOC,
             A.GROUND_RESI,
             A.RP_TL_VALUE,
             A.AP_TL_VALUE,
             A.TS_NO,
             A.TS_ALG_FLAG,
             A.TIME_STAMP
        FROM DW_C_G_TRAN A
       WHERE A.STAT_YM = V_YM;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_C_G_TRAN  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_C_G_TRAN  �����쳣' || ',�쳣��ϢΪ��' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /******************************
  #function: �µ�λҵ����װͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-03
  #input:in_ym  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/

  /******************************
  #function: �굥λҵ����װͳ��  (��ڴ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-03
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_BUSI_CCCAP_YEAR(IN_YEAR  VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
    V_YEAR     VARCHAR2(6) := SUBSTR(IN_YEAR, 1, 4);
  BEGIN
  
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_BUSI_CCCAP_YEAR',
                                        V_YEAR);
  
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_C_CONS_COMP��
    P_INS_DW_S_BUSI_CCCAP_YEAR(V_YEAR, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_S_BUSI_CCCAP_YEAR��ȡ���ݲ��뵽�����OMAC�û��µ�DW_S_BUSI_CCCAP_YEAR��
      P_ETL_DW_S_BUSI_CCCAP_YEAR(V_YEAR, OUT_CODE, OUT_MSG);
    ELSE
      --����ģʽ���乩����������
      UPDATE DW_S_BUSI_CCCAP_YEAR A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO
                 AND TO_CHAR(LAST_DAY(TO_DATE(V_YEAR || '12', 'YYYYMM')),
                             'YYYYMMDD') BETWEEN B.BGN_YMD AND
                     NVL(B.END_YMD, '99991231'))
       WHERE A.STAT_YEAR = V_YEAR;
    END IF;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_S_BUSI_CCCAP_YEAR  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_BUSI_CCCAP_YEAR  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /******************************
  #function: �굥λҵ����װͳ��  (��ȡ�洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-03
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_BUSI_CCCAP_YEAR(IN_YEAR  VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
  
    --��־ID
  
    V_DATA_ID VARCHAR2(24);
  
    --��ȡ��ʡ�ĵ�λ����
  
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  
    --��
  
    V_YEAR VARCHAR2(4) := SUBSTR(IN_YEAR, 1, 4);
  
    V_DATE_START_D DATE := TO_DATE(V_YEAR || '0101' || ' 00:00:00',
                                   'yyyy-mm-dd hh24:mi:ss');
  
    V_DATE_END_D DATE := ADD_MONTHS(V_DATE_START_D, 12);
  
    V_STATUS_CODE02 VARCHAR2(256) := PKG_GK_PUBLIC.F_TRANS_CODE('CCCAP_YEAR_STATUS_CODE02',
                                                                
                                                                'CCCAP_YEAR_STATUS_CODE02');
  
    V_STATUS_CODE01 VARCHAR2(256) := PKG_GK_PUBLIC.F_TRANS_CODE('CCCAP_YEAR_STATUS_CODE01',
                                                                
                                                                'CCCAP_YEAR_STATUS_CODE01');
  
    V_APP_TYPE_CODE VARCHAR2(256) := PKG_GK_PUBLIC.F_TRANS_CODE('CCCAP_YEAR_APP_TYPE_CODE',
                                                                
                                                                'CCCAP_YEAR_APP_TYPE_CODE');
  
    V_APP_TYPE_CODE_BATCH VARCHAR2(256) := PKG_GK_PUBLIC.F_TRANS_CODE('CCCAP_YEAR_APP_TYPE_CODE_BATCH',
                                                                      
                                                                      'CCCAP_YEAR_APP_TYPE_CODE_BATCH');
  
    V_APP_TYPE_CODE_CANCLE VARCHAR2(256) := PKG_GK_PUBLIC.F_TRANS_CODE('CCCAP_YEAR_APP_TYPE_CODE_CANCLE',
                                                                       
                                                                       'CCCAP_YEAR_APP_TYPE_CODE_CANCLE');
  
    V_ELECT_TYPE_CODE VARCHAR2(256) := PKG_GK_PUBLIC.F_TRANS_CODE('CCCAP_YEAR_ELECT_TYPE_CODE',
                                                                  
                                                                  'CCCAP_YEAR_ELECT_TYPE_CODE');
  
  BEGIN
  
    --��¼��ʼ��־
  
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_BUSI_CCCAP_YEAR',
                                        
                                        V_YEAR);
  
    V_STATUS_CODE02 := DECODE_BE(V_STATUS_CODE02,
                                 
                                 'CCCAP_YEAR_STATUS_CODE02',
                                 
                                 '02',
                                 
                                 V_STATUS_CODE02); --����״̬���鵵
  
    V_STATUS_CODE01 := DECODE_BE(V_STATUS_CODE01,
                                 
                                 'CCCAP_YEAR_STATUS_CODE01',
                                 
                                 '01',
                                 
                                 V_STATUS_CODE01); --����״̬����;
  
    V_APP_TYPE_CODE := DECODE_BE(V_APP_TYPE_CODE,
                                 
                                 'CCCAP_YEAR_APP_TYPE_CODE',
                                 
                                 '101,102,104,105,106,112,108,109,110,201,202,203,204,205,206,216,217,901,902',
                                 
                                 V_APP_TYPE_CODE);
  
    V_APP_TYPE_CODE_BATCH := DECODE_BE(V_APP_TYPE_CODE_BATCH,
                                       
                                       'CCCAP_YEAR_APP_TYPE_CODE_BATCH',
                                       
                                       '112,217',
                                       
                                       V_APP_TYPE_CODE_BATCH);
  
    V_APP_TYPE_CODE_CANCLE := DECODE_BE(V_APP_TYPE_CODE_CANCLE,
                                        
                                        'CCCAP_YEAR_APP_TYPE_CODE_CANCLE',
                                        
                                        '108,216',
                                        
                                        V_APP_TYPE_CODE_CANCLE);
  
    V_ELECT_TYPE_CODE := DECODE_BE(V_ELECT_TYPE_CODE,
                                   
                                   'CCCAP_YEAR_ELECT_TYPE_CODE',
                                   
                                   '000',
                                   
                                   V_ELECT_TYPE_CODE); --�õ����Ŀ���ų������û�
  
    --ɾ��ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
  
    DELETE FROM DW_S_BUSI_CCCAP_YEAR X WHERE X.STAT_YEAR = V_YEAR;
  
    ----������˾��Ӫҵվ
  
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       
                                       1,
                                       
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                
                  FROM SY_SG_O_ORG
                
                 WHERE ORG_NO <> '00000'
                      
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_S_BUSI_CCCAP_YEAR
      
        (DATA_ID,
         
         PRO_ORG_NO,
         
         ORG_NO,
         
         PS_BUSI_AREA_CODE,
         
         STAT_YEAR,
         
         BUSI_TYPE_CODE,
         
         TRADE_CODE,
         
         VOLT_CODE,
         
         ELEC_TYPE_CODE,
         
         HEC_TRADE_CODE,
         
         BAL_CC,
         
         BAL_CAP,
         
         TIME_STAMP)
      
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               
               V_PRO_ORG_NO,
               
               D.PS_ORG_NO,
               
               '',
               
               V_YEAR,
               
               PKG_GK_PUBLIC.F_TRANS_CODE('BUSI_TYPE_CODE', D.INS_NAME),
               
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', D.TRADE_CODE),
               
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', D.VOLT_CODE),
               
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                          
                                          D.ELEC_TYPE_CODE),
               
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          
                                          D.HEC_INDUSTRY_CODE),
               
               ABS(COUNT(D.APP_ID)) BAL_CC,
               
               ABS(SUM(CASE
                       
                         WHEN INSTR(V_APP_TYPE_CODE_BATCH, D.INS_NAME) >= 1 THEN
                         
                          CONTRACT_CAP
                       
                         WHEN INSTR(V_APP_TYPE_CODE_CANCLE, D.INS_NAME) >= 1 THEN
                         
                          T_RUN_CAP
                       
                         ELSE
                         
                          APP_RUN_CAP
                       
                       END)) BAL_CAP,
               
               SYSDATE
        
          FROM (SELECT B.PS_ORG_NO,
                       
                       A.INS_NAME,
                       
                       B.TRADE_CODE,
                       
                       B.VOLT_CODE,
                       
                       B.ELEC_TYPE_CODE,
                       
                       B.HEC_INDUSTRY_CODE,
                       
                       B.APP_ID,
                       
                       NVL(C.CONTRACT_CAP, 0) CONTRACT_CAP,
                       
                       ABS(B.APP_RUN_CAP) APP_RUN_CAP,
                       
                       B.T_RUN_CAP
                
                  FROM SY_SG_S_APP B,
                       
                       SY_SG_S_BATCH_CUST_APP C,
                       
                       SY_SG_P_PROC_INSTANCE A
                
                 WHERE B.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      
                   AND B.APP_NO = A.APP_NO
                      
                   AND A.END_TIME >= V_DATE_START_D
                      
                   AND B.HANDLE_TIME < V_DATE_END_D
                      
                   AND B.ELEC_TYPE_CODE <> '000'
                      
                   AND INSTR(V_APP_TYPE_CODE, A.INS_NAME) >= 1
                      
                   AND INSTR(V_ELECT_TYPE_CODE, B.ELEC_TYPE_CODE) <= 0
                      
                   AND B.APP_ID = C.APP_ID(+)
                
                UNION ALL
                
                SELECT B.PS_ORG_NO,
                       
                       A.INS_NAME,
                       
                       B.TRADE_CODE,
                       
                       B.VOLT_CODE,
                       
                       B.ELEC_TYPE_CODE,
                       
                       B.HEC_INDUSTRY_CODE,
                       
                       B.APP_ID,
                       
                       NVL(C.CONTRACT_CAP, 0) CONTRACT_CAP,
                       
                       ABS(B.APP_RUN_CAP) APP_RUN_CAP,
                       
                       B.T_RUN_CAP
                
                  FROM SY_SG_S_APP B,
                       
                       SY_SG_S_BATCH_CUST_APP C,
                       
                       SY_SG_P_PROC_INSTANCE A
                
                 WHERE B.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      
                   AND B.APP_NO = A.APP_NO
                      
                   AND B.ELEC_TYPE_CODE <> '000'
                      
                   AND B.HANDLE_TIME < V_DATE_END_D
                      
                   AND INSTR(V_APP_TYPE_CODE, A.INS_NAME) >= 1
                      
                   AND INSTR(V_ELECT_TYPE_CODE, B.ELEC_TYPE_CODE) <= 0
                      
                   AND B.APP_ID = C.APP_ID(+)
                
                UNION ALL
                
                SELECT B.PS_ORG_NO,
                       
                       A.INS_NAME,
                       
                       B.TRADE_CODE,
                       
                       B.VOLT_CODE,
                       
                       B.ELEC_TYPE_CODE,
                       
                       B.HEC_INDUSTRY_CODE,
                       
                       B.APP_ID,
                       
                       NVL(C.CONTRACT_CAP, 0) CONTRACT_CAP,
                       
                       ABS(B.APP_RUN_CAP) APP_RUN_CAP,
                       
                       B.T_RUN_CAP
                
                  FROM SY_SG_ARC_S_APP B,
                       
                       SY_SG_ARC_S_BATCH_CUST_APP C,
                       
                       SY_SG_P_PROC_INSTANCE A
                
                 WHERE B.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      
                   AND B.APP_NO = A.APP_NO
                      
                   AND A.END_TIME >= V_DATE_START_D
                      
                   AND B.HANDLE_TIME < V_DATE_END_D
                      
                   AND B.ELEC_TYPE_CODE <> '000'
                      
                   AND INSTR(V_APP_TYPE_CODE, A.INS_NAME) >= 1
                      
                   AND INSTR(V_ELECT_TYPE_CODE, B.ELEC_TYPE_CODE) <= 0
                      
                   AND B.APP_ID = C.APP_ID(+)) D
        
         GROUP BY D.PS_ORG_NO,
                  
                  PKG_GK_PUBLIC.F_TRANS_CODE('BUSI_TYPE_CODE',
                                             
                                             D.INS_NAME),
                  
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                             
                                             D.TRADE_CODE),
                  
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', D.VOLT_CODE),
                  
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             
                                             D.ELEC_TYPE_CODE),
                  
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             
                                             D.HEC_INDUSTRY_CODE);
    
      COMMIT;
    
    END LOOP;
  
    --���м�ʡ��ͳ��
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG O
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
      INSERT INTO DW_S_BUSI_CCCAP_YEAR
      
        (DATA_ID,
         
         PRO_ORG_NO,
         
         ORG_NO,
         
         PS_BUSI_AREA_CODE,
         
         STAT_YEAR,
         
         BUSI_TYPE_CODE,
         
         TRADE_CODE,
         
         VOLT_CODE,
         
         ELEC_TYPE_CODE,
         
         HEC_TRADE_CODE,
         
         BAL_CC,
         
         BAL_CAP,
         
         TIME_STAMP)
      
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               
               V_PRO_ORG_NO,
               
               D.PS_ORG_NO,
               
               '',
               
               V_YEAR,
               
               PKG_GK_PUBLIC.F_TRANS_CODE('BUSI_TYPE_CODE', D.INS_NAME),
               
               PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE', D.TRADE_CODE),
               
               PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', D.VOLT_CODE),
               
               PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                          
                                          D.ELEC_TYPE_CODE),
               
               PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                          
                                          D.HEC_INDUSTRY_CODE),
               
               ABS(COUNT(D.APP_ID)) BAL_CC,
               
               ABS(SUM(CASE
                       
                         WHEN INSTR(V_APP_TYPE_CODE_BATCH, D.INS_NAME) >= 1 THEN
                         
                          CONTRACT_CAP
                       
                         WHEN INSTR(V_APP_TYPE_CODE_CANCLE, D.INS_NAME) >= 1 THEN
                         
                          T_RUN_CAP
                       
                         ELSE
                         
                          APP_RUN_CAP
                       
                       END)) BAL_CAP,
               
               SYSDATE
        
          FROM (SELECT B.PS_ORG_NO,
                       
                       A.INS_NAME,
                       
                       B.TRADE_CODE,
                       
                       B.VOLT_CODE,
                       
                       B.ELEC_TYPE_CODE,
                       
                       B.HEC_INDUSTRY_CODE,
                       
                       B.APP_ID,
                       
                       NVL(C.CONTRACT_CAP, 0) CONTRACT_CAP,
                       
                       ABS(B.APP_RUN_CAP) APP_RUN_CAP,
                       
                       B.T_RUN_CAP
                
                  FROM SY_SG_S_APP B,
                       
                       SY_SG_S_BATCH_CUST_APP C,
                       
                       SY_SG_P_PROC_INSTANCE A
                
                 WHERE B.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      
                   AND B.APP_NO = A.APP_NO
                      
                   AND A.END_TIME >= V_DATE_START_D
                      
                   AND B.HANDLE_TIME < V_DATE_END_D
                      
                   AND B.ELEC_TYPE_CODE <> '000'
                      
                   AND INSTR(V_APP_TYPE_CODE, A.INS_NAME) >= 1
                      
                   AND INSTR(V_ELECT_TYPE_CODE, B.ELEC_TYPE_CODE) <= 0
                      
                   AND B.APP_ID = C.APP_ID(+)
                
                UNION ALL
                
                SELECT B.PS_ORG_NO,
                       
                       A.INS_NAME,
                       
                       B.TRADE_CODE,
                       
                       B.VOLT_CODE,
                       
                       B.ELEC_TYPE_CODE,
                       
                       B.HEC_INDUSTRY_CODE,
                       
                       B.APP_ID,
                       
                       NVL(C.CONTRACT_CAP, 0) CONTRACT_CAP,
                       
                       ABS(B.APP_RUN_CAP) APP_RUN_CAP,
                       
                       B.T_RUN_CAP
                
                  FROM SY_SG_S_APP B,
                       
                       SY_SG_S_BATCH_CUST_APP C,
                       
                       SY_SG_P_PROC_INSTANCE A
                
                 WHERE B.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      
                   AND B.APP_NO = A.APP_NO
                      
                   AND B.HANDLE_TIME < V_DATE_END_D
                      
                   AND B.ELEC_TYPE_CODE <> '000'
                      
                   AND INSTR(V_APP_TYPE_CODE, A.INS_NAME) >= 1
                      
                   AND INSTR(V_ELECT_TYPE_CODE, B.ELEC_TYPE_CODE) <= 0
                      
                   AND B.APP_ID = C.APP_ID(+)
                
                UNION ALL
                
                SELECT B.PS_ORG_NO,
                       
                       A.INS_NAME,
                       
                       B.TRADE_CODE,
                       
                       B.VOLT_CODE,
                       
                       B.ELEC_TYPE_CODE,
                       
                       B.HEC_INDUSTRY_CODE,
                       
                       B.APP_ID,
                       
                       NVL(C.CONTRACT_CAP, 0) CONTRACT_CAP,
                       
                       ABS(B.APP_RUN_CAP) APP_RUN_CAP,
                       
                       B.T_RUN_CAP
                
                  FROM SY_SG_ARC_S_APP B,
                       
                       SY_SG_ARC_S_BATCH_CUST_APP C,
                       
                       SY_SG_P_PROC_INSTANCE A
                
                 WHERE B.PS_ORG_NO LIKE TSS.ORG_NO || '%'
                      
                   AND B.APP_NO = A.APP_NO
                      
                   AND A.END_TIME >= V_DATE_START_D
                      
                   AND B.HANDLE_TIME < V_DATE_END_D
                      
                   AND B.ELEC_TYPE_CODE <> '000'
                      
                   AND INSTR(V_APP_TYPE_CODE, A.INS_NAME) >= 1
                      
                   AND INSTR(V_ELECT_TYPE_CODE, B.ELEC_TYPE_CODE) <= 0
                      
                   AND B.APP_ID = C.APP_ID(+)) D
        
         GROUP BY D.PS_ORG_NO,
                  
                  PKG_GK_PUBLIC.F_TRANS_CODE('BUSI_TYPE_CODE',
                                             
                                             D.INS_NAME),
                  
                  PKG_GK_PUBLIC.F_TRANS_CODE('TRADE_TYPE_CODE',
                                             
                                             D.TRADE_CODE),
                  
                  PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', D.VOLT_CODE),
                  
                  PKG_GK_PUBLIC.F_TRANS_CODE('ELEC_TYPE_CODE',
                                             
                                             D.ELEC_TYPE_CODE),
                  
                  PKG_GK_PUBLIC.F_TRANS_CODE('HUE_TRADE_TYPE_CODE',
                                             
                                             D.HEC_INDUSTRY_CODE);
    
      COMMIT;
    
    END LOOP;
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_BUSI_CCCAP_YEAR  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_BUSI_CCCAP_YEAR  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /******************************
  #function: �굥λҵ����װͳ�� (���ʹ洢����)
  #version:1.01
  #author:jkx 32078
  #createdate:2014-03-03
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_BUSI_CCCAP_YEAR(IN_YEAR  VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    V_YEAR    VARCHAR2(4);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_BUSI_CCCAP_YEAR',
                                        IN_YEAR);
    V_YEAR    := SUBSTR(IN_YEAR, 1, 4);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼��ά��Ϊ��
    DELETE FROM SY_OM_DW_S_BUSI_CCCAP_YEAR X WHERE X.STAT_YEAR = V_YEAR;
  
    INSERT INTO SY_OM_DW_S_BUSI_CCCAP_YEAR
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YEAR,
       BUSI_TYPE_CODE,
       TRADE_CODE,
       VOLT_CODE,
       ELEC_TYPE_CODE,
       HEC_TRADE_CODE,
       BAL_CC,
       BAL_CAP,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       A.ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       A.STAT_YEAR,
       A.BUSI_TYPE_CODE,
       A.TRADE_CODE,
       A.VOLT_CODE,
       A.ELEC_TYPE_CODE,
       A.HEC_TRADE_CODE,
       A.BAL_CC,
       A.BAL_CAP,
       A.TIME_STAMP
        FROM DW_S_BUSI_CCCAP_YEAR A, SY_OM_DW_O_ORG_CONTRAST B
      --����ʱ��ɸѡ����
       WHERE A.STAT_YEAR = V_YEAR
         AND TO_CHAR(LAST_DAY(TO_DATE(V_YEAR || '12', 'YYYYMM')),
                     'YYYYMMDD') BETWEEN B.BGN_YMD AND
             NVL(B.END_YMD, '99991231')
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_BUSI_CCCAP_YEAR  �ɹ�';
    COMMIT;
  
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    /* --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);*/
  
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_BUSI_CCCAP_YEAR  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /******************************
  #function: �շֲ�ʽ��Դ���뻷���嵥  (��ȡ�洢����)
  #version:1.01
  #author:liubin 32237
  #createdate:2014-09-22
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  /*PROCEDURE P_ENT_DW_S_DISTR_ENERGY_WKST(IN_YMD   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_DISTR_ENERGY_WKST',
                                        IN_YMD);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_S_DISTR_ENERGY_WKST��
    P_INS_DW_S_DISTR_ENERGY_WKST(IN_YMD, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_S_DISTR_ENERGY_WKST��ȡ���ݲ��뵽�����OMAC�û��µ�DW_S_DISTR_ENERGY_WKST��
      P_ETL_DW_S_DISTR_ENERGY_WKST(IN_YMD, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_S_DISTR_ENERGY_WKST  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_DISTR_ENERGY_WKST  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;*/

  /******************************
  #function: �շֲ�ʽ��Դ���뻷���嵥  (��ȡ�洢����)
  #version:1.01
  #author:liubin 32237
  #createdate:2014-09-22
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  /*PROCEDURE P_INS_DW_S_DISTR_ENERGY_WKST(IN_YMD   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO   VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_BGN          DATE := TO_DATE(IN_YMD, 'yyyymmddhh24miss');
    V_END          DATE := TO_DATE(IN_YMD, 'yyyymmddhh24miss') + 1;
    V_COUNT        VARCHAR2(8);
    V_RETURN_NUM   VARCHAR2(8);
    V_LAST_STEP_NO VARCHAR2(64);
    V_WORKDAY_NUM  NUMBER(5) := 0;
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_DISTR_ENERGY_WKST',
                                        IN_YMD);
    --����ҵ�������Ա��־ǿ���н������������ݣ�Ҫ��ɾ��ԭ�еĳ�ȡ�ļ�¼
    DELETE FROM DW_S_DISTR_ENERGY_WKST X
     WHERE (BGN_DATE BETWEEN V_BGN AND V_END)
        OR (END_DATE BETWEEN V_BGN AND V_END);
    --��ʼ����ͳ��,���뵽��������OMAC��DW_S_DISTR_ENERGY_WKST
    FOR CUR IN (SELECT A.APP_ID,
                       A.APP_NO,
                       A.CUST_ID,
                       A.MAIN_APP_ID,
                       A.APP_MODE,
                       A.HANDLE_DEPT_NO,
                       A.HANDLE_TIME,
                       A.CONTRACT_CAP,
                       A.ORGN_CONTRACT_CAP,
                       A.T_CONTRACT_CAP,
                       A.REASON,
                       A.CONTENT,
                       A.POWER_USAGE,
                       A.DMD_DATE,
                       A.APP_TYPE_CODE,
                       A.HANDLE_FLAG,
                       A.REFUSE_REASON,
                       A.RELA_APP_CODE,
                       A.REMARK,
                       A.MRD_FACTOR_CODE,
                       A.PRIO_CODE,
                       C.PRJ_NAME,
                       C.INVESTOR,
                       C.PRC_CAP,
                       C.FINAL_CAP,
                       C.BEGIN_DATE,
                       C.FINISH_DATE,
                       C.APPROVE_LEVEL,
                       D.GC_TYPE_CODE,
                       A.GC_ID,
                       A.ABSO_MODE,
                       A.GC_NO,
                       A.GC_NAME,
                       A.CUST_QUERY_NO,
                       A.TMP_PAY_RELA_NO,
                       A.ORGN_GC_NO,
                       A.GC_SORT_CODE,
                       A.GC_ADDR,
                       A.TRADE_CODE,
                       A.SHIFT_NO,
                       A.VOLT_CODE,
                       A.HEC_INDUSTRY_CODE,
                       A.HOLIDAY,
                       E.END_DATE ARC_DATE,
                       E.STATE,
                       B.ACTIVITY_ID STEP_NO,
                       B.ACTIVITY_NAME STEP_NAME,
                       '0' SUB_PRO_FLAG,
                       B.BEGIN_DATE BGN_DATE,
                       A.STATUS_CODE,
                       A.ORG_NO,
                       A.CHK_CYCLE,
                       A.LAST_CHK_DATE,
                       A.CHECKER_NO,
                       A.MR_SECT_NO,
                       B.TASKID,
                       B.FROMTASKID
                  FROM SY_SG_FS_GC                A,
                       SY_SG_INDYWF_WORKLIST_CUR  B,
                       SY_SG_FS_PROINFO           C,
                       SY_SG_FS_GC_TYPE_CODE      D,
                       SY_SG_INDYWF_INSTANCES_CUR E
                 WHERE A.APP_NO = B.ITEM_KEY
                   AND E.ITEM_KEY = A.APP_NO
                   AND D.APP_ID = A.APP_ID
                   AND A.APP_ID = C.APP_ID(+)
                   AND B.DEPT_NAME = E.DEPT_NAME
                   AND A.ORG_NO = E.DEPT_NAME
                   AND B.BEGIN_DATE BETWEEN V_BGN AND V_END
                UNION ALL
                SELECT A.APP_ID,
                       A.APP_NO,
                       A.CUST_ID,
                       A.MAIN_APP_ID,
                       A.APP_MODE,
                       A.HANDLE_DEPT_NO,
                       A.HANDLE_TIME,
                       A.CONTRACT_CAP,
                       A.ORGN_CONTRACT_CAP,
                       A.T_CONTRACT_CAP,
                       A.REASON,
                       A.CONTENT,
                       A.POWER_USAGE,
                       A.DMD_DATE,
                       A.APP_TYPE_CODE,
                       A.HANDLE_FLAG,
                       A.REFUSE_REASON,
                       A.RELA_APP_CODE,
                       A.REMARK,
                       A.MRD_FACTOR_CODE,
                       A.PRIO_CODE,
                       C.PRJ_NAME,
                       C.INVESTOR,
                       C.PRC_CAP,
                       C.FINAL_CAP,
                       C.BEGIN_DATE,
                       C.FINISH_DATE,
                       C.APPROVE_LEVEL,
                       D.GC_TYPE_CODE,
                       A.GC_ID,
                       A.ABSO_MODE,
                       A.GC_NO,
                       A.GC_NAME,
                       A.CUST_QUERY_NO,
                       A.TMP_PAY_RELA_NO,
                       A.ORGN_GC_NO,
                       A.GC_SORT_CODE,
                       A.GC_ADDR,
                       A.TRADE_CODE,
                       A.SHIFT_NO,
                       A.VOLT_CODE,
                       A.HEC_INDUSTRY_CODE,
                       A.HOLIDAY,
                       E.END_DATE ARC_DATE,
                       E.STATE,
                       B.ACTIVITY_ID STEP_NO,
                       B.ACTIVITY_NAME STEP_NAME,
                       '0' SUB_PRO_FLAG,
                       B.BEGIN_DATE BGN_DATE,
                       A.STATUS_CODE,
                       A.ORG_NO,
                       A.CHK_CYCLE,
                       A.LAST_CHK_DATE,
                       A.CHECKER_NO,
                       A.MR_SECT_NO,
                       B.TASKID,
                       B.FROMTASKID
                  FROM SY_SG_FS_GC                A,
                       SY_SG_INDYWF_WORKLIST_COM  B,
                       SY_SG_FS_PROINFO           C,
                       SY_SG_FS_GC_TYPE_CODE      D,
                       SY_SG_INDYWF_INSTANCES_CUR E
                 WHERE A.APP_NO = B.ITEM_KEY
                   AND E.ITEM_KEY = A.APP_NO
                   AND D.APP_ID = A.APP_ID
                   AND A.APP_ID = C.APP_ID(+)
                   AND B.DEPT_NAME = E.DEPT_NAME
                   AND A.ORG_NO = E.DEPT_NAME
                   AND B.BEGIN_DATE BETWEEN V_BGN AND V_END
                UNION ALL
                SELECT A.APP_ID,
                       A.APP_NO,
                       A.CUST_ID,
                       A.MAIN_APP_ID,
                       A.APP_MODE,
                       A.HANDLE_DEPT_NO,
                       A.HANDLE_TIME,
                       A.CONTRACT_CAP,
                       A.ORGN_CONTRACT_CAP,
                       A.T_CONTRACT_CAP,
                       A.REASON,
                       A.CONTENT,
                       A.POWER_USAGE,
                       A.DMD_DATE,
                       A.APP_TYPE_CODE,
                       A.HANDLE_FLAG,
                       A.REFUSE_REASON,
                       A.RELA_APP_CODE,
                       A.REMARK,
                       A.MRD_FACTOR_CODE,
                       A.PRIO_CODE,
                       C.PRJ_NAME,
                       C.INVESTOR,
                       C.PRC_CAP,
                       C.FINAL_CAP,
                       C.BEGIN_DATE,
                       C.FINISH_DATE,
                       C.APPROVE_LEVEL,
                       D.GC_TYPE_CODE,
                       A.GC_ID,
                       A.ABSO_MODE,
                       A.GC_NO,
                       A.GC_NAME,
                       A.CUST_QUERY_NO,
                       A.TMP_PAY_RELA_NO,
                       A.ORGN_GC_NO,
                       A.GC_SORT_CODE,
                       A.GC_ADDR,
                       A.TRADE_CODE,
                       A.SHIFT_NO,
                       A.VOLT_CODE,
                       A.HEC_INDUSTRY_CODE,
                       A.HOLIDAY,
                       E.END_DATE ARC_DATE,
                       E.STATE,
                       B.ACTIVITY_ID STEP_NO,
                       B.ACTIVITY_NAME STEP_NAME,
                       '0' SUB_PRO_FLAG,
                       B.BEGIN_DATE BGN_DATE,
                       A.STATUS_CODE,
                       A.ORG_NO,
                       A.CHK_CYCLE,
                       A.LAST_CHK_DATE,
                       A.CHECKER_NO,
                       A.MR_SECT_NO,
                       B.TASKID,
                       B.FROMTASKID
                  FROM SY_SG_ARC_FS_GC            A,
                       SY_SG_INDYWF_WORKLIST_HIS  B,
                       SY_SG_ARC_FS_PROINFO       C,
                       SY_SG_ARC_FS_GC_TYPE_CODE  D,
                       SY_SG_INDYWF_INSTANCES_CUR E
                 WHERE A.APP_NO = B.ITEM_KEY
                   AND E.ITEM_KEY = A.APP_NO
                   AND D.APP_ID = A.APP_ID
                   AND A.APP_ID = C.APP_ID(+)
                   AND B.DEPT_NAME = E.DEPT_NAME
                   AND A.ORG_NO = E.DEPT_NAME
                   AND B.BEGIN_DATE BETWEEN V_BGN AND V_END) LOOP
      BEGIN
        SELECT ACTIVITY_ID
          INTO V_LAST_STEP_NO
          FROM (SELECT ACTIVITY_ID
                  FROM SY_SG_INDYWF_WORKLIST_COM
                 WHERE TASKID = CUR.FROMTASKID
                   AND ITEM_KEY = CUR.APP_NO
                UNION ALL
                SELECT ACTIVITY_ID
                  FROM SY_SG_INDYWF_WORKLIST_HIS
                 WHERE TASKID = CUR.FROMTASKID
                   AND ITEM_KEY = CUR.APP_NO);
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          V_LAST_STEP_NO := NULL;
      END;
      SELECT COUNT(1)
        INTO V_COUNT
        FROM DW_S_DISTR_ENERGY_WKST
       WHERE APP_NO = CUR.APP_NO
         AND STEP_NO = CUR.STEP_NO
         AND LAST_STEP_NO = V_LAST_STEP_NO;
      IF V_COUNT = 0 THEN
        SELECT COUNT(1)
          INTO V_RETURN_NUM
          FROM SY_SG_INDYWF_BACK T
         WHERE T.ITEM_TYPE = '01'
           AND T.ITEM_KEY = CUR.APP_NO
           AND T.FROM_TASKID = CUR.TASKID;
        INSERT INTO DW_S_DISTR_ENERGY_WKST
          (DATA_ID,
           PRO_ORG_NO,
           APP_ID,
           APP_NO,
           CUST_ID,
           MAIN_APP_ID,
           APP_MODE,
           HANDLE_DEPT_NO,
           HANDLE_TIME,
           CONTRACT_CAP,
           ORGN_CONTRACT_CAP,
           T_CONTRACT_CAP,
           REASON,
           CONTENT,
           POWER_USAGE,
           DMD_DATE,
           APP_TYPE_CODE,
           HANDLE_FLAG,
           REFUSE_REASON,
           RELA_APP_CODE,
           REMARK,
           MRD_FACTOR_CODE,
           PRIO_CODE,
           PRJ_NAME,
           INVESTOR,
           PRC_CAP,
           FINAL_CAP,
           BEGIN_DATE,
           FINISH_DATE,
           APPROVE_LEVEL,
           GC_TYPE_CODE,
           GC_ID,
           ABSO_MODE,
           GC_NO,
           GC_NAME,
           CUST_QUERY_NO,
           TMP_PAY_RELA_NO,
           ORGN_GC_NO,
           GC_SORT_CODE,
           GC_ADDR,
           TRADE_CODE,
           SHIFT_NO,
           VOLT_CODE,
           HEC_INDUSTRY_CODE,
           HOLIDAY,
           ARC_DATE,
           RETURN_FLAG,
           LAST_STEP_NO,
           STEP_NO,
           STEP_NAME,
           SUB_PRO_FLAG,
           BGN_DATE,
           WKST_STATUS_CODE,
           STATUS_CODE,
           ORG_NO,
           CHK_CYCLE,
           LAST_CHK_DATE,
           CHECKER_NO,
           MR_SECT_NO,
           TIME_STAMP)
        VALUES
          (PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
           V_PRO_ORG_NO,
           CUR.APP_ID,
           CUR.APP_NO,
           CUR.CUST_ID,
           CUR.MAIN_APP_ID,
           CUR.APP_MODE,
           CUR.HANDLE_DEPT_NO,
           CUR.HANDLE_TIME,
           CUR.CONTRACT_CAP,
           CUR.ORGN_CONTRACT_CAP,
           CUR.T_CONTRACT_CAP,
           CUR.REASON,
           CUR.CONTENT,
           CUR.POWER_USAGE,
           CUR.DMD_DATE,
           CUR.APP_TYPE_CODE,
           CUR.HANDLE_FLAG,
           CUR.REFUSE_REASON,
           CUR.RELA_APP_CODE,
           CUR.REMARK,
           CUR.MRD_FACTOR_CODE,
           CUR.PRIO_CODE,
           CUR.PRJ_NAME,
           CUR.INVESTOR,
           CUR.PRC_CAP,
           CUR.FINAL_CAP,
           CUR.BEGIN_DATE,
           CUR.FINISH_DATE,
           CUR.APPROVE_LEVEL,
           CUR.GC_TYPE_CODE,
           CUR.GC_ID,
           CUR.ABSO_MODE,
           CUR.GC_NO,
           CUR.GC_NAME,
           CUR.CUST_QUERY_NO,
           CUR.TMP_PAY_RELA_NO,
           CUR.ORGN_GC_NO,
           CUR.GC_SORT_CODE,
           CUR.GC_ADDR,
           CUR.TRADE_CODE,
           CUR.SHIFT_NO,
           CUR.VOLT_CODE,
           CUR.HEC_INDUSTRY_CODE,
           CUR.HOLIDAY,
           CUR.ARC_DATE,
           DECODE(V_RETURN_NUM, '0', '0', '1'), -- return_flag, 
           V_LAST_STEP_NO,
           CUR.STEP_NO,
           CUR.STEP_NAME,
           CUR.SUB_PRO_FLAG,
           CUR.BGN_DATE,
           DECODE(CUR.STATE,
                  'ACTIVE',
                  '01',
                  'SUSPEND',
                  '03',
                  'ABORT',
                  '04',
                  '02'), --wkst_status_code, 
           CUR.STATUS_CODE,
           CUR.ORG_NO,
           CUR.CHK_CYCLE,
           CUR.LAST_CHK_DATE,
           CUR.CHECKER_NO,
           CUR.MR_SECT_NO,
           SYSDATE);
      END IF;
    END LOOP;
    FOR CUR2 IN (SELECT A.APP_ID,
                        A.APP_NO,
                        A.CUST_ID,
                        A.MAIN_APP_ID,
                        A.APP_MODE,
                        A.HANDLE_DEPT_NO,
                        A.HANDLE_TIME,
                        A.CONTRACT_CAP,
                        A.ORGN_CONTRACT_CAP,
                        A.T_CONTRACT_CAP,
                        A.REASON,
                        A.CONTENT,
                        A.POWER_USAGE,
                        A.DMD_DATE,
                        A.APP_TYPE_CODE,
                        A.HANDLE_FLAG,
                        A.REFUSE_REASON,
                        A.RELA_APP_CODE,
                        A.REMARK,
                        A.MRD_FACTOR_CODE,
                        A.PRIO_CODE,
                        C.PRJ_NAME,
                        C.INVESTOR,
                        C.PRC_CAP,
                        C.FINAL_CAP,
                        C.BEGIN_DATE,
                        C.FINISH_DATE,
                        C.APPROVE_LEVEL,
                        D.GC_TYPE_CODE,
                        A.GC_ID,
                        A.ABSO_MODE,
                        A.GC_NO,
                        A.GC_NAME,
                        A.CUST_QUERY_NO,
                        A.TMP_PAY_RELA_NO,
                        A.ORGN_GC_NO,
                        A.GC_SORT_CODE,
                        A.GC_ADDR,
                        A.TRADE_CODE,
                        A.SHIFT_NO,
                        A.VOLT_CODE,
                        A.HEC_INDUSTRY_CODE,
                        A.HOLIDAY,
                        E.END_DATE ARC_DATE,
                        E.STATE,
                        B.TASKID,
                        B.ACTIVITY_ID STEP_NO,
                        B.ACTIVITY_NAME STEP_NAME,
                        '0' SUB_PRO_FLAG,
                        B.BEGIN_DATE BGN_DATE,
                        B.END_DATE,
                        A.STATUS_CODE,
                        A.ORG_NO,
                        A.CHK_CYCLE,
                        A.LAST_CHK_DATE,
                        A.CHECKER_NO,
                        A.MR_SECT_NO,
                        B.FROMTASKID
                   FROM SY_SG_FS_GC                A,
                        SY_SG_INDYWF_WORKLIST_COM  B,
                        SY_SG_FS_PROINFO           C,
                        SY_SG_FS_GC_TYPE_CODE      D,
                        SY_SG_INDYWF_INSTANCES_CUR E
                  WHERE A.APP_NO = B.ITEM_KEY
                    AND E.ITEM_KEY = A.APP_NO
                    AND D.APP_ID = A.APP_ID
                    AND A.APP_ID = C.APP_ID(+)
                    AND B.DEPT_NAME = E.DEPT_NAME
                    AND A.ORG_NO = E.DEPT_NAME
                    AND B.END_DATE BETWEEN V_BGN AND V_END
                 UNION ALL
                 SELECT A.APP_ID,
                        A.APP_NO,
                        A.CUST_ID,
                        A.MAIN_APP_ID,
                        A.APP_MODE,
                        A.HANDLE_DEPT_NO,
                        A.HANDLE_TIME,
                        A.CONTRACT_CAP,
                        A.ORGN_CONTRACT_CAP,
                        A.T_CONTRACT_CAP,
                        A.REASON,
                        A.CONTENT,
                        A.POWER_USAGE,
                        A.DMD_DATE,
                        A.APP_TYPE_CODE,
                        A.HANDLE_FLAG,
                        A.REFUSE_REASON,
                        A.RELA_APP_CODE,
                        A.REMARK,
                        A.MRD_FACTOR_CODE,
                        A.PRIO_CODE,
                        C.PRJ_NAME,
                        C.INVESTOR,
                        C.PRC_CAP,
                        C.FINAL_CAP,
                        C.BEGIN_DATE,
                        C.FINISH_DATE,
                        C.APPROVE_LEVEL,
                        D.GC_TYPE_CODE,
                        A.GC_ID,
                        A.ABSO_MODE,
                        A.GC_NO,
                        A.GC_NAME,
                        A.CUST_QUERY_NO,
                        A.TMP_PAY_RELA_NO,
                        A.ORGN_GC_NO,
                        A.GC_SORT_CODE,
                        A.GC_ADDR,
                        A.TRADE_CODE,
                        A.SHIFT_NO,
                        A.VOLT_CODE,
                        A.HEC_INDUSTRY_CODE,
                        A.HOLIDAY,
                        E.END_DATE ARC_DATE,
                        E.STATE,
                        B.TASKID,
                        B.ACTIVITY_ID STEP_NO,
                        B.ACTIVITY_NAME STEP_NAME,
                        '0' SUB_PRO_FLAG,
                        B.BEGIN_DATE BGN_DATE,
                        B.END_DATE,
                        A.STATUS_CODE,
                        A.ORG_NO,
                        A.CHK_CYCLE,
                        A.LAST_CHK_DATE,
                        A.CHECKER_NO,
                        A.MR_SECT_NO,
                        B.FROMTASKID
                   FROM SY_SG_ARC_FS_GC            A,
                        SY_SG_INDYWF_WORKLIST_HIS  B,
                        SY_SG_ARC_FS_PROINFO       C,
                        SY_SG_ARC_FS_GC_TYPE_CODE  D,
                        SY_SG_INDYWF_INSTANCES_CUR E
                  WHERE A.APP_NO = B.ITEM_KEY
                    AND E.ITEM_KEY = A.APP_NO
                    AND D.APP_ID = A.APP_ID
                    AND A.APP_ID = C.APP_ID(+)
                    AND B.DEPT_NAME = E.DEPT_NAME
                    AND A.ORG_NO = E.DEPT_NAME
                    AND B.END_DATE BETWEEN V_BGN AND V_END) LOOP
      BEGIN
        SELECT ACTIVITY_ID
          INTO V_LAST_STEP_NO
          FROM (SELECT ACTIVITY_ID
                  FROM SY_SG_INDYWF_WORKLIST_COM
                 WHERE TASKID = CUR2.FROMTASKID
                   AND ITEM_KEY = CUR2.APP_NO
                UNION ALL
                SELECT ACTIVITY_ID
                  FROM SY_SG_INDYWF_WORKLIST_HIS
                 WHERE TASKID = CUR2.FROMTASKID
                   AND ITEM_KEY = CUR2.APP_NO);
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          V_LAST_STEP_NO := NULL;
      END;
      SELECT COUNT(1)
        INTO V_COUNT
        FROM DW_S_DISTR_ENERGY_WKST
       WHERE APP_NO = CUR2.APP_NO
         AND STEP_NO = CUR2.STEP_NO
         AND LAST_STEP_NO = V_LAST_STEP_NO;
      SELECT PKG_CM_PUBLIC.F_WORKDAY(TRUNC(CUR2.BGN_DATE),
                                     TRUNC(CUR2.END_DATE) + 1)
        INTO V_WORKDAY_NUM
        FROM DUAL;
      IF V_COUNT = 0 THEN
        SELECT COUNT(1)
          INTO V_RETURN_NUM
          FROM SY_SG_INDYWF_BACK T
         WHERE T.ITEM_TYPE = '01'
           AND T.ITEM_KEY = CUR2.APP_NO
           AND T.FROM_TASKID = CUR2.TASKID;
        INSERT INTO DW_S_DISTR_ENERGY_WKST
          (DATA_ID,
           PRO_ORG_NO,
           APP_ID,
           APP_NO,
           CUST_ID,
           MAIN_APP_ID,
           APP_MODE,
           HANDLE_DEPT_NO,
           HANDLE_TIME,
           CONTRACT_CAP,
           ORGN_CONTRACT_CAP,
           T_CONTRACT_CAP,
           REASON,
           CONTENT,
           POWER_USAGE,
           DMD_DATE,
           APP_TYPE_CODE,
           HANDLE_FLAG,
           REFUSE_REASON,
           RELA_APP_CODE,
           REMARK,
           MRD_FACTOR_CODE,
           PRIO_CODE,
           PRJ_NAME,
           INVESTOR,
           PRC_CAP,
           FINAL_CAP,
           BEGIN_DATE,
           FINISH_DATE,
           APPROVE_LEVEL,
           GC_TYPE_CODE,
           GC_ID,
           ABSO_MODE,
           GC_NO,
           GC_NAME,
           CUST_QUERY_NO,
           TMP_PAY_RELA_NO,
           ORGN_GC_NO,
           GC_SORT_CODE,
           GC_ADDR,
           TRADE_CODE,
           SHIFT_NO,
           VOLT_CODE,
           HEC_INDUSTRY_CODE,
           HOLIDAY,
           ARC_DATE,
           RETURN_FLAG,
           TERMINATE_FLAG,
           TERMINATE_YMD,
           LAST_STEP_NO,
           STEP_NO,
           STEP_NAME,
           SUB_PRO_FLAG,
           BGN_DATE,
           END_DATE,
           WORKDAY_NUM,
           WKST_STATUS_CODE,
           STATUS_CODE,
           ORG_NO,
           CHK_CYCLE,
           LAST_CHK_DATE,
           CHECKER_NO,
           MR_SECT_NO,
           TIME_STAMP)
        VALUES
          (PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
           V_PRO_ORG_NO,
           CUR2.APP_ID,
           CUR2.APP_NO,
           CUR2.CUST_ID,
           CUR2.MAIN_APP_ID,
           CUR2.APP_MODE,
           CUR2.HANDLE_DEPT_NO,
           CUR2.HANDLE_TIME,
           CUR2.CONTRACT_CAP,
           CUR2.ORGN_CONTRACT_CAP,
           CUR2.T_CONTRACT_CAP,
           CUR2.REASON,
           CUR2.CONTENT,
           CUR2.POWER_USAGE,
           CUR2.DMD_DATE,
           CUR2.APP_TYPE_CODE,
           CUR2.HANDLE_FLAG,
           CUR2.REFUSE_REASON,
           CUR2.RELA_APP_CODE,
           CUR2.REMARK,
           CUR2.MRD_FACTOR_CODE,
           CUR2.PRIO_CODE,
           CUR2.PRJ_NAME,
           CUR2.INVESTOR,
           CUR2.PRC_CAP,
           CUR2.FINAL_CAP,
           CUR2.BEGIN_DATE,
           CUR2.FINISH_DATE,
           CUR2.APPROVE_LEVEL,
           CUR2.GC_TYPE_CODE,
           CUR2.GC_ID,
           CUR2.ABSO_MODE,
           CUR2.GC_NO,
           CUR2.GC_NAME,
           CUR2.CUST_QUERY_NO,
           CUR2.TMP_PAY_RELA_NO,
           CUR2.ORGN_GC_NO,
           CUR2.GC_SORT_CODE,
           CUR2.GC_ADDR,
           CUR2.TRADE_CODE,
           CUR2.SHIFT_NO,
           CUR2.VOLT_CODE,
           CUR2.HEC_INDUSTRY_CODE,
           CUR2.HOLIDAY,
           CUR2.ARC_DATE,
           DECODE(V_RETURN_NUM, '0', '0', '1'), -- return_flag, 
           DECODE(CUR2.STATE, 'ABORT', '1', '0'), -- terminate_flag,
           DECODE(CUR2.STATE,
                  'ABORT',
                  TO_CHAR(CUR2.END_DATE, 'yyyymmdd'),
                  ''), --terminate_ymd
           V_LAST_STEP_NO,
           CUR2.STEP_NO,
           CUR2.STEP_NAME,
           CUR2.SUB_PRO_FLAG,
           CUR2.BGN_DATE,
           CUR2.END_DATE,
           V_WORKDAY_NUM,
           DECODE(CUR2.STATE,
                  'ACTIVE',
                  '01',
                  'SUSPEND',
                  '03',
                  'ABORT',
                  '04',
                  '02'), --wkst_status_code 
           CUR2.STATUS_CODE,
           CUR2.ORG_NO,
           CUR2.CHK_CYCLE,
           CUR2.LAST_CHK_DATE,
           CUR2.CHECKER_NO,
           CUR2.MR_SECT_NO,
           SYSDATE);
      ELSE
        UPDATE DW_S_DISTR_ENERGY_WKST
           SET WORKDAY_NUM = V_WORKDAY_NUM,
               END_DATE    = CUR2.END_DATE,
               TIME_STAMP  = SYSDATE
         WHERE APP_NO = CUR2.APP_NO
           AND STEP_NO = CUR2.STEP_NO
           AND LAST_STEP_NO = V_LAST_STEP_NO;
        IF CUR2.STATE = 'ABORT' THEN
          UPDATE DW_S_DISTR_ENERGY_WKST
             SET TERMINATE_FLAG = '1',
                 TERMINATE_YMD  = TO_CHAR(CUR2.END_DATE, 'yyyymmdd')
           WHERE APP_NO = CUR2.APP_NO;
        ELSE
          UPDATE DW_S_DISTR_ENERGY_WKST
             SET TERMINATE_FLAG = '0'
           WHERE APP_NO = CUR2.APP_NO;
        END IF;
      END IF;
    END LOOP;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_DISTR_ENERGY_WKST  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_DISTR_ENERGY_WKST  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;*/
  /******************************
  #function: �շֲ�ʽ��Դ���뻷���嵥  (���ʹ洢����)
  #version:1.01
  #author:liubin 32237
  #createdate:2014-09-22
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  /*PROCEDURE P_ETL_DW_S_DISTR_ENERGY_WKST(IN_YMD   VARCHAR2,
                                         OUT_CODE OUT NUMBER,
                                         OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_DISTR_ENERGY_WKST',
                                        IN_YMD);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼
    DELETE FROM SY_OM_DW_S_DISTR_ENERGY_WKST X
     WHERE (TO_CHAR(BGN_DATE, 'yyyymmdd') = IN_YMD)
        OR (TO_CHAR(END_DATE, 'yyyymmdd') = IN_YMD);
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
    INSERT INTO SY_OM_DW_S_DISTR_ENERGY_WKST
      (DATA_ID,
       PRO_ORG_NO,
       APP_ID,
       APP_NO,
       CUST_ID,
       MAIN_APP_ID,
       APP_MODE,
       HANDLE_DEPT_NO,
       HANDLE_TIME,
       CONTRACT_CAP,
       ORGN_CONTRACT_CAP,
       T_CONTRACT_CAP,
       REASON,
       CONTENT,
       POWER_USAGE,
       DMD_DATE,
       APP_TYPE_CODE,
       HANDLE_FLAG,
       REFUSE_REASON,
       RELA_APP_CODE,
       REMARK,
       MRD_FACTOR_CODE,
       PRIO_CODE,
       PRJ_NAME,
       INVESTOR,
       PRC_CAP,
       FINAL_CAP,
       BEGIN_DATE,
       FINISH_DATE,
       APPROVE_LEVEL,
       GC_TYPE_CODE,
       GC_ID,
       ABSO_MODE,
       GC_NO,
       GC_NAME,
       CUST_QUERY_NO,
       TMP_PAY_RELA_NO,
       ORGN_GC_NO,
       GC_SORT_CODE,
       GC_ADDR,
       TRADE_CODE,
       SHIFT_NO,
       VOLT_CODE,
       HEC_INDUSTRY_CODE,
       HOLIDAY,
       ARC_DATE,
       RETURN_FLAG,
       TERMINATE_FLAG,
       TERMINATE_YMD,
       LAST_STEP_NO,
       STEP_NO,
       STEP_NAME,
       SUB_PRO_FLAG,
       BGN_DATE,
       END_DATE,
       WORKDAY_NUM,
       WKST_STATUS_CODE,
       STATUS_CODE,
       ORG_NO,
       CHK_CYCLE,
       LAST_CHK_DATE,
       CHECKER_NO,
       MR_SECT_NO,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             APP_ID,
             APP_NO,
             CUST_ID,
             MAIN_APP_ID,
             APP_MODE,
             HANDLE_DEPT_NO,
             HANDLE_TIME,
             CONTRACT_CAP,
             ORGN_CONTRACT_CAP,
             T_CONTRACT_CAP,
             REASON,
             CONTENT,
             POWER_USAGE,
             DMD_DATE,
             APP_TYPE_CODE,
             HANDLE_FLAG,
             REFUSE_REASON,
             RELA_APP_CODE,
             REMARK,
             MRD_FACTOR_CODE,
             PRIO_CODE,
             PRJ_NAME,
             INVESTOR,
             PRC_CAP,
             FINAL_CAP,
             BEGIN_DATE,
             FINISH_DATE,
             APPROVE_LEVEL,
             GC_TYPE_CODE,
             GC_ID,
             ABSO_MODE,
             GC_NO,
             GC_NAME,
             CUST_QUERY_NO,
             TMP_PAY_RELA_NO,
             ORGN_GC_NO,
             GC_SORT_CODE,
             GC_ADDR,
             TRADE_CODE,
             SHIFT_NO,
             VOLT_CODE,
             HEC_INDUSTRY_CODE,
             HOLIDAY,
             ARC_DATE,
             RETURN_FLAG,
             TERMINATE_FLAG,
             TERMINATE_YMD,
             LAST_STEP_NO,
             STEP_NO,
             STEP_NAME,
             SUB_PRO_FLAG,
             BGN_DATE,
             END_DATE,
             WORKDAY_NUM,
             WKST_STATUS_CODE,
             STATUS_CODE,
             ORG_NO,
             CHK_CYCLE,
             LAST_CHK_DATE,
             CHECKER_NO,
             MR_SECT_NO,
             TIME_STAMP
        FROM DW_S_DISTR_ENERGY_WKST A
       WHERE (TO_CHAR(BGN_DATE, 'yyyymmdd') = IN_YMD)
          OR (TO_CHAR(END_DATE, 'yyyymmdd') = IN_YMD);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_DISTR_ENERGY_WKST  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_DISTR_ENERGY_WKST  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;*/

  /******************************
  #function: �·ֲ�ʽ��Դ���뻷���嵥  (��ȡ�洢����)
  #version:1.01
  #author:liubin 32237
  #createdate:2014-09-22
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ENT_DW_S_DISTR_ENERGY_MON(IN_YM    VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
  
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --����ģʽ��1:����; 2:����
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_S_DISTR_ENERGY_MON',
                                        IN_YM);
    --���ó�ȡ���̣��������ݳ�ȡ����ȡ�������OMAC�û��µ�DW_S_DISTR_ENERGY_WKST��
    P_INS_DW_S_DISTR_ENERGY_MON(IN_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --�������͹��̣��ӹ����OMAC�û��µ�DW_S_DISTR_ENERGY_WKST��ȡ���ݲ��뵽�����OMAC�û��µ�DW_S_DISTR_ENERGY_WKST��
      P_ETL_DW_S_DISTR_ENERGY_MON(IN_YM, OUT_CODE, OUT_MSG);
    END IF;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ENT_DW_S_DISTR_ENERGY_MON  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ENT_DW_S_DISTR_ENERGY_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    
  END;

  /******************************
  #function: �·ֲ�ʽ��Դ���뻷���嵥  (��ȡ�洢����)
  #version:1.01
  #author:liubin 32237
  #createdate:2014-09-22
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_INS_DW_S_DISTR_ENERGY_MON(IN_YM    VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
    --��ȡ��ʡ�ĵ�λ����
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    --����
    V_YM           VARCHAR2(6);
    V_DATE_START_D DATE; --��ʼʱ��
    V_DATE_END_D   DATE; --����ʱ��
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_S_DISTR_ENERGY_MON',
                                        IN_YM);
  
    V_YM           := SUBSTR(IN_YM, 1, 6);
    V_DATE_END_D   := TO_DATE(V_YM || '26' || ' 00:00:00',
                              'YYYY-MM-DD HH24:MI:SS');
    V_DATE_START_D := ADD_MONTHS(V_DATE_END_D, -1);
  
    --����ҵ�������Ա��־ǿ���н������������ݣ�Ҫ��ɾ��ԭ�еĳ�ȡ�ļ�¼
    DELETE FROM DW_S_DISTR_ENERGY_MON X;
  
    --��ʼ����ͳ��,���뵽��������OMAC��DW_S_DISTR_ENERGY_WKST
    INSERT INTO DW_S_DISTR_ENERGY_MON
      (DATA_ID,
       PRO_ORG_NO,
       APP_ID,
       STAT_YM,
       APP_NO,
       CUST_ID,
       MAIN_APP_ID,
       APP_MODE,
       HANDLE_DEPT_NO,
       HANDLE_TIME,
       CONTRACT_CAP,
       ORGN_CONTRACT_CAP,
       T_CONTRACT_CAP,
       REASON,
       CONTENT,
       POWER_USAGE,
       DMD_DATE,
       APP_TYPE_CODE,
       HANDLE_FLAG,
       REFUSE_REASON,
       RELA_APP_CODE,
       REMARK,
       MRD_FACTOR_CODE,
       PRIO_CODE,
       PRJ_NAME,
       INVESTOR,
       PRC_CAP,
       FINAL_CAP,
       BEGIN_DATE,
       FINISH_DATE,
       APPROVE_LEVEL,
       GC_TYPE_CODE,
       GC_ID,
       ABSO_MODE,
       GC_NO,
       GC_NAME,
       CUST_QUERY_NO,
       TMP_PAY_RELA_NO,
       ORGN_GC_NO,
       GC_SORT_CODE,
       GC_ADDR,
       TRADE_CODE,
       SHIFT_NO,
       VOLT_CODE,
       HEC_INDUSTRY_CODE,
       HOLIDAY,
       ARC_DATE,
       RETURN_FLAG,
       TERMINATE_FLAG,
       TERMINATE_YMD,
       LAST_STEP_NO,
       STEP_NO,
       STEP_NAME,
       SUB_PRO_FLAG,
       BGN_DATE,
       END_DATE,
       WORKDAY_NUM,
       WKST_STATUS_CODE,
       STATUS_CODE,
       ORG_NO,
       CHK_CYCLE,
       LAST_CHK_DATE,
       CHECKER_NO,
       MR_SECT_NO,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             APP_ID,
             V_YM,
             APP_NO,
             CUST_ID,
             MAIN_APP_ID,
             APP_MODE,
             HANDLE_DEPT_NO,
             HANDLE_TIME,
             CONTRACT_CAP,
             ORGN_CONTRACT_CAP,
             T_CONTRACT_CAP,
             REASON,
             CONTENT,
             POWER_USAGE,
             DMD_DATE,
             APP_TYPE_CODE,
             HANDLE_FLAG,
             REFUSE_REASON,
             RELA_APP_CODE,
             REMARK,
             MRD_FACTOR_CODE,
             PRIO_CODE,
             PRJ_NAME,
             INVESTOR,
             PRC_CAP,
             FINAL_CAP,
             BEGIN_DATE,
             FINISH_DATE,
             APPROVE_LEVEL,
             GC_TYPE_CODE,
             GC_ID,
             ABSO_MODE,
             GC_NO,
             GC_NAME,
             CUST_QUERY_NO,
             TMP_PAY_RELA_NO,
             ORGN_GC_NO,
             GC_SORT_CODE,
             GC_ADDR,
             TRADE_CODE,
             SHIFT_NO,
             VOLT_CODE,
             HEC_INDUSTRY_CODE,
             HOLIDAY,
             ARC_DATE,
             RETURN_FLAG,
             TERMINATE_FLAG,
             TERMINATE_YMD,
             LAST_STEP_NO,
             STEP_NO,
             STEP_NAME,
             SUB_PRO_FLAG,
             BGN_DATE,
             END_DATE,
             WORKDAY_NUM,
             WKST_STATUS_CODE,
             STATUS_CODE,
             ORG_NO,
             CHK_CYCLE,
             LAST_CHK_DATE,
             CHECKER_NO,
             MR_SECT_NO,
             SYSDATE
        FROM DW_S_DISTR_ENERGY_WKST A
       WHERE (BGN_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D)
          OR (END_DATE BETWEEN V_DATE_START_D AND V_DATE_END_D);
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_INS_DW_S_DISTR_ENERGY_MON  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_INS_DW_S_DISTR_ENERGY_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;
  /******************************
  #function: �·ֲ�ʽ��Դ���뻷���嵥  (���ʹ洢����)
  #version:1.01
  #author:liubin 32237
  #createdate:2014-09-22
  #input:IN_YEAR  ͳ������
  #input:in_org_no  ���絥λ���
  #modifyexplain:
  *********************/
  PROCEDURE P_ETL_DW_S_DISTR_ENERGY_MON(IN_YM    VARCHAR2,
                                        OUT_CODE OUT NUMBER,
                                        OUT_MSG  OUT VARCHAR2) IS
    --��־ID
    V_DATA_ID VARCHAR2(24);
  BEGIN
    --��¼��ʼ��־
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_S_DISTR_ENERGY_MON',
                                        IN_YM);
    --ɾ��ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ���ԭ�еĳ�ȡ�ļ�¼
    DELETE FROM SY_OM_DW_S_DISTR_ENERGY_MON X WHERE X.STAT_YM = IN_YM;
    --��ʼ�������ݵ�ͬ��ʣ����ӵ������OMAC�����ݲֿ���ͬ��ʣ�
    INSERT INTO SY_OM_DW_S_DISTR_ENERGY_MON
      (DATA_ID,
       PRO_ORG_NO,
       APP_ID,
       STAT_YM,
       APP_NO,
       CUST_ID,
       MAIN_APP_ID,
       APP_MODE,
       HANDLE_DEPT_NO,
       HANDLE_TIME,
       CONTRACT_CAP,
       ORGN_CONTRACT_CAP,
       T_CONTRACT_CAP,
       REASON,
       CONTENT,
       POWER_USAGE,
       DMD_DATE,
       APP_TYPE_CODE,
       HANDLE_FLAG,
       REFUSE_REASON,
       RELA_APP_CODE,
       REMARK,
       MRD_FACTOR_CODE,
       PRIO_CODE,
       PRJ_NAME,
       INVESTOR,
       PRC_CAP,
       FINAL_CAP,
       BEGIN_DATE,
       FINISH_DATE,
       APPROVE_LEVEL,
       GC_TYPE_CODE,
       GC_ID,
       ABSO_MODE,
       GC_NO,
       GC_NAME,
       CUST_QUERY_NO,
       TMP_PAY_RELA_NO,
       ORGN_GC_NO,
       GC_SORT_CODE,
       GC_ADDR,
       TRADE_CODE,
       SHIFT_NO,
       VOLT_CODE,
       HEC_INDUSTRY_CODE,
       HOLIDAY,
       ARC_DATE,
       RETURN_FLAG,
       TERMINATE_FLAG,
       TERMINATE_YMD,
       LAST_STEP_NO,
       STEP_NO,
       STEP_NAME,
       SUB_PRO_FLAG,
       BGN_DATE,
       END_DATE,
       WORKDAY_NUM,
       WKST_STATUS_CODE,
       STATUS_CODE,
       ORG_NO,
       CHK_CYCLE,
       LAST_CHK_DATE,
       CHECKER_NO,
       MR_SECT_NO,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             APP_ID,
             STAT_YM,
             APP_NO,
             CUST_ID,
             MAIN_APP_ID,
             APP_MODE,
             HANDLE_DEPT_NO,
             HANDLE_TIME,
             CONTRACT_CAP,
             ORGN_CONTRACT_CAP,
             T_CONTRACT_CAP,
             REASON,
             CONTENT,
             POWER_USAGE,
             DMD_DATE,
             APP_TYPE_CODE,
             HANDLE_FLAG,
             REFUSE_REASON,
             RELA_APP_CODE,
             REMARK,
             MRD_FACTOR_CODE,
             PRIO_CODE,
             PRJ_NAME,
             INVESTOR,
             PRC_CAP,
             FINAL_CAP,
             BEGIN_DATE,
             FINISH_DATE,
             APPROVE_LEVEL,
             GC_TYPE_CODE,
             GC_ID,
             ABSO_MODE,
             GC_NO,
             GC_NAME,
             CUST_QUERY_NO,
             TMP_PAY_RELA_NO,
             ORGN_GC_NO,
             GC_SORT_CODE,
             GC_ADDR,
             TRADE_CODE,
             SHIFT_NO,
             VOLT_CODE,
             HEC_INDUSTRY_CODE,
             HOLIDAY,
             ARC_DATE,
             RETURN_FLAG,
             TERMINATE_FLAG,
             TERMINATE_YMD,
             LAST_STEP_NO,
             STEP_NO,
             STEP_NAME,
             SUB_PRO_FLAG,
             BGN_DATE,
             END_DATE,
             WORKDAY_NUM,
             WKST_STATUS_CODE,
             STATUS_CODE,
             ORG_NO,
             CHK_CYCLE,
             LAST_CHK_DATE,
             CHECKER_NO,
             MR_SECT_NO,
             TIME_STAMP
        FROM DW_S_DISTR_ENERGY_MON A
       WHERE A.STAT_YM = IN_YM;
    --OUT_CODEΪ1�������гɹ�,�ύ����
    OUT_CODE := 1;
    OUT_MSG  := 'ִ�� P_ETL_DW_S_DISTR_ENERGY_MON  �ɹ�';
    COMMIT;
    --��¼����������־
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --�쳣����
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODEΪ0��������ʧ��,�ع�����
      OUT_CODE := 0;
      OUT_MSG  := 'ִ�� P_ETL_DW_S_DISTR_ENERGY_MON  �����쳣' || ',�쳣��ϢΪ��' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --��¼�쳣������־
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  FUNCTION DECODE_BE(V_PARAM         VARCHAR2,
                     V_DEFAULTRESULT VARCHAR2,
                     V_RETURNRESULT  VARCHAR2,
                     V_OTHERRSULT    VARCHAR2) RETURN VARCHAR2 IS
  BEGIN
  
    IF V_DEFAULTRESULT = V_PARAM THEN
      RETURN V_RETURNRESULT;
    ELSE
      RETURN V_OTHERRSULT;
    END IF;
  
  END;

  --���ճ��Ȳ���ַ���
  PROCEDURE SP_PARSESTRING_LENGTH(P_STRING   IN VARCHAR2,
                                  DELMLENGTH IN NUMBER,
                                  P_T_STRING OUT T_STRING) IS
    M_STRING VARCHAR2(4000);
    M_LENGTH NUMBER := 0;
    M_CTR    NUMBER := 1;
  BEGIN
    /* Raise a Error if the length of the delimiter is not 1 */
    IF DELMLENGTH = 0 THEN
      RAISE_APPLICATION_ERROR(-20001, 'Delimiter LENGTH should be of ZERO');
      RETURN;
    END IF;
  
    M_LENGTH := LENGTH(P_STRING);
  
    IF MOD(M_LENGTH, DELMLENGTH) <> 0 THEN
      RAISE_APPLICATION_ERROR(-20002,
                              '��ֵ��ַ�������Ϊ�ָ�ȵ�������!');
      RETURN;
    END IF;
  
    M_STRING := P_STRING;
    FOR I IN 1 .. (M_LENGTH / DELMLENGTH) LOOP
      P_T_STRING(I) := SUBSTR(M_STRING, 1, DELMLENGTH);
      M_STRING := SUBSTR(M_STRING, DELMLENGTH + 1);
    END LOOP;
  END;
END PKG_YWGK_DW_BE;
/
