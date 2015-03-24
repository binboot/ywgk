CREATE OR REPLACE PACKAGE pkg_ywgk_dw_mp IS

		/**
      过程名称：DW_D_AMMETER_INST/月度电能表安装统计入口过程
      作者：jpl
      编写日期：2014-03-07 01:37
      过程描述：按月统计电能表安装情况,被数据库JOB调用
      统计频度：按月抽取,次月1日零点
      入参格式：I_DATA ：YYYYMMDD
      修改人:
      修改日期:
    **/
		PROCEDURE p_ent_dw_d_ammeter_inst(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		PROCEDURE p_ins_dw_d_ammeter_inst(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		PROCEDURE p_etl_dw_d_ammeter_inst(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		/**
      过程名称：P_ENT_DW_D_IT_INST/月度互感器安装统计入口过程
      作者：jpl
      编写日期：2014-03-07 01:37
      过程描述：按月统计互感器安装情况,被数据库JOB调用
      统计频度：按月抽取,次月1日零点
      入参格式：I_DATA ：YYYYMMDD
      修改人:
      修改日期:
    **/
		PROCEDURE p_ent_dw_d_it_inst(i_data   VARCHAR2,
																 out_code OUT NUMBER,
																 out_msg  OUT VARCHAR2);

		PROCEDURE p_ins_dw_d_it_inst(i_data   VARCHAR2,
																 out_code OUT NUMBER,
																 out_msg  OUT VARCHAR2);

		PROCEDURE p_etl_dw_d_it_inst(i_data   VARCHAR2,
																 out_code OUT NUMBER,
																 out_msg  OUT VARCHAR2);

		/**
      过程名称：P_ENT_DW_D_TERMINAL_INST/月度采集终端安装统计入口过程
      作者：jpl
      编写日期：2014-03-07 01:37
      过程描述：按月统计采集终端安装情况,被数据库JOB调用
      统计频度：按月抽取,次月1日零点
      入参格式：I_DATA ：YYYYMMDD
      修改人:
      修改日期:
    **/
		PROCEDURE p_ent_dw_d_terminal_inst(i_data   VARCHAR2,
																			 out_code OUT NUMBER,
																			 out_msg  OUT VARCHAR2);

		PROCEDURE p_ins_dw_d_terminal_inst(i_data   VARCHAR2,
																			 out_code OUT NUMBER,
																			 out_msg  OUT VARCHAR2);

		PROCEDURE p_etl_dw_d_terminal_inst(i_data   VARCHAR2,
																			 out_code OUT NUMBER,
																			 out_msg  OUT VARCHAR2);

		/**
      过程名称：P_ENT_DW_D_AMMETER_RUN/月度电能表运行情况统计入口过程
      作者：jpl
      编写日期：2014-03-07 01:37
      过程描述：按月统计电能表运行情况情况,被数据库JOB调用
      统计频度：按月抽取,次月1日零点
      入参格式：I_DATA ：YYYYMMDD
      修改人:
      修改日期:
    **/
		PROCEDURE p_ent_dw_d_ammeter_run(i_data   VARCHAR2,
																		 out_code OUT NUMBER,
																		 out_msg  OUT VARCHAR2);

		PROCEDURE p_ins_dw_d_ammeter_run(i_data   VARCHAR2,
																		 out_code OUT NUMBER,
																		 out_msg  OUT VARCHAR2);

		PROCEDURE p_etl_dw_d_ammeter_run(i_data   VARCHAR2,
																		 out_code OUT NUMBER,
																		 out_msg  OUT VARCHAR2);

		/**
      过程名称：P_ENT_DW_D_IT_RUN/月度互感器运行情况统计入口过程
      作者：jpl
      编写日期：2014-03-07 01:37
      过程描述：按月统计互感器运行情况情况,被数据库JOB调用
      统计频度：按月抽取,次月1日零点
      入参格式：I_DATA ：YYYYMMDD
      修改人:
      修改日期:
    **/
		PROCEDURE p_ent_dw_d_it_run(i_data   VARCHAR2,
																out_code OUT NUMBER,
																out_msg  OUT VARCHAR2);

		PROCEDURE p_ins_dw_d_it_run(i_data   VARCHAR2,
																out_code OUT NUMBER,
																out_msg  OUT VARCHAR2);

		PROCEDURE p_etl_dw_d_it_run(i_data   VARCHAR2,
																out_code OUT NUMBER,
																out_msg  OUT VARCHAR2);

		/**
      过程名称：P_ENT_DW_D_TERMINAL_RUN/月度采集终端运行情况统计入口过程
      作者：jpl
      编写日期：2014-03-07 01:37
      过程描述：按月统计采集终端运行情况情况,被数据库JOB调用
      统计频度：按月抽取,次月1日零点
      入参格式：I_DATA ：YYYYMMDD
      修改人:
      修改日期:
    **/
		PROCEDURE p_ent_dw_d_terminal_run(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		PROCEDURE p_ins_dw_d_terminal_run(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		PROCEDURE p_etl_dw_d_terminal_run(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		-- Author  : XIANXIANGK
		-- Created : 2014-3-3
		-- Purpose : 业务管控数据仓库程序包-计量
		/********************************************************************
    #function:月度计量设备出入库统计/DW_D_INOUT_STOCK 入口过程
    #version:1.0
    #author: KXX
    #createdate:2014-3-3
    #input:i_data  统计频率(月)
    #describe:
    ********************************************************************/
		PROCEDURE p_ent_dw_d_inout_stock(i_data   VARCHAR2,
																		 out_code OUT NUMBER,
																		 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备出入库统计/DW_D_INOUT_STOCK 抽取过程
    ********************************************************************/
		PROCEDURE p_ins_dw_d_inout_stock(i_data   VARCHAR2,
																		 out_code OUT NUMBER,
																		 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备出入库统计/DW_D_INOUT_STOCK 推送过程
    ********************************************************************/
		PROCEDURE p_etl_dw_d_inout_stock(i_data   VARCHAR2,
																		 out_code OUT NUMBER,
																		 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备周期轮换统计/DW_D_MD_CYC_ROTATE 入口过程
    #version:1.0
    #author: KXX
    #createdate:2014-3-3
    #input:i_data  统计频率(月)
    #describe:
    ********************************************************************/
		PROCEDURE p_ent_dw_d_md_cyc_rotate(i_data   VARCHAR2,
																			 out_code OUT NUMBER,
																			 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备周期轮换统计/DW_D_MD_CYC_ROTATE 抽取过程
    ********************************************************************/
		PROCEDURE p_ins_dw_d_md_cyc_rotate(i_data   VARCHAR2,
																			 out_code OUT NUMBER,
																			 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备周期轮换统计/DW_D_MD_CYC_ROTATE 推送过程
    ********************************************************************/
		PROCEDURE p_etl_dw_d_md_cyc_rotate(i_data   VARCHAR2,
																			 out_code OUT NUMBER,
																			 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备库存统计/DW_D_STOCK 入口过程
    #version:1.0
    #author: KXX
    #createdate:2014-3-4
    #input:i_data  统计频率(月)
    #describe:
    ********************************************************************/
		PROCEDURE p_ent_dw_d_stock(i_data   VARCHAR2,
															 out_code OUT NUMBER,
															 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备库存统计/DW_D_STOCK 抽取过程
    ********************************************************************/
		PROCEDURE p_ins_dw_d_stock(i_data   VARCHAR2,
															 out_code OUT NUMBER,
															 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备库存统计/DW_D_STOCK 推送过程
    ********************************************************************/
		PROCEDURE p_etl_dw_d_stock(i_data   VARCHAR2,
															 out_code OUT NUMBER,
															 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备报废统计/DW_D_MD_SCRAP 入口过程
    #version:1.0
    #author: KXX
    #createdate:2014-3-4
    #input:i_data  统计频率(月)
    #describe:
    ********************************************************************/
		PROCEDURE p_ent_dw_d_md_scrap(i_data   VARCHAR2,
																	out_code OUT NUMBER,
																	out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备报废统计/DW_D_MD_SCRAP 抽取过程
    ********************************************************************/
		PROCEDURE p_ins_dw_d_md_scrap(i_data   VARCHAR2,
																	out_code OUT NUMBER,
																	out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备报废统计/DW_D_MD_SCRAP 推送过程
    ********************************************************************/
		PROCEDURE p_etl_dw_d_md_scrap(i_data   VARCHAR2,
																	out_code OUT NUMBER,
																	out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备故障明细/DW_D_MD_FAULT_DET 入口过程
    #version:1.0
    #author: KXX
    #createdate:2014-3-5
    #input:i_data  统计频率(月)
    #describe:
    ********************************************************************/
		PROCEDURE p_ent_dw_d_md_fault_det(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备故障明细/DW_D_MD_FAULT_DET 抽取过程
    ********************************************************************/
		PROCEDURE p_ins_dw_d_md_fault_det(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备故障明细/DW_D_MD_FAULT_DET 推送过程
    ********************************************************************/
		PROCEDURE p_etl_dw_d_md_fault_det(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备故障统计/DW_D_MD_FAULT_HANDLE 入口过程
    #version:1.0
    #author: KXX
    #createdate:2014-3-5
    #input:i_data  统计频率(月)
    #describe:
    ********************************************************************/
    PROCEDURE p_ent_dw_d_md_fault_handle(i_data   VARCHAR2,
                                         out_code OUT NUMBER,
                                         out_msg  OUT VARCHAR2);

    /********************************************************************
    #function:月度计量设备故障统计/DW_D_MD_FAULT_HANDLE 抽取过程
    ********************************************************************/
    PROCEDURE p_ins_dw_d_md_fault_handle(i_data   VARCHAR2,
                                         out_code OUT NUMBER,
                                         out_msg  OUT VARCHAR2);

    /********************************************************************
    #function:月度计量设备故障统计/DW_D_MD_FAULT_HANDLE 推送过程
    ********************************************************************/
    PROCEDURE p_etl_dw_d_md_fault_handle(i_data   VARCHAR2,
                                         out_code OUT NUMBER,
                                         out_msg  OUT VARCHAR2);
		/********************************************************************
    #function:月度计量设备现场检测未完成明细/DW_D_MD_FIELD_DET 入口过程
    #version:1.0
    #author: KXX
    #createdate:2014-3-5
    #input:i_data  统计频率(月)
    #describe:
    ********************************************************************/
		PROCEDURE p_ent_dw_d_md_field_det(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备现场检测未完成明细/DW_D_MD_FIELD_DET 抽取过程
    ********************************************************************/
		PROCEDURE p_ins_dw_d_md_field_det(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备现场检测未完成明细/DW_D_MD_FIELD_DET 推送过程
    ********************************************************************/
		PROCEDURE p_etl_dw_d_md_field_det(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备现场检测统计/DW_D_MD_FIELD_CHECK 入口过程
    #version:1.0
    #author: KXX
    #createdate:2014-3-6
    #input:i_data  统计频率(月)
    #describe:
    ********************************************************************/
		PROCEDURE p_ent_dw_d_md_field_check(i_data   VARCHAR2,
																				out_code OUT NUMBER,
																				out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备现场检测统计/DW_D_MD_FIELD_CHECK 抽取过程
    ********************************************************************/
		PROCEDURE p_ins_dw_d_md_field_check(i_data   VARCHAR2,
																				out_code OUT NUMBER,
																				out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量设备现场检测统计/DW_D_MD_FIELD_CHECK 推送过程
    ********************************************************************/
		PROCEDURE p_etl_dw_d_md_field_check(i_data   VARCHAR2,
																				out_code OUT NUMBER,
																				out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量资产配送汇总/DW_D_MDASSET_DISTR 入口过程
    #version:1.0
    #author: KXX
    #createdate:2014-3-6
    #input:i_data  统计频率(月)
    #describe:
    ********************************************************************/
		PROCEDURE p_ent_dw_d_mdasset_distr(i_data   VARCHAR2,
																			 out_code OUT NUMBER,
																			 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量资产配送汇总/DW_D_MDASSET_DISTR 抽取过程
    ********************************************************************/
		PROCEDURE p_ins_dw_d_mdasset_distr(i_data   VARCHAR2,
																			 out_code OUT NUMBER,
																			 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度计量资产配送汇总/DW_D_MDASSET_DISTR 推送过程
    ********************************************************************/
		PROCEDURE p_etl_dw_d_mdasset_distr(i_data   VARCHAR2,
																			 out_code OUT NUMBER,
																			 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度高压计量装置首次检定未完成明细/DW_D_HV_CHECK_DET 入口过程
    #version:1.0
    #author: KXX
    #createdate:2014-3-6
    #input:i_data  统计频率(月)
    #describe:
    ********************************************************************/
		PROCEDURE p_ent_dw_d_hv_check_det(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度高压计量装置首次检定未完成明细/DW_D_HV_CHECK_DET 抽取过程
    ********************************************************************/
		PROCEDURE p_ins_dw_d_hv_check_det(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度高压计量装置首次检定未完成明细/DW_D_HV_CHECK_DET 推送过程
    ********************************************************************/
		PROCEDURE p_etl_dw_d_hv_check_det(i_data   VARCHAR2,
																			out_code OUT NUMBER,
																			out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度高压计量装置首次检定统计/DW_D_HV_FIRST_CHECK 入口过程
    #version:1.0
    #author: KXX
    #createdate:2014-3-7
    #input:i_data  统计频率(月)
    #describe:
    ********************************************************************/
		PROCEDURE p_ent_dw_d_hv_first_check(i_data   VARCHAR2,
																				out_code OUT NUMBER,
																				out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度高压计量装置首次检定统计/DW_D_HV_FIRST_CHECK 抽取过程
    ********************************************************************/
		PROCEDURE p_ins_dw_d_hv_first_check(i_data   VARCHAR2,
																				out_code OUT NUMBER,
																				out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度高压计量装置首次检定统计/DW_D_HV_FIRST_CHECK 推送过程
    ********************************************************************/
		PROCEDURE p_etl_dw_d_hv_first_check(i_data   VARCHAR2,
																				out_code OUT NUMBER,
																				out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度标准计量装置考核及复查统计/DW_D_STD_MD_ASSESS 入口过程
    #version:1.0
    #author: KXX
    #createdate:2014-3-7
    #input:i_data  统计频率(月)
    #describe:
    ********************************************************************/
		PROCEDURE p_ent_dw_d_std_md_assess(i_data   VARCHAR2,
																			 out_code OUT NUMBER,
																			 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度标准计量装置考核及复查统计/DW_D_STD_MD_ASSESS 抽取过程
    ********************************************************************/
		PROCEDURE p_ins_dw_d_std_md_assess(i_data   VARCHAR2,
																			 out_code OUT NUMBER,
																			 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度标准计量装置考核及复查统计/DW_D_STD_MD_ASSESS 推送过程
    ********************************************************************/
		PROCEDURE p_etl_dw_d_std_md_assess(i_data   VARCHAR2,
																			 out_code OUT NUMBER,
																			 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度标准计量设备溯源统计/DW_D_STD_MD_RSLT 入口过程
    #version:1.0
    #author: KXX
    #createdate:2014-3-7
    #input:i_data  统计频率(月)
    #describe:
    ********************************************************************/
		PROCEDURE p_ent_dw_d_std_md_rslt(i_data   VARCHAR2,
																		 out_code OUT NUMBER,
																		 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度标准计量设备溯源统计/DW_D_STD_MD_RSLT 抽取过程
    ********************************************************************/
		PROCEDURE p_ins_dw_d_std_md_rslt(i_data   VARCHAR2,
																		 out_code OUT NUMBER,
																		 out_msg  OUT VARCHAR2);

		/********************************************************************
    #function:月度标准计量设备溯源统计/DW_D_STD_MD_RSLT 推送过程
    ********************************************************************/
		PROCEDURE p_etl_dw_d_std_md_rslt(i_data   VARCHAR2,
																		 out_code OUT NUMBER,
																		 out_msg  OUT VARCHAR2);
                                     
                                     
    /**
    过程名称：p_ent_dw_d_md_stat/月度计量设备统计
    作者：WangWensheng
    编写日期：2014-03-07 01:37
    过程描述：月度计量设备统计,被数据库JOB调用
    统计频度：按月抽取,次月1日零点
    入参格式：I_DATA ：YYYYMMDD
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_D_MD_STAT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_INS_DW_D_MD_STAT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);
  PROCEDURE P_ETL_DW_D_MD_STAT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2);

  /********************************************************************
  #function:日计量设备周期轮换统计/DW_D_MD_CYC_DAY 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-4-19
  #input:i_data  统计频率(日)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_MD_CYC_DAY(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);
                                     
  /********************************************************************
  #function:日计量设备周期轮换统计/DW_D_MD_CYC_DAY 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_MD_CYC_DAY(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);
                                  
  /********************************************************************
  #function:日计量设备周期轮换统计/DW_D_MD_CYC_DAY 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_MD_CYC_DAY(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2);
                                  
  /********************************************************************
  #function:日计量设备现场检测统计/DW_D_MD_FIELD_DAY 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-4-19
  #input:i_data  统计频率(日)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_MD_FIELD_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
                                      
  /********************************************************************
  #function:日计量设备现场检测统计/DW_D_MD_FIELD_DAY 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_MD_FIELD_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
                                      
  /********************************************************************
  #function:日计量设备现场检测统计/DW_D_MD_FIELD_DAY 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_MD_FIELD_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
                                      
  /********************************************************************
  #function:日高压计量装置首次检定统计/DW_D_HV_FIRST_DAY 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-4-19
  #input:i_data  统计频率(日)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_HV_FIRST_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
                                      
  /********************************************************************
  #function:日高压计量装置首次检定统计/DW_D_HV_FIRST_DAY 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_HV_FIRST_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
                                      
  /********************************************************************
  #function:日高压计量装置首次检定统计/DW_D_HV_FIRST_DAY 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_HV_FIRST_DAY(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2);
                                                                           
END pkg_ywgk_dw_mp;
/
CREATE OR REPLACE PACKAGE BODY PKG_YWGK_DW_MP IS

  /**
    过程名称：DW_D_AMMETER_INST/月度电能表安装统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：按月统计电能表安装情况,被数据库JOB调用
    统计频度：按月抽取,次月1日零点
    入参格式：I_DATA ：YYYYMMDD
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_D_AMMETER_INST(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_AMMETER_INST', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_D_AMMETER_INST(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_D_AMMETER_INST(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_AMMETER_INST A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE A.STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_AMMETER_INST  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_AMMETER_INST  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_D_AMMETER_INST(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_BEG_YMD DATE := TO_DATE(V_YM, 'YYYYMM');
    V_END_YMD DATE := LAST_DAY(TO_DATE(V_YM, 'YYYYMM'));
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_AMMETER_INST', I_DATA);
    DELETE FROM DW_D_AMMETER_INST WHERE STAT_YM = V_YM;
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_D_AMMETER_INST
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         AMMETER_SORT,
         AMMETER_TYPE_CODE,
         MEAS_THEORY,
         AMMETER_NORM,
         AP_PRE_LEVEL_CODE,
         SUPPLIER,
         ARRIVE_BATCH_NO,
         WIRING_MODE,
         IS_SMART_METER,
         INST_REASON,
         INST_NUM,
         BACK_DOWN_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '',
               V_YM,
               AMMETER_SORT,
               AMMETER_TYPE_CODE,
               MEAS_THEORY,
               AMMETER_NORM,
               AP_PRE_LEVEL_CODE,
               SUPPLIER,
               ARRIVE_BATCH_NO,
               WIRING_MODE,
               IS_SMART_METER,
               INST_REASON,
               SUM(INST_NUM),
               SUM(BACK_DOWN_NUM),
               SYSDATE
          FROM (  
                SELECT /*+parallel(a 8) parallel(e 8)*/
                 A.BELONG_DEPT ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_SORT', A.SORT_CODE) AMMETER_SORT,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_TYPE_CODE', A.TYPE_CODE) AMMETER_TYPE_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_THEORY', A.MEAS_THEORY) MEAS_THEORY,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_NORM',A.SPEC_CODE) AMMETER_NORM,
                  --当无功表的有功准确度等级为空时获取无功准确度等级，当有功表的无功准确度等级为空时获取有功准确度等级
                  PKG_GK_PUBLIC.F_TRANS_CODE('AP_PRE_LEVEL_CODE',
                                             NVL(A.AP_PRE_LEVEL_CODE,A.RP_PRE_LEVEL_CODE)) AP_PRE_LEVEL_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', A.MANUFACTURER) SUPPLIER,
                  R.RCV_NO ARRIVE_BATCH_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('WIRING_MODE', A.WIRING_MODE) WIRING_MODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('IS_FLAG',
                                             DECODE(A.SORT_CODE, '10', '1', '0')) IS_SMART_METER,
                  E.TYPE_CODE INST_REASON,
                  CASE E.TYPE_CODE WHEN '01' THEN COUNT(1) END  INST_NUM,
                  CASE E.TYPE_CODE WHEN '02' THEN COUNT(1) END  BACK_DOWN_NUM 
                  FROM SY_SG_D_METER A, SY_SG_S_DEV_IR E, SY_SG_D_ARRIVE R
                 WHERE A.BELONG_DEPT LIKE TSS.ORG_NO || '%'
                   AND E.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.METER_ID = E.EQUIP_ID
                   AND E.EQUIP_TYPE_CODE = '01' --电能表
                   AND E.TYPE_CODE IN ('01', '02')
                   AND E.IR_DATE BETWEEN V_BEG_YMD AND V_END_YMD
                   AND A.RCV_ID = R.RCV_ID(+)
                 GROUP BY A.BELONG_DEPT,
                           A.SORT_CODE,
                           A.TYPE_CODE,
                           A.MEAS_THEORY,
                           PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_NORM',A.SPEC_CODE),
                           PKG_GK_PUBLIC.F_TRANS_CODE('AP_PRE_LEVEL_CODE',NVL(A.AP_PRE_LEVEL_CODE,A.RP_PRE_LEVEL_CODE)),
                           A.MANUFACTURER,
                           R.RCV_NO,
                           A.WIRING_MODE,
                           E.TYPE_CODE
                UNION ALL
                SELECT /*+parallel(a 8) parallel(e 8)*/
                 A.BELONG_DEPT ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_SORT', A.SORT_CODE) AMMETER_SORT,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_TYPE_CODE', A.TYPE_CODE) AMMETER_TYPE_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_THEORY', A.MEAS_THEORY) MEAS_THEORY,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_NORM',A.SPEC_CODE) AMMETER_NORM,
                  --当无功表的有功准确度等级为空时获取无功准确度等级，当有功表的无功准确度等级为空时获取有功准确度等级
                  PKG_GK_PUBLIC.F_TRANS_CODE('AP_PRE_LEVEL_CODE',
                                             NVL(A.AP_PRE_LEVEL_CODE,A.RP_PRE_LEVEL_CODE)) AP_PRE_LEVEL_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', A.MANUFACTURER) SUPPLIER,
                  R.RCV_NO ARRIVE_BATCH_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('WIRING_MODE', A.WIRING_MODE) WIRING_MODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('IS_FLAG',
                                             DECODE(A.SORT_CODE, '10', '1', '0')) IS_SMART_METER,
                  E.TYPE_CODE INST_REASON,
                  CASE E.TYPE_CODE WHEN '01' THEN COUNT(1) END  INST_NUM,
                  CASE E.TYPE_CODE WHEN '02' THEN COUNT(1) END  BACK_DOWN_NUM
                  FROM SY_SG_D_METER      A,
                        SY_SG_ARC_S_DEV_IR E,
                        SY_SG_D_ARRIVE     R
                 WHERE A.BELONG_DEPT LIKE TSS.ORG_NO || '%'
                   AND E.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.METER_ID = E.EQUIP_ID
                   AND E.EQUIP_TYPE_CODE = '01' --电能表
                   AND E.TYPE_CODE IN ('01', '02')
                   AND E.IR_DATE BETWEEN V_BEG_YMD AND V_END_YMD
                   AND A.RCV_ID = R.RCV_ID(+)
                 GROUP BY A.BELONG_DEPT,
                           A.SORT_CODE,
                           A.TYPE_CODE,
                           A.MEAS_THEORY,
                           PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_NORM',A.SPEC_CODE),
                           PKG_GK_PUBLIC.F_TRANS_CODE('AP_PRE_LEVEL_CODE',NVL(A.AP_PRE_LEVEL_CODE,A.RP_PRE_LEVEL_CODE)),
                           A.MANUFACTURER,
                           R.RCV_NO,
                           A.WIRING_MODE,
                           E.TYPE_CODE)
         GROUP BY ORG_NO,
                  AMMETER_SORT,
                  AMMETER_TYPE_CODE,
                  MEAS_THEORY,
                  AMMETER_NORM,
                  AP_PRE_LEVEL_CODE,
                  SUPPLIER,
                  ARRIVE_BATCH_NO,
                  WIRING_MODE,
                  IS_SMART_METER,
                  INST_REASON;
      COMMIT;
    END LOOP;
    --地市公司数据统计
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
    
      INSERT INTO DW_D_AMMETER_INST
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         AMMETER_SORT,
         AMMETER_TYPE_CODE,
         MEAS_THEORY,
         AMMETER_NORM,
         AP_PRE_LEVEL_CODE,
         SUPPLIER,
         ARRIVE_BATCH_NO,
         WIRING_MODE,
         IS_SMART_METER,
         INST_REASON,
         INST_NUM,
         BACK_DOWN_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '',
               V_YM,
               AMMETER_SORT,
               AMMETER_TYPE_CODE,
               MEAS_THEORY,
               AMMETER_NORM,
               AP_PRE_LEVEL_CODE,
               SUPPLIER,
               ARRIVE_BATCH_NO,
               WIRING_MODE,
               IS_SMART_METER,
               INST_REASON,
               SUM(INST_NUM),
               SUM(BACK_DOWN_NUM),
               SYSDATE
          FROM (
                
                SELECT /*+parallel(a 8) parallel(e 8)*/
                 A.BELONG_DEPT ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_SORT', A.SORT_CODE) AMMETER_SORT,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_TYPE_CODE', A.TYPE_CODE) AMMETER_TYPE_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_THEORY', A.MEAS_THEORY) MEAS_THEORY,
                  A.SPEC_CODE AMMETER_NORM,
                  --当无功表的有功准确度等级为空时获取无功准确度等级，当有功表的无功准确度等级为空时获取有功准确度等级
                  PKG_GK_PUBLIC.F_TRANS_CODE('AP_PRE_LEVEL_CODE',
                                             NVL(A.AP_PRE_LEVEL_CODE,A.RP_PRE_LEVEL_CODE)) AP_PRE_LEVEL_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', A.MANUFACTURER) SUPPLIER,
                  R.RCV_NO ARRIVE_BATCH_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('WIRING_MODE', A.WIRING_MODE) WIRING_MODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('IS_FLAG',
                                             DECODE(A.SORT_CODE, '10', '1', '0')) IS_SMART_METER,
                  E.TYPE_CODE INST_REASON,
                  CASE E.TYPE_CODE WHEN '01' THEN COUNT(1) END  INST_NUM,
                  CASE E.TYPE_CODE WHEN '02' THEN COUNT(1) END  BACK_DOWN_NUM
                  FROM SY_SG_D_METER A, SY_SG_S_DEV_IR E, SY_SG_D_ARRIVE R
                 WHERE A.BELONG_DEPT LIKE TSS.ORG_NO || '%'
                   AND E.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.METER_ID = E.EQUIP_ID
                   AND E.EQUIP_TYPE_CODE = '01' --电能表
                   AND E.TYPE_CODE IN ('01', '02')
                   AND E.IR_DATE BETWEEN V_BEG_YMD AND V_END_YMD
                   AND A.RCV_ID = R.RCV_ID(+)
                 GROUP BY A.BELONG_DEPT,
                           A.SORT_CODE,
                           A.TYPE_CODE,
                           A.MEAS_THEORY,
                           A.SPEC_CODE,
                           PKG_GK_PUBLIC.F_TRANS_CODE('AP_PRE_LEVEL_CODE',NVL(A.AP_PRE_LEVEL_CODE,A.RP_PRE_LEVEL_CODE)),
                           A.MANUFACTURER,
                           R.RCV_NO,
                           A.WIRING_MODE,
                           E.TYPE_CODE
                UNION ALL
                SELECT /*+parallel(a 8) parallel(e 8)*/
                 A.BELONG_DEPT ORG_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_SORT', A.SORT_CODE) AMMETER_SORT,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_TYPE_CODE', A.TYPE_CODE) AMMETER_TYPE_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_THEORY', A.MEAS_THEORY) MEAS_THEORY,
                  A.SPEC_CODE AMMETER_NORM,
                  --当无功表的有功准确度等级为空时获取无功准确度等级，当有功表的无功准确度等级为空时获取有功准确度等级
                  PKG_GK_PUBLIC.F_TRANS_CODE('AP_PRE_LEVEL_CODE',
                                             NVL(A.AP_PRE_LEVEL_CODE,A.RP_PRE_LEVEL_CODE)) AP_PRE_LEVEL_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', A.MANUFACTURER) SUPPLIER,
                  R.RCV_NO ARRIVE_BATCH_NO,
                  PKG_GK_PUBLIC.F_TRANS_CODE('WIRING_MODE', A.WIRING_MODE) WIRING_MODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('IS_FLAG',
                                             DECODE(A.SORT_CODE, '10', '1', '0')) IS_SMART_METER,
                  E.TYPE_CODE INST_REASON,
                  CASE E.TYPE_CODE WHEN '01' THEN COUNT(1) END  INST_NUM,
                  CASE E.TYPE_CODE WHEN '02' THEN COUNT(1) END  BACK_DOWN_NUM
                  FROM SY_SG_D_METER      A,
                        SY_SG_ARC_S_DEV_IR E,
                        SY_SG_D_ARRIVE     R
                 WHERE A.BELONG_DEPT = TSS.ORG_NO
                   AND E.ORG_NO = TSS.ORG_NO
                   AND A.METER_ID = E.EQUIP_ID
                   AND E.EQUIP_TYPE_CODE = '01' --电能表
                   AND E.TYPE_CODE IN ('01', '02')
                   AND E.IR_DATE BETWEEN V_BEG_YMD AND V_END_YMD
                   AND A.RCV_ID = R.RCV_ID(+)
                 GROUP BY A.BELONG_DEPT,
                           A.SORT_CODE,
                           A.TYPE_CODE,
                           A.MEAS_THEORY,
                           A.SPEC_CODE,
                           PKG_GK_PUBLIC.F_TRANS_CODE('AP_PRE_LEVEL_CODE',NVL(A.AP_PRE_LEVEL_CODE,A.RP_PRE_LEVEL_CODE)),
                           A.MANUFACTURER,
                           R.RCV_NO,
                           A.WIRING_MODE,
                           E.TYPE_CODE)
         GROUP BY ORG_NO,
                  AMMETER_SORT,
                  AMMETER_TYPE_CODE,
                  MEAS_THEORY,
                  AMMETER_NORM,
                  AP_PRE_LEVEL_CODE,
                  SUPPLIER,
                  ARRIVE_BATCH_NO,
                  WIRING_MODE,
                  IS_SMART_METER,
                  INST_REASON;
    
      /*       INSERT INTO DW_D_AMMETER_INST
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       AMMETER_SORT,
       AMMETER_TYPE_CODE,
       MEAS_THEORY,
       AMMETER_NORM,
       AP_PRE_LEVEL_CODE,
       SUPPLIER,
       ARRIVE_BATCH_NO,
       WIRING_MODE,
       IS_SMART_METER,
       INST_REASON,
       INST_NUM,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             ORG_NO,
             '',
             V_YM,
             AMMETER_SORT,
             AMMETER_TYPE_CODE,
             MEAS_THEORY,
             AMMETER_NORM,
             AP_PRE_LEVEL_CODE,
             SUPPLIER,
             ARRIVE_BATCH_NO,
             WIRING_MODE,
             IS_SMART_METER,
             INST_REASON,
             SUM(INST_NUM),
             SYSDATE
        FROM (SELECT \*+parallel(A 4) parallel(T 4)*\
               A.BELONG_DEPT ORG_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_SORT', A.SORT_CODE) AMMETER_SORT,
               PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_TYPE_CODE', A.TYPE_CODE) AMMETER_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_THEORY', A.MEAS_THEORY) MEAS_THEORY,
               A.SPEC_CODE AMMETER_NORM,
               PKG_GK_PUBLIC.F_TRANS_CODE('AP_PRE_LEVEL_CODE',
                                          A.AP_PRE_LEVEL_CODE) AP_PRE_LEVEL_CODE,
               A.MANUFACTURER SUPPLIER,
               A.LOT_NO ARRIVE_BATCH_NO,
               PKG_GK_PUBLIC.F_TRANS_CODE('WIRING_MODE', A.WIRING_MODE) WIRING_MODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('IS_FLAG',
                                          DECODE(A.SORT_CODE,
                                                 '10',
                                                 '1',
                                                 '0')) IS_SMART_METER,
               T.INST_REASON,
               COUNT(A.METER_ID) INST_NUM
                FROM SY_SG_D_METER A,
                     (SELECT A.METER_ID,
                             DECODE(A.FLAG1,
                                    1,
                                    '02',
                                    DECODE(A.FLAG2, 1, '02', '01')) INST_REASON
                        FROM (SELECT A.APP_NO,
                                     A.MP_ID,
                                     MAX(DECODE(C.CHG_DESC,
                                                '01',
                                                C.METER_ID,
                                                '02',
                                                C.METER_ID)) METER_ID,
                                     MAX(DECODE(C.CHG_DESC, '02', 1, 0)) FLAG1,
                                     --更换（判断标志）：直接换取
                                     MAX(DECODE(C.CHG_DESC, '04', 1, 0)) FLAG2 --更换（判断标志）：一拆一装
                                FROM SY_SG_S_MP_SCHEME          A,
                                     SY_SG_S_METER_SCHEME       C,
                                     SY_SG_S_MP_METER_RELA_SCHM B
                               WHERE A.MP_SCHEME_ID = B.MP_SCHEME_ID
                                 AND B.ID2 = C.ID
                               GROUP BY A.APP_NO, A.MP_ID) A,
                             SY_SG_S_DEV_IR B
                       WHERE A.APP_NO = B.APP_NO
                         AND A.MP_ID = B.MP_ID
                         AND A.METER_ID = B.EQUIP_ID
                         AND B.EQUIP_TYPE_CODE = '01' --电能表
                         AND B.TYPE_CODE = '01'
                         AND B.IR_DATE BETWEEN
                             TO_date(V_BEG_YMD, 'YYYY-MM-DD') 
                         AND TO_date(V_END_YMD, 'YYYY-MM-DD')
                         AND B.ORG_NO = TSS.ORG_NO 
                      UNION ALL
                      SELECT A.METER_ID,
                             DECODE(A.FLAG1,
                                    1,
                                    '02',
                                    DECODE(A.FLAG2, 1, '02', '01')) INST_REASON
                        FROM (SELECT A.APP_NO,
                                     A.MP_ID,
                                     MAX(DECODE(C.CHG_DESC,
                                                '01',
                                                C.METER_ID,
                                                '02',
                                                C.METER_ID)) METER_ID,
                                     MAX(DECODE(C.CHG_DESC, '02', 1, 0)) FLAG1,
                                     --更换（判断标志）：直接换取
                                     MAX(DECODE(C.CHG_DESC, '04', 1, 0)) FLAG2 --更换（判断标志）：一拆一装
                                FROM SY_SG_ARC_S_MP_SCHEME          A,
                                     SY_SG_ARC_S_METER_SCHEME       C,
                                     SY_SG_ARC_S_MP_METER_RELA_SCHM B
                               WHERE A.MP_SCHEME_ID = B.MP_SCHEME_ID
                                 AND B.ID2 = C.ID
                               GROUP BY A.APP_NO, A.MP_ID) A,
                             SY_SG_ARC_S_DEV_IR B
                       WHERE A.APP_NO = B.APP_NO
                         AND A.MP_ID = B.MP_ID
                         AND A.METER_ID = B.EQUIP_ID
                         AND B.EQUIP_TYPE_CODE = '01' --电能表
                         AND B.TYPE_CODE = '01'
                         AND B.IR_DATE BETWEEN
                             TO_DATE(V_BEG_YMD, 'yyyymmdd') AND
                             TO_DATE(V_END_YMD, 'yyyymmdd')
                         AND B.ORG_NO = TSS.ORG_NO ) T
               WHERE A.METER_ID = T.METER_ID
                 AND A.BELONG_DEPT = TSS.ORG_NO 
               GROUP BY A.BELONG_DEPT,
                        A.SORT_CODE,
                        A.TYPE_CODE,
                        A.MEAS_THEORY,
                        A.SPEC_CODE,
                        A.AP_PRE_LEVEL_CODE,
                        A.MANUFACTURER,
                        A.LOT_NO,
                        A.WIRING_MODE,
                        T.INST_REASON)
       GROUP BY ORG_NO,
                AMMETER_SORT,
                AMMETER_TYPE_CODE,
                MEAS_THEORY,
                AMMETER_NORM,
                AP_PRE_LEVEL_CODE,
                SUPPLIER,
                ARRIVE_BATCH_NO,
                WIRING_MODE,
                IS_SMART_METER,
                INST_REASON;    */
      COMMIT;
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_AMMETER_INST  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_AMMETER_INST  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_D_AMMETER_INST(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_AMMETER_INST', I_DATA);
    --当月
    V_YM := SUBSTR(I_DATA, 1, 6);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_AMMETER_INST X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_AMMETER_INST
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       AMMETER_SORT,
       AMMETER_TYPE_CODE,
       MEAS_THEORY,
       AMMETER_NORM,
       AP_PRE_LEVEL_CODE,
       SUPPLIER,
       ARRIVE_BATCH_NO,
       WIRING_MODE,
       IS_SMART_METER,
       INST_REASON,
       INST_NUM,
       BACK_DOWN_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       AMMETER_SORT,
       AMMETER_TYPE_CODE,
       MEAS_THEORY,
       AMMETER_NORM,
       AP_PRE_LEVEL_CODE,
       SUPPLIER,
       ARRIVE_BATCH_NO,
       WIRING_MODE,
       IS_SMART_METER,
       INST_REASON,
       INST_NUM,
       BACK_DOWN_NUM,
       TIME_STAMP
        FROM DW_D_AMMETER_INST A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_AMMETER_INST  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_AMMETER_INST  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /**
    过程名称：P_ENT_DW_D_IT_INST/月度互感器安装统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：按月统计互感器安装情况,被数据库JOB调用
    统计频度：按月抽取,次月1日零点
    入参格式：I_DATA ：YYYYMMDD
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_D_IT_INST(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_IT_INST', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_D_IT_INST(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_D_IT_INST(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_IT_INST A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE A.STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_IT_INST  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_IT_INST  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_D_IT_INST(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_BEG_YMD DATE := TO_DATE(V_YM, 'YYYYMM');
    V_END_YMD DATE := LAST_DAY(TO_DATE(V_YM, 'YYYYMM'));
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_IT_INST', I_DATA);
    DELETE FROM DW_D_IT_INST WHERE STAT_YM = V_YM;
    --区县公司及下级单位 
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_D_IT_INST
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         IT_SORT_CODE,
         MEAS_IT_THEORY,
         IT_SORT_TYPE,
         TA_PRE_CODE,
         TV_PRE_CODE,
         SUPPLIER,
         ARRIVE_BATCH_NO,
         INST_REASON,
         INST_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '',
               V_YM,
               IT_SORT_CODE,
               MEAS_IT_THEORY,
               IT_SORT_TYPE,
               TA_PRE_CODE,
               TV_PRE_CODE,
               SUPPLIER,
               A2.RCV_NO, --ARRIVE_BATCH_NO,
               INST_REASON,
               SUM(INST_NUM),
               SYSDATE
          FROM (SELECT /*+parallel(A 4) parallel(T 4)*/
                 A.BELONG_DEPT ORG_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_CODE', A.SORT_CODE) IT_SORT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_IT_THEORY',
                                            A.MEAS_PRINCIPLE_CODE) MEAS_IT_THEORY,
                 PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_TYPE', A.TYPE_CODE) IT_SORT_TYPE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('IT_ACCURACY_CODE',
                                            A.TA_PRE_CODE) TA_PRE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('IT_ACCURACY_CODE',
                                            A.TV_PRE_CODE) TV_PRE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', A.MANUFACTURER) SUPPLIER,
                 A.RCV_ID, --A.LOT_NO ARRIVE_BATCH_NO,
                 T.INST_REASON,
                 COUNT(A.IT_ID) INST_NUM
                  FROM SY_SG_D_IT A,
                       (SELECT A.IT_ID,
                               DECODE(A.FLAG1,
                                      1,
                                      '02',
                                      DECODE(A.FLAG2, 1, '02', '01')) INST_REASON
                          FROM (SELECT A.APP_NO,
                                       A.MP_ID,
                                       MAX(DECODE(C.CHG_DESC,
                                                  '01',
                                                  C.ID,
                                                  '02',
                                                  C.ID)) IT_ID,
                                       MAX(DECODE(C.CHG_DESC, '02', 1, 0)) FLAG1,
                                       MAX(DECODE(C.CHG_DESC, '04', 1, 0)) FLAG2
                                  FROM SY_SG_S_MP_SCHEME      A,
                                       SY_SG_S_IT_SCHEME      C,
                                       SY_SG_S_MI_RELA_SCHEME B
                                 WHERE A.MP_SCHEME_ID = B.MP_SCHEME_ID
                                   AND B.SCHEMA_ID = C.SCHEMA_ID
                                 GROUP BY A.APP_NO, A.MP_ID) A,
                               SY_SG_S_DEV_IR B
                         WHERE A.APP_NO = B.APP_NO
                           AND A.MP_ID = B.MP_ID
                           AND A.IT_ID = B.EQUIP_ID
                           AND B.EQUIP_TYPE_CODE = '02' --互感器
                           AND B.TYPE_CODE = '01' --安装
                           AND B.IR_DATE BETWEEN V_BEG_YMD AND V_END_YMD
                           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                        UNION ALL
                        SELECT A.IT_ID,
                               DECODE(A.FLAG1,
                                      1,
                                      '02',
                                      DECODE(A.FLAG2, 1, '02', '01')) INST_REASON
                          FROM (SELECT A.APP_NO,
                                       A.MP_ID,
                                       MAX(DECODE(C.CHG_DESC,
                                                  '01',
                                                  C.ID,
                                                  '02',
                                                  C.ID)) IT_ID,
                                       MAX(DECODE(C.CHG_DESC, '02', 1, 0)) FLAG1,
                                       MAX(DECODE(C.CHG_DESC, '04', 1, 0)) FLAG2
                                  FROM SY_SG_ARC_S_MP_SCHEME      A,
                                       SY_SG_ARC_S_IT_SCHEME      C,
                                       SY_SG_ARC_S_MI_RELA_SCHEME B
                                 WHERE A.MP_SCHEME_ID = B.MP_SCHEME_ID
                                   AND B.SCHEMA_ID = C.SCHEMA_ID
                                 GROUP BY A.APP_NO, A.MP_ID) A,
                               SY_SG_ARC_S_DEV_IR B
                         WHERE A.APP_NO = B.APP_NO
                           AND A.MP_ID = B.MP_ID
                           AND A.IT_ID = B.EQUIP_ID
                           AND B.EQUIP_TYPE_CODE = '02' --互感器
                           AND B.TYPE_CODE = '01' --安装
                           AND B.IR_DATE BETWEEN V_BEG_YMD AND V_END_YMD
                           AND B.ORG_NO LIKE TSS.ORG_NO || '%') T
                 WHERE A.IT_ID = T.IT_ID
                   AND A.BELONG_DEPT LIKE TSS.ORG_NO || '%'
                 GROUP BY A.BELONG_DEPT,
                          A.SORT_CODE,
                          A.MEAS_PRINCIPLE_CODE,
                          A.TYPE_CODE,
                          A.TA_PRE_CODE,
                          A.TV_PRE_CODE,
                          A.MANUFACTURER,
                          A.RCV_ID,
                          T.INST_REASON) A1,
               SY_SG_D_ARRIVE A2
         WHERE A1.RCV_ID = A2.RCV_ID(+)
         GROUP BY ORG_NO,
                  IT_SORT_CODE,
                  MEAS_IT_THEORY,
                  IT_SORT_TYPE,
                  TA_PRE_CODE,
                  TV_PRE_CODE,
                  SUPPLIER,
                  RCV_NO, --ARRIVE_BATCH_NO
                  INST_REASON;
      COMMIT;
    END LOOP;
  
    --地市州公司 
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
    
      INSERT INTO DW_D_IT_INST
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         IT_SORT_CODE,
         MEAS_IT_THEORY,
         IT_SORT_TYPE,
         TA_PRE_CODE,
         TV_PRE_CODE,
         SUPPLIER,
         ARRIVE_BATCH_NO,
         INST_REASON,
         INST_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '',
               V_YM,
               IT_SORT_CODE,
               MEAS_IT_THEORY,
               IT_SORT_TYPE,
               TA_PRE_CODE,
               TV_PRE_CODE,
               SUPPLIER,
               RCV_NO, --ARRIVE_BATCH_NO,
               INST_REASON,
               SUM(INST_NUM),
               SYSDATE
          FROM (SELECT /*+parallel(A 4) parallel(T 4)*/
                 A.BELONG_DEPT ORG_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_CODE', A.SORT_CODE) IT_SORT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_IT_THEORY',
                                            A.MEAS_PRINCIPLE_CODE) MEAS_IT_THEORY,
                 PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_TYPE', A.TYPE_CODE) IT_SORT_TYPE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('IT_ACCURACY_CODE',
                                            A.TA_PRE_CODE) TA_PRE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('IT_ACCURACY_CODE',
                                            A.TV_PRE_CODE) TV_PRE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', A.MANUFACTURER) SUPPLIER,
                 A.RCV_ID, --A.LOT_NO ARRIVE_BATCH_NO,
                 T.INST_REASON,
                 COUNT(A.IT_ID) INST_NUM
                  FROM SY_SG_D_IT A,
                       (SELECT A.IT_ID,
                               DECODE(A.FLAG1,
                                      1,
                                      '02',
                                      DECODE(A.FLAG2, 1, '02', '01')) INST_REASON
                          FROM (SELECT A.APP_NO,
                                       A.MP_ID,
                                       MAX(DECODE(C.CHG_DESC,
                                                  '01',
                                                  C.ID,
                                                  '02',
                                                  C.ID)) IT_ID,
                                       MAX(DECODE(C.CHG_DESC, '02', 1, 0)) FLAG1,
                                       MAX(DECODE(C.CHG_DESC, '04', 1, 0)) FLAG2
                                  FROM SY_SG_S_MP_SCHEME      A,
                                       SY_SG_S_IT_SCHEME      C,
                                       SY_SG_S_MI_RELA_SCHEME B
                                 WHERE A.MP_SCHEME_ID = B.MP_SCHEME_ID
                                   AND B.SCHEMA_ID = C.SCHEMA_ID
                                 GROUP BY A.APP_NO, A.MP_ID) A,
                               SY_SG_S_DEV_IR B
                         WHERE A.APP_NO = B.APP_NO
                           AND A.MP_ID = B.MP_ID
                           AND A.IT_ID = B.EQUIP_ID
                           AND B.EQUIP_TYPE_CODE = '02' --互感器
                           AND B.TYPE_CODE = '01' --安装
                           AND B.IR_DATE BETWEEN V_BEG_YMD AND V_END_YMD
                           AND B.ORG_NO = TSS.ORG_NO
                        UNION ALL
                        SELECT A.IT_ID,
                               DECODE(A.FLAG1,
                                      1,
                                      '02',
                                      DECODE(A.FLAG2, 1, '02', '01')) INST_REASON
                          FROM (SELECT A.APP_NO,
                                       A.MP_ID,
                                       MAX(DECODE(C.CHG_DESC,
                                                  '01',
                                                  C.ID,
                                                  '02',
                                                  C.ID)) IT_ID,
                                       MAX(DECODE(C.CHG_DESC, '02', 1, 0)) FLAG1,
                                       MAX(DECODE(C.CHG_DESC, '04', 1, 0)) FLAG2
                                  FROM SY_SG_ARC_S_MP_SCHEME      A,
                                       SY_SG_ARC_S_IT_SCHEME      C,
                                       SY_SG_ARC_S_MI_RELA_SCHEME B
                                 WHERE A.MP_SCHEME_ID = B.MP_SCHEME_ID
                                   AND B.SCHEMA_ID = C.SCHEMA_ID
                                 GROUP BY A.APP_NO, A.MP_ID) A,
                               SY_SG_ARC_S_DEV_IR B
                         WHERE A.APP_NO = B.APP_NO
                           AND A.MP_ID = B.MP_ID
                           AND A.IT_ID = B.EQUIP_ID
                           AND B.EQUIP_TYPE_CODE = '02' --互感器
                           AND B.TYPE_CODE = '01' --安装
                           AND B.IR_DATE BETWEEN V_BEG_YMD AND V_END_YMD
                           AND B.ORG_NO = TSS.ORG_NO) T
                 WHERE A.IT_ID = T.IT_ID
                   AND A.BELONG_DEPT = TSS.ORG_NO
                 GROUP BY A.BELONG_DEPT,
                          A.SORT_CODE,
                          A.MEAS_PRINCIPLE_CODE,
                          A.TYPE_CODE,
                          A.TA_PRE_CODE,
                          A.TV_PRE_CODE,
                          A.MANUFACTURER,
                          A.RCV_ID,
                          T.INST_REASON) A1,
               SY_SG_D_ARRIVE A2
         WHERE A1.RCV_ID = A2.RCV_ID(+)
         GROUP BY ORG_NO,
                  IT_SORT_CODE,
                  MEAS_IT_THEORY,
                  IT_SORT_TYPE,
                  TA_PRE_CODE,
                  TV_PRE_CODE,
                  SUPPLIER,
                  RCV_NO, --ARRIVE_BATCH_NO
                  INST_REASON;
      COMMIT;
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_IT_INST  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_IT_INST  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_D_IT_INST(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_IT_INST', I_DATA);
    --当月
    V_YM := SUBSTR(I_DATA, 1, 6);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_IT_INST X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_IT_INST
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       IT_SORT_CODE,
       MEAS_IT_THEORY,
       IT_SORT_TYPE,
       TA_PRE_CODE,
       TV_PRE_CODE,
       SUPPLIER,
       ARRIVE_BATCH_NO,
       INST_REASON,
       INST_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       IT_SORT_CODE,
       MEAS_IT_THEORY,
       IT_SORT_TYPE,
       TA_PRE_CODE,
       TV_PRE_CODE,
       SUPPLIER,
       ARRIVE_BATCH_NO,
       INST_REASON,
       INST_NUM,
       TIME_STAMP
        FROM DW_D_IT_INST A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_IT_INST  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_IT_INST  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /**
    过程名称：P_ENT_DW_D_TERMINAL_INST/月度采集终端安装统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：按月统计采集终端安装情况,被数据库JOB调用
    统计频度：按月抽取,次月1日零点
    入参格式：I_DATA ：YYYYMMDD
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_D_TERMINAL_INST(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_TERMINAL_INST', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_D_TERMINAL_INST(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_D_TERMINAL_INST(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_TERMINAL_INST A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE A.STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_TERMINAL_INST  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_TERMINAL_INST  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_D_TERMINAL_INST(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_BEG_YMD DATE := TO_DATE(V_YM || '01', 'YYYYMMDD');
    V_END_YMD DATE := ADD_MONTHS(V_BEG_YMD, 1);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_TERMINAL_INST', I_DATA);
    DELETE FROM DW_D_TERMINAL_INST WHERE STAT_YM = V_YM;
    --当前方案表
    INSERT INTO TMP_DW_D_TERMINAL_INST
      (ORG_NO,
       ASSET_ID,
       INST_REASON,
       RCV_ID,
       MANUFACTURER,
       IR_DATE,
       SPEC_CODE,
       TERMINAL_MODEL_CODE,
       TERMINAL_TYPE_CODE)
    --当前方案表
      SELECT /*+parallel(E 4) parallel(F 4)*/
       F.DEPT_NO,
       E.ASSET_ID,
       E.INST_REASON,
       F.RCV_NO,
       F.MANUFACTURER,
       E.IR_DATE,
       F.SPEC_CODE,
       F.MODEL_CODE,
       E.TERMINAL_TYPE_CODE
        FROM (SELECT A.IR_DATE,
                     B.ASSET_ID,
                     DECODE(B.OLD_SCHEME_ID, NULL, '02', '01') INST_REASON,
                     B.TERMINAL_TYPE_CODE
                FROM SY_SG_R_TMNL_IR A, SY_SG_R_CP_DESIGN_SCHEME B
               WHERE A.DESIGN_SCHEME_ID = B.DESIGN_SCHEME_ID
                 AND B.CHG_MODE = '01' --新装
                 AND A.IR_FLAG = '1'
                 AND A.IR_DATE BETWEEN V_BEG_YMD AND V_END_YMD
              UNION ALL
              SELECT A.IR_DATE,
                     B.ASSET_ID,
                     DECODE(C.OLD_SCHEME_ID, NULL, '02', '01') INST_REASON,
                     C.TERMINAL_TYPE_CODE
                FROM SY_SG_R_TMNL_IR          A,
                     SY_SG_R_TMNL_IR_TASK     B,
                     SY_SG_R_CP_DESIGN_SCHEME C
               WHERE A.IR_TASK_ID = B.IR_TASK_ID
                 AND B.APP_NO = C.APP_NO
                 AND B.ASSET_ID = C.ASSET_ID
                 AND B.CHG_MODE = '01' --新装
                 AND A.IR_FLAG = '1'
                 AND A.IR_DATE BETWEEN V_BEG_YMD AND V_END_YMD) E,
             (SELECT Q.ID,
                     G.RCV_NO,
                     Q.MANUFACTURER,
                     Q.SPEC_CODE,
                     Q.DEPT_NO,
                     Q.MODEL_CODE
                FROM SY_SG_D_LC_EQUIP Q, SY_SG_D_ARRIVE G
               WHERE Q.RCV_ID = G.RCV_ID(+)
              --WHERE B.DEPT_NO LIKE TSS.ORG_NO || '%'
              /*  UNION ALL
              SELECT c.id, c.rcv_id, c.manufacturer, c.spec_code,
                      --修改青海库D_FMR_EQUIP表结构
                     c.dept_no, c.model_code
                FROM sy_sg_d_fmr_equip c*/
              -- WHERE C.DEPT_NO LIKE TSS.ORG_NO || '%'
              ) F
       WHERE E.ASSET_ID = F.ID;
    INSERT INTO TMP_DW_D_TERMINAL_INST
      (ORG_NO,
       ASSET_ID,
       INST_REASON,
       RCV_ID,
       MANUFACTURER,
       IR_DATE,
       SPEC_CODE,
       TERMINAL_MODEL_CODE,
       TERMINAL_TYPE_CODE)
      SELECT /*+parallel(E 4) parallel(F 4)*/
       F.DEPT_NO,
       E.ASSET_ID,
       E.INST_REASON,
       F.RCV_NO,
       F.MANUFACTURER,
       E.IR_DATE,
       F.SPEC_CODE,
       F.MODEL_CODE,
       E.TERMINAL_TYPE_CODE
        FROM (SELECT A.IR_DATE,
                     B.ASSET_ID,
                     DECODE(B.OLD_SCHEME_ID, NULL, '02', '01') INST_REASON,
                     B.TERMINAL_TYPE_CODE
                FROM SY_SG_ARC_R_TMNL_IR A, SY_SG_ARC_R_CP_DESIGN_SCHEME B
               WHERE A.DESIGN_SCHEME_ID = B.DESIGN_SCHEME_ID
                 AND B.CHG_MODE = '01' --新装
                 AND A.IR_FLAG = '1'
                 AND A.IR_DATE BETWEEN V_BEG_YMD AND V_END_YMD
              UNION ALL
              SELECT A.IR_DATE,
                     B.ASSET_ID,
                     DECODE(C.OLD_SCHEME_ID, NULL, '02', '01') INST_REASON,
                     C.TERMINAL_TYPE_CODE
                FROM SY_SG_ARC_R_TMNL_IR          A,
                     SY_SG_ARC_R_TMNL_IR_TASK     B,
                     SY_SG_ARC_R_CP_DESIGN_SCHEME C
               WHERE A.IR_TASK_ID = B.IR_TASK_ID
                 AND B.APP_NO = C.APP_NO
                 AND B.ASSET_ID = C.ASSET_ID
                 AND B.CHG_MODE = '01' --新装
                 AND A.IR_FLAG = '1'
                 AND A.IR_DATE BETWEEN V_BEG_YMD AND V_END_YMD) E,
             (SELECT Q.ID,
                     G.RCV_NO,
                     Q.MANUFACTURER,
                     Q.SPEC_CODE,
                     Q.DEPT_NO,
                     Q.MODEL_CODE
                FROM SY_SG_D_LC_EQUIP Q, SY_SG_D_ARRIVE G
               WHERE Q.RCV_ID = G.RCV_ID(+)
              --WHERE B.DEPT_NO LIKE TSS.ORG_NO || '%'
              /*     UNION ALL
              SELECT c.id, c.rcv_id, c.manufacturer, c.spec_code,
                      --修改青海库D_FMR_EQUIP表结构
                     c.dept_no, c.model_code
                FROM sy_sg_d_fmr_equip c*/
              -- WHERE C.DEPT_NO LIKE TSS.ORG_NO || '%'
              ) F
       WHERE E.ASSET_ID = F.ID;
  
    INSERT INTO DW_D_TERMINAL_INST
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       TERMINAL_TYPE_CODE,
       TERMINAL_MODEL_CODE,
       TERMINAL_NORM,
       SUPPLIER,
       ARRIVE_BATCH_NO,
       INST_REASON,
       INST_NUM,
       TIME_STAMP)
      SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
             V_PRO_ORG_NO,
             ORG_NO,
             '',
             V_YM,
             TERMINAL_TYPE_CODE,
             TERMINAL_MODEL_CODE,
             TERMINAL_NORM,
             SUPPLIER,
             ARRIVE_BATCH_NO,
             INST_REASON,
             SUM(INST_NUM),
             SYSDATE
        FROM (SELECT T.ORG_NO,
                     PKG_GK_PUBLIC.F_TRANS_CODE('COLL_TERMINAL_TYPE',
                                                T.TERMINAL_TYPE_CODE) TERMINAL_TYPE_CODE,
                     T.TERMINAL_MODEL_CODE,
                     PKG_GK_PUBLIC.F_TRANS_CODE('TERMINAL_NORM', T.SPEC_CODE) TERMINAL_NORM,
                     T.MANUFACTURER SUPPLIER,
                     T.RCV_ID ARRIVE_BATCH_NO,
                     T.INST_REASON,
                     COUNT(ASSET_ID) INST_NUM
                FROM TMP_DW_D_TERMINAL_INST T
               GROUP BY T.ORG_NO,
                        T.TERMINAL_TYPE_CODE,
                        T.TERMINAL_MODEL_CODE,
                        T.SPEC_CODE,
                        T.MANUFACTURER,
                        T.RCV_ID,
                        T.INST_REASON)
       GROUP BY ORG_NO,
                TERMINAL_TYPE_CODE,
                TERMINAL_MODEL_CODE,
                TERMINAL_NORM,
                SUPPLIER,
                ARRIVE_BATCH_NO,
                INST_REASON;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_TERMINAL_INST  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_TERMINAL_INST  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_D_TERMINAL_INST(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_TERMINAL_INST', I_DATA);
    --当月
    V_YM := SUBSTR(I_DATA, 1, 6);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_TERMINAL_INST X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_TERMINAL_INST
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       TERMINAL_TYPE_CODE,
       TERMINAL_MODEL_CODE,
       TERMINAL_NORM,
       SUPPLIER,
       ARRIVE_BATCH_NO,
       INST_REASON,
       INST_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       TERMINAL_TYPE_CODE,
       TERMINAL_MODEL_CODE,
       TERMINAL_NORM,
       SUPPLIER,
       ARRIVE_BATCH_NO,
       INST_REASON,
       INST_NUM,
       TIME_STAMP
        FROM DW_D_TERMINAL_INST A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_TERMINAL_INST  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_TERMINAL_INST  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /**
    过程名称：P_ENT_DW_D_AMMETER_RUN/月度电能表运行情况统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：按月统计电能表运行情况情况,被数据库JOB调用
    统计频度：按月抽取,次月1日零点
    入参格式：I_DATA ：YYYYMMDD
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_D_AMMETER_RUN(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_AMMETER_RUN', I_DATA);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_D_AMMETER_RUN(I_DATA, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_D_AMMETER_RUN(I_DATA, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_AMMETER_RUN A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE A.STAT_YM = SUBSTR(I_DATA, 1, 6)
         AND A.STAT_YMD = I_DATA;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_AMMETER_RUN  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_AMMETER_RUN  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_D_AMMETER_RUN(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_END_YMD DATE := LAST_DAY(TO_DATE(V_YM, 'YYYYMM'));
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_AMMETER_RUN', I_DATA);
    DELETE FROM DW_D_AMMETER_RUN
     WHERE STAT_YM = V_YM
       AND STAT_YMD = I_DATA;
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      INSERT INTO DW_D_AMMETER_RUN
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         STAT_YM,
         USAGE_TYPE_CODE,
         SUPPLIER,
         ARRIVE_BATCH_NO,
         MP_CAP,
         WIRING_MODE,
         VOLT_CODE,
         MP_TYPE_CODE,
         AMMETER_SORT,
         AMMETER_TYPE_CODE,
         MEAS_THEORY,
         AMMETER_NORM,
         AP_PRE_LEVEL_CODE,
         PR_CODE,
         AMMETER_RUN_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '',
               I_DATA,
               V_YM,
               USAGE_TYPE_CODE,
               SUPPLIER,
               ARRIVE_BATCH_NO,
               MP_CAP,
               WIRING_MODE,
               VOLT_CODE,
               MP_TYPE_CODE,
               AMMETER_SORT,
               AMMETER_TYPE_CODE,
               MEAS_THEORY,
               AMMETER_NORM,
               AP_PRE_LEVEL_CODE,
               PR_CODE,
               SUM(AMMETER_RUN_NUM),
               SYSDATE
          FROM (SELECT /*+parallel(A 4) parallel(B 4) parallel(C 4) parallel(D 4) parallel(E 4)*/
                 A.ORG_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE',
                                            B.USAGE_TYPE_CODE) USAGE_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', A.MANUFACTURER) SUPPLIER,
                 E.RCV_NO ARRIVE_BATCH_NO,
                 B.MP_CAP,
                 PKG_GK_PUBLIC.F_TRANS_CODE('WIRING_MODE', C.WIRING_MODE) WIRING_MODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('MP_TYPE_CODE', B.TYPE_CODE) MP_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_SORT', A.SORT_CODE) AMMETER_SORT,
                 PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_TYPE_CODE', A.TYPE_CODE) AMMETER_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_THEORY', C.MEAS_THEORY) MEAS_THEORY,
                 C.SPEC_CODE AMMETER_NORM,
                 PKG_GK_PUBLIC.F_TRANS_CODE('AP_PRE_LEVEL_CODE',
                                            C.AP_PRE_LEVEL_CODE) AP_PRE_LEVEL_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('PR_CODE', C.PR_CODE) PR_CODE,
                 COUNT(A.METER_ID) AMMETER_RUN_NUM
                  FROM SY_SG_C_METER         A,
                       SY_SG_C_MP            B,
                       SY_SG_D_METER         C,
                       SY_SG_C_METER_MP_RELA D,
                       SY_SG_D_ARRIVE        E
                 WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.METER_ID = D.METER_ID
                   AND D.MP_ID = B.MP_ID
                   AND B.ORG_NO LIKE TSS.ORG_NO || '%'
                   AND A.INST_DATE <= V_END_YMD
                   AND A.METER_ID = C.METER_ID
                   AND C.RCV_ID = E.RCV_ID(+)
                 GROUP BY A.ORG_NO,
                          B.USAGE_TYPE_CODE,
                          A.MANUFACTURER,
                          E.RCV_NO,
                          B.MP_CAP,
                          C.WIRING_MODE,
                          B.VOLT_CODE,
                          B.TYPE_CODE,
                          A.SORT_CODE,
                          A.TYPE_CODE,
                          C.MEAS_THEORY,
                          C.SPEC_CODE,
                          C.AP_PRE_LEVEL_CODE,
                          C.PR_CODE)
         GROUP BY ORG_NO,
                  USAGE_TYPE_CODE,
                  SUPPLIER,
                  ARRIVE_BATCH_NO,
                  MP_CAP,
                  WIRING_MODE,
                  VOLT_CODE,
                  MP_TYPE_CODE,
                  AMMETER_SORT,
                  AMMETER_TYPE_CODE,
                  MEAS_THEORY,
                  AMMETER_NORM,
                  AP_PRE_LEVEL_CODE,
                  PR_CODE;
    
      COMMIT;
    END LOOP;
    --
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
      INSERT INTO DW_D_AMMETER_RUN
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         STAT_YM,
         USAGE_TYPE_CODE,
         SUPPLIER,
         ARRIVE_BATCH_NO,
         MP_CAP,
         WIRING_MODE,
         VOLT_CODE,
         MP_TYPE_CODE,
         AMMETER_SORT,
         AMMETER_TYPE_CODE,
         MEAS_THEORY,
         AMMETER_NORM,
         AP_PRE_LEVEL_CODE,
         PR_CODE,
         AMMETER_RUN_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               '',
               I_DATA,
               V_YM,
               USAGE_TYPE_CODE,
               SUPPLIER,
               ARRIVE_BATCH_NO,
               MP_CAP,
               WIRING_MODE,
               VOLT_CODE,
               MP_TYPE_CODE,
               AMMETER_SORT,
               AMMETER_TYPE_CODE,
               MEAS_THEORY,
               AMMETER_NORM,
               AP_PRE_LEVEL_CODE,
               PR_CODE,
               SUM(AMMETER_RUN_NUM),
               SYSDATE
          FROM (SELECT /*+parallel(A 4) parallel(B 4) parallel(C 4) parallel(D 4) parallel(E 4)*/
                 A.ORG_NO,
                 PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE',
                                            B.USAGE_TYPE_CODE) USAGE_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', A.MANUFACTURER) SUPPLIER,
                 E.RCV_NO ARRIVE_BATCH_NO,
                 B.MP_CAP,
                 PKG_GK_PUBLIC.F_TRANS_CODE('WIRING_MODE', C.WIRING_MODE) WIRING_MODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE) VOLT_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('MP_TYPE_CODE', B.TYPE_CODE) MP_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_SORT', A.SORT_CODE) AMMETER_SORT,
                 PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_TYPE_CODE', A.TYPE_CODE) AMMETER_TYPE_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_THEORY', C.MEAS_THEORY) MEAS_THEORY,
                 C.SPEC_CODE AMMETER_NORM,
                 PKG_GK_PUBLIC.F_TRANS_CODE('AP_PRE_LEVEL_CODE',
                                            C.AP_PRE_LEVEL_CODE) AP_PRE_LEVEL_CODE,
                 PKG_GK_PUBLIC.F_TRANS_CODE('PR_CODE', C.PR_CODE) PR_CODE,
                 COUNT(A.METER_ID) AMMETER_RUN_NUM
                  FROM SY_SG_C_METER         A,
                       SY_SG_C_MP            B,
                       SY_SG_D_METER         C,
                       SY_SG_C_METER_MP_RELA D,
                       SY_SG_D_ARRIVE        E
                 WHERE A.ORG_NO = TSS.ORG_NO
                   AND A.METER_ID = D.METER_ID
                   AND D.MP_ID = B.MP_ID
                   AND B.ORG_NO = TSS.ORG_NO
                   AND A.INST_DATE <= V_END_YMD
                   AND A.METER_ID = C.METER_ID
                   AND C.RCV_ID = E.RCV_ID(+)
                 GROUP BY A.ORG_NO,
                          B.USAGE_TYPE_CODE,
                          A.MANUFACTURER,
                          E.RCV_NO,
                          B.MP_CAP,
                          C.WIRING_MODE,
                          B.VOLT_CODE,
                          B.TYPE_CODE,
                          A.SORT_CODE,
                          A.TYPE_CODE,
                          C.MEAS_THEORY,
                          C.SPEC_CODE,
                          C.AP_PRE_LEVEL_CODE,
                          C.PR_CODE)
         GROUP BY ORG_NO,
                  USAGE_TYPE_CODE,
                  SUPPLIER,
                  ARRIVE_BATCH_NO,
                  MP_CAP,
                  WIRING_MODE,
                  VOLT_CODE,
                  MP_TYPE_CODE,
                  AMMETER_SORT,
                  AMMETER_TYPE_CODE,
                  MEAS_THEORY,
                  AMMETER_NORM,
                  AP_PRE_LEVEL_CODE,
                  PR_CODE;
    
      COMMIT;
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_AMMETER_RUN  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_AMMETER_RUN  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_D_AMMETER_RUN(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_AMMETER_RUN', I_DATA);
    --当月
    V_YM := SUBSTR(I_DATA, 1, 6);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_AMMETER_RUN X
     WHERE X.STAT_YM = V_YM
       AND STAT_YMD = I_DATA;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_AMMETER_RUN
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       STAT_YM,
       USAGE_TYPE_CODE,
       SUPPLIER,
       ARRIVE_BATCH_NO,
       MP_CAP,
       WIRING_MODE,
       VOLT_CODE,
       MP_TYPE_CODE,
       AMMETER_SORT,
       AMMETER_TYPE_CODE,
       MEAS_THEORY,
       AMMETER_NORM,
       AP_PRE_LEVEL_CODE,
       PR_CODE,
       AMMETER_RUN_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YMD,
       STAT_YM,
       USAGE_TYPE_CODE,
       SUPPLIER,
       ARRIVE_BATCH_NO,
       MP_CAP,
       WIRING_MODE,
       VOLT_CODE,
       MP_TYPE_CODE,
       AMMETER_SORT,
       AMMETER_TYPE_CODE,
       MEAS_THEORY,
       AMMETER_NORM,
       AP_PRE_LEVEL_CODE,
       PR_CODE,
       AMMETER_RUN_NUM,
       TIME_STAMP
        FROM DW_D_AMMETER_RUN A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE STAT_YM = V_YM
         AND STAT_YMD = I_DATA
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_AMMETER_RUN  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_AMMETER_RUN  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /**
    过程名称：P_ENT_DW_D_IT_RUN/月度互感器运行情况统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：按月统计互感器运行情况情况,被数据库JOB调用
    统计频度：按月抽取,次月1日零点
    入参格式：I_DATA ：YYYYMMDD
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_D_IT_RUN(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_IT_RUN', I_DATA);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_D_IT_RUN(I_DATA, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_D_IT_RUN(I_DATA, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_IT_RUN A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE A.STAT_YM = SUBSTR(I_DATA, 1, 6)
         AND A.STAT_YMD = I_DATA;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_IT_RUN  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_IT_RUN  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_D_IT_RUN(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_END_YMD DATE := LAST_DAY(TO_DATE(V_YM, 'YYYYMM'));
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_IT_RUN', I_DATA);
    DELETE FROM DW_D_IT_RUN
     WHERE STAT_YM = V_YM
       AND STAT_YMD = I_DATA;
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      INSERT INTO DW_D_IT_RUN
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         STAT_YM,
         USAGE_TYPE_CODE,
         ARRIVE_BATCH_NO,
         SUPPLIER,
         MP_TYPE_CODE,
         IT_SORT_CODE,
         MEAS_IT_THEORY,
         IT_SORT_TYPE,
         IT_LINK_PHASE_CODE,
         VOLT_CODE,
         TA_PRE_CODE,
         TV_PRE_CODE,
         PR_CODE,
         MP_CAP,
         IT_RUN_NUM,
         TIME_STAMP)
        SELECT /*+parallel(A 8) parallel(B 8) parallel(C 8) parallel(D 8) parallel(E 8)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         '' PS_BUSI_AREA_CODE,
         I_DATA,
         V_YM,
         PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE', B.USAGE_TYPE_CODE) USAGE_TYPE_CODE,
         E.RCV_NO ARRIVE_BATCH_NO,
         PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
         PKG_GK_PUBLIC.F_TRANS_CODE('MP_TYPE_CODE', B.TYPE_CODE) MP_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_CODE', A.SORT_CODE) IT_SORT_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_IT_THEORY', D.MEAS_PRINCIPLE_CODE) MEAS_IT_THEORY,
         PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_TYPE', D.TYPE_CODE) IT_SORT_TYPE,
         PKG_GK_PUBLIC.F_TRANS_CODE('IT_LINK_PHASE_CODE', A.PHASE_CODE) IT_LINK_PHASE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE) VOLT_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('IT_ACCURACY_CODE', A.TA_PRE_CODE) TA_PRE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('IT_ACCURACY_CODE', A.TV_PRE_CODE) TV_PRE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('PR_CODE', D.PR_CODE) PR_CODE,
         B.MP_CAP,
         COUNT(A.IT_ID) IT_RUN_NUM,
         SYSDATE
          FROM SY_SG_C_IT_RUN     A,
               SY_SG_C_MP         B,
               SY_SG_C_MP_IT_RELA C,
               SY_SG_D_IT         D,
               SY_SG_D_ARRIVE     E
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.INST_DATE <= V_END_YMD
           AND A.IT_ID = C.IT_ID
           AND C.MP_ID = B.MP_ID
           AND B.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.IT_ID = D.IT_ID
           AND D.BELONG_DEPT LIKE TSS.ORG_NO || '%'
           AND D.RCV_ID = E.RCV_ID(+)
         GROUP BY A.ORG_NO,
                  B.USAGE_TYPE_CODE,
                  E.RCV_NO,
                  D.MANUFACTURER,
                  B.TYPE_CODE,
                  A.SORT_CODE,
                  D.MEAS_PRINCIPLE_CODE,
                  D.TYPE_CODE,
                  A.PHASE_CODE,
                  B.VOLT_CODE,
                  A.TA_PRE_CODE,
                  A.TV_PRE_CODE,
                  D.PR_CODE,
                  B.MP_CAP;
    
      COMMIT;
    END LOOP;
  
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
      INSERT INTO DW_D_IT_RUN
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         STAT_YM,
         USAGE_TYPE_CODE,
         ARRIVE_BATCH_NO,
         SUPPLIER,
         MP_TYPE_CODE,
         IT_SORT_CODE,
         MEAS_IT_THEORY,
         IT_SORT_TYPE,
         IT_LINK_PHASE_CODE,
         VOLT_CODE,
         TA_PRE_CODE,
         TV_PRE_CODE,
         PR_CODE,
         MP_CAP,
         IT_RUN_NUM,
         TIME_STAMP)
        SELECT /*+parallel(A 8) parallel(B 8) parallel(C 8) parallel(D 8) parallel(E 8)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         '' PS_BUSI_AREA_CODE,
         I_DATA,
         V_YM,
         PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE', B.USAGE_TYPE_CODE) USAGE_TYPE_CODE,
         E.RCV_NO ARRIVE_BATCH_NO,
         PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
         PKG_GK_PUBLIC.F_TRANS_CODE('MP_TYPE_CODE', B.TYPE_CODE) MP_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_CODE', A.SORT_CODE) IT_SORT_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('MEAS_IT_THEORY', D.MEAS_PRINCIPLE_CODE) MEAS_IT_THEORY,
         PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_TYPE', D.TYPE_CODE) IT_SORT_TYPE,
         PKG_GK_PUBLIC.F_TRANS_CODE('IT_LINK_PHASE_CODE', A.PHASE_CODE) IT_LINK_PHASE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('VOLT_CODE', B.VOLT_CODE) VOLT_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('IT_ACCURACY_CODE', A.TA_PRE_CODE) TA_PRE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('IT_ACCURACY_CODE', A.TV_PRE_CODE) TV_PRE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('PR_CODE', D.PR_CODE) PR_CODE,
         B.MP_CAP,
         COUNT(A.IT_ID) IT_RUN_NUM,
         SYSDATE
          FROM SY_SG_C_IT_RUN     A,
               SY_SG_C_MP         B,
               SY_SG_C_MP_IT_RELA C,
               SY_SG_D_IT         D,
               SY_SG_D_ARRIVE     E
         WHERE A.ORG_NO = TSS.ORG_NO
           AND A.INST_DATE <= V_END_YMD
           AND A.IT_ID = C.IT_ID
           AND C.MP_ID = B.MP_ID
           AND B.ORG_NO = TSS.ORG_NO
           AND A.IT_ID = D.IT_ID
           AND D.BELONG_DEPT = TSS.ORG_NO
           AND D.RCV_ID = E.RCV_ID(+)
         GROUP BY A.ORG_NO,
                  B.USAGE_TYPE_CODE,
                  E.RCV_NO,
                  D.MANUFACTURER,
                  B.TYPE_CODE,
                  A.SORT_CODE,
                  D.MEAS_PRINCIPLE_CODE,
                  D.TYPE_CODE,
                  A.PHASE_CODE,
                  B.VOLT_CODE,
                  A.TA_PRE_CODE,
                  A.TV_PRE_CODE,
                  D.PR_CODE,
                  B.MP_CAP;
    
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_IT_RUN  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_IT_RUN  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_D_IT_RUN(I_DATA   VARCHAR2,
                              OUT_CODE OUT NUMBER,
                              OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_IT_RUN', I_DATA);
    --当月
    V_YM := SUBSTR(I_DATA, 1, 6);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_IT_RUN X
     WHERE X.STAT_YM = V_YM
       AND STAT_YMD = I_DATA;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_IT_RUN
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       STAT_YM,
       USAGE_TYPE_CODE,
       ARRIVE_BATCH_NO,
       SUPPLIER,
       MP_TYPE_CODE,
       IT_SORT_CODE,
       MEAS_IT_THEORY,
       IT_SORT_TYPE,
       IT_LINK_PHASE_CODE,
       VOLT_CODE,
       TA_PRE_CODE,
       TV_PRE_CODE,
       PR_CODE,
       MP_CAP,
       IT_RUN_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YMD,
       STAT_YM,
       USAGE_TYPE_CODE,
       ARRIVE_BATCH_NO,
       SUPPLIER,
       MP_TYPE_CODE,
       IT_SORT_CODE,
       MEAS_IT_THEORY,
       IT_SORT_TYPE,
       IT_LINK_PHASE_CODE,
       VOLT_CODE,
       TA_PRE_CODE,
       TV_PRE_CODE,
       PR_CODE,
       MP_CAP,
       IT_RUN_NUM,
       TIME_STAMP
        FROM DW_D_IT_RUN A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE STAT_YM = V_YM
         AND STAT_YMD = I_DATA
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_IT_RUN  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_IT_RUN  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /**
    过程名称：P_ENT_DW_D_TERMINAL_RUN/月度采集终端运行情况统计入口过程
    作者：jpl
    编写日期：2014-03-07 01:37
    过程描述：按月统计采集终端运行情况情况,被数据库JOB调用
    统计频度：按月抽取,次月1日零点
    入参格式：I_DATA ：YYYYMMDD
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_D_TERMINAL_RUN(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_TERMINAL_RUN', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_D_TERMINAL_RUN(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_D_TERMINAL_RUN(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_TERMINAL_RUN A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_TERMINAL_RUN  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_TERMINAL_RUN  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_D_TERMINAL_RUN(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --v_beg_ymd DATE := TO_DATE(V_YM, 'YYYYMM');          
    V_END_YMD DATE := LAST_DAY(TO_DATE(V_YM, 'YYYYMM'));
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_TERMINAL_RUN', I_DATA);
    DELETE FROM DW_D_TERMINAL_RUN
     WHERE STAT_YM = V_YM
    --AND STAT_YMD = I_DATA
    ;
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
    
      INSERT INTO DW_D_TERMINAL_RUN
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ARRIVE_BATCH_NO,
         SUPPLIER,
         USAGE_TYPE_CODE,
         --MP_TYPE_CODE,
         TERMINAL_TYPE_CODE,
         TERMINAL_MODEL_CODE,
         TERMINAL_NORM,
         TERMINAL_RUN_NUM,
         TIME_STAMP)
        SELECT /*+parallel(A 8) parallel(D 8) parallel(E 8) parallel(F 8)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         '' PS_BUSI_AREA_CODE,
         V_YM,
         R.RCV_NO ARRIVE_BATCH_NO,
         PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', B.MANUFACTURER) SUPPLIER,
         PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE', F.USAGE_TYPE_CODE) USAGE_TYPE_CODE,
         --PKG_GK_PUBLIC.F_TRANS_CODE('MP_TYPE_CODE', F.TYPE_CODE) MP_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('COLL_TERMINAL_TYPE',
                                    A.TERMINAL_TYPE_CODE) TERMINAL_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('TERMINAL_TYPE', B.MODEL_CODE) TERMINAL_MODEL_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('TERMINAL_NORM', B.SPEC_CODE) TERMINAL_NORM,
         COUNT(DISTINCT A.TERMINAL_ID) TERMINAL_RUN_NUM,
         SYSDATE
          FROM SY_SG_R_TMNL_RUN   A,
               SY_SG_R_CP_MP_RELA E,
               SY_SG_C_MP         F,
               SY_SG_D_LC_EQUIP   B,
               SY_SG_D_ARRIVE     R
         WHERE A.ORG_NO LIKE TSS.ORG_NO || '%'
           AND A.TERMINAL_ID = B.ID
           AND A.RUN_DATE <= V_END_YMD
           AND A.CP_NO = E.CP_NO
           AND E.MP_ID = F.MP_ID
           AND F.ORG_NO LIKE TSS.ORG_NO || '%'
           AND B.DEPT_NO LIKE TSS.ORG_NO || '%'
           AND B.RCV_ID = R.RCV_ID(+)
         GROUP BY A.ORG_NO,
                  R.RCV_NO,
                  B.MANUFACTURER,
                  F.USAGE_TYPE_CODE,
                  --F.TYPE_CODE,
                  A.TERMINAL_TYPE_CODE,
                  B.MODEL_CODE,
                  B.SPEC_CODE;
    
      COMMIT;
      /*            INSERT INTO dw_d_terminal_run
      (data_id, pro_org_no, org_no, ps_busi_area_code, stat_ymd, stat_ym,
       arrive_batch_no, supplier, usage_type_code, mp_type_code,
       terminal_type_code, terminal_model_code, terminal_norm, terminal_run_num,
       time_stamp)
      SELECT pkg_gk_public.f_get_table_seq(v_pro_org_no), v_pro_org_no, org_no,
             '', i_data, v_ym, arrive_batch_no, supplier, usage_type_code,
             mp_type_code, terminal_type_code, terminal_model_code,
             terminal_norm, SUM(terminal_run_num), SYSDATE
        FROM (SELECT \*+parallel(A 4) parallel(D 4) parallel(E 4) parallel(F 4)*\
                a.org_no, d.rcv_id arrive_batch_no, d.manufacturer supplier,
                pkg_gk_public.f_trans_code('USAGE_TYPE_CODE', f.usage_type_code) usage_type_code,
                pkg_gk_public.f_trans_code('MP_TYPE_CODE', f.type_code) mp_type_code,
                pkg_gk_public.f_trans_code('COLL_TERMINAL_TYPE',
                                            a.terminal_type_code) terminal_type_code,
                pkg_gk_public.f_trans_code('TERMINAL_TYPE', a.id) terminal_model_code,
                pkg_gk_public.f_trans_code('TERMINAL_NORM', d.spec_code) terminal_norm,
                COUNT(a.terminal_id) terminal_run_num
                 FROM sy_sg_r_tmnl_run a,
                      (SELECT b.id, b.rcv_id, b.manufacturer, b.spec_code
                          FROM sy_sg_d_lc_equip b
                         WHERE b.dept_no LIKE tss.org_no || '%'
                        UNION ALL
                        SELECT c.id, c.rcv_id, c.manufacturer, '' spec_code ----C.SPEC_CODE,修改青海库D_FMR_EQUIP表结构
                          FROM sy_sg_d_fmr_equip c
                         WHERE c.dept_no LIKE tss.org_no || '%') d,
                      sy_sg_r_cp_mp_rela e, sy_sg_c_mp f
                WHERE a.terminal_id = d.id
                      AND a.cp_no = e.cp_no
                      AND e.mp_id = f.mp_id
                      AND a.org_no LIKE tss.org_no || '%'
                      AND a.run_date <= v_end_ymd
                GROUP BY a.org_no, d.rcv_id, d.manufacturer, f.usage_type_code,
                         f.type_code, a.terminal_type_code, a.id, d.spec_code)
       GROUP BY org_no, arrive_batch_no, supplier, usage_type_code, mp_type_code,
                terminal_type_code, terminal_model_code, terminal_norm;*/
    END LOOP;
  
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
      INSERT INTO DW_D_TERMINAL_RUN
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ARRIVE_BATCH_NO,
         SUPPLIER,
         USAGE_TYPE_CODE,
         --MP_TYPE_CODE,
         TERMINAL_TYPE_CODE,
         TERMINAL_MODEL_CODE,
         TERMINAL_NORM,
         TERMINAL_RUN_NUM,
         TIME_STAMP)
        SELECT /*+parallel(A 8) parallel(D 8) parallel(E 8) parallel(F 8)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.ORG_NO,
         '' PS_BUSI_AREA_CODE,
         V_YM,
         R.RCV_NO ARRIVE_BATCH_NO,
         PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', B.MANUFACTURER) SUPPLIER,
         PKG_GK_PUBLIC.F_TRANS_CODE('USAGE_TYPE_CODE', F.USAGE_TYPE_CODE) USAGE_TYPE_CODE,
         --PKG_GK_PUBLIC.F_TRANS_CODE('MP_TYPE_CODE', F.TYPE_CODE) MP_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('COLL_TERMINAL_TYPE',
                                    A.TERMINAL_TYPE_CODE) TERMINAL_TYPE_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('TERMINAL_TYPE', B.MODEL_CODE) TERMINAL_MODEL_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('TERMINAL_NORM', B.SPEC_CODE) TERMINAL_NORM,
         COUNT(DISTINCT A.TERMINAL_ID) TERMINAL_RUN_NUM,
         SYSDATE
          FROM SY_SG_R_TMNL_RUN   A,
               SY_SG_R_CP_MP_RELA E,
               SY_SG_C_MP         F,
               SY_SG_D_LC_EQUIP   B,
               SY_SG_D_ARRIVE     R
         WHERE A.ORG_NO = TSS.ORG_NO
           AND A.TERMINAL_ID = B.ID
           AND A.RUN_DATE <= V_END_YMD
           AND A.CP_NO = E.CP_NO
           AND E.MP_ID = F.MP_ID
           AND F.ORG_NO = TSS.ORG_NO
           AND B.DEPT_NO = TSS.ORG_NO
           AND B.RCV_ID = R.RCV_ID(+)
         GROUP BY A.ORG_NO,
                  R.RCV_NO,
                  B.MANUFACTURER,
                  F.USAGE_TYPE_CODE,
                  --F.TYPE_CODE,
                  A.TERMINAL_TYPE_CODE,
                  B.MODEL_CODE,
                  B.SPEC_CODE;
    
      COMMIT;
      /*            INSERT INTO dw_d_terminal_run
      (data_id, pro_org_no, org_no, ps_busi_area_code, stat_ymd, stat_ym,
       arrive_batch_no, supplier, usage_type_code, mp_type_code,
       terminal_type_code, terminal_model_code, terminal_norm, terminal_run_num,
       time_stamp)
      SELECT pkg_gk_public.f_get_table_seq(v_pro_org_no), v_pro_org_no, org_no,
             '', i_data, v_ym, arrive_batch_no, supplier, usage_type_code,
             mp_type_code, terminal_type_code, terminal_model_code,
             terminal_norm, SUM(terminal_run_num), SYSDATE
        FROM (SELECT \*+parallel(A 4) parallel(D 4) parallel(E 4) parallel(F 4)*\
                a.org_no, d.rcv_id arrive_batch_no, d.manufacturer supplier,
                pkg_gk_public.f_trans_code('USAGE_TYPE_CODE', f.usage_type_code) usage_type_code,
                pkg_gk_public.f_trans_code('MP_TYPE_CODE', f.type_code) mp_type_code,
                pkg_gk_public.f_trans_code('COLL_TERMINAL_TYPE',
                                            a.terminal_type_code) terminal_type_code,
                pkg_gk_public.f_trans_code('TERMINAL_TYPE', a.id) terminal_model_code,
                pkg_gk_public.f_trans_code('TERMINAL_NORM', d.spec_code) terminal_norm,
                COUNT(a.terminal_id) terminal_run_num
                 FROM sy_sg_r_tmnl_run a,
                      (SELECT b.id, b.rcv_id, b.manufacturer, b.spec_code
                          FROM sy_sg_d_lc_equip b
                         WHERE b.dept_no LIKE tss.org_no || '%'
                        UNION ALL
                        SELECT c.id, c.rcv_id, c.manufacturer, '' spec_code ----C.SPEC_CODE,修改青海库D_FMR_EQUIP表结构
                          FROM sy_sg_d_fmr_equip c
                         WHERE c.dept_no LIKE tss.org_no || '%') d,
                      sy_sg_r_cp_mp_rela e, sy_sg_c_mp f
                WHERE a.terminal_id = d.id
                      AND a.cp_no = e.cp_no
                      AND e.mp_id = f.mp_id
                      AND a.org_no LIKE tss.org_no || '%'
                      AND a.run_date <= v_end_ymd
                GROUP BY a.org_no, d.rcv_id, d.manufacturer, f.usage_type_code,
                         f.type_code, a.terminal_type_code, a.id, d.spec_code)
       GROUP BY org_no, arrive_batch_no, supplier, usage_type_code, mp_type_code,
                terminal_type_code, terminal_model_code, terminal_norm;*/
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_TERMINAL_RUN  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_TERMINAL_RUN  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_D_TERMINAL_RUN(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_TERMINAL_RUN', I_DATA);
    --当月
    V_YM := SUBSTR(I_DATA, 1, 6);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_TERMINAL_RUN X
     WHERE X.STAT_YM = V_YM
    --AND STAT_YMD = I_DATA
    ;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_TERMINAL_RUN
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       --STAT_YMD,
       STAT_YM,
       ARRIVE_BATCH_NO,
       SUPPLIER,
       USAGE_TYPE_CODE,
       MP_TYPE_CODE,
       TERMINAL_TYPE_CODE,
       TERMINAL_MODEL_CODE,
       TERMINAL_NORM,
       TERMINAL_RUN_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       --STAT_YMD,
       STAT_YM,
       ARRIVE_BATCH_NO,
       SUPPLIER,
       USAGE_TYPE_CODE,
       MP_TYPE_CODE,
       TERMINAL_TYPE_CODE,
       TERMINAL_MODEL_CODE,
       TERMINAL_NORM,
       TERMINAL_RUN_NUM,
       TIME_STAMP
        FROM DW_D_TERMINAL_RUN A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+)
      --AND STAT_YMD = I_DATA
      ;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_TERMINAL_RUN  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_TERMINAL_RUN  出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  -- Author  : XIANXIANGK
  -- Created : 2014-3-3
  -- Purpose : 业务管控数据仓库程序包-计量
  /********************************************************************
  #function:月度计量设备出入库统计/DW_D_INOUT_STOCK 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-3-3
  #input:i_data  统计频率(月)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_INOUT_STOCK(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_INOUT_STOCK', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_D_INOUT_STOCK表
    P_INS_DW_D_INOUT_STOCK(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程，从管理库OMAC用户下的DW_D_INOUT_STOCK表取数据插入到稽查库OMAC用户下的DW_D_INOUT_STOCK表
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_INOUT_STOCK(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_INOUT_STOCK A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_INOUT_STOCK 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_INOUT_STOCK 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_INOUT_STOCK;

  /********************************************************************
  #function:月度计量设备出入库统计/DW_D_INOUT_STOCK 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_INOUT_STOCK(I_DATA   VARCHAR2,
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
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_INOUT_STOCK', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_INOUT_STOCK X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_INOUT_STOCK
    --根据实际情况选择是否需要单位循环（一般是分区表才需要）
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --电能表01
      INSERT INTO DW_D_INOUT_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK_INOUT_TYPE,
         IN_QTY,
         OUT_QTY,
         TIME_STAMP)
        SELECT /*+parallel(a 4) parallel(e 4) parallel(d 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.DEPT_CODE,
         '',
         V_YM,
         '01',
         D.SORT_CODE,
         D.SPEC_CODE,
         D.WIRING_MODE,
         DECODE(D.SORT_CODE, '10', '1', '0'),
         A.IO_FLAG,
         SUM(DECODE(A.IO_FLAG, '02', 1, 0)) IN_QTY,
         SUM(DECODE(A.IO_FLAG, '01', 1, 0)) OUT_QTY,
         SYSDATE
          FROM SY_SG_D_IO A, SY_SG_D_IO_DET B, SY_SG_D_METER D
         WHERE A.IO_WH_ID = B.IO_WH_ID
           AND B.EQUIP_ID = D.METER_ID
           AND B.EQUIP_CATEG = '01'
           AND A.DEPT_CODE LIKE TSS.ORG_NO || '%'
           AND TO_CHAR(A.RCV_RETURN_DATE, 'YYYYMM') = V_YM
         GROUP BY A.DEPT_CODE,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  A.IO_FLAG;
      --互感器02
      INSERT INTO DW_D_INOUT_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK_INOUT_TYPE,
         IN_QTY,
         OUT_QTY,
         TIME_STAMP)
        SELECT /*+parallel(a 4) parallel(e 4) parallel(d 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.DEPT_CODE,
         '',
         V_YM,
         '02',
         D.SORT_CODE,
         '',
         D.WIRING_MODE,
         '0',
         A.IO_FLAG,
         SUM(DECODE(A.IO_FLAG, '02', 1, 0)) IN_QTY,
         SUM(DECODE(A.IO_FLAG, '01', 1, 0)) OUT_QTY,
         SYSDATE
          FROM SY_SG_D_IO A, SY_SG_D_IO_DET B, SY_SG_D_IT D
         WHERE A.IO_WH_ID = B.IO_WH_ID
           AND B.EQUIP_ID = D.IT_ID
           AND B.EQUIP_CATEG IN ('02', '03', '04')
           AND A.DEPT_CODE LIKE TSS.ORG_NO || '%'
           AND TO_CHAR(A.RCV_RETURN_DATE, 'YYYYMM') = V_YM
         GROUP BY A.DEPT_CODE, D.SORT_CODE, D.WIRING_MODE, A.IO_FLAG;
      /*            --采集终端03
      INSERT INTO dw_d_inout_stock
          (data_id, pro_org_no, org_no, ps_busi_area_code, stat_ym, md_type,
           type_value, norm_type, wiring_mode, is_smart_meter, stock_inout_type,
           in_qty, out_qty, time_stamp)
          SELECT pkg_gk_public.f_get_table_seq(v_pro_org_no), v_pro_org_no,
                 a.dept_code, '', v_ym, '03', '', d.spec_code, d.wiring_mode, '0',
                 a.io_flag, SUM(decode(a.io_flag, '02', 1, 0)) in_qty,
                 SUM(decode(a.io_flag, '01', 1, 0)) out_qty, SYSDATE
            FROM sy_sg_d_io a, sy_sg_d_io_det b, sy_sg_d_fmr_equip d
           WHERE a.io_wh_id = b.io_wh_id
                 AND b.equip_id = d.id
                 AND b.equip_categ = '09'
                 AND a.dept_code LIKE tss.org_no || '%'
                 AND to_char(a.rcv_return_date, 'YYYYMM') = v_ym
           GROUP BY a.dept_code, d.spec_code, d.wiring_mode, a.io_flag;*/
      --负控终端03
      INSERT INTO DW_D_INOUT_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK_INOUT_TYPE,
         IN_QTY,
         OUT_QTY,
         TIME_STAMP)
        SELECT /*+parallel(a 4) parallel(e 4) parallel(d 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.DEPT_CODE,
         '',
         V_YM,
         '03',
         D.TYPE_CODE,
         D.SPEC_CODE,
         D.WIRING_MODE,
         '0',
         A.IO_FLAG,
         SUM(DECODE(A.IO_FLAG, '02', 1, 0)) IN_QTY,
         SUM(DECODE(A.IO_FLAG, '01', 1, 0)) OUT_QTY,
         SYSDATE
          FROM SY_SG_D_IO A, SY_SG_D_IO_DET B, SY_SG_D_LC_EQUIP D
         WHERE A.IO_WH_ID = B.IO_WH_ID
           AND B.EQUIP_ID = D.ID
           AND B.EQUIP_CATEG = '21'
           AND A.DEPT_CODE LIKE TSS.ORG_NO || '%'
           AND TO_CHAR(A.RCV_RETURN_DATE, 'YYYYMM') = V_YM
         GROUP BY A.DEPT_CODE,
                  D.TYPE_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  A.IO_FLAG;
    END LOOP;
    --省公司、地市公司
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
      --电能表01
      INSERT INTO DW_D_INOUT_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK_INOUT_TYPE,
         IN_QTY,
         OUT_QTY,
         TIME_STAMP)
        SELECT /*+parallel(a 4) parallel(e 4) parallel(d 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.DEPT_CODE,
         '',
         V_YM,
         '01',
         D.SORT_CODE,
         D.SPEC_CODE,
         D.WIRING_MODE,
         DECODE(D.SORT_CODE, '10', '1', '0'),
         A.IO_FLAG,
         SUM(DECODE(A.IO_FLAG, '02', 1, 0)) IN_QTY,
         SUM(DECODE(A.IO_FLAG, '01', 1, 0)) OUT_QTY,
         SYSDATE
          FROM SY_SG_D_IO A, SY_SG_D_IO_DET B, SY_SG_D_METER D
         WHERE A.IO_WH_ID = B.IO_WH_ID
           AND B.EQUIP_ID = D.METER_ID
           AND B.EQUIP_CATEG = '01'
           AND A.DEPT_CODE = TSS.ORG_NO
           AND TO_CHAR(A.RCV_RETURN_DATE, 'YYYYMM') = V_YM
         GROUP BY A.DEPT_CODE,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  A.IO_FLAG;
      --互感器02
      INSERT INTO DW_D_INOUT_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK_INOUT_TYPE,
         IN_QTY,
         OUT_QTY,
         TIME_STAMP)
        SELECT /*+parallel(a 4) parallel(e 4) parallel(d 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.DEPT_CODE,
         '',
         V_YM,
         '02',
         D.SORT_CODE,
         '',
         D.WIRING_MODE,
         '0',
         A.IO_FLAG,
         SUM(DECODE(A.IO_FLAG, '02', 1, 0)) IN_QTY,
         SUM(DECODE(A.IO_FLAG, '01', 1, 0)) OUT_QTY,
         SYSDATE
          FROM SY_SG_D_IO A, SY_SG_D_IO_DET B, SY_SG_D_IT D
         WHERE A.IO_WH_ID = B.IO_WH_ID
           AND B.EQUIP_ID = D.IT_ID
           AND B.EQUIP_CATEG IN ('02', '03', '04')
           AND A.DEPT_CODE = TSS.ORG_NO
           AND TO_CHAR(A.RCV_RETURN_DATE, 'YYYYMM') = V_YM
         GROUP BY A.DEPT_CODE, D.SORT_CODE, D.WIRING_MODE, A.IO_FLAG;
      /*            --采集终端03
      INSERT INTO dw_d_inout_stock
          (data_id, pro_org_no, org_no, ps_busi_area_code, stat_ym, md_type,
           type_value, norm_type, wiring_mode, is_smart_meter, stock_inout_type,
           in_qty, out_qty, time_stamp)
          SELECT pkg_gk_public.f_get_table_seq(v_pro_org_no), v_pro_org_no,
                 a.dept_code, '', v_ym, '03', '', d.spec_code, d.wiring_mode, '0',
                 a.io_flag, SUM(decode(a.io_flag, '02', 1, 0)) in_qty,
                 SUM(decode(a.io_flag, '01', 1, 0)) out_qty, SYSDATE
            FROM sy_sg_d_io a, sy_sg_d_io_det b, sy_sg_d_fmr_equip d
           WHERE a.io_wh_id = b.io_wh_id
                 AND b.equip_id = d.id
                 AND b.equip_categ = '09'
                 AND a.dept_code LIKE tss.org_no || '%'
                 AND to_char(a.rcv_return_date, 'YYYYMM') = v_ym
           GROUP BY a.dept_code, d.spec_code, d.wiring_mode, a.io_flag;*/
      --负控终端03
      INSERT INTO DW_D_INOUT_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK_INOUT_TYPE,
         IN_QTY,
         OUT_QTY,
         TIME_STAMP)
        SELECT /*+parallel(a 4) parallel(e 4) parallel(d 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         A.DEPT_CODE,
         '',
         V_YM,
         '03',
         D.TYPE_CODE,
         D.SPEC_CODE,
         D.WIRING_MODE,
         '0',
         A.IO_FLAG,
         SUM(DECODE(A.IO_FLAG, '02', 1, 0)) IN_QTY,
         SUM(DECODE(A.IO_FLAG, '01', 1, 0)) OUT_QTY,
         SYSDATE
          FROM SY_SG_D_IO A, SY_SG_D_IO_DET B, SY_SG_D_LC_EQUIP D
         WHERE A.IO_WH_ID = B.IO_WH_ID
           AND B.EQUIP_ID = D.ID
           AND B.EQUIP_CATEG = '21'
           AND A.DEPT_CODE = TSS.ORG_NO
           AND TO_CHAR(A.RCV_RETURN_DATE, 'YYYYMM') = V_YM
         GROUP BY A.DEPT_CODE,
                  D.TYPE_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  A.IO_FLAG;
    END LOOP;
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_INOUT_STOCK 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_INOUT_STOCK 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_INOUT_STOCK;

  /********************************************************************
  #function:月度计量设备出入库统计/DW_D_INOUT_STOCK 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_INOUT_STOCK(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    --当月
    V_YM VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_INOUT_STOCK', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_INOUT_STOCK X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_INOUT_STOCK
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       MD_TYPE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       STOCK_INOUT_TYPE,
       IN_QTY,
       OUT_QTY,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       MD_TYPE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       STOCK_INOUT_TYPE,
       IN_QTY,
       OUT_QTY,
       TIME_STAMP
        FROM DW_D_INOUT_STOCK A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_INOUT_STOCK 成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_INOUT_STOCK 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_INOUT_STOCK;

  /********************************************************************
  #function:月度计量设备周期轮换统计/DW_D_MD_CYC_ROTATE 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-3-3
  #input:i_data  统计频率(月)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_MD_CYC_ROTATE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_MD_CYC_ROTATE', V_YM);
    --调用抽取过程
    P_INS_DW_D_MD_CYC_ROTATE(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_MD_CYC_ROTATE(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_MD_CYC_ROTATE A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YM = V_YM;
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_MD_CYC_ROTATE 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_MD_CYC_ROTATE 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_MD_CYC_ROTATE;

  /********************************************************************
  #function:月度计量设备周期轮换统计/DW_D_MD_CYC_ROTATE 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_MD_CYC_ROTATE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_MD_CYC_ROTATE', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_MD_CYC_ROTATE X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_MD_CYC_ROTATE
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --电能表01 用户计量点
      INSERT INTO DW_D_MD_CYC_ROTATE
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         RUN_CAP_RANGE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CYC_NUM,
         ACTUAL_CYC_NUM,
         OVER_CYC_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               R.ORG_NO,
               '',
               V_YM,
               (SELECT A.RCV_NO
                  FROM SY_SG_D_ARRIVE A
                 WHERE D.RCV_ID = A.RCV_ID) RCV_ID,
               '01' EQUIP_SORT_CODE,
               R.SORT_CODE,
               D.SPEC_CODE NORM_TYPE,
               R.WIRING_MODE,
               DECODE(R.SORT_CODE, '10', '1', '0') IS_SMART_METER,
               R.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               '' RUN_CAP_RANGE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE, /*SUM(1)*/
               COUNT(1) SHOULD_CYC_NUM,
               SUM(DECODE(R.STATUS, '02', 1, 0)) ACTUAL_CYC_NUM,
               SUM(DECODE(R.STATUS,
                          '02',
                          CASE
                            WHEN TO_CHAR(R.EXEC_ROTATE_DATE, 'YYYYMM') >
                                 TO_CHAR(R.PLAN_DATE, 'YYYYMM') THEN
                             1
                            ELSE
                             0
                          END,
                          0)) OVER_CYC_NUM,
               SYSDATE
          FROM SY_SG_S_SITEPLAN    S,
               SY_SG_S_ROTATE_PLAN R,
               SY_SG_C_CONS        C,
               SY_SG_C_MP          MP,
               SY_SG_D_METER       D
         WHERE S.PLAN_YM = V_YM
           AND S.ID = '17'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = R.PLAN_ID(+)
           AND R.ORG_NO LIKE TSS.ORG_NO || '%'
           AND R.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE = '01'
           AND MP.CONS_ID = C.CONS_ID(+)
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND R.EQUIP_ID = D.METER_ID
         GROUP BY R.ORG_NO,
                  D.RCV_ID,
                  R.SORT_CODE,
                  D.SPEC_CODE,
                  R.WIRING_MODE,
                  R.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --电能表01  关口计量点                       
      INSERT INTO DW_D_MD_CYC_ROTATE
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         RUN_CAP_RANGE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CYC_NUM,
         ACTUAL_CYC_NUM,
         OVER_CYC_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               R.ORG_NO,
               '',
               V_YM,
               (SELECT A.RCV_NO
                  FROM SY_SG_D_ARRIVE A
                 WHERE D.RCV_ID = A.RCV_ID) RCV_ID,
               '01' EQUIP_SORT_CODE,
               R.SORT_CODE,
               D.SPEC_CODE NORM_TYPE,
               R.WIRING_MODE,
               DECODE(R.SORT_CODE, '10', '1', '0') IS_SMART_METER,
               R.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               '' RUN_CAP_RANGE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE, /*SUM(1)*/
               COUNT(1) SHOULD_CYC_NUM,
               SUM(DECODE(R.STATUS, '02', 1, 0)) ACTUAL_CYC_NUM,
               SUM(DECODE(R.STATUS,
                          '02',
                          CASE
                            WHEN TO_CHAR(R.EXEC_ROTATE_DATE, 'YYYYMM') >
                                 TO_CHAR(R.PLAN_DATE, 'YYYYMM') THEN
                             1
                            ELSE
                             0
                          END,
                          0)) OVER_CYC_NUM,
               SYSDATE
          FROM SY_SG_S_SITEPLAN    S,
               SY_SG_S_ROTATE_PLAN R,
               SY_SG_C_MP          MP,
               SY_SG_D_METER       D
         WHERE S.PLAN_YM = V_YM
           AND S.ID = '17'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = R.PLAN_ID(+)
           AND R.ORG_NO LIKE TSS.ORG_NO || '%'
           AND R.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND R.EQUIP_ID = D.METER_ID
         GROUP BY R.ORG_NO,
                  D.RCV_ID,
                  R.SORT_CODE,
                  D.SPEC_CODE,
                  R.WIRING_MODE,
                  R.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --互感器02
    
      INSERT INTO DW_D_MD_CYC_ROTATE
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         RUN_CAP_RANGE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CYC_NUM,
         ACTUAL_CYC_NUM,
         OVER_CYC_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               R.ORG_NO,
               '',
               V_YM,
               (SELECT A.RCV_NO
                  FROM SY_SG_D_ARRIVE A
                 WHERE D.RCV_ID = A.RCV_ID) RCV_NO,
               '02' EQUIP_SORT_CODE,
               R.SORT_CODE,
               '' NORM_TYPE,
               R.WIRING_MODE,
               '0' IS_SMART_METER,
               R.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               '' RUN_CAP_RANGE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) SHOULD_CYC_NUM,
               SUM(DECODE(R.STATUS, '02', 1, 0)) ACTUAL_CYC_NUM,
               SUM(DECODE(R.STATUS,
                          '02',
                          CASE
                            WHEN TO_CHAR(R.EXEC_ROTATE_DATE, 'YYYYMM') >
                                 TO_CHAR(R.PLAN_DATE, 'YYYYMM') THEN
                             1
                            ELSE
                             0
                          END,
                          0)) OVER_CYC_NUM,
               SYSDATE
          FROM SY_SG_S_SITEPLAN    S,
               SY_SG_S_ROTATE_PLAN R,
               SY_SG_C_MP          MP,
               SY_SG_C_CONS        C,
               SY_SG_D_IT          D
         WHERE S.PLAN_YM = V_YM
           AND S.ID = '19'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = R.PLAN_ID(+)
           AND R.ORG_NO LIKE TSS.ORG_NO || '%'
           AND R.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE = '01'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND R.EQUIP_ID = D.IT_ID
         GROUP BY R.ORG_NO,
                  D.RCV_ID,
                  R.SORT_CODE,
                  R.WIRING_MODE,
                  R.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
      --关口计量点互感器轮换情况
      INSERT INTO DW_D_MD_CYC_ROTATE
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         RUN_CAP_RANGE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CYC_NUM,
         ACTUAL_CYC_NUM,
         OVER_CYC_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               R.ORG_NO,
               '',
               V_YM,
               (SELECT A.RCV_NO
                  FROM SY_SG_D_ARRIVE A
                 WHERE D.RCV_ID = A.RCV_ID) RCV_NO,
               '02' EQUIP_SORT_CODE,
               R.SORT_CODE,
               '' NORM_TYPE,
               R.WIRING_MODE,
               '0' IS_SMART_METER,
               R.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               '' RUN_CAP_RANGE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) SHOULD_CYC_NUM,
               SUM(DECODE(R.STATUS, '02', 1, 0)) ACTUAL_CYC_NUM,
               SUM(DECODE(R.STATUS,
                          '02',
                          CASE
                            WHEN TO_CHAR(R.EXEC_ROTATE_DATE, 'YYYYMM') >
                                 TO_CHAR(R.PLAN_DATE, 'YYYYMM') THEN
                             1
                            ELSE
                             0
                          END,
                          0)) OVER_CYC_NUM,
               SYSDATE
          FROM SY_SG_S_SITEPLAN    S,
               SY_SG_S_ROTATE_PLAN R,
               SY_SG_C_MP          MP,
               SY_SG_D_IT          D
         WHERE S.PLAN_YM = V_YM
           AND S.ID = '19'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = R.PLAN_ID(+)
           AND R.ORG_NO LIKE TSS.ORG_NO || '%'
           AND R.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND R.EQUIP_ID = D.IT_ID
         GROUP BY R.ORG_NO,
                  D.RCV_ID,
                  R.SORT_CODE,
                  R.WIRING_MODE,
                  R.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      COMMIT;
    END LOOP;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_MD_CYC_ROTATE 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_MD_CYC_ROTATE 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_MD_CYC_ROTATE;

  /********************************************************************
  #function:月度计量设备周期轮换统计/DW_D_MD_CYC_ROTATE 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_MD_CYC_ROTATE(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_MD_CYC_ROTATE', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_MD_CYC_ROTATE X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_MD_CYC_ROTATE
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       ARRIVE_BATCH_NO,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       RUN_CAP_RANGE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       SHOULD_CYC_NUM,
       ACTUAL_CYC_NUM,
       OVER_CYC_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       ARRIVE_BATCH_NO,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       RUN_CAP_RANGE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       SHOULD_CYC_NUM,
       ACTUAL_CYC_NUM,
       OVER_CYC_NUM,
       TIME_STAMP
        FROM DW_D_MD_CYC_ROTATE A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_MD_CYC_ROTATE 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_MD_CYC_ROTATE 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_MD_CYC_ROTATE;

  /********************************************************************
  #function:月度计量设备库存统计/DW_D_STOCK 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-3-4
  #input:i_data  统计频率(月)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_STOCK(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_STOCK', V_YM);
    --调用抽取过程
    P_INS_DW_D_STOCK(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_STOCK(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_STOCK A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YM = V_YM;
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_STOCK 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_STOCK 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_STOCK;

  /********************************************************************
  #function:月度计量设备库存统计/DW_D_STOCK 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_STOCK(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_STOCK', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_STOCK X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_STOCK
    --县公司及下级单位
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --电能表01
      INSERT INTO DW_D_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         ASSETS_STATUS,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK,
         OVERDUE_NUM,
         TIME_STAMP)
        SELECT /*+parallel(s 4) parallel(d 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.BELONG_DEPT,
         '' PS_BUSI_AREA_CODE,
         V_YM,
         '01' MD_TYPE,
         D.SORT_CODE,
         D.SPEC_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.CUR_STATUS_CODE),
         D.WIRING_MODE,
         DECODE(D.SORT_CODE, '10', '1', '0'),
         SUM(1) STOCK,
         SUM(DECODE(D.CUR_STATUS_CODE,
                    '006',
                    CASE
                      WHEN ADD_MONTHS(D.LATEST_CHK_DATE, 6) < SYSDATE THEN
                       1
                      ELSE
                       0
                    END,
                    0)) OVERDUE_NUM,
         SYSDATE
          FROM SY_SG_D_DEV_STORAGE S, SY_SG_D_METER D
         WHERE S.DEPT_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_CATEG = '01'
           AND S.EQUIP_ID = D.METER_ID
           AND D.BELONG_DEPT LIKE TSS.ORG_NO || '%'
         GROUP BY D.BELONG_DEPT,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.CUR_STATUS_CODE),
                  D.WIRING_MODE;
    
      --互感器02
      INSERT INTO DW_D_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         ASSETS_STATUS,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK,
         OVERDUE_NUM,
         TIME_STAMP)
        SELECT /*+parallel(s 4) parallel(d 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.BELONG_DEPT,
         '',
         V_YM,
         '02',
         D.SORT_CODE,
         '',
         PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.CUR_STATUS_CODE),
         D.WIRING_MODE,
         '0',
         SUM(1) STOCK,
         0 OVERDUE_NUM, -- 互感器不考察超期
         SYSDATE
          FROM SY_SG_D_IT D, SY_SG_D_DEV_STORAGE S
         WHERE S.DEPT_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_CATEG IN ('02', '03', '04')
           AND S.EQUIP_ID = D.IT_ID
           AND D.BELONG_DEPT LIKE TSS.ORG_NO || '%'
         GROUP BY D.BELONG_DEPT,
                  D.SORT_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.CUR_STATUS_CODE),
                  D.WIRING_MODE;
      --采集终端03
      INSERT INTO DW_D_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         ASSETS_STATUS,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK,
         OVERDUE_NUM,
         TIME_STAMP)
        SELECT /*+parallel(d 4) parallel(s 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.DEPT_NO,
         '',
         V_YM,
         '03',
         '',
         '' SPEC_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.STATUS_CODE),
         D.WIRING_MODE,
         '0',
         SUM(1) STOCK,
         0 OVERDUE_NUM,
         SYSDATE
          FROM SY_SG_D_FMR_EQUIP D, SY_SG_D_DEV_STORAGE S
         WHERE D.DEPT_NO LIKE TSS.ORG_NO || '%'
           AND D.ID = S.EQUIP_ID
           AND S.DEPT_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_CATEG = '09'
         GROUP BY D.DEPT_NO, PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.STATUS_CODE), D.WIRING_MODE;
      --负控终端03
      INSERT INTO DW_D_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         ASSETS_STATUS,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK,
         OVERDUE_NUM,
         TIME_STAMP)
        SELECT /*+parallel(d 4) parallel(s 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.DEPT_NO,
         '',
         V_YM,
         '03',
         D.TYPE_CODE,
         D.SPEC_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.CUR_STATUS_CODE),
         D.WIRING_MODE,
         '0',
         SUM(1) STOCK,
         0 OVERDUE_NUM, -- 负控终端不考察超期
         SYSDATE
          FROM SY_SG_D_LC_EQUIP D, SY_SG_D_DEV_STORAGE S
         WHERE D.DEPT_NO LIKE TSS.ORG_NO || '%'
           AND D.ID = S.EQUIP_ID
           AND S.DEPT_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_CATEG = '21'
         GROUP BY D.DEPT_NO,
                  D.TYPE_CODE,
                  D.SPEC_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.CUR_STATUS_CODE),
                  D.WIRING_MODE;
      COMMIT;
    END LOOP;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_D_STOCK
    --省公司和地市公司 
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
      --电能表01
      INSERT INTO DW_D_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         ASSETS_STATUS,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK,
         OVERDUE_NUM,
         TIME_STAMP)
        SELECT /*+parallel(d 4) parallel(s 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.BELONG_DEPT,
         '',
         V_YM,
         '01',
         D.SORT_CODE,
         D.SPEC_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.CUR_STATUS_CODE),
         D.WIRING_MODE,
         DECODE(D.SORT_CODE, '10', '1', '0'),
         SUM(1) STOCK,
         SUM(DECODE(D.CUR_STATUS_CODE,
                    '006',
                    CASE
                      WHEN ADD_MONTHS(D.LATEST_CHK_DATE, 6) < SYSDATE THEN
                       1
                      ELSE
                       0
                    END,
                    0)) OVERDUE_NUM,
         SYSDATE
          FROM SY_SG_D_METER D, SY_SG_D_DEV_STORAGE S
         WHERE D.BELONG_DEPT = TSS.ORG_NO
           AND D.METER_ID = S.EQUIP_ID
           AND S.DEPT_NO = TSS.ORG_NO
           AND S.EQUIP_CATEG = '01'
         GROUP BY D.BELONG_DEPT,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.CUR_STATUS_CODE),
                  D.WIRING_MODE;
      --互感器02
      INSERT INTO DW_D_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         ASSETS_STATUS,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK,
         OVERDUE_NUM,
         TIME_STAMP)
        SELECT /*+parallel(d 4) parallel(s 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.BELONG_DEPT,
         '',
         V_YM,
         '02',
         D.SORT_CODE,
         '',
         PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.CUR_STATUS_CODE),
         D.WIRING_MODE,
         '0',
         SUM(1) STOCK,
         0 OVERDUE_NUM,
         SYSDATE
          FROM SY_SG_D_IT D, SY_SG_D_DEV_STORAGE S
         WHERE D.BELONG_DEPT = TSS.ORG_NO
           AND S.DEPT_NO = TSS.ORG_NO
           AND S.EQUIP_CATEG IN ('02', '03', '04')
           AND D.IT_ID = S.EQUIP_ID
         GROUP BY D.BELONG_DEPT,
                  D.SORT_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.CUR_STATUS_CODE),
                  D.WIRING_MODE;
      --采集终端03
      INSERT INTO DW_D_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         ASSETS_STATUS,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK,
         OVERDUE_NUM,
         TIME_STAMP)
        SELECT /*+parallel(d 4) parallel(s 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.DEPT_NO,
         '',
         V_YM,
         '03',
         '',
         '' SPEC_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.STATUS_CODE),
         D.WIRING_MODE,
         '0',
         SUM(1) STOCK,
         0 OVERDUE_NUM,
         SYSDATE
          FROM SY_SG_D_FMR_EQUIP D, SY_SG_D_DEV_STORAGE S
         WHERE D.DEPT_NO = TSS.ORG_NO
           AND D.ID = S.EQUIP_ID
           AND S.DEPT_NO = TSS.ORG_NO
           AND S.EQUIP_CATEG = '09'
         GROUP BY D.DEPT_NO, PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.STATUS_CODE), D.WIRING_MODE;
      --负控终端03
      INSERT INTO DW_D_STOCK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         ASSETS_STATUS,
         WIRING_MODE,
         IS_SMART_METER,
         STOCK,
         OVERDUE_NUM,
         TIME_STAMP)
        SELECT /*+parallel(d 4) parallel(s 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.DEPT_NO,
         '',
         V_YM,
         '03',
         D.TYPE_CODE,
         D.SPEC_CODE,
         PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.CUR_STATUS_CODE),
         D.WIRING_MODE,
         '0',
         SUM(1) STOCK,
         0 OVERDUE_NUM,
         SYSDATE
          FROM SY_SG_D_LC_EQUIP D, SY_SG_D_DEV_STORAGE S
         WHERE D.DEPT_NO = TSS.ORG_NO
           AND D.ID = S.EQUIP_ID
           AND S.DEPT_NO = TSS.ORG_NO
           AND S.EQUIP_CATEG = '21'
         GROUP BY D.DEPT_NO,
                  D.TYPE_CODE,
                  D.SPEC_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE', D.CUR_STATUS_CODE),
                  D.WIRING_MODE;
      COMMIT;
    END LOOP;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_STOCK 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_STOCK 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_STOCK;

  /********************************************************************
  #function:月度计量设备库存统计/DW_D_STOCK 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_STOCK(I_DATA   VARCHAR2,
                             OUT_CODE OUT NUMBER,
                             OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_STOCK', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_STOCK X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_STOCK
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       MD_TYPE,
       TYPE_VALUE,
       NORM_TYPE,
       ASSETS_STATUS,
       WIRING_MODE,
       IS_SMART_METER,
       STOCK,
       OVERDUE_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       MD_TYPE,
       TYPE_VALUE,
       NORM_TYPE,
       ASSETS_STATUS,
       WIRING_MODE,
       IS_SMART_METER,
       STOCK,
       OVERDUE_NUM,
       TIME_STAMP
        FROM DW_D_STOCK A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_STOCK 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_STOCK 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_STOCK;

  /********************************************************************
  #function:月度计量设备报废统计/DW_D_MD_SCRAP 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-3-4
  #input:i_data  统计频率(月)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_MD_SCRAP(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_MD_SCRAP', V_YM);
    --调用抽取过程
    P_INS_DW_D_MD_SCRAP(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_MD_SCRAP(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_MD_SCRAP A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YM = V_YM;
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_MD_SCRAP 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_MD_SCRAP 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_MD_SCRAP;

  /********************************************************************
  #function:月度计量设备报废统计/DW_D_MD_SCRAP 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_MD_SCRAP(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    V_BEG_YMD    DATE := TO_DATE(V_YM, 'YYYYMM');
    V_END_YMD    DATE := LAST_DAY(TO_DATE(V_YM, 'YYYYMM'));
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_MD_SCRAP', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_MD_SCRAP X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_MD_SCRAP
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --电能表01
      INSERT INTO DW_D_MD_SCRAP
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         PLAN_SCRAP_NUM,
         CMPL_SCRAP_NUM,
         TIME_STAMP)
        SELECT /*+parallel(d 4) parallel(e 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.BELONG_DEPT,
         '',
         V_YM,
         E.RCV_NO,
         '01',
         D.SORT_CODE,
         D.SPEC_CODE,
         D.WIRING_MODE,
         DECODE(D.SORT_CODE, '10', '1', '0'),
         SUM(DECODE(D.CUR_STATUS_CODE, '009', 1, 0)) PLAN_SCRAP_NUM,
         SUM(DECODE(D.CUR_STATUS_CODE, '014', 1, 0)) CMPL_SCRAP_NUM,
         SYSDATE
          FROM SY_SG_D_METER D, SY_SG_D_ARRIVE E
         WHERE D.BELONG_DEPT LIKE TSS.ORG_NO || '%'
              --AND d.cur_status_code IN ('009','014')
           AND ((D.CUR_STATUS_CODE = '009') OR
               (D.CUR_STATUS_CODE = '014' AND
               D.DESCARD_DATE BETWEEN V_BEG_YMD AND V_END_YMD))
           AND D.RCV_ID = E.RCV_ID(+)
         GROUP BY D.BELONG_DEPT,
                  E.RCV_NO,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE;
    
      --互感器02
      INSERT INTO DW_D_MD_SCRAP
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         PLAN_SCRAP_NUM,
         CMPL_SCRAP_NUM,
         TIME_STAMP)
        SELECT /*+parallel(d 4) parallel(e 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.BELONG_DEPT,
         '',
         V_YM,
         E.RCV_NO,
         '02',
         D.SORT_CODE,
         '',
         D.WIRING_MODE,
         '0',
         SUM(DECODE(D.CUR_STATUS_CODE, '008', 1, 0)) PLAN_SCRAP_NUM,
         SUM(DECODE(D.CUR_STATUS_CODE, '013', 1, 0)) CMPL_SCRAP_NUM,
         SYSDATE
          FROM SY_SG_D_IT D, SY_SG_D_ARRIVE E
         WHERE D.BELONG_DEPT LIKE TSS.ORG_NO || '%'
              --AND d.cur_status_code IN ('008','013') 
           AND ((D.CUR_STATUS_CODE = '008') OR
               (D.CUR_STATUS_CODE = '013' AND
               D.DESCARD_DATE BETWEEN V_BEG_YMD AND V_END_YMD))
           AND D.RCV_ID = E.RCV_ID(+)
         GROUP BY D.BELONG_DEPT, E.RCV_NO, D.SORT_CODE, D.WIRING_MODE;
      /*            --采集终端03
      INSERT INTO dw_d_md_scrap
          (data_id, pro_org_no, org_no, ps_busi_area_code, stat_ym, arrive_batch_no,
           equip_sort_code, type_value, norm_type, wiring_mode, is_smart_meter,
           plan_scrap_num, cmpl_scrap_num, time_stamp)
          SELECT pkg_gk_public.f_get_table_seq(v_pro_org_no), v_pro_org_no,
                 d.dept_no, '', v_ym, d.rcv_id, '03', '', d.spec_code, d.wiring_mode,
                 '0', SUM(decode(d.status_code, '011', 1, 0)) plan_scrap_num,
                 SUM(decode(d.status_code, '012', 1, 0)) cmpl_scrap_num, SYSDATE
            FROM sy_sg_d_fmr_equip d
           WHERE d.dept_no LIKE tss.org_no || '%'
           GROUP BY d.dept_no, d.rcv_id, d.spec_code, d.wiring_mode;*/
      --负控终端03
      INSERT INTO DW_D_MD_SCRAP
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         PLAN_SCRAP_NUM,
         CMPL_SCRAP_NUM,
         TIME_STAMP)
        SELECT /*+parallel(d 4) parallel(e 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.DEPT_NO,
         '',
         V_YM,
         E.RCV_NO,
         '03',
         D.TYPE_CODE,
         D.SPEC_CODE,
         D.WIRING_MODE,
         '0',
         SUM(DECODE(D.CUR_STATUS_CODE, '011', 1, 0)) PLAN_SCRAP_NUM,
         SUM(DECODE(D.CUR_STATUS_CODE, '012', 1, 0)) CMPL_SCRAP_NUM,
         SYSDATE
          FROM SY_SG_D_LC_EQUIP D, SY_SG_D_ARRIVE E
         WHERE D.DEPT_NO LIKE TSS.ORG_NO || '%'
              --AND d.cur_status_code IN ('011','012')                       
           AND ((D.CUR_STATUS_CODE = '011') OR
               (D.CUR_STATUS_CODE = '012' AND
               D.DESCARD_DATE BETWEEN V_BEG_YMD AND V_END_YMD))
           AND D.RCV_ID = E.RCV_ID(+)
         GROUP BY D.DEPT_NO,
                  E.RCV_NO,
                  D.TYPE_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE;
      COMMIT;
    END LOOP;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_MD_SCRAP
    --省公司及地市公司
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
      --电能表01
      INSERT INTO DW_D_MD_SCRAP
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         PLAN_SCRAP_NUM,
         CMPL_SCRAP_NUM,
         TIME_STAMP)
        SELECT /*+parallel(d 4) parallel(e 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.BELONG_DEPT,
         '',
         V_YM,
         E.RCV_NO,
         '01',
         D.SORT_CODE,
         D.SPEC_CODE,
         D.WIRING_MODE,
         DECODE(D.SORT_CODE, '10', '1', '0'),
         SUM(DECODE(D.CUR_STATUS_CODE, '009', 1, 0)) PLAN_SCRAP_NUM,
         SUM(DECODE(D.CUR_STATUS_CODE, '014', 1, 0)) CMPL_SCRAP_NUM,
         SYSDATE
          FROM SY_SG_D_METER D, SY_SG_D_ARRIVE E
         WHERE D.BELONG_DEPT = TSS.ORG_NO
           AND ((D.CUR_STATUS_CODE = '009') OR
               (D.CUR_STATUS_CODE = '014' AND
               D.DESCARD_DATE BETWEEN V_BEG_YMD AND V_END_YMD))
           AND D.RCV_ID = E.RCV_ID(+)
         GROUP BY D.BELONG_DEPT,
                  E.RCV_NO,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE;
      --互感器02
      INSERT INTO DW_D_MD_SCRAP
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         PLAN_SCRAP_NUM,
         CMPL_SCRAP_NUM,
         TIME_STAMP)
        SELECT /*+parallel(d 4) parallel(e 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.BELONG_DEPT,
         '',
         V_YM,
         E.RCV_NO,
         '02',
         D.SORT_CODE,
         '',
         D.WIRING_MODE,
         '0',
         SUM(DECODE(D.CUR_STATUS_CODE, '008', 1, 0)) PLAN_SCRAP_NUM,
         SUM(DECODE(D.CUR_STATUS_CODE, '013', 1, 0)) CMPL_SCRAP_NUM,
         SYSDATE
          FROM SY_SG_D_IT D, SY_SG_D_ARRIVE E
         WHERE D.BELONG_DEPT = TSS.ORG_NO
              --AND d.cur_status_code IN ('008','013')                  
           AND ((D.CUR_STATUS_CODE = '008') OR
               (D.CUR_STATUS_CODE = '013' AND
               D.DESCARD_DATE BETWEEN V_BEG_YMD AND V_END_YMD))
           AND D.RCV_ID = E.RCV_ID(+)
         GROUP BY D.BELONG_DEPT, E.RCV_NO, D.SORT_CODE, D.WIRING_MODE;
      /*            --采集终端03
      INSERT INTO dw_d_md_scrap
          (data_id, pro_org_no, org_no, ps_busi_area_code, stat_ym, arrive_batch_no,
           equip_sort_code, type_value, norm_type, wiring_mode, is_smart_meter,
           plan_scrap_num, cmpl_scrap_num, time_stamp)
          SELECT pkg_gk_public.f_get_table_seq(v_pro_org_no), v_pro_org_no,
                 d.dept_no, '', v_ym, d.rcv_id, '03', '', d.spec_code, d.wiring_mode,
                 '0', SUM(decode(d.status_code, '011', 1, 0)) plan_scrap_num,
                 SUM(decode(d.status_code, '012', 1, 0)) cmpl_scrap_num, SYSDATE
            FROM sy_sg_d_fmr_equip d
           WHERE d.dept_no LIKE tss.org_no || '%'
           GROUP BY d.dept_no, d.rcv_id, d.spec_code, d.wiring_mode;*/
      --负控终端03
      INSERT INTO DW_D_MD_SCRAP
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         PLAN_SCRAP_NUM,
         CMPL_SCRAP_NUM,
         TIME_STAMP)
        SELECT /*+parallel(d 4) parallel(e 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         D.DEPT_NO,
         '',
         V_YM,
         E.RCV_NO,
         '03',
         D.TYPE_CODE,
         D.SPEC_CODE,
         D.WIRING_MODE,
         '0',
         SUM(DECODE(D.CUR_STATUS_CODE, '011', 1, 0)) PLAN_SCRAP_NUM,
         SUM(DECODE(D.CUR_STATUS_CODE, '012', 1, 0)) CMPL_SCRAP_NUM,
         SYSDATE
          FROM SY_SG_D_LC_EQUIP D, SY_SG_D_ARRIVE E
         WHERE D.DEPT_NO = TSS.ORG_NO
           AND ((D.CUR_STATUS_CODE = '011') OR
               (D.CUR_STATUS_CODE = '012' AND
               D.DESCARD_DATE BETWEEN V_BEG_YMD AND V_END_YMD))
           AND D.RCV_ID = E.RCV_ID(+)
         GROUP BY D.DEPT_NO,
                  E.RCV_NO,
                  D.TYPE_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE;
      COMMIT;
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_MD_SCRAP 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_MD_SCRAP 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_MD_SCRAP;

  /********************************************************************
  #function:月度计量设备报废统计/DW_D_MD_SCRAP 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_MD_SCRAP(I_DATA   VARCHAR2,
                                OUT_CODE OUT NUMBER,
                                OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_MD_SCRAP', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_MD_SCRAP X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_MD_SCRAP
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       ARRIVE_BATCH_NO,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       PLAN_SCRAP_NUM,
       CMPL_SCRAP_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       ARRIVE_BATCH_NO,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       PLAN_SCRAP_NUM,
       CMPL_SCRAP_NUM,
       TIME_STAMP
        FROM DW_D_MD_SCRAP A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_MD_SCRAP 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_MD_SCRAP 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_MD_SCRAP;

  /********************************************************************
  #function:月度计量设备故障明细/DW_D_MD_FAULT_DET 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-3-5
  #input:i_data  统计频率(月)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_MD_FAULT_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_MD_FAULT_DET', V_YM);
    --调用抽取过程
    P_INS_DW_D_MD_FAULT_DET(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_MD_FAULT_DET(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_MD_FAULT_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YM = V_YM;
    
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_MD_FAULT_DET 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_MD_FAULT_DET 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_MD_FAULT_DET;

  /********************************************************************
  #function:月度计量设备故障明细/DW_D_MD_FAULT_DET 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_MD_FAULT_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    V_BEG_YMD    DATE := TO_DATE(V_YM, 'YYYYMM');
    V_END_YMD    DATE := LAST_DAY(TO_DATE(V_YM, 'YYYYMM'));
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_MD_FAULT_DET', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_MD_FAULT_DET X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_MD_FAULT_DET
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      NULL;
      --电能表01 （用户）
      INSERT INTO DW_D_MD_FAULT_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         EQUIP_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         SUPPLIER,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         ERR_TYPE_CODE,
         REASON,
         FAULT_NUM,
         FAULT_HANDLE_NUM,
         ERR_PQ,
         LPQ,
         ERR_CC_PQ,
         ECONOMIC_LOSS,
         MP_NO,
         MP_NAME,
         BAR_CODE,
         MADE_NO,
         ASSET_NO,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '01' EQUIP_SORT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_TYPE_CODE',D.TYPE_CODE) EQUIP_TYPE,
               D.SORT_CODE TYPE_VALUE,
               (SELECT M.SPEC_CODE
                  FROM SY_SG_D_METER M
                 WHERE M.METER_ID = D.METER_ID) NORM_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0') IS_SMART_METER,
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('ERR_TYPE_CODE',F.ERR_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_FAULT_REASON',F.REASON),
               SUM(1) FAULT_NUM,
               SUM(DECODE(H.HANDLE_CODE, '02', 1, 0)) FAULT_HANDLE_NUM,
               SUM(F.ERR_PQ) ERR_PQ,
               SUM(F.ERR_LPQ) LPQ,
               '' ERR_CC_PQ,
               SUM(F.ECONOMIC_LOSS) ECONOMIC_LOSS,
               MP.MP_NO,
               MP.MP_NAME,
               D.BAR_CODE,
               D.MADE_NO,
               D.ASSET_NO,
               SYSDATE
          FROM SY_SG_S_MEAS_EXCP_HANDLE H,
               SY_SG_S_FAULT_ERR_HANDLE F,
               SY_SG_D_METER            D,
               SY_SG_C_MP               MP,
               SY_SG_C_CONS             C
         WHERE H.ID = F.ID2
           AND H.FIND_DATE BETWEEN V_BEG_YMD AND V_END_YMD
           AND H.EQUIP_TYPE_CODE = '01'
           AND H.EQUIP_ID = D.METER_ID
           AND H.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_TYPE_CODE',D.TYPE_CODE),
                  D.WIRING_MODE,
                  D.METER_ID,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER),
                  MP.USAGE_TYPE_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ERR_TYPE_CODE',F.ERR_TYPE_CODE),
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_FAULT_REASON',F.REASON),
                  F.ECONOMIC_LOSS,
                  F.ERR_PQ,
                  F.ERR_LPQ,
                  MP.MP_NO,
                  MP.MP_NAME,
                  D.BAR_CODE,
                  D.MADE_NO,
                  D.ASSET_NO;
    
      --电能表01 （关口）
      INSERT INTO DW_D_MD_FAULT_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         EQUIP_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         SUPPLIER,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         ERR_TYPE_CODE,
         REASON,
         FAULT_NUM,
         FAULT_HANDLE_NUM,
         ERR_PQ,
         LPQ,
         ERR_CC_PQ,
         ECONOMIC_LOSS,
         MP_NO,
         MP_NAME,
         BAR_CODE,
         MADE_NO,
         ASSET_NO,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '01' EQUIP_SORT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_TYPE_CODE',D.TYPE_CODE) EQUIP_TYPE,
               D.SORT_CODE TYPE_VALUE,
               (SELECT M.SPEC_CODE
                  FROM SY_SG_D_METER M
                 WHERE M.METER_ID = D.METER_ID) NORM_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0') IS_SMART_METER,
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('ERR_TYPE_CODE',F.ERR_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_FAULT_REASON',F.REASON),
               SUM(1) FAULT_NUM,
               SUM(DECODE(H.HANDLE_CODE, '02', 1, 0)) FAULT_HANDLE_NUM,
               SUM(F.ERR_PQ) ERR_PQ,
               SUM(F.ERR_LPQ) LPQ,
               '' ERR_CC_PQ,
               SUM(F.ECONOMIC_LOSS) ECONOMIC_LOSS,
               MP.MP_NO,
               MP.MP_NAME,
               D.BAR_CODE,
               D.MADE_NO,
               D.ASSET_NO,
               SYSDATE
          FROM SY_SG_S_MEAS_EXCP_HANDLE H,
               SY_SG_S_FAULT_ERR_HANDLE F,
               SY_SG_D_METER            D,
               SY_SG_C_MP               MP
         WHERE H.FIND_DATE BETWEEN V_BEG_YMD AND V_END_YMD
           AND H.ID = F.ID2
           AND H.EQUIP_TYPE_CODE = '01'
           AND H.EQUIP_ID = D.METER_ID
           AND H.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.TYPE_CODE,
                  D.WIRING_MODE,
                  D.METER_ID,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  D.MANUFACTURER,
                  MP.USAGE_TYPE_CODE,
                  F.ERR_TYPE_CODE,
                  F.REASON,
                  F.ECONOMIC_LOSS,
                  F.ERR_PQ,
                  F.ERR_LPQ,
                  MP.MP_NO,
                  MP.MP_NAME,
                  D.BAR_CODE,
                  D.MADE_NO,
                  D.ASSET_NO;
    
      --互感器02（用户）
      INSERT INTO DW_D_MD_FAULT_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         EQUIP_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         SUPPLIER,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         ERR_TYPE_CODE,
         REASON,
         FAULT_NUM,
         FAULT_HANDLE_NUM,
         ERR_PQ,
         LPQ,
         ERR_CC_PQ,
         ECONOMIC_LOSS,
         MP_NO,
         MP_NAME,
         BAR_CODE,
         MADE_NO,
         ASSET_NO,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02' EQUIP_SORT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_TYPE',D.TYPE_CODE) EQUIP_TYPE,
               D.SORT_CODE TYPE_VALUE,
               '' NORM_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
               (SELECT I.WIRING_MODE
                  FROM SY_SG_D_IT I
                 WHERE I.IT_ID = D.IT_ID) WIRING_MODE,
               '0' IS_SMART_METER,
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('ERR_TYPE_CODE',F.ERR_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('IT_FAULT_REASON',F.REASON),
               SUM(1) FAULT_NUM,
               SUM(DECODE(H.HANDLE_CODE, '02', 1, 0)) FAULT_HANDLE_NUM,
               SUM(F.ERR_PQ) ERR_PQ,
               SUM(F.ERR_LPQ) LPQ,
               '' ERR_CC_PQ,
               SUM(F.ECONOMIC_LOSS) ECONOMIC_LOSS,
               MP.MP_NO,
               MP.MP_NAME,
               D.BAR_CODE,
               D.MADE_NO,
               D.ASSET_NO,
               SYSDATE
          FROM SY_SG_S_MEAS_EXCP_HANDLE H,
               SY_SG_S_FAULT_ERR_HANDLE F,
               SY_SG_D_IT               D,
               SY_SG_C_MP               MP,
               SY_SG_C_CONS             C
         WHERE H.FIND_DATE BETWEEN V_BEG_YMD AND V_END_YMD
           AND H.ID = F.ID2
           AND H.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND H.EQUIP_ID = D.IT_ID
           AND H.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.TYPE_CODE,
                  D.IT_ID,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  D.MANUFACTURER,
                  MP.USAGE_TYPE_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ERR_TYPE_CODE',F.ERR_TYPE_CODE),
                  F.REASON,
                  F.ECONOMIC_LOSS,
                  F.ERR_PQ,
                  F.ERR_LPQ,
                  MP.MP_NO,
                  MP.MP_NAME,
                  D.BAR_CODE,
                  D.MADE_NO,
                  D.ASSET_NO;
    
      --互感器02 (关口)            
      INSERT INTO DW_D_MD_FAULT_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         EQUIP_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         SUPPLIER,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         ERR_TYPE_CODE,
         REASON,
         FAULT_NUM,
         FAULT_HANDLE_NUM,
         ERR_PQ,
         LPQ,
         ERR_CC_PQ,
         ECONOMIC_LOSS,
         MP_NO,
         MP_NAME,
         BAR_CODE,
         MADE_NO,
         ASSET_NO,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02' EQUIP_SORT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_TYPE',D.TYPE_CODE) EQUIP_TYPE,
               D.SORT_CODE TYPE_VALUE,
               '' NORM_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
               (SELECT I.WIRING_MODE
                  FROM SY_SG_D_IT I
                 WHERE I.IT_ID = D.IT_ID) WIRING_MODE,
               '0' IS_SMART_METER,
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('ERR_TYPE_CODE',F.ERR_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('IT_FAULT_REASON',F.REASON),
               SUM(1) FAULT_NUM,
               SUM(DECODE(H.HANDLE_CODE, '02', 1, 0)) FAULT_HANDLE_NUM,
               SUM(F.ERR_PQ) ERR_PQ,
               SUM(F.ERR_LPQ) LPQ,
               '' ERR_CC_PQ,
               SUM(F.ECONOMIC_LOSS) ECONOMIC_LOSS,
               MP.MP_NO,
               MP.MP_NAME,
               D.BAR_CODE,
               D.MADE_NO,
               D.ASSET_NO,
               SYSDATE
          FROM SY_SG_S_MEAS_EXCP_HANDLE H,
               SY_SG_S_FAULT_ERR_HANDLE F,
               SY_SG_D_IT               D,
               SY_SG_C_MP               MP
         WHERE H.FIND_DATE BETWEEN V_BEG_YMD AND V_END_YMD
           AND H.ID = F.ID2
           AND H.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND H.EQUIP_ID = D.IT_ID
           AND H.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.TYPE_CODE,
                  D.IT_ID,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  D.MANUFACTURER,
                  MP.USAGE_TYPE_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ERR_TYPE_CODE',F.ERR_TYPE_CODE),
                  F.REASON,
                  F.ECONOMIC_LOSS,
                  F.ERR_PQ,
                  F.ERR_LPQ,
                  MP.MP_NO,
                  MP.MP_NAME,
                  D.BAR_CODE,
                  D.MADE_NO,
                  D.ASSET_NO;
    
      --负控终端03（用户）
      INSERT INTO DW_D_MD_FAULT_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         EQUIP_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         SUPPLIER,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         ERR_TYPE_CODE,
         REASON,
         FAULT_NUM,
         FAULT_HANDLE_NUM,
         ERR_PQ,
         LPQ,
         ERR_CC_PQ,
         ECONOMIC_LOSS,
         MP_NO,
         MP_NAME,
         BAR_CODE,
         MADE_NO,
         ASSET_NO,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '03' EQUIP_SORT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('COLL_TERMINAL_TYPE',D.TYPE_CODE) EQUIP_TYPE,
               D.TYPE_CODE TYPE_VALUE,
               D.SPEC_CODE NORM_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
               D.WIRING_MODE,
               '0' IS_SMART_METER,
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('ERR_TYPE_CODE',F.ERR_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('TERMINAL_FAULT_REASON',F.REASON),
               SUM(1) FAULT_NUM,
               SUM(DECODE(H.HANDLE_CODE, '02', 1, 0)) FAULT_HANDLE_NUM,
               SUM(F.ERR_PQ) ERR_PQ,
               SUM(F.ERR_LPQ) LPQ,
               '' ERR_CC_PQ,
               SUM(F.ECONOMIC_LOSS) ECONOMIC_LOSS,
               MP.MP_NO,
               MP.MP_NAME,
               D.BAR_CODE,
               D.MADE_NO,
               D.ASSET_NO,
               SYSDATE
          FROM SY_SG_S_MEAS_EXCP_HANDLE H,
               SY_SG_S_FAULT_ERR_HANDLE F,
               SY_SG_D_LC_EQUIP         D,
               SY_SG_C_MP               MP,
               SY_SG_C_CONS             C
         WHERE H.FIND_DATE BETWEEN V_BEG_YMD AND V_END_YMD
           AND H.ID = F.ID2
           AND H.EQUIP_TYPE_CODE = '21'
           AND H.EQUIP_ID = D.ID
           AND H.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY MP.ORG_NO,
                  D.SPEC_CODE,
                  D.TYPE_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  D.MANUFACTURER,
                  MP.USAGE_TYPE_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ERR_TYPE_CODE',F.ERR_TYPE_CODE),
                  F.REASON,
                  F.ECONOMIC_LOSS,
                  F.ERR_PQ,
                  F.ERR_LPQ,
                  MP.MP_NO,
                  MP.MP_NAME,
                  D.BAR_CODE,
                  D.MADE_NO,
                  D.ASSET_NO;
    
      --负控终端03 关口
      INSERT INTO DW_D_MD_FAULT_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         EQUIP_TYPE,
         TYPE_VALUE,
         NORM_TYPE,
         SUPPLIER,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         ERR_TYPE_CODE,
         REASON,
         FAULT_NUM,
         FAULT_HANDLE_NUM,
         ERR_PQ,
         LPQ,
         ERR_CC_PQ,
         ECONOMIC_LOSS,
         MP_NO,
         MP_NAME,
         BAR_CODE,
         MADE_NO,
         ASSET_NO,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '03' EQUIP_SORT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('COLL_TERMINAL_TYPE',D.TYPE_CODE) EQUIP_TYPE,
               D.TYPE_CODE TYPE_VALUE,
               D.SPEC_CODE NORM_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
               D.WIRING_MODE,
               '0' IS_SMART_METER,
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('ERR_TYPE_CODE',F.ERR_TYPE_CODE),
               PKG_GK_PUBLIC.F_TRANS_CODE('TERMINAL_FAULT_REASON',F.REASON),
               SUM(1) FAULT_NUM,
               SUM(DECODE(H.HANDLE_CODE, '02', 1, 0)) FAULT_HANDLE_NUM,
               SUM(F.ERR_PQ) ERR_PQ,
               SUM(F.ERR_LPQ) LPQ,
               '' ERR_CC_PQ,
               SUM(F.ECONOMIC_LOSS) ECONOMIC_LOSS,
               MP.MP_NO,
               MP.MP_NAME,
               D.BAR_CODE,
               D.MADE_NO,
               D.ASSET_NO,
               SYSDATE
          FROM SY_SG_S_MEAS_EXCP_HANDLE H,
               SY_SG_S_FAULT_ERR_HANDLE F,
               SY_SG_D_LC_EQUIP         D,
               SY_SG_C_MP               MP
         WHERE H.FIND_DATE BETWEEN V_BEG_YMD AND V_END_YMD
           AND H.ID = F.ID2
           AND H.EQUIP_TYPE_CODE = '21'
           AND H.EQUIP_ID = D.ID
           AND H.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
         GROUP BY MP.ORG_NO,
                  D.SPEC_CODE,
                  D.TYPE_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE, /*c.trade_code,*/
                  MP.VOLT_CODE,
                  D.MANUFACTURER,
                  MP.USAGE_TYPE_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('ERR_TYPE_CODE',F.ERR_TYPE_CODE),
                  F.REASON,
                  F.ECONOMIC_LOSS,
                  F.ERR_PQ,
                  F.ERR_LPQ,
                  MP.MP_NO,
                  MP.MP_NAME,
                  D.BAR_CODE,
                  D.MADE_NO,
                  D.ASSET_NO;
    
      COMMIT;
    END LOOP;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_MD_FAULT_DET 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_MD_FAULT_DET 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_MD_FAULT_DET;

  /********************************************************************
  #function:月度计量设备故障明细/DW_D_MD_FAULT_DET 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_MD_FAULT_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_MD_FAULT_DET', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_MD_FAULT_DET X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_MD_FAULT_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       EQUIP_SORT_CODE,
       EQUIP_TYPE,
       TYPE_VALUE,
       NORM_TYPE,
       SUPPLIER,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       ERR_TYPE_CODE,
       REASON,
       FAULT_NUM,
       FAULT_HANDLE_NUM,
       ERR_PQ,
       LPQ,
       ERR_CC_PQ,
       ECONOMIC_LOSS,
       MP_NO,
       MP_NAME,
       BAR_CODE,
       MADE_NO,
       ASSET_NO,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       EQUIP_SORT_CODE,
       EQUIP_TYPE,
       TYPE_VALUE,
       NORM_TYPE,
       SUPPLIER,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       ERR_TYPE_CODE,
       REASON,
       FAULT_NUM,
       FAULT_HANDLE_NUM,
       ERR_PQ,
       LPQ,
       ERR_CC_PQ,
       ECONOMIC_LOSS,
       MP_NO,
       MP_NAME,
       BAR_CODE,
       MADE_NO,
       ASSET_NO,
       TIME_STAMP
        FROM DW_D_MD_FAULT_DET A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_MD_FAULT_DET 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_MD_FAULT_DET 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_MD_FAULT_DET;

  /********************************************************************
  #function:月度计量设备故障统计/DW_D_MD_FAULT_HANDLE 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-3-5
  #input:i_data  统计频率(月)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_MD_FAULT_HANDLE(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_MD_FAULT_HANDLE', V_YM);
    --调用抽取过程
    P_INS_DW_D_MD_FAULT_HANDLE(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_MD_FAULT_HANDLE(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_MD_FAULT_HANDLE A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YM = V_YM;
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_MD_FAULT_HANDLE 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_MD_FAULT_HANDLE 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_MD_FAULT_HANDLE;

  /********************************************************************
  #function:月度计量设备故障统计/DW_D_MD_FAULT_HANDLE 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_MD_FAULT_HANDLE(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    V_BEG_YMD    DATE := TO_DATE(V_YM, 'YYYYMM');
    V_END_YMD    DATE := LAST_DAY(TO_DATE(V_YM, 'YYYYMM'));
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_MD_FAULT_HANDLE',
                                        I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_MD_FAULT_HANDLE X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_MD_FAULT_HANDLE
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --电能表01 用户
      INSERT INTO DW_D_MD_FAULT_HANDLE
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         EQUIP_TYPE,
         ARRIVE_BATCH_NO,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         SUPPLIER,
         USAGE_TYPE_CODE,
         ERR_TYPE_CODE,
         REASON,
         FAULT_NUM,
         FAULT_HANDLE_NUM,
         ECONOMIC_LOSS,
         ERR_PQ,
         ERR_CC_PQ,
         LPQ,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '01',
               D.SORT_CODE,
               D.SPEC_CODE NORM_TYPE,
               D.TYPE_CODE,
               D.RCV_ID,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0'),
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
               MP.USAGE_TYPE_CODE,
               F.ERR_TYPE_CODE,
               F.REASON,
               SUM(1),
               SUM(DECODE(H.HANDLE_CODE, '02', 1, 0)),
               SUM(F.ECONOMIC_LOSS),
               SUM(F.ERR_PQ),
               '',
               SUM(F.ERR_LPQ),
               SYSDATE
          FROM SY_SG_S_MEAS_EXCP_HANDLE H,
               SY_SG_S_FAULT_ERR_HANDLE F,
               SY_SG_D_METER            D,
               SY_SG_C_MP               MP,
               SY_SG_C_CONS             C
         WHERE H.FIND_DATE BETWEEN V_BEG_YMD AND V_END_YMD
           AND H.EQUIP_TYPE_CODE = '01'
           AND H.ID = F.ID2
           AND H.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND H.EQUIP_ID = D.METER_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.TYPE_CODE,
                  D.WIRING_MODE,
                  D.SPEC_CODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  D.MANUFACTURER,
                  MP.USAGE_TYPE_CODE,
                  F.ERR_TYPE_CODE,
                  F.REASON,
                  F.ECONOMIC_LOSS,
                  F.ERR_PQ,
                  F.ERR_LPQ,
                  D.RCV_ID;
    
      --电能表01 关口
      INSERT INTO DW_D_MD_FAULT_HANDLE
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         EQUIP_TYPE,
         ARRIVE_BATCH_NO,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         SUPPLIER,
         USAGE_TYPE_CODE,
         ERR_TYPE_CODE,
         REASON,
         FAULT_NUM,
         FAULT_HANDLE_NUM,
         ECONOMIC_LOSS,
         ERR_PQ,
         ERR_CC_PQ,
         LPQ,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '01',
               D.SORT_CODE,
               D.SPEC_CODE NORM_TYPE,
               D.TYPE_CODE,
               D.RCV_ID,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0'),
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
               MP.USAGE_TYPE_CODE,
               F.ERR_TYPE_CODE,
               F.REASON,
               SUM(1),
               SUM(DECODE(H.HANDLE_CODE, '02', 1, 0)),
               SUM(F.ECONOMIC_LOSS),
               SUM(F.ERR_PQ),
               '',
               SUM(F.ERR_LPQ),
               SYSDATE
          FROM SY_SG_S_MEAS_EXCP_HANDLE H,
               SY_SG_S_FAULT_ERR_HANDLE F,
               SY_SG_D_METER            D,
               SY_SG_C_MP               MP
         WHERE H.FIND_DATE BETWEEN V_BEG_YMD AND V_END_YMD
           AND H.EQUIP_TYPE_CODE = '01'
           AND H.ID = F.ID2
           AND H.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND H.EQUIP_ID = D.METER_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.TYPE_CODE,
                  D.WIRING_MODE,
                  D.SPEC_CODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  D.MANUFACTURER,
                  MP.USAGE_TYPE_CODE,
                  F.ERR_TYPE_CODE,
                  F.REASON,
                  F.ECONOMIC_LOSS,
                  F.ERR_PQ,
                  F.ERR_LPQ,
                  D.RCV_ID;
    
      --互感器02 用户
      INSERT INTO DW_D_MD_FAULT_HANDLE
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         EQUIP_TYPE,
         ARRIVE_BATCH_NO,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         SUPPLIER,
         USAGE_TYPE_CODE,
         ERR_TYPE_CODE,
         REASON,
         FAULT_NUM,
         FAULT_HANDLE_NUM,
         ECONOMIC_LOSS,
         ERR_PQ,
         ERR_CC_PQ,
         LPQ,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02',
               D.SORT_CODE,
               '',
               D.TYPE_CODE,
               D.RCV_ID,
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
               MP.USAGE_TYPE_CODE,
               F.ERR_TYPE_CODE,
               F.REASON,
               SUM(1),
               SUM(DECODE(H.HANDLE_CODE, '02', 1, 0)),
               SUM(F.ECONOMIC_LOSS),
               SUM(F.ERR_PQ),
               '',
               SUM(F.ERR_LPQ),
               SYSDATE
          FROM SY_SG_S_MEAS_EXCP_HANDLE H,
               SY_SG_S_FAULT_ERR_HANDLE F,
               SY_SG_C_MP               MP,
               SY_SG_C_CONS             C,
               SY_SG_D_IT               D
         WHERE H.FIND_DATE BETWEEN V_BEG_YMD AND V_END_YMD
           AND H.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND H.ID = F.ID2
           AND H.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND H.EQUIP_ID = D.IT_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.TYPE_CODE,
                  /*d.it_id*/
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  D.MANUFACTURER,
                  MP.USAGE_TYPE_CODE,
                  F.ERR_TYPE_CODE,
                  F.REASON,
                  F.ECONOMIC_LOSS,
                  F.ERR_PQ,
                  F.ERR_LPQ,
                  D.RCV_ID;
    
      --互感器02 关口
      INSERT INTO DW_D_MD_FAULT_HANDLE
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         EQUIP_TYPE,
         ARRIVE_BATCH_NO,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         SUPPLIER,
         USAGE_TYPE_CODE,
         ERR_TYPE_CODE,
         REASON,
         FAULT_NUM,
         FAULT_HANDLE_NUM,
         ECONOMIC_LOSS,
         ERR_PQ,
         ERR_CC_PQ,
         LPQ,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02',
               D.SORT_CODE,
               '',
               D.TYPE_CODE,
               D.RCV_ID,
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
               MP.USAGE_TYPE_CODE,
               F.ERR_TYPE_CODE,
               F.REASON,
               SUM(1),
               SUM(DECODE(H.HANDLE_CODE, '02', 1, 0)),
               SUM(F.ECONOMIC_LOSS),
               SUM(F.ERR_PQ),
               '',
               SUM(F.ERR_LPQ),
               SYSDATE
          FROM SY_SG_S_MEAS_EXCP_HANDLE H,
               SY_SG_S_FAULT_ERR_HANDLE F,
               SY_SG_C_MP               MP,
               SY_SG_D_IT               D
         WHERE H.FIND_DATE BETWEEN V_BEG_YMD AND V_END_YMD
           AND H.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND H.ID = F.ID2
           AND H.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND H.EQUIP_ID = D.IT_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.TYPE_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  D.MANUFACTURER,
                  MP.USAGE_TYPE_CODE,
                  F.ERR_TYPE_CODE,
                  F.REASON,
                  F.ECONOMIC_LOSS,
                  F.ERR_PQ,
                  F.ERR_LPQ,
                  D.RCV_ID;
    
      --采集终端03
      INSERT INTO DW_D_MD_FAULT_HANDLE
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         EQUIP_TYPE,
         ARRIVE_BATCH_NO,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         SUPPLIER,
         USAGE_TYPE_CODE,
         ERR_TYPE_CODE,
         REASON,
         FAULT_NUM,
         FAULT_HANDLE_NUM,
         ECONOMIC_LOSS,
         ERR_PQ,
         ERR_CC_PQ,
         LPQ,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               C.ORG_NO,
               '',
               V_YM,
               '09',
               '' SORT_CODE,
               '' NORM_TYPE,
               '' TYPE_CPDE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
               MP.USAGE_TYPE_CODE,
               F.ERR_TYPE_CODE,
               F.REASON,
               SUM(1),
               SUM(DECODE(H.HANDLE_CODE, '02', 1, 0)),
               SUM(F.ECONOMIC_LOSS),
               SUM(F.ERR_PQ),
               '',
               SUM(F.ERR_LPQ),
               SYSDATE
          FROM SY_SG_S_MEAS_EXCP_HANDLE H,
               SY_SG_S_FAULT_ERR_HANDLE F,
               SY_SG_D_FMR_EQUIP        D,
               SY_SG_C_MP               MP,
               SY_SG_C_CONS             C
         WHERE H.FIND_DATE BETWEEN V_BEG_YMD AND V_END_YMD
           AND H.ID = F.ID2
           AND H.EQUIP_TYPE_CODE = '09'
           AND H.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND H.EQUIP_ID = D.ID
         GROUP BY C.ORG_NO,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  D.MANUFACTURER,
                  MP.USAGE_TYPE_CODE,
                  F.ERR_TYPE_CODE,
                  F.REASON,
                  F.ECONOMIC_LOSS,
                  F.ERR_PQ,
                  F.ERR_LPQ;
    
      --负控终端03
      INSERT INTO DW_D_MD_FAULT_HANDLE
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         EQUIP_TYPE,
         ARRIVE_BATCH_NO,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         SUPPLIER,
         USAGE_TYPE_CODE,
         ERR_TYPE_CODE,
         REASON,
         FAULT_NUM,
         FAULT_HANDLE_NUM,
         ECONOMIC_LOSS,
         ERR_PQ,
         ERR_CC_PQ,
         LPQ,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '21',
               '' SORT_CODE,
               D.SPEC_CODE,
               D.TYPE_CODE,
               D.LOT_ID,
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', D.MANUFACTURER) SUPPLIER,
               MP.USAGE_TYPE_CODE,
               F.ERR_TYPE_CODE,
               F.REASON,
               SUM(1),
               SUM(DECODE(H.HANDLE_CODE, '02', 1, 0)),
               SUM(F.ECONOMIC_LOSS),
               SUM(F.ERR_PQ),
               '',
               SUM(F.ERR_LPQ),
               SYSDATE
          FROM SY_SG_S_MEAS_EXCP_HANDLE H,
               SY_SG_S_FAULT_ERR_HANDLE F,
               SY_SG_C_MP               MP,
               SY_SG_C_CONS             C,
               SY_SG_D_LC_EQUIP         D
         WHERE H.FIND_DATE BETWEEN V_BEG_YMD AND V_END_YMD
           AND H.ID = F.ID2
           AND H.EQUIP_TYPE_CODE = '21'
           AND H.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND H.EQUIP_ID = D.ID
         GROUP BY MP.ORG_NO,
                  D.SPEC_CODE,
                  D.TYPE_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  D.MANUFACTURER,
                  MP.USAGE_TYPE_CODE,
                  F.ERR_TYPE_CODE,
                  F.REASON,
                  F.ECONOMIC_LOSS,
                  F.ERR_PQ,
                  F.ERR_LPQ,
                  D.LOT_ID;
    
      COMMIT;
    END LOOP;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_MD_FAULT_HANDLE 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_MD_FAULT_HANDLE 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_MD_FAULT_HANDLE;

  /********************************************************************
  #function:月度计量设备故障统计/DW_D_MD_FAULT_HANDLE 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_MD_FAULT_HANDLE(I_DATA   VARCHAR2,
                                       OUT_CODE OUT NUMBER,
                                       OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_MD_FAULT_HANDLE',
                                        I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_MD_FAULT_HANDLE X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_MD_FAULT_HANDLE
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       EQUIP_TYPE,
       ARRIVE_BATCH_NO,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       SUPPLIER,
       USAGE_TYPE_CODE,
       ERR_TYPE_CODE,
       REASON,
       FAULT_NUM,
       FAULT_HANDLE_NUM,
       ECONOMIC_LOSS,
       ERR_PQ,
       ERR_CC_PQ,
       LPQ,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       EQUIP_TYPE,
       ARRIVE_BATCH_NO,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       SUPPLIER,
       USAGE_TYPE_CODE,
       ERR_TYPE_CODE,
       REASON,
       FAULT_NUM,
       FAULT_HANDLE_NUM,
       ECONOMIC_LOSS,
       ERR_PQ,
       ERR_CC_PQ,
       LPQ,
       TIME_STAMP
        FROM DW_D_MD_FAULT_HANDLE A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_MD_FAULT_HANDLE 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_MD_FAULT_HANDLE 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_MD_FAULT_HANDLE;
  /********************************************************************
  #function:月度计量设备现场检测未完成明细/DW_D_MD_FIELD_DET 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-3-5
  #input:i_data  统计频率(月)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_MD_FIELD_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_MD_FIELD_DET', V_YM);
    --调用抽取过程
    P_INS_DW_D_MD_FIELD_DET(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_MD_FIELD_DET(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_MD_FIELD_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YM = V_YM;
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_MD_FIELD_DET 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_MD_FIELD_DET 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_MD_FIELD_DET;

  /********************************************************************
  #function:月度计量设备现场检测未完成明细/DW_D_MD_FIELD_DET 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_MD_FIELD_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_MD_FIELD_DET', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_MD_FIELD_DET X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_MD_FIELD_DET
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --电能表01 用户
      INSERT INTO DW_D_MD_FIELD_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ASSETS_OWNER,
         USAGE_TYPE_CODE,
         MP_NO,
         MP_NAME,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '01',
               '01',
               D.SORT_CODE,
               D.SPEC_CODE,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0'),
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               D.PR_CODE,
               MP.USAGE_TYPE_CODE,
               MP.MP_NO,
               MP.MP_NAME,
               SYSDATE
          FROM SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P,
               SY_SG_D_METER         D,
               SY_SG_C_MP            MP,
               SY_SG_C_CONS          C
         WHERE S.ID = '12'
           AND S.PLAN_YM = V_YM
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = P.PLAN_ID(+)
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND P.EQUIP_ID = D.METER_ID
              --AND p.equip_type_code = '01'                       
           AND P.STATUS IN ('01', '04')
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%';
    
      --电能表01 关口
      INSERT INTO DW_D_MD_FIELD_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ASSETS_OWNER,
         USAGE_TYPE_CODE,
         MP_NO,
         MP_NAME,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '01',
               '01',
               D.SORT_CODE,
               D.SPEC_CODE,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0'),
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               D.PR_CODE,
               MP.USAGE_TYPE_CODE,
               MP.MP_NO,
               MP.MP_NAME,
               SYSDATE
          FROM SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P,
               SY_SG_D_METER         D,
               SY_SG_C_MP            MP
         WHERE S.ID = '12'
           AND S.PLAN_YM = V_YM
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = P.PLAN_ID(+)
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND P.EQUIP_ID = D.METER_ID
              --AND p.equip_type_code = '01'                       
           AND P.STATUS IN ('01', '04')
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01';
    
      --互感器02 用户
      INSERT INTO DW_D_MD_FIELD_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ASSETS_OWNER,
         USAGE_TYPE_CODE,
         MP_NO,
         MP_NAME,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               DECODE(S.ID, '13', '02', '14', '03', '15', '04', ''),
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               D.PR_CODE,
               MP.USAGE_TYPE_CODE,
               MP.MP_NO,
               MP.MP_NAME,
               SYSDATE
          FROM SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P,
               SY_SG_C_MP            MP,
               SY_SG_C_CONS          C,
               SY_SG_D_IT            D
         WHERE S.ID IN ('13', '14', '15')
           AND S.PLAN_YM = V_YM
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND P.STATUS IN ('01', '04')
           AND P.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND P.MP_ID = MP.MP_ID
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND D.IT_ID = P.EQUIP_ID;
    
      --互感器02 关口
      INSERT INTO DW_D_MD_FIELD_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ASSETS_OWNER,
         USAGE_TYPE_CODE,
         MP_NO,
         MP_NAME,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               DECODE(S.ID, '13', '02', '14', '03', '15', '04', ''),
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               D.PR_CODE,
               MP.USAGE_TYPE_CODE,
               MP.MP_NO,
               MP.MP_NAME,
               SYSDATE
          FROM SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P,
               SY_SG_C_MP            MP,
               SY_SG_D_IT            D
         WHERE S.ID IN ('13', '14', '15')
           AND S.PLAN_YM = V_YM
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND P.STATUS IN ('01', '04')
           AND P.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND P.MP_ID = MP.MP_ID
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND D.IT_ID = P.EQUIP_ID
           AND MP.USAGE_TYPE_CODE <> '01';
    
      COMMIT;
    END LOOP;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_MD_FIELD_DET
    --地市及省级关口统计
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG O
                 WHERE O.ORG_TYPE IN ('02', '03')) LOOP
      --电能表01 关口
      INSERT INTO DW_D_MD_FIELD_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ASSETS_OWNER,
         USAGE_TYPE_CODE,
         MP_NO,
         MP_NAME,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '01',
               '01',
               D.SORT_CODE,
               D.SPEC_CODE,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0'),
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               D.PR_CODE,
               MP.USAGE_TYPE_CODE,
               MP.MP_NO,
               MP.MP_NAME,
               SYSDATE
          FROM SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P,
               SY_SG_D_METER         D,
               SY_SG_C_MP            MP
         WHERE S.ID = '12'
           AND S.PLAN_YM = V_YM
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = P.PLAN_ID(+)
           AND P.ORG_NO = TSS.ORG_NO
           AND P.EQUIP_ID = D.METER_ID
              --AND p.equip_type_code = '01'                       
           AND P.STATUS IN ('01', '04')
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO = TSS.ORG_NO
           AND MP.USAGE_TYPE_CODE <> '01';
    
      --互感器02 关口
      INSERT INTO DW_D_MD_FIELD_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ASSETS_OWNER,
         USAGE_TYPE_CODE,
         MP_NO,
         MP_NAME,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               DECODE(S.ID, '13', '02', '14', '03', '15', '04', ''),
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               D.PR_CODE,
               MP.USAGE_TYPE_CODE,
               MP.MP_NO,
               MP.MP_NAME,
               SYSDATE
          FROM SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P,
               SY_SG_C_MP            MP,
               SY_SG_D_IT            D
         WHERE S.ID IN ('13', '14', '15')
           AND S.PLAN_YM = V_YM
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO = TSS.ORG_NO
           AND P.STATUS IN ('01', '04')
           AND P.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND P.MP_ID = MP.MP_ID
           AND P.ORG_NO = TSS.ORG_NO
           AND D.IT_ID = P.EQUIP_ID
           AND MP.USAGE_TYPE_CODE <> '01';
      COMMIT;
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_MD_FIELD_DET 成功';
  
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_MD_FIELD_DET 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_MD_FIELD_DET;

  /********************************************************************
  #function:月度计量设备现场检测未完成明细/DW_D_MD_FIELD_DET 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_MD_FIELD_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_MD_FIELD_DET', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_MD_FIELD_DET X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_MD_FIELD_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       PLAN_TYPE,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       ASSETS_OWNER,
       USAGE_TYPE_CODE,
       MP_NO,
       MP_NAME,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       PLAN_TYPE,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       ASSETS_OWNER,
       USAGE_TYPE_CODE,
       MP_NO,
       MP_NAME,
       TIME_STAMP
        FROM DW_D_MD_FIELD_DET A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_MD_FIELD_DET 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_MD_FIELD_DET 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_MD_FIELD_DET;

  /********************************************************************
  #function:月度计量设备现场检测统计/DW_D_MD_FIELD_CHECK 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-3-6
  #input:i_data  统计频率(月)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_MD_FIELD_CHECK(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_MD_FIELD_CHECK', V_YM);
    --调用抽取过程
    P_INS_DW_D_MD_FIELD_CHECK(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_MD_FIELD_CHECK(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_MD_FIELD_CHECK A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YM = V_YM;
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_MD_FIELD_CHECK 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_MD_FIELD_CHECK 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_MD_FIELD_CHECK;

  /********************************************************************
  #function:月度计量设备现场检测统计/DW_D_MD_FIELD_CHECK 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_MD_FIELD_CHECK(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_MD_FIELD_CHECK', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_MD_FIELD_CHECK X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_MD_FIELD_CHECK
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --01 电能表现场检验计划 用户
      INSERT INTO DW_D_MD_FIELD_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '01',
               '01',
               D.SORT_CODE,
               D.SPEC_CODE,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0'),
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE P.EQUIP_ID = K.METER_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE P.EQUIP_ID = K.METER_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_METER_SITECHK K
                                   WHERE P.EQUIP_ID = K.METER_ID
                                     AND P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P,
               SY_SG_D_METER         D,
               SY_SG_C_MP            MP,
               SY_SG_C_CONS          C
         WHERE S.ID = '12'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND P.EQUIP_ID = D.METER_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --02 互感器现场检验计划  用户
      INSERT INTO DW_D_MD_FIELD_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02',
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE P.EQUIP_ID = K.IT_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE P.EQUIP_ID = K.IT_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_IT_SITECHK K
                                   WHERE P.EQUIP_ID = K.IT_ID
                                     AND P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT            D,
               SY_SG_C_MP            MP,
               SY_SG_C_CONS          C,
               SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P
         WHERE S.ID = '13'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND P.EQUIP_ID = D.IT_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
      --03 TV二次压降测试计划  用户
      INSERT INTO DW_D_MD_FIELD_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '03',
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                                   WHERE P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT            D,
               SY_SG_C_MP            MP,
               SY_SG_C_CONS          C,
               SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P
         WHERE S.ID = '14'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND P.EQUIP_ID = D.IT_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
      --04 TA二次负荷测试计划 用户
      INSERT INTO DW_D_MD_FIELD_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '04',
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_SNDSC_LOAD_DETECT K
                                   WHERE P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT            D,
               SY_SG_C_MP            MP,
               SY_SG_C_CONS          C,
               SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P
         WHERE S.ID = '15'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND P.EQUIP_ID = D.IT_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
      COMMIT;
    END LOOP;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_D_MD_FIELD_DET
    --地市及省级关口统计
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG O
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
    
      --01 电能表现场检验计划
      INSERT INTO DW_D_MD_FIELD_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '01',
               '01',
               D.SORT_CODE,
               D.SPEC_CODE,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0'),
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE P.EQUIP_ID = K.METER_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE P.EQUIP_ID = K.METER_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_METER_SITECHK K
                                   WHERE P.EQUIP_ID = K.METER_ID
                                     AND P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P,
               SY_SG_D_METER         D,
               SY_SG_C_MP            MP
         WHERE S.ID = '12'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO = TSS.ORG_NO
           AND P.EQUIP_ID = D.METER_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO = TSS.ORG_NO
           AND MP.USAGE_TYPE_CODE <> '01'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --02 互感器现场检验计划
      INSERT INTO DW_D_MD_FIELD_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02',
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE P.EQUIP_ID = K.IT_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE P.EQUIP_ID = K.IT_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_IT_SITECHK K
                                   WHERE P.EQUIP_ID = K.IT_ID
                                     AND P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT            D,
               SY_SG_C_MP            MP,
               SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P
         WHERE S.ID = '13'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO = TSS.ORG_NO
           AND P.EQUIP_ID = D.IT_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO = TSS.ORG_NO
           AND MP.USAGE_TYPE_CODE <> '01'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
      --03 TV二次压降测试计划
      INSERT INTO DW_D_MD_FIELD_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '03',
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                                   WHERE P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT            D,
               SY_SG_C_MP            MP,
               SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P
         WHERE S.ID = '14'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO = TSS.ORG_NO
           AND P.EQUIP_ID = D.IT_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO = TSS.ORG_NO
           AND MP.USAGE_TYPE_CODE <> '01'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
      --04 TA二次负荷测试计划
      INSERT INTO DW_D_MD_FIELD_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '04',
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_SNDSC_LOAD_DETECT K
                                   WHERE P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT            D,
               SY_SG_C_MP            MP,
               SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P
         WHERE S.ID = '15'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO LIKE TSS.ORG_NO
           AND P.EQUIP_ID = D.IT_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO = TSS.ORG_NO
           AND MP.USAGE_TYPE_CODE <> '01'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      COMMIT;
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_MD_FIELD_CHECK 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_MD_FIELD_CHECK 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_MD_FIELD_CHECK;

  /********************************************************************
  #function:月度计量设备现场检测统计/DW_D_MD_FIELD_CHECK 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_MD_FIELD_CHECK(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_MD_FIELD_CHECK', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_MD_FIELD_CHECK X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_MD_FIELD_CHECK
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       PLAN_TYPE,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       SHOULD_CHECK_NUM,
       ACTUAL_CHECK_NUM,
       QLF_NUM,
       UNQLF_NUM,
       OVER_CHECK_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       PLAN_TYPE,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       SHOULD_CHECK_NUM,
       ACTUAL_CHECK_NUM,
       QLF_NUM,
       UNQLF_NUM,
       OVER_CHECK_NUM,
       TIME_STAMP
        FROM DW_D_MD_FIELD_CHECK A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_MD_FIELD_CHECK 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_MD_FIELD_CHECK 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_MD_FIELD_CHECK;

  /********************************************************************
  #function:月度计量资产配送汇总/DW_D_MDASSET_DISTR 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-3-6
  #input:i_data  统计频率(月)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_MDASSET_DISTR(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_MDASSET_DISTR', V_YM);
    --调用抽取过程
    P_INS_DW_D_MDASSET_DISTR(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_MDASSET_DISTR(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_MDASSET_DISTR A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YM = V_YM;
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_MDASSET_DISTR 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_MDASSET_DISTR 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_MDASSET_DISTR;

  /********************************************************************
  #function:月度计量资产配送汇总/DW_D_MDASSET_DISTR 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_MDASSET_DISTR(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
    V_BEG_YMD    DATE := TO_DATE(V_YM, 'YYYYMM');
    V_END_YMD    DATE := LAST_DAY(TO_DATE(V_YM, 'YYYYMM'));
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_MDASSET_DISTR', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_MDASSET_DISTR X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_MDASSET_DISTR
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      INSERT INTO DW_D_MDASSET_DISTR
        (DATA_ID,
         PRO_ORG_NO,
         STAT_YM,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         MD_TYPE,
         TYPE_VALUE,
         --NORM_TYPE,
         IS_SMART_METER,
         SUPPLIER,
         WIRING_MODE,
         DISTR_PLAN_NUM,
         DISTR_FINISH_NUM,
         DISTR_OVER_NUM,
         TIMES_TAMP)
        SELECT /*+parallel(k 4) parallel(re 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         V_YM,
         K.ORG_NO,
         '',
         DECODE(K.EQUIP_CATEG,
                '01',
                '01',
                '02',
                '02',
                '03',
                '02',
                '04',
                '02',
                '09',
                '03',
                '21',
                '03',
                '') MD_TYPE,
                /*
         DECODE(K.EQUIP_CATEG,
                '02',
                '02',
                '03',
                '01',
                '04',
                '03',
                (SELECT RT.APPLY_ATTR_DATA
                   FROM SY_SG_D_EXT_APPLY_REC_DET RT
                  WHERE RT.REC_ID = RE.REC_ID
                    AND RT.APPLY_ATTR_ID IN (100010001, 100210006))),*/
                    K.TYPE_CODE,
         --'' NORM_TYPE,
         DECODE((SELECT RT.APPLY_ATTR_DATA
                  FROM SY_SG_D_EXT_APPLY_REC_DET RT
                 WHERE RT.REC_ID = RE.REC_ID
                   AND RT.APPLY_ATTR_ID = 100010001),
                '10',
                1,
                0),
         PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', K.MANUFACTURER) SUPPLIER,
         K.WIRING_MODE,
         SUM(K.QTY),
         NVL((SELECT SUM(IO.IO_WH_NUM)
               FROM SY_SG_D_IO IO
              WHERE IO.TASK_ID = K.TASK_ID
                AND IO.IO_WH_REASON_CODE = '04'
                AND IO.IO_FLAG = '02'),
             0),
         '0',
         SYSDATE
          FROM SY_SG_D_IO_TASK K, SY_SG_D_EXT_APPLY_REC RE
         WHERE K.TASK_ID = RE.RELA_ID(+)
           AND K.IO_WH_REASON_CODE = '10'
           AND K.IO_FLAG = '01'
           AND K.EQUIP_CATEG IN ('01', '02', '03', '04', '09', '21')
           AND K.ORG_NO LIKE TSS.ORG_NO || '%'
           AND K.CREAT_DATE BETWEEN V_BEG_YMD AND V_END_YMD
         GROUP BY K.ORG_NO,
                  RE.REC_ID,
                  K.EQUIP_CATEG,
                  K.MANUFACTURER,
                  K.WIRING_MODE,
                  K.TASK_ID;
      COMMIT;
    END LOOP;
    --省公司及地市公司统计
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG O
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
      INSERT INTO DW_D_MDASSET_DISTR
        (DATA_ID,
         PRO_ORG_NO,
         STAT_YM,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         MD_TYPE,
         TYPE_VALUE,
         --NORM_TYPE,
         IS_SMART_METER,
         SUPPLIER,
         WIRING_MODE,
         DISTR_PLAN_NUM,
         DISTR_FINISH_NUM,
         DISTR_OVER_NUM,
         TIMES_TAMP)
        SELECT /*+parallel(k 4) parallel(re 4)*/
         PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
         V_PRO_ORG_NO,
         V_YM,
         K.ORG_NO,
         '',
         DECODE(K.EQUIP_CATEG,
                '01',
                '01',
                '02',
                '02',
                '03',
                '02',
                '04',
                '02',
                '09',
                '03',
                '21',
                '03',
                '') MD_TYPE,
                /*
         DECODE(K.EQUIP_CATEG,
                '02',
                '02',
                '03',
                '01',
                '04',
                '03',
                (SELECT RT.APPLY_ATTR_DATA
                   FROM SY_SG_D_EXT_APPLY_REC_DET RT
                  WHERE RT.REC_ID = RE.REC_ID
                    AND RT.APPLY_ATTR_ID IN (100010001, 100210006))),
                    */
                    K.TYPE_CODE,
         --'' NORM_TYPE,
         DECODE((SELECT RT.APPLY_ATTR_DATA
                  FROM SY_SG_D_EXT_APPLY_REC_DET RT
                 WHERE RT.REC_ID = RE.REC_ID
                   AND RT.APPLY_ATTR_ID = 100010001),
                '10',
                1,
                0),
         PKG_GK_PUBLIC.F_TRANS_CODE('SUPPLIER', K.MANUFACTURER) SUPPLIER,
         K.WIRING_MODE,
         SUM(K.QTY),
         NVL((SELECT SUM(IO.IO_WH_NUM)
               FROM SY_SG_D_IO IO
              WHERE IO.TASK_ID = K.TASK_ID
                AND IO.IO_WH_REASON_CODE = '04'
                AND IO.IO_FLAG = '02'),
             0),
         '0',
         SYSDATE
          FROM SY_SG_D_IO_TASK K, SY_SG_D_EXT_APPLY_REC RE
         WHERE K.TASK_ID = RE.RELA_ID(+)
           AND K.IO_WH_REASON_CODE = '10'
           AND K.IO_FLAG = '01'
           AND K.EQUIP_CATEG IN ('01', '02', '03', '04', '09', '21')
           AND K.ORG_NO = TSS.ORG_NO
           AND K.CREAT_DATE BETWEEN V_BEG_YMD AND V_END_YMD
         GROUP BY K.ORG_NO,
                  RE.REC_ID,
                  K.EQUIP_CATEG,
                  K.MANUFACTURER,
                  K.WIRING_MODE,
                  K.TASK_ID;
      COMMIT;
    END LOOP;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_MDASSET_DISTR 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_MDASSET_DISTR 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_MDASSET_DISTR;

  /********************************************************************
  #function:月度计量资产配送汇总/DW_D_MDASSET_DISTR 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_MDASSET_DISTR(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_MDASSET_DISTR', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_MDASSET_DISTR X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_MDASSET_DISTR
      (DATA_ID,
       PRO_ORG_NO,
       STAT_YM,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       MD_TYPE,
       TYPE_VALUE,
       --NORM_TYPE,
       IS_SMART_METER,
       SUPPLIER,
       WIRING_MODE,
       DISTR_PLAN_NUM,
       DISTR_FINISH_NUM,
       DISTR_OVER_NUM,
       TIMES_TAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       STAT_YM,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       MD_TYPE,
       TYPE_VALUE,
       --NORM_TYPE,
       IS_SMART_METER,
       SUPPLIER,
       WIRING_MODE,
       DISTR_PLAN_NUM,
       DISTR_FINISH_NUM,
       DISTR_OVER_NUM,
       TIMES_TAMP
        FROM DW_D_MDASSET_DISTR A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_MDASSET_DISTR 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_MDASSET_DISTR 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_MDASSET_DISTR;

  /********************************************************************
  #function:月度高压计量装置首次检定未完成明细/ 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-3-6
  #input:i_data  统计频率(月)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_HV_CHECK_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_HV_CHECK_DET', V_YM);
    --调用抽取过程
    P_INS_DW_D_HV_CHECK_DET(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_HV_CHECK_DET(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_HV_CHECK_DET A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YM = V_YM;
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_HV_CHECK_DET 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_HV_CHECK_DET 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_HV_CHECK_DET;

  /********************************************************************
  #function:月度高压计量装置首次检定未完成明细/DW_D_HV_CHECK_DET 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_HV_CHECK_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_HV_CHECK_DET', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_HV_CHECK_DET X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_HV_CHECK_DET
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --电能表01  用户
      INSERT INTO DW_D_HV_CHECK_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ASSETS_OWNER,
         USAGE_TYPE_CODE,
         MP_NO,
         MP_NAME,
         BAR_CODE,
         ASSET_NO,
         MADE_NO,
         PLAN_CHK_DATE,
         ACTUAL_CHK_DATE,
         IF_GOOD,
         APP_NO,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '' PS_BUSI_AREA_CODE,
               V_YM STAT_YM,
               '01' EQUIP_SORT_CODE,
               D.SORT_CODE,
               D.SPEC_CODE,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0') IS_SMART_METER,
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               D.PR_CODE,
               MP.USAGE_TYPE_CODE,
               MP.MP_NO,
               MP.MP_NAME,
               D.BAR_CODE,
               D.ASSET_NO,
               D.MADE_NO,
               --按照与设计人员最新定义取安装日期
               K.INST_DATE,
               --按照与设计人员最新定义去装表接电日期即为立户日期
               C.BUILD_DATE,
               D.CUR_STATUS_CODE,
               S.APP_NO,
               SYSDATE
          FROM SY_SG_S_FRST_TEST S,
               SY_SG_C_MP        MP,
               SY_SG_D_METER     D,
               SY_SG_C_CONS      C,
               SY_SG_C_METER     K
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '12'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.STATUS IN ('01', '04')
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_ID = D.METER_ID
           AND K.METER_ID=D.METER_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  D.PR_CODE,
                  MP.USAGE_TYPE_CODE,
                  MP.MP_NO,
                  MP.MP_NAME,
                  D.BAR_CODE,
                  D.ASSET_NO,
                  D.MADE_NO,
                  K.INST_DATE,
                  C.BUILD_DATE,
                  D.CUR_STATUS_CODE,
                  S.APP_NO;
    
      --电能表01  关口
      INSERT INTO DW_D_HV_CHECK_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ASSETS_OWNER,
         USAGE_TYPE_CODE,
         MP_NO,
         MP_NAME,
         BAR_CODE,
         ASSET_NO,
         MADE_NO,
         PLAN_CHK_DATE,
         ACTUAL_CHK_DATE,
         IF_GOOD,
         APP_NO,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '01',
               D.SORT_CODE,
               D.SPEC_CODE,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0') IS_SMART_METER,
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               D.PR_CODE,
               MP.USAGE_TYPE_CODE,
               MP.MP_NO,
               MP.MP_NAME,
               D.BAR_CODE,
               D.ASSET_NO,
               D.MADE_NO,
               --按照与设计人员最新定义取安装日期
               K.INST_DATE,
               --按照与设计人员最新定义去装表接电日期即为关口计量点的投运日期
               MP.RUN_DATE,
               D.CUR_STATUS_CODE,
               S.APP_NO,
               SYSDATE
          FROM SY_SG_S_FRST_TEST S, SY_SG_C_MP MP, SY_SG_D_METER D,SY_SG_C_METER  K
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '12'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.STATUS IN ('01', '04')
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND S.EQUIP_ID = D.METER_ID
           AND K.METER_ID=D.METER_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  D.PR_CODE,
                  MP.USAGE_TYPE_CODE,
                  MP.MP_NO,
                  MP.MP_NAME,
                  D.BAR_CODE,
                  D.ASSET_NO,
                  D.MADE_NO,
                  K.INST_DATE,
                  MP.RUN_DATE,
                  D.CUR_STATUS_CODE,
                  S.APP_NO;
    
      --互感器02 用户
      INSERT INTO DW_D_HV_CHECK_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ASSETS_OWNER,
         USAGE_TYPE_CODE,
         MP_NO,
         MP_NAME,
         BAR_CODE,
         ASSET_NO,
         MADE_NO,
         PLAN_CHK_DATE,
         ACTUAL_CHK_DATE,
         IF_GOOD,
         APP_NO,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               D.PR_CODE,
               MP.USAGE_TYPE_CODE,
               MP.MP_NO,
               MP.MP_NAME,
               D.BAR_CODE,
               D.ASSET_NO,
               D.MADE_NO,
               --按照与设计人员最新定义取安装日期
               K.INST_DATE,
               --按照与设计人员最新定义去装表接电日期即为立户日期
               C.BUILD_DATE,
               D.CUR_STATUS_CODE,
               S.APP_NO,
               SYSDATE
          FROM SY_SG_S_FRST_TEST S,
               SY_SG_C_MP        MP,
               SY_SG_C_CONS      C,
               SY_SG_D_IT        D,
               SY_SG_C_IT_RUN    K
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.TEST_ATTR_CODE = '01'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.STATUS IN ('01', '04')
           AND S.CONTENT_CODE IN ('13', '14', '15')
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_ID = D.IT_ID
           AND K.IT_ID=D.IT_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  D.PR_CODE,
                  MP.USAGE_TYPE_CODE,
                  MP.MP_NO,
                  MP.MP_NAME,
                  D.BAR_CODE,
                  D.ASSET_NO,
                  D.MADE_NO,
                  K.INST_DATE,
                  C.BUILD_DATE,
                  D.CUR_STATUS_CODE,
                  S.APP_NO;
    
      --互感器02 关口
      INSERT INTO DW_D_HV_CHECK_DET
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         ASSETS_OWNER,
         USAGE_TYPE_CODE,
         MP_NO,
         MP_NAME,
         BAR_CODE,
         ASSET_NO,
         MADE_NO,
         PLAN_CHK_DATE,
         ACTUAL_CHK_DATE,
         IF_GOOD,
         APP_NO,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               D.PR_CODE,
               MP.USAGE_TYPE_CODE,
               MP.MP_NO,
               MP.MP_NAME,
               D.BAR_CODE,
               D.ASSET_NO,
               D.MADE_NO,
               --按照与设计人员最新定义取安装日期
               K.INST_DATE,
               --按照与设计人员最新定义去装表接电日期即为关口计量的投运日期
               MP.RUN_DATE,
               D.CUR_STATUS_CODE,
               S.APP_NO,
               SYSDATE
          FROM SY_SG_S_FRST_TEST S, SY_SG_C_MP MP, SY_SG_D_IT D,SY_SG_C_IT_RUN K
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.TEST_ATTR_CODE = '01'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.STATUS IN ('01', '04')
           AND S.CONTENT_CODE IN ('13', '14', '15')
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND S.EQUIP_ID = D.IT_ID
           AND K.IT_ID=D.IT_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  D.PR_CODE,
                  MP.USAGE_TYPE_CODE,
                  MP.MP_NO,
                  MP.MP_NAME,
                  D.BAR_CODE,
                  D.ASSET_NO,
                  D.MADE_NO,
                  K.INST_DATE,
                  MP.RUN_DATE,
                  D.CUR_STATUS_CODE,
                  S.APP_NO;
    
      COMMIT;
    END LOOP;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_HV_CHECK_DET 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_HV_CHECK_DET 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_HV_CHECK_DET;

  /********************************************************************
  #function:月度高压计量装置首次检定未完成明细/DW_D_HV_CHECK_DET 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_HV_CHECK_DET(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_HV_CHECK_DET', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_HV_CHECK_DET X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_HV_CHECK_DET
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       ASSETS_OWNER,
       USAGE_TYPE_CODE,
       MP_NO,
       MP_NAME,
       PLAN_CHK_DATE,
       ACTUAL_CHK_DATE,
       IF_GOOD,
       APP_NO,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       ASSETS_OWNER,
       USAGE_TYPE_CODE,
       MP_NO,
       MP_NAME,
       PLAN_CHK_DATE,
       ACTUAL_CHK_DATE,
       IF_GOOD,
       APP_NO,
       TIME_STAMP
        FROM DW_D_HV_CHECK_DET A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_HV_CHECK_DET 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_HV_CHECK_DET 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_HV_CHECK_DET;

  /********************************************************************
  #function:月度高压计量装置首次检定统计/DW_D_HV_FIRST_CHECK 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-3-7
  #input:i_data  统计频率(月)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_HV_FIRST_CHECK(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_HV_FIRST_CHECK', V_YM);
    --调用抽取过程
    P_INS_DW_D_HV_FIRST_CHECK(V_YM, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_HV_FIRST_CHECK(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_HV_FIRST_CHECK A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YM = V_YM;
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_HV_FIRST_CHECK 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_HV_FIRST_CHECK 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_HV_FIRST_CHECK;

  /********************************************************************
  #function:月度高压计量装置首次检定统计/DW_D_HV_FIRST_CHECK 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_HV_FIRST_CHECK(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_HV_FIRST_CHECK', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_HV_FIRST_CHECK X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_HV_FIRST_CHECK
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --01 电能表现场检验计划 用户
      INSERT INTO DW_D_HV_FIRST_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '01',
               D.SORT_CODE,
               D.SPEC_CODE,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0') IS_SMART_METER,
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE S.EQUIP_ID = K.METER_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE S.EQUIP_ID = K.METER_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_METER_SITECHK K
                                   WHERE S.EQUIP_ID = K.METER_ID
                                     AND S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_S_FRST_TEST S,
               SY_SG_D_METER     D,
               SY_SG_C_CONS      C,
               SY_SG_C_MP        MP
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.TEST_ATTR_CODE = '01'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_ID = D.METER_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --01 电能表现场检验计划 关口
      INSERT INTO DW_D_HV_FIRST_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '01',
               D.SORT_CODE,
               D.SPEC_CODE,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0') IS_SMART_METER,
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE S.EQUIP_ID = K.METER_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE S.EQUIP_ID = K.METER_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_METER_SITECHK K
                                   WHERE S.EQUIP_ID = K.METER_ID
                                     AND S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_S_FRST_TEST S, SY_SG_D_METER D, SY_SG_C_MP MP
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.TEST_ATTR_CODE = '01'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND S.EQUIP_ID = D.METER_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --02 互感器现场检验计划 用户
      INSERT INTO DW_D_HV_FIRST_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE S.EQUIP_ID = K.IT_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE S.EQUIP_ID = K.IT_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_IT_SITECHK K
                                   WHERE S.EQUIP_ID = K.IT_ID
                                     AND S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_S_FRST_TEST S,
               SY_SG_D_IT        D,
               SY_SG_C_MP        MP,
               SY_SG_C_CONS      C
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '13'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND D.IT_ID = S.EQUIP_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --02 互感器现场检验计划 关口
      INSERT INTO DW_D_HV_FIRST_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE S.EQUIP_ID = K.IT_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE S.EQUIP_ID = K.IT_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_IT_SITECHK K
                                   WHERE S.EQUIP_ID = K.IT_ID
                                     AND S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_S_FRST_TEST S, SY_SG_D_IT D, SY_SG_C_MP MP
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '13'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND D.IT_ID = S.EQUIP_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --03 TV二次压降测试计划 用户
      INSERT INTO DW_D_HV_FIRST_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                                   WHERE S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT        D,
               SY_SG_C_MP        MP,
               SY_SG_C_CONS      C,
               SY_SG_S_FRST_TEST S
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '14'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND D.IT_ID = S.EQUIP_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --03 TV二次压降测试计划 关口
      INSERT INTO DW_D_HV_FIRST_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                                   WHERE S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT D, SY_SG_C_MP MP, SY_SG_S_FRST_TEST S
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '14'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND D.IT_ID = S.EQUIP_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
      --04 TA二次负荷测试计划  用户
      INSERT INTO DW_D_HV_FIRST_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_SNDSC_LOAD_DETECT K
                                   WHERE S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT        D,
               SY_SG_C_MP        MP,
               SY_SG_C_CONS      C,
               SY_SG_S_FRST_TEST S
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '15'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND D.IT_ID = S.EQUIP_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
      --04 TA二次负荷测试计划 关口
      INSERT INTO DW_D_HV_FIRST_CHECK
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YM,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YM,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_SNDSC_LOAD_DETECT K
                                   WHERE S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT D, SY_SG_C_MP MP, SY_SG_S_FRST_TEST S
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '15'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND D.IT_ID = S.EQUIP_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
      COMMIT;
    END LOOP;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_HV_FIRST_CHECK 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_HV_FIRST_CHECK 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_HV_FIRST_CHECK;

  /********************************************************************
  #function:月度高压计量装置首次检定统计/DW_D_HV_FIRST_CHECK 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_HV_FIRST_CHECK(I_DATA   VARCHAR2,
                                      OUT_CODE OUT NUMBER,
                                      OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_HV_FIRST_CHECK', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_HV_FIRST_CHECK X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_HV_FIRST_CHECK
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       CHECK_NUM,
       CMPL_CHECK_NUM,
       QLF_NUM,
       UNQLF_NUM,
       OVER_CHECK_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       CHECK_NUM,
       CMPL_CHECK_NUM,
       QLF_NUM,
       UNQLF_NUM,
       OVER_CHECK_NUM,
       TIME_STAMP
        FROM DW_D_HV_FIRST_CHECK A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_HV_FIRST_CHECK 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_HV_FIRST_CHECK 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_HV_FIRST_CHECK;

  /********************************************************************
  #function:月度标准计量装置考核及复查统计/DW_D_STD_MD_ASSESS 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-3-7
  #input:i_data  统计频率(月)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_STD_MD_ASSESS(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_STD_MD_ASSESS', I_DATA);
    --调用抽取过程
    P_INS_DW_D_STD_MD_ASSESS(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_STD_MD_ASSESS(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_STD_MD_ASSESS 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_STD_MD_ASSESS 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_STD_MD_ASSESS;

  /********************************************************************
  #function:月度标准计量装置考核及复查统计/DW_D_STD_MD_ASSESS 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_STD_MD_ASSESS(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_STD_MD_ASSESS', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_STD_MD_ASSESS X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_STD_MD_ASSESS
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      INSERT INTO DW_D_STD_MD_ASSESS
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         DEVICE_TYPE_CODE,
         UTILITY_SORT_CODE,
         SHOULD_EVAL_NUM,
         EXAM_NUM,
         QLF_NUM,
         UNQLF_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               D.BELONG_ORG,
               V_YM,
               D.DEVICE_TYPE_CODE,
               D.UTILITY_SORT_CODE,
               COUNT(1) SHOULD_EVAL_NUM,
               (SELECT COUNT(1)
                  FROM SY_SG_D_MEASTD_ASSESS_APP  A,
                       SY_SG_D_MEASTD_ASSESS_RSLT T
                 WHERE A.APP_NO = T.APP_NO
                   AND A.DET_ID = D.DET_ID
                   AND A.DEV_NO = D.DEV_NO) EXAM_NUM,
               (SELECT COUNT(1)
                  FROM SY_SG_D_MEASTD_ASSESS_APP  A,
                       SY_SG_D_MEASTD_ASSESS      S,
                       SY_SG_D_MEASTD_ASSESS_RSLT T
                 WHERE A.APP_NO = S.APP_NO
                   AND A.APP_NO = T.APP_NO
                   AND A.DET_ID = D.DET_ID
                   AND A.DEV_NO = D.DEV_NO
                   AND S.CONCLUSION = '01'),
               (SELECT COUNT(1)
                  FROM SY_SG_D_MEASTD_ASSESS_APP  A,
                       SY_SG_D_MEASTD_ASSESS      S,
                       SY_SG_D_MEASTD_ASSESS_RSLT T
                 WHERE A.APP_NO = S.APP_NO
                   AND A.APP_NO = T.APP_NO
                   AND A.DET_ID = D.DET_ID
                   AND A.DEV_NO = D.DEV_NO
                   AND S.CONCLUSION = '02'),
               SYSDATE
          FROM SY_SG_D_G_PLAN P, SY_SG_D_G_PLAN_DET D
         WHERE P.PLAN_ID = D.PLAN_ID
           AND P.REMARK = '01'
           AND P.PLAN_CYCLE_CODE = '03'
           AND P.PLAN_TYPE = '01'
           AND P.PLAN_YM = V_YM
           AND D.BELONG_ORG LIKE TSS.ORG_NO || '%'
         GROUP BY D.BELONG_ORG,
                  D.DEVICE_TYPE_CODE,
                  D.UTILITY_SORT_CODE,
                  D.DET_ID,
                  D.DEV_NO;
      COMMIT;
    END LOOP;
  
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
    
      INSERT INTO DW_D_STD_MD_ASSESS
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         DEVICE_TYPE_CODE,
         UTILITY_SORT_CODE,
         SHOULD_EVAL_NUM,
         EXAM_NUM,
         QLF_NUM,
         UNQLF_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               D.BELONG_ORG,
               V_YM,
               D.DEVICE_TYPE_CODE,
               D.UTILITY_SORT_CODE,
               COUNT(1) SHOULD_EVAL_NUM,
               (SELECT COUNT(1)
                  FROM SY_SG_D_MEASTD_ASSESS_APP  A,
                       SY_SG_D_MEASTD_ASSESS_RSLT T
                 WHERE A.APP_NO = T.APP_NO
                   AND A.DET_ID = D.DET_ID
                   AND A.DEV_NO = D.DEV_NO) EXAM_NUM,
               (SELECT COUNT(1)
                  FROM SY_SG_D_MEASTD_ASSESS_APP  A,
                       SY_SG_D_MEASTD_ASSESS      S,
                       SY_SG_D_MEASTD_ASSESS_RSLT T
                 WHERE A.APP_NO = S.APP_NO
                   AND A.APP_NO = T.APP_NO
                   AND A.DET_ID = D.DET_ID
                   AND A.DEV_NO = D.DEV_NO
                   AND S.CONCLUSION = '01'),
               (SELECT COUNT(1)
                  FROM SY_SG_D_MEASTD_ASSESS_APP  A,
                       SY_SG_D_MEASTD_ASSESS      S,
                       SY_SG_D_MEASTD_ASSESS_RSLT T
                 WHERE A.APP_NO = S.APP_NO
                   AND A.APP_NO = T.APP_NO
                   AND A.DET_ID = D.DET_ID
                   AND A.DEV_NO = D.DEV_NO
                   AND S.CONCLUSION = '02'),
               SYSDATE
          FROM SY_SG_D_G_PLAN P, SY_SG_D_G_PLAN_DET D
         WHERE P.PLAN_ID = D.PLAN_ID
           AND P.REMARK = '01'
           AND P.PLAN_CYCLE_CODE = '03'
           AND P.PLAN_TYPE = '01'
           AND P.PLAN_YM = V_YM
           AND D.BELONG_ORG = TSS.ORG_NO
         GROUP BY D.BELONG_ORG,
                  D.DEVICE_TYPE_CODE,
                  D.UTILITY_SORT_CODE,
                  D.DET_ID,
                  D.DEV_NO;
      COMMIT;
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_STD_MD_ASSESS 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_STD_MD_ASSESS 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_STD_MD_ASSESS;

  /********************************************************************
  #function:月度标准计量装置考核及复查统计/DW_D_STD_MD_ASSESS 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_STD_MD_ASSESS(I_DATA   VARCHAR2,
                                     OUT_CODE OUT NUMBER,
                                     OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_STD_MD_ASSESS', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_STD_MD_ASSESS X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_STD_MD_ASSESS
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       DEVICE_TYPE_CODE,
       UTILITY_SORT_CODE,
       SHOULD_EVAL_NUM,
       EXAM_NUM,
       QLF_NUM,
       UNQLF_NUM,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             STAT_YM,
             DEVICE_TYPE_CODE,
             UTILITY_SORT_CODE,
             SHOULD_EVAL_NUM,
             EXAM_NUM,
             QLF_NUM,
             UNQLF_NUM,
             TIME_STAMP
        FROM DW_D_STD_MD_ASSESS A
       WHERE A.STAT_YM = V_YM;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_STD_MD_ASSESS 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_STD_MD_ASSESS 出现异常' || ',异常信息为：' ||
                  SQLCODE || ',' || SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_STD_MD_ASSESS;

  /********************************************************************
  #function:月度标准计量设备溯源统计/DW_D_STD_MD_RSLT 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-3-7
  #input:i_data  统计频率(月)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_STD_MD_RSLT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_STD_MD_RSLT', I_DATA);
    --调用抽取过程
    P_INS_DW_D_STD_MD_RSLT(I_DATA, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_STD_MD_RSLT(I_DATA, OUT_CODE, OUT_MSG);
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_STD_MD_RSLT 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_STD_MD_RSLT 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_STD_MD_RSLT;

  /********************************************************************
  #function:月度标准计量设备溯源统计/DW_D_STD_MD_RSLT 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_STD_MD_RSLT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_STD_MD_RSLT', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_STD_MD_RSLT X WHERE X.STAT_YM = V_YM;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_STD_MD_RSLT
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      INSERT INTO DW_D_STD_MD_RSLT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         DEVICE_TYPE_CODE,
         UTILITY_SORT_CODE,
         STD_CHECK_TYPE,
         SHOULDCHK_NUM,
         ACTUALCHK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               D.BELONG_ORG,
               V_YM,
               D.DEVICE_TYPE_CODE,
               D.UTILITY_SORT_CODE,
               (SELECT PKG_GK_PUBLIC.F_TRANS_CODE('STD_TYPE_CODE',
                                                  R.TYPE_CODE)
                  FROM SY_SG_D_STD_DETECT_RSLT R
                 WHERE R.DET_ID = D.DET_ID
                   AND ROWNUM = 1) STD_CHECK_TYPE,
               COUNT(1) SHOULDCHK_NUM,
               (SELECT COUNT(1)
                  FROM SY_SG_D_STD_DETECT_RSLT R
                 WHERE R.DET_ID = D.DET_ID) ACTUALCHK_NUM,
               (SELECT COUNT(1)
                  FROM SY_SG_D_STD_DETECT_RSLT R
                 WHERE R.DET_ID = D.DET_ID
                   AND R.CONC_CODE = '01') QLF_NUM,
               (SELECT COUNT(1)
                  FROM SY_SG_D_STD_DETECT_RSLT R
                 WHERE R.DET_ID = D.DET_ID
                   AND R.CONC_CODE = '02') UNQLF_NUM,
               SYSDATE
          FROM SY_SG_D_G_PLAN P, SY_SG_D_G_PLAN_DET D
         WHERE P.PLAN_ID = D.PLAN_ID
           AND P.REMARK = '02'
           AND P.PLAN_TYPE = '001'
           AND P.PLAN_CYCLE_CODE = '03'
           AND P.PLAN_YM = V_YM
           AND D.BELONG_ORG LIKE TSS.ORG_NO || '%'
         GROUP BY D.BELONG_ORG,
                  D.DEVICE_TYPE_CODE,
                  D.UTILITY_SORT_CODE,
                  D.DET_ID;
      COMMIT;
    END LOOP;
    --统计地市公司及省公司数据
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
      INSERT INTO DW_D_STD_MD_RSLT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         DEVICE_TYPE_CODE,
         UTILITY_SORT_CODE,
         STD_CHECK_TYPE,
         SHOULDCHK_NUM,
         ACTUALCHK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               D.BELONG_ORG,
               V_YM,
               D.DEVICE_TYPE_CODE,
               D.UTILITY_SORT_CODE,
               (SELECT PKG_GK_PUBLIC.F_TRANS_CODE('STD_TYPE_CODE',R.TYPE_CODE)
                  FROM SY_SG_D_STD_DETECT_RSLT R
                 WHERE R.DET_ID = D.DET_ID
                   AND ROWNUM = 1) STD_CHECK_TYPE,
               COUNT(1) SHOULDCHK_NUM,
               (SELECT COUNT(1)
                  FROM SY_SG_D_STD_DETECT_RSLT R
                 WHERE R.DET_ID = D.DET_ID) ACTUALCHK_NUM,
               (SELECT COUNT(1)
                  FROM SY_SG_D_STD_DETECT_RSLT R
                 WHERE R.DET_ID = D.DET_ID
                   AND R.CONC_CODE = '01') QLF_NUM,
               (SELECT COUNT(1)
                  FROM SY_SG_D_STD_DETECT_RSLT R
                 WHERE R.DET_ID = D.DET_ID
                   AND R.CONC_CODE = '02') UNQLF_NUM,
               SYSDATE
          FROM SY_SG_D_G_PLAN P, SY_SG_D_G_PLAN_DET D
         WHERE P.PLAN_ID = D.PLAN_ID
           AND P.REMARK = '02'
           AND P.PLAN_TYPE = '001'
           AND P.PLAN_CYCLE_CODE = '03'
           AND P.PLAN_YM = V_YM
           AND D.BELONG_ORG = TSS.ORG_NO
         GROUP BY D.BELONG_ORG,
                  D.DEVICE_TYPE_CODE,
                  D.UTILITY_SORT_CODE,
                  D.DET_ID;
      COMMIT;
    END LOOP;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_STD_MD_RSLT 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_STD_MD_RSLT 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_STD_MD_RSLT;

  /********************************************************************
  #function:月度标准计量设备溯源统计/DW_D_STD_MD_RSLT 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_STD_MD_RSLT(I_DATA   VARCHAR2,
                                   OUT_CODE OUT NUMBER,
                                   OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(8) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_STD_MD_RSLT', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_STD_MD_RSLT X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_STD_MD_RSLT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       STAT_YM,
       DEVICE_TYPE_CODE,
       UTILITY_SORT_CODE,
       STD_CHECK_TYPE,
       SHOULDCHK_NUM,
       ACTUALCHK_NUM,
       QLF_NUM,
       UNQLF_NUM,
       TIME_STAMP)
      SELECT DATA_ID,
             PRO_ORG_NO,
             ORG_NO,
             STAT_YM,
             DEVICE_TYPE_CODE,
             UTILITY_SORT_CODE,
             STD_CHECK_TYPE,
             SHOULDCHK_NUM,
             ACTUALCHK_NUM,
             QLF_NUM,
             UNQLF_NUM,
             TIME_STAMP
        FROM DW_D_STD_MD_RSLT A
       WHERE A.STAT_YM = V_YM;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_STD_MD_RSLT 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_STD_MD_RSLT 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_STD_MD_RSLT;

  /**
    过程名称：p_ent_dw_d_md_stat/月度计量设备统计
    作者：WangWensheng
    编写日期：2014-03-07 01:37
    过程描述：月度计量设备统计,被数据库JOB调用
    统计频度：按月抽取,次月1日零点
    入参格式：I_DATA ：YYYYMMDD
    修改人:
    修改日期:
  **/
  PROCEDURE P_ENT_DW_D_MD_STAT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE; --数据模式：1:复制; 2:推送
    V_YM       VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ent_dw_d_md_stat', V_YM);
    --调用抽取过程，进行数据抽取，抽取到管理库OMAC用户下的DW_C_BUSI_COMP表
    P_INS_DW_D_MD_STAT(V_YM, OUT_CODE, OUT_MSG);
    IF V_DATAMODE = '2' THEN
      --调用推送过程，从管理库OMAC用户下的DW_C_BUSI_COMP表取数据插入到稽查库OMAC用户下的DW_C_BUSI_COMP表
      P_ETL_DW_D_MD_STAT(V_YM, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_MD_STAT A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YM = V_YM;
    END IF;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ent_dw_d_md_stat  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ent_dw_d_md_stat  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_INS_DW_D_MD_STAT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    --获取网省的单位编码
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
  BEGIN
    --开始记录日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_ins_dw_d_md_stat', I_DATA);
  
    DELETE FROM DW_D_MD_STAT WHERE STAT_YM = V_YM;
    ----县区公司及营业站
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --电能表01
      INSERT INTO DW_D_MD_STAT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         MODEL_CODE,
         ASSETS_STATUS,
         SUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               V_YM,
               MD_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_SORT', TYPE_VALUE),
               MODEL_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE',
                                          ASSETS_STATUS),
               SUM(VSUM),
               
               SYSDATE
          FROM (SELECT /*+parallel(s 4) parallel(d 4)*/
                --PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
                --V_PRO_ORG_NO,
                 D.BELONG_DEPT ORG_NO,
                 '' PS_BUSI_AREA_CODE,
                 '01' MD_TYPE,
                 D.SORT_CODE TYPE_VALUE,
                 D.MODEL_CODE MODEL_CODE,
                 D.CUR_STATUS_CODE ASSETS_STATUS,
                 COUNT(1) VSUM,
                 SYSDATE
                  FROM SY_SG_D_METER D
                 WHERE D.BELONG_DEPT LIKE TSS.ORG_NO || '%'
                 GROUP BY D.BELONG_DEPT,
                          D.SORT_CODE,
                          D.MODEL_CODE,
                          D.CUR_STATUS_CODE)
         GROUP BY ORG_NO,
                  MD_TYPE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_SORT', TYPE_VALUE),
                  MODEL_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE',
                                             ASSETS_STATUS);
    
      --互感器02
      INSERT INTO DW_D_MD_STAT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         MODEL_CODE,
         ASSETS_STATUS,
         SUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               V_YM,
               MD_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_CODE', TYPE_VALUE),
               MODEL_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('CUR_STATUS_CODE', ASSETS_STATUS),
               SUM(VSUM),
               SYSDATE
          FROM (SELECT /*+parallel(s 4) parallel(d 4)*/
                --     pkg_gk_public.f_get_table_seq(v_pro_org_no), v_pro_org_no,
                 D.BELONG_DEPT ORG_NO,
                 '' PS_BUSI_AREA_CODE,
                 --V_YM,
                 '02' MD_TYPE,
                 D.SORT_CODE TYPE_VALUE,
                 D.MODEL_CODE MODEL_CODE,
                 D.CUR_STATUS_CODE ASSETS_STATUS,
                 COUNT(1) VSUM
                  FROM SY_SG_D_IT D
                 WHERE D.BELONG_DEPT LIKE TSS.ORG_NO || '%'
                 GROUP BY D.BELONG_DEPT,
                          D.SORT_CODE,
                          D.MODEL_CODE,
                          D.CUR_STATUS_CODE)
         GROUP BY ORG_NO,
                  MD_TYPE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_CODE', TYPE_VALUE),
                  MODEL_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUR_STATUS_CODE',
                                             ASSETS_STATUS);
    
      --采集终端03
      INSERT INTO DW_D_MD_STAT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         MODEL_CODE,
         ASSETS_STATUS,
         SUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               V_YM,
               MD_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('COLL_TERMINAL_TYPE', TYPE_VALUE),
               MODEL_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('CUR_STATUS_CODE', ASSETS_STATUS),
               SUM(VSUM),
               SYSDATE
          FROM (SELECT /*+parallel(d 4) parallel(s 4)*/
                --pkg_gk_public.f_get_table_seq(v_pro_org_no), v_pro_org_no,
                 D.DEPT_NO ORG_NO,
                 '' PS_BUSI_AREA_CODE,
                 '03' MD_TYPE,
                 '' TYPE_VALUE,
                 '' MODEL_CODE,
                 D.STATUS_CODE ASSETS_STATUS,
                 COUNT(1) VSUM
                  FROM SY_SG_D_FMR_EQUIP D
                 WHERE D.DEPT_NO LIKE TSS.ORG_NO || '%'
                 GROUP BY D.DEPT_NO, D.MODEL_CODE, D.STATUS_CODE)
         GROUP BY ORG_NO,
                  MD_TYPE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('COLL_TERMINAL_TYPE',
                                             TYPE_VALUE),
                  MODEL_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUR_STATUS_CODE',
                                             ASSETS_STATUS);
      --负控终端03
      INSERT INTO DW_D_MD_STAT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         MODEL_CODE,
         ASSETS_STATUS,
         SUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               V_YM,
               MD_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('COLL_TERMINAL_TYPE', TYPE_VALUE),
               MODEL_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('CUR_STATUS_CODE', ASSETS_STATUS),
               SUM(VSUM),
               SYSDATE
          FROM (SELECT /*+parallel(d 4) parallel(s 4)*/
                --PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
                --V_PRO_ORG_NO,
                 D.DEPT_NO ORG_NO,
                 '03' MD_TYPE,
                 D.TYPE_CODE TYPE_VALUE,
                 D.MODEL_CODE MODEL_CODE,
                 D.CUR_STATUS_CODE ASSETS_STATUS,
                 COUNT(1) VSUM
                  FROM SY_SG_D_LC_EQUIP D
                 WHERE D.DEPT_NO LIKE TSS.ORG_NO || '%'
                 GROUP BY D.DEPT_NO,
                          D.TYPE_CODE,
                          D.MODEL_CODE,
                          D.CUR_STATUS_CODE)
         GROUP BY ORG_NO,
                  MD_TYPE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('COLL_TERMINAL_TYPE',
                                             TYPE_VALUE),
                  MODEL_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUR_STATUS_CODE',
                                             ASSETS_STATUS);
    
      COMMIT;
    END LOOP;
    ----省公司级地市公司      
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
      --电能表01
      INSERT INTO DW_D_MD_STAT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         MODEL_CODE,
         ASSETS_STATUS,
         SUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               V_YM,
               MD_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_SORT', TYPE_VALUE),
               MODEL_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE',
                                          ASSETS_STATUS),
               SUM(VSUM),
               SYSDATE
          FROM (SELECT /*+parallel(s 4) parallel(d 4)*/
                --PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
                --V_PRO_ORG_NO,
                 D.BELONG_DEPT ORG_NO,
                 '' PS_BUSI_AREA_CODE,
                 '01' MD_TYPE,
                 D.SORT_CODE TYPE_VALUE,
                 D.MODEL_CODE MODEL_CODE,
                 D.CUR_STATUS_CODE ASSETS_STATUS,
                 COUNT(1) VSUM,
                 SYSDATE
                  FROM SY_SG_D_METER D
                 WHERE D.BELONG_DEPT = TSS.ORG_NO
                 GROUP BY D.BELONG_DEPT,
                          D.SORT_CODE,
                          D.MODEL_CODE,
                          D.CUR_STATUS_CODE)
         GROUP BY ORG_NO,
                  MD_TYPE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_SORT', TYPE_VALUE),
                  MODEL_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('AMMETER_STATUS_CODE',
                                             ASSETS_STATUS);
    
      --互感器02
      INSERT INTO DW_D_MD_STAT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         MODEL_CODE,
         ASSETS_STATUS,
         SUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               V_YM,
               MD_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_CODE', TYPE_VALUE),
               MODEL_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('CUR_STATUS_CODE', ASSETS_STATUS),
               SUM(VSUM),
               SYSDATE
          FROM (SELECT /*+parallel(s 4) parallel(d 4)*/
                --     pkg_gk_public.f_get_table_seq(v_pro_org_no), v_pro_org_no,
                 D.BELONG_DEPT ORG_NO,
                 '' PS_BUSI_AREA_CODE,
                 --V_YM,
                 '02' MD_TYPE,
                 D.SORT_CODE TYPE_VALUE,
                 D.MODEL_CODE MODEL_CODE,
                 D.CUR_STATUS_CODE ASSETS_STATUS,
                 COUNT(1) VSUM
                  FROM SY_SG_D_IT D
                 WHERE D.BELONG_DEPT = TSS.ORG_NO
                 GROUP BY D.BELONG_DEPT,
                          D.SORT_CODE,
                          D.MODEL_CODE,
                          D.CUR_STATUS_CODE)
         GROUP BY ORG_NO,
                  MD_TYPE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('IT_SORT_CODE', TYPE_VALUE),
                  MODEL_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUR_STATUS_CODE',
                                             ASSETS_STATUS);
    
      --采集终端03
      INSERT INTO DW_D_MD_STAT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         MODEL_CODE,
         ASSETS_STATUS,
         SUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               V_YM,
               MD_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('COLL_TERMINAL_TYPE', TYPE_VALUE),
               MODEL_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('CUR_STATUS_CODE', ASSETS_STATUS),
               SUM(VSUM),
               SYSDATE
          FROM (SELECT /*+parallel(d 4) parallel(s 4)*/
                --pkg_gk_public.f_get_table_seq(v_pro_org_no), v_pro_org_no,
                 D.DEPT_NO ORG_NO,
                 '' PS_BUSI_AREA_CODE,
                 '03' MD_TYPE,
                 '' TYPE_VALUE,
                 '' MODEL_CODE,
                 D.STATUS_CODE ASSETS_STATUS,
                 COUNT(1) VSUM
                  FROM SY_SG_D_FMR_EQUIP D
                 WHERE D.DEPT_NO = TSS.ORG_NO
                 GROUP BY D.DEPT_NO, D.MODEL_CODE, D.STATUS_CODE)
         GROUP BY ORG_NO,
                  MD_TYPE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('COLL_TERMINAL_TYPE',
                                             TYPE_VALUE),
                  MODEL_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUR_STATUS_CODE',
                                             ASSETS_STATUS);
      --负控终端03
      INSERT INTO DW_D_MD_STAT
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         STAT_YM,
         MD_TYPE,
         TYPE_VALUE,
         MODEL_CODE,
         ASSETS_STATUS,
         SUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               ORG_NO,
               V_YM,
               MD_TYPE,
               PKG_GK_PUBLIC.F_TRANS_CODE('COLL_TERMINAL_TYPE', TYPE_VALUE),
               MODEL_CODE,
               PKG_GK_PUBLIC.F_TRANS_CODE('CUR_STATUS_CODE', ASSETS_STATUS),
               SUM(VSUM),
               SYSDATE
          FROM (SELECT /*+parallel(d 4) parallel(s 4)*/
                --PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
                --V_PRO_ORG_NO,
                 D.DEPT_NO ORG_NO,
                 '' PS_BUSI_AREA_CODE,
                 '03' MD_TYPE,
                 D.TYPE_CODE TYPE_VALUE,
                 D.MODEL_CODE MODEL_CODE,
                 D.CUR_STATUS_CODE ASSETS_STATUS,
                 COUNT(1) VSUM
                  FROM SY_SG_D_LC_EQUIP D
                 GROUP BY D.DEPT_NO,
                          D.TYPE_CODE,
                          D.MODEL_CODE,
                          D.CUR_STATUS_CODE)
         GROUP BY ORG_NO,
                  MD_TYPE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('COLL_TERMINAL_TYPE',
                                             TYPE_VALUE),
                  MODEL_CODE,
                  PKG_GK_PUBLIC.F_TRANS_CODE('CUR_STATUS_CODE',
                                             ASSETS_STATUS);
    
      COMMIT;
    END LOOP;
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_ins_dw_d_md_stat  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_ins_dw_d_md_stat  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  PROCEDURE P_ETL_DW_D_MD_STAT(I_DATA   VARCHAR2,
                               OUT_CODE OUT NUMBER,
                               OUT_MSG  OUT VARCHAR2) IS
    --日志ID
    V_DATA_ID VARCHAR2(24);
    V_YM      VARCHAR2(6);
  BEGIN
    --记录开始日志
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('p_etl_dw_d_md_stat', I_DATA);
    --当月
    V_YM := SUBSTR(I_DATA, 1, 6);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_MD_STAT X WHERE X.STAT_YM = V_YM;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    --电能表01
    INSERT INTO SY_OM_DW_D_MD_STAT
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YM,
       MD_TYPE,
       TYPE_VALUE,
       MODEL_CODE,
       ASSETS_STATUS,
       SUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YM,
       MD_TYPE,
       TYPE_VALUE,
       MODEL_CODE,
       ASSETS_STATUS,
       SUM,
       TIME_STAMP
        FROM DW_D_MD_STAT A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE STAT_YM = V_YM
         AND A.ORG_NO = B.SG_ORG_NO(+);
  
    --OUT_CODE为1代表运行成功,提交事务
    OUT_CODE := 1;
    OUT_MSG  := '执行 p_etl_dw_d_md_stat  成功';
    COMMIT;
    --记录正常结束日志
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
    --异常处理
  EXCEPTION
    WHEN OTHERS THEN
      --OUT_CODE为0代表运行失败,回滚事务
      OUT_CODE := 0;
      OUT_MSG  := '执行 p_etl_dw_d_md_stat  出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      --记录异常结束日志
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END;

  /********************************************************************
  #function:日计量设备周期轮换统计/DW_D_MD_CYC_DAY 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-4-19
  #input:i_data  统计频率(日)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_MD_CYC_DAY(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_MD_CYC_DAY', V_YMD);
    --调用抽取过程
    P_INS_DW_D_MD_CYC_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_MD_CYC_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_MD_CYC_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YMD = V_YMD;
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_MD_CYC_DAY 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_MD_CYC_DAY 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_MD_CYC_DAY;

  /********************************************************************
  #function:日计量设备周期轮换统计/DW_D_MD_CYC_DAY 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_MD_CYC_DAY(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_MD_CYC_DAY', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_MD_CYC_DAY X WHERE X.STAT_YMD = V_YMD;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_MD_CYC_DAY
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --电能表01 用户计量点
      INSERT INTO DW_D_MD_CYC_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         PLAN_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         RUN_CAP_RANGE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CYC_NUM,
         ACTUAL_CYC_NUM,
         OVER_CYC_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               R.ORG_NO,
               '',
               V_YMD,
               S.PLAN_YM,
               (SELECT A.RCV_NO
                  FROM SY_SG_D_ARRIVE A
                 WHERE D.RCV_ID = A.RCV_ID) RCV_ID,
               '01' EQUIP_SORT_CODE,
               R.SORT_CODE,
               D.SPEC_CODE NORM_TYPE,
               R.WIRING_MODE,
               DECODE(R.SORT_CODE, '10', '1', '0') IS_SMART_METER,
               R.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               '' RUN_CAP_RANGE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE, /*SUM(1)*/
               COUNT(1) SHOULD_CYC_NUM,
               SUM(DECODE(R.STATUS, '02', 1, 0)) ACTUAL_CYC_NUM,
               SUM(DECODE(R.STATUS,
                          '02',
                          CASE
                            WHEN TO_CHAR(R.EXEC_ROTATE_DATE, 'YYYYMM') >
                                 TO_CHAR(R.PLAN_DATE, 'YYYYMM') THEN
                             1
                            ELSE
                             0
                          END,
                          0)) OVER_CYC_NUM,
               SYSDATE
          FROM SY_SG_S_SITEPLAN    S,
               SY_SG_S_ROTATE_PLAN R,
               SY_SG_C_CONS        C,
               SY_SG_C_MP          MP,
               SY_SG_D_METER       D
         WHERE S.PLAN_YM = V_YM
           AND S.ID = '17'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = R.PLAN_ID(+)
           AND R.ORG_NO LIKE TSS.ORG_NO || '%'
           AND R.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE = '01'
           AND MP.CONS_ID = C.CONS_ID(+)
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND R.EQUIP_ID = D.METER_ID
         GROUP BY R.ORG_NO,
                  S.PLAN_YM,
                  D.RCV_ID,
                  R.SORT_CODE,
                  D.SPEC_CODE,
                  R.WIRING_MODE,
                  R.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --电能表01  关口计量点                       
      INSERT INTO DW_D_MD_CYC_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         PLAN_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         RUN_CAP_RANGE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CYC_NUM,
         ACTUAL_CYC_NUM,
         OVER_CYC_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               R.ORG_NO,
               '',
               V_YMD,
               S.PLAN_YM,
               (SELECT A.RCV_NO
                  FROM SY_SG_D_ARRIVE A
                 WHERE D.RCV_ID = A.RCV_ID) RCV_ID,
               '01' EQUIP_SORT_CODE,
               R.SORT_CODE,
               D.SPEC_CODE NORM_TYPE,
               R.WIRING_MODE,
               DECODE(R.SORT_CODE, '10', '1', '0') IS_SMART_METER,
               R.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               '' RUN_CAP_RANGE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE, /*SUM(1)*/
               COUNT(1) SHOULD_CYC_NUM,
               SUM(DECODE(R.STATUS, '02', 1, 0)) ACTUAL_CYC_NUM,
               SUM(DECODE(R.STATUS,
                          '02',
                          CASE
                            WHEN TO_CHAR(R.EXEC_ROTATE_DATE, 'YYYYMM') >
                                 TO_CHAR(R.PLAN_DATE, 'YYYYMM') THEN
                             1
                            ELSE
                             0
                          END,
                          0)) OVER_CYC_NUM,
               SYSDATE
          FROM SY_SG_S_SITEPLAN    S,
               SY_SG_S_ROTATE_PLAN R,
               SY_SG_C_MP          MP,
               SY_SG_D_METER       D
         WHERE S.PLAN_YM = V_YM
           AND S.ID = '17'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = R.PLAN_ID(+)
           AND R.ORG_NO LIKE TSS.ORG_NO || '%'
           AND R.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND R.EQUIP_ID = D.METER_ID
         GROUP BY R.ORG_NO,
                  S.PLAN_YM,
                  D.RCV_ID,
                  R.SORT_CODE,
                  D.SPEC_CODE,
                  R.WIRING_MODE,
                  R.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --互感器02
    
      INSERT INTO DW_D_MD_CYC_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         PLAN_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         RUN_CAP_RANGE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CYC_NUM,
         ACTUAL_CYC_NUM,
         OVER_CYC_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               R.ORG_NO,
               '',
               V_YMD,
               S.PLAN_YM,
               (SELECT A.RCV_NO
                  FROM SY_SG_D_ARRIVE A
                 WHERE D.RCV_ID = A.RCV_ID) RCV_NO,
               '02' EQUIP_SORT_CODE,
               R.SORT_CODE,
               '' NORM_TYPE,
               R.WIRING_MODE,
               '0' IS_SMART_METER,
               R.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               '' RUN_CAP_RANGE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) SHOULD_CYC_NUM,
               SUM(DECODE(R.STATUS, '02', 1, 0)) ACTUAL_CYC_NUM,
               SUM(DECODE(R.STATUS,
                          '02',
                          CASE
                            WHEN TO_CHAR(R.EXEC_ROTATE_DATE, 'YYYYMM') >
                                 TO_CHAR(R.PLAN_DATE, 'YYYYMM') THEN
                             1
                            ELSE
                             0
                          END,
                          0)) OVER_CYC_NUM,
               SYSDATE
          FROM SY_SG_S_SITEPLAN    S,
               SY_SG_S_ROTATE_PLAN R,
               SY_SG_C_MP          MP,
               SY_SG_C_CONS        C,
               SY_SG_D_IT          D
         WHERE S.PLAN_YM = V_YM
           AND S.ID = '19'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = R.PLAN_ID(+)
           AND R.ORG_NO LIKE TSS.ORG_NO || '%'
           AND R.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE = '01'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND R.EQUIP_ID = D.IT_ID
         GROUP BY R.ORG_NO,
                  S.PLAN_YM,
                  D.RCV_ID,
                  R.SORT_CODE,
                  R.WIRING_MODE,
                  R.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
      --关口计量点互感器轮换情况
      INSERT INTO DW_D_MD_CYC_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         PLAN_YM,
         ARRIVE_BATCH_NO,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         RUN_CAP_RANGE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CYC_NUM,
         ACTUAL_CYC_NUM,
         OVER_CYC_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               R.ORG_NO,
               '',
               V_YMD,
               S.PLAN_YM,
               (SELECT A.RCV_NO
                  FROM SY_SG_D_ARRIVE A
                 WHERE D.RCV_ID = A.RCV_ID) RCV_NO,
               '02' EQUIP_SORT_CODE,
               R.SORT_CODE,
               '' NORM_TYPE,
               R.WIRING_MODE,
               '0' IS_SMART_METER,
               R.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               '' RUN_CAP_RANGE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) SHOULD_CYC_NUM,
               SUM(DECODE(R.STATUS, '02', 1, 0)) ACTUAL_CYC_NUM,
               SUM(DECODE(R.STATUS,
                          '02',
                          CASE
                            WHEN TO_CHAR(R.EXEC_ROTATE_DATE, 'YYYYMM') >
                                 TO_CHAR(R.PLAN_DATE, 'YYYYMM') THEN
                             1
                            ELSE
                             0
                          END,
                          0)) OVER_CYC_NUM,
               SYSDATE
          FROM SY_SG_S_SITEPLAN    S,
               SY_SG_S_ROTATE_PLAN R,
               SY_SG_C_MP          MP,
               SY_SG_D_IT          D
         WHERE S.PLAN_YM = V_YM
           AND S.ID = '19'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_ID = R.PLAN_ID(+)
           AND R.ORG_NO LIKE TSS.ORG_NO || '%'
           AND R.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND R.EQUIP_ID = D.IT_ID
         GROUP BY R.ORG_NO,
                  S.PLAN_YM,
                  D.RCV_ID,
                  R.SORT_CODE,
                  R.WIRING_MODE,
                  R.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      COMMIT;
    END LOOP;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_MD_CYC_DAY 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_MD_CYC_DAY 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_MD_CYC_DAY;

  /********************************************************************
  #function:日计量设备周期轮换统计/DW_D_MD_CYC_DAY 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_MD_CYC_DAY(I_DATA   VARCHAR2,
                                  OUT_CODE OUT NUMBER,
                                  OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_MD_CYC_DAY', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_MD_CYC_DAY X WHERE X.STAT_YMD = V_YMD;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_MD_CYC_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       ARRIVE_BATCH_NO,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       RUN_CAP_RANGE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       SHOULD_CYC_NUM,
       ACTUAL_CYC_NUM,
       OVER_CYC_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YMD,
       ARRIVE_BATCH_NO,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       RUN_CAP_RANGE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       SHOULD_CYC_NUM,
       ACTUAL_CYC_NUM,
       OVER_CYC_NUM,
       TIME_STAMP
        FROM DW_D_MD_CYC_DAY A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YMD = V_YMD
         AND A.ORG_NO = B.SG_ORG_NO(+);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_MD_CYC_DAY 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_MD_CYC_DAY 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_MD_CYC_DAY;

  /********************************************************************
  #function:日计量设备现场检测统计/DW_D_MD_FIELD_DAY 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-4-19
  #input:i_data  统计频率(日)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_MD_FIELD_DAY(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_MD_FIELD_DAY', V_YMD);
    --调用抽取过程
    P_INS_DW_D_MD_FIELD_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_MD_FIELD_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_MD_FIELD_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YMD = V_YMD;
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_MD_FIELD_DAY 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_MD_FIELD_DAY 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_MD_FIELD_DAY;

  /********************************************************************
  #function:日计量设备现场检测统计/DW_D_MD_FIELD_DAY 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_MD_FIELD_DAY(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_MD_FIELD_DAY', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_MD_FIELD_DAY X WHERE X.STAT_YMD = V_YMD;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_MD_FIELD_DAY
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --01 电能表现场检验计划 用户
      INSERT INTO DW_D_MD_FIELD_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         PLAN_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               S.PLAN_YM,
               '01',
               '01',
               D.SORT_CODE,
               D.SPEC_CODE,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0'),
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE P.EQUIP_ID = K.METER_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE P.EQUIP_ID = K.METER_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_METER_SITECHK K
                                   WHERE P.EQUIP_ID = K.METER_ID
                                     AND P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P,
               SY_SG_D_METER         D,
               SY_SG_C_MP            MP,
               SY_SG_C_CONS          C
         WHERE S.ID = '12'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND P.EQUIP_ID = D.METER_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE,
                  S.PLAN_YM;
    
      --02 互感器现场检验计划  用户
      INSERT INTO DW_D_MD_FIELD_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         PLAN_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               S.PLAN_YM,
               '02',
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE P.EQUIP_ID = K.IT_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE P.EQUIP_ID = K.IT_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_IT_SITECHK K
                                   WHERE P.EQUIP_ID = K.IT_ID
                                     AND P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT            D,
               SY_SG_C_MP            MP,
               SY_SG_C_CONS          C,
               SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P
         WHERE S.ID = '13'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND P.EQUIP_ID = D.IT_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE,
                  S.PLAN_YM;
      --03 TV二次压降测试计划  用户
      INSERT INTO DW_D_MD_FIELD_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         PLAN_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               S.PLAN_YM,
               '03',
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                                   WHERE P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT            D,
               SY_SG_C_MP            MP,
               SY_SG_C_CONS          C,
               SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P
         WHERE S.ID = '14'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND P.EQUIP_ID = D.IT_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE,
                  S.PLAN_YM;
      --04 TA二次负荷测试计划 用户
      INSERT INTO DW_D_MD_FIELD_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         PLAN_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               S.PLAN_YM,
               '04',
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_SNDSC_LOAD_DETECT K
                                   WHERE P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT            D,
               SY_SG_C_MP            MP,
               SY_SG_C_CONS          C,
               SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P
         WHERE S.ID = '15'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO LIKE TSS.ORG_NO || '%'
           AND P.EQUIP_ID = D.IT_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE,
                  S.PLAN_YM;
      COMMIT;
    END LOOP;
  
    --开始数据统计,插入到稽查管理库OMAC的DW_D_MD_FIELD_DET
    --地市及省级关口统计
    FOR TSS IN (SELECT ORG_NO
                  FROM SY_SG_O_ORG O
                 WHERE ORG_TYPE IN ('02', '03')) LOOP
    
      --01 电能表现场检验计划
      INSERT INTO DW_D_MD_FIELD_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         PLAN_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               S.PLAN_YM,
               '01',
               '01',
               D.SORT_CODE,
               D.SPEC_CODE,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0'),
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE P.EQUIP_ID = K.METER_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE P.EQUIP_ID = K.METER_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_METER_SITECHK K
                                   WHERE P.EQUIP_ID = K.METER_ID
                                     AND P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P,
               SY_SG_D_METER         D,
               SY_SG_C_MP            MP
         WHERE S.ID = '12'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO = TSS.ORG_NO
           AND P.EQUIP_ID = D.METER_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO = TSS.ORG_NO
           AND MP.USAGE_TYPE_CODE <> '01'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE,
                  S.PLAN_YM;
    
      --02 互感器现场检验计划
      INSERT INTO DW_D_MD_FIELD_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         PLAN_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               S.PLAN_YM,
               '02',
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE P.EQUIP_ID = K.IT_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE P.EQUIP_ID = K.IT_ID
                             AND P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_IT_SITECHK K
                                   WHERE P.EQUIP_ID = K.IT_ID
                                     AND P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT            D,
               SY_SG_C_MP            MP,
               SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P
         WHERE S.ID = '13'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO = TSS.ORG_NO
           AND P.EQUIP_ID = D.IT_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO = TSS.ORG_NO
           AND MP.USAGE_TYPE_CODE <> '01'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE,
                  S.PLAN_YM;
      --03 TV二次压降测试计划
      INSERT INTO DW_D_MD_FIELD_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         PLAN_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               S.PLAN_YM,
               '03',
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                                   WHERE P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT            D,
               SY_SG_C_MP            MP,
               SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P
         WHERE S.ID = '14'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO = TSS.ORG_NO
           AND P.EQUIP_ID = D.IT_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO = TSS.ORG_NO
           AND MP.USAGE_TYPE_CODE <> '01'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE,
                  S.PLAN_YM;
      --04 TA二次负荷测试计划
      INSERT INTO DW_D_MD_FIELD_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         PLAN_YM,
         PLAN_TYPE,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         SHOULD_CHECK_NUM,
         ACTUAL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               S.PLAN_YM,
               '04',
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1),
               SUM(DECODE(P.STATUS, '02', 1, 0)),
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE P.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_SNDSC_LOAD_DETECT K
                                   WHERE P.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > S.PLAN_YM THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT            D,
               SY_SG_C_MP            MP,
               SY_SG_S_SITEPLAN      S,
               SY_SG_S_CYC_TEST_PLAN P
         WHERE S.ID = '15'
           AND S.CYCLE_CODE = '02'
           AND S.PLAN_YM = V_YM
           AND S.PLAN_ID = P.PLAN_ID
           AND P.ORG_NO LIKE TSS.ORG_NO
           AND P.EQUIP_ID = D.IT_ID
           AND P.MP_ID = MP.MP_ID
           AND MP.ORG_NO = TSS.ORG_NO
           AND MP.USAGE_TYPE_CODE <> '01'
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE,
                  S.PLAN_YM;
    
      COMMIT;
    END LOOP;
  
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_MD_FIELD_DAY 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_MD_FIELD_DAY 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_MD_FIELD_DAY;

  /********************************************************************
  #function:日计量设备现场检测统计/DW_D_MD_FIELD_DAY 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_MD_FIELD_DAY(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_MD_FIELD_DAY', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_MD_FIELD_DAY X WHERE X.STAT_YMD = V_YMD;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_MD_FIELD_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       PLAN_TYPE,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       SHOULD_CHECK_NUM,
       ACTUAL_CHECK_NUM,
       QLF_NUM,
       UNQLF_NUM,
       OVER_CHECK_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YMD,
       PLAN_TYPE,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       SHOULD_CHECK_NUM,
       ACTUAL_CHECK_NUM,
       QLF_NUM,
       UNQLF_NUM,
       OVER_CHECK_NUM,
       TIME_STAMP
        FROM DW_D_MD_FIELD_DAY A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YMD = V_YMD
         AND A.ORG_NO = B.SG_ORG_NO(+);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_MD_FIELD_DAY 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_MD_FIELD_DAY 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_MD_FIELD_DAY;

  /********************************************************************
  #function:日高压计量装置首次检定统计/DW_D_HV_FIRST_DAY 入口过程
  #version:1.0
  #author: KXX
  #createdate:2014-4-19
  #input:i_data  统计频率(日)
  #describe:
  ********************************************************************/
  PROCEDURE P_ENT_DW_D_HV_FIRST_DAY(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID  VARCHAR2(24);
    V_DATAMODE VARCHAR2(2) := PKG_GK_PUBLIC.F_GET_DATAMODE;
    V_YMD      VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ENT_DW_D_HV_FIRST_DAY', V_YMD);
    --调用抽取过程
    P_INS_DW_D_HV_FIRST_DAY(V_YMD, OUT_CODE, OUT_MSG);
    --调用推送过程
    IF V_DATAMODE = '2' THEN
      P_ETL_DW_D_HV_FIRST_DAY(V_YMD, OUT_CODE, OUT_MSG);
    ELSE
      --复制模式补充供电区域性质
      UPDATE DW_D_HV_FIRST_DAY A
         SET A.PS_BUSI_AREA_CODE =
             (SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
               B.BUSI_AREA_STAT_CODE
                FROM SY_OM_DW_O_ORG_CONTRAST B
               WHERE B.SG_ORG_NO = A.ORG_NO)
       WHERE STAT_YMD = V_YMD;
    END IF;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ENT_DW_D_HV_FIRST_DAY 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ENT_DW_D_HV_FIRST_DAY 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ENT_DW_D_HV_FIRST_DAY;

  /********************************************************************
  #function:日高压计量装置首次检定统计/DW_D_HV_FIRST_DAY 抽取过程
  ********************************************************************/
  PROCEDURE P_INS_DW_D_HV_FIRST_DAY(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID    VARCHAR2(24);
    V_PRO_ORG_NO VARCHAR2(8) := PKG_GK_PUBLIC.F_PRO_ORG_NO;
    V_YM         VARCHAR2(6) := SUBSTR(I_DATA, 1, 6);
    V_YMD        VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_INS_DW_D_HV_FIRST_DAY', I_DATA);
    --删除原有的抽取的记录，维度为月
    DELETE FROM DW_D_HV_FIRST_DAY X WHERE X.STAT_YMD = V_YMD;
    --开始数据统计,插入到稽查管理库OMAC的DW_D_HV_FIRST_DAY
    FOR TSS IN (SELECT DISTINCT SUBSTR(ORG_NO,
                                       1,
                                       DECODE(V_PRO_ORG_NO, '12101', 5, 7)) ORG_NO
                  FROM SY_SG_O_ORG
                 WHERE ORG_NO <> '00000'
                   AND LENGTH(ORG_NO) >= DECODE(V_PRO_ORG_NO, '12101', 5, 7)) LOOP
      --01 电能表现场检验计划 用户
      INSERT INTO DW_D_HV_FIRST_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               '01',
               D.SORT_CODE,
               D.SPEC_CODE,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0') IS_SMART_METER,
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE S.EQUIP_ID = K.METER_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE S.EQUIP_ID = K.METER_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_METER_SITECHK K
                                   WHERE S.EQUIP_ID = K.METER_ID
                                     AND S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_S_FRST_TEST S,
               SY_SG_D_METER     D,
               SY_SG_C_CONS      C,
               SY_SG_C_MP        MP
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.TEST_ATTR_CODE = '01'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_ID = D.METER_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --01 电能表现场检验计划 关口
      INSERT INTO DW_D_HV_FIRST_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               '01',
               D.SORT_CODE,
               D.SPEC_CODE,
               D.WIRING_MODE,
               DECODE(D.SORT_CODE, '10', '1', '0') IS_SMART_METER,
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE S.EQUIP_ID = K.METER_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_METER_SITECHK K
                           WHERE S.EQUIP_ID = K.METER_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_METER_SITECHK K
                                   WHERE S.EQUIP_ID = K.METER_ID
                                     AND S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_S_FRST_TEST S, SY_SG_D_METER D, SY_SG_C_MP MP
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.TEST_ATTR_CODE = '01'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND S.EQUIP_ID = D.METER_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.SPEC_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --02 互感器现场检验计划 用户
      INSERT INTO DW_D_HV_FIRST_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE S.EQUIP_ID = K.IT_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE S.EQUIP_ID = K.IT_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_IT_SITECHK K
                                   WHERE S.EQUIP_ID = K.IT_ID
                                     AND S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_S_FRST_TEST S,
               SY_SG_D_IT        D,
               SY_SG_C_MP        MP,
               SY_SG_C_CONS      C
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '13'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND D.IT_ID = S.EQUIP_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --02 互感器现场检验计划 关口
      INSERT INTO DW_D_HV_FIRST_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE S.EQUIP_ID = K.IT_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_IT_SITECHK K
                           WHERE S.EQUIP_ID = K.IT_ID
                             AND S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_IT_SITECHK K
                                   WHERE S.EQUIP_ID = K.IT_ID
                                     AND S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_S_FRST_TEST S, SY_SG_D_IT D, SY_SG_C_MP MP
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '13'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND D.IT_ID = S.EQUIP_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --03 TV二次压降测试计划 用户
      INSERT INTO DW_D_HV_FIRST_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                                   WHERE S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT        D,
               SY_SG_C_MP        MP,
               SY_SG_C_CONS      C,
               SY_SG_S_FRST_TEST S
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '14'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND D.IT_ID = S.EQUIP_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
    
      --03 TV二次压降测试计划 关口
      INSERT INTO DW_D_HV_FIRST_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_TVSNDSC_VOLT_DETECT K
                                   WHERE S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT D, SY_SG_C_MP MP, SY_SG_S_FRST_TEST S
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '14'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND D.IT_ID = S.EQUIP_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
      --04 TA二次负荷测试计划  用户
      INSERT INTO DW_D_HV_FIRST_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               C.TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_SNDSC_LOAD_DETECT K
                                   WHERE S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT        D,
               SY_SG_C_MP        MP,
               SY_SG_C_CONS      C,
               SY_SG_S_FRST_TEST S
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '15'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.CONS_ID = C.CONS_ID
           AND C.ORG_NO LIKE TSS.ORG_NO || '%'
           AND D.IT_ID = S.EQUIP_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  C.TRADE_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
      --04 TA二次负荷测试计划 关口
      INSERT INTO DW_D_HV_FIRST_DAY
        (DATA_ID,
         PRO_ORG_NO,
         ORG_NO,
         PS_BUSI_AREA_CODE,
         STAT_YMD,
         EQUIP_SORT_CODE,
         TYPE_VALUE,
         NORM_TYPE,
         WIRING_MODE,
         IS_SMART_METER,
         MD_TYPE_CODE,
         MP_ATTR_CODE,
         TRADE_CODE,
         VOLT_CODE,
         USAGE_TYPE_CODE,
         CHECK_NUM,
         CMPL_CHECK_NUM,
         QLF_NUM,
         UNQLF_NUM,
         OVER_CHECK_NUM,
         TIME_STAMP)
        SELECT PKG_GK_PUBLIC.F_GET_TABLE_SEQ(V_PRO_ORG_NO),
               V_PRO_ORG_NO,
               MP.ORG_NO,
               '',
               V_YMD,
               '02',
               D.SORT_CODE,
               '',
               D.WIRING_MODE,
               '0',
               MP.MD_TYPE_CODE,
               MP.MP_ATTR_CODE,
               '' TRADE_CODE,
               MP.VOLT_CODE,
               MP.USAGE_TYPE_CODE,
               SUM(1) CHECK_NUM,
               SUM(DECODE(S.STATUS, '02', 1, 0)) CMPL_CHECK_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '1',
                          1,
                          0)) QLF_NUM,
               SUM(DECODE((SELECT K.TEST_RSLT
                            FROM SY_SG_D_SNDSC_LOAD_DETECT K
                           WHERE S.APP_NO = K.APP_NO
                             AND ROWNUM = 1),
                          '0',
                          1,
                          0)) UNQLF_NUM,
               SUM(CASE
                     WHEN TO_CHAR((SELECT K.TEST_DATE
                                    FROM SY_SG_D_SNDSC_LOAD_DETECT K
                                   WHERE S.APP_NO = K.APP_NO
                                     AND ROWNUM = 1),
                                  'YYYYMM') > TO_CHAR(S.MADE_DATE, 'YYYYMM') THEN
                      1
                     ELSE
                      0
                   END) OVER_CHECK_NUM,
               SYSDATE
          FROM SY_SG_D_IT D, SY_SG_C_MP MP, SY_SG_S_FRST_TEST S
         WHERE S.ORG_NO LIKE TSS.ORG_NO || '%'
           AND S.EQUIP_TYPE_CODE IN ('02', '03', '04')
           AND S.TEST_ATTR_CODE = '01'
           AND S.CONTENT_CODE = '15'
           AND TO_CHAR(S.MADE_DATE, 'YYYYMM') = V_YM
           AND S.MP_ID = MP.MP_ID
           AND MP.ORG_NO LIKE TSS.ORG_NO || '%'
           AND MP.USAGE_TYPE_CODE <> '01'
           AND D.IT_ID = S.EQUIP_ID
         GROUP BY MP.ORG_NO,
                  D.SORT_CODE,
                  D.WIRING_MODE,
                  MP.MD_TYPE_CODE,
                  MP.MP_ATTR_CODE,
                  MP.VOLT_CODE,
                  MP.USAGE_TYPE_CODE;
      COMMIT;
    END LOOP;
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_INS_DW_D_HV_FIRST_DAY 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_INS_DW_D_HV_FIRST_DAY 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_INS_DW_D_HV_FIRST_DAY;

  /********************************************************************
  #function:日高压计量装置首次检定统计/DW_D_HV_FIRST_DAY 推送过程
  ********************************************************************/
  PROCEDURE P_ETL_DW_D_HV_FIRST_DAY(I_DATA   VARCHAR2,
                                    OUT_CODE OUT NUMBER,
                                    OUT_MSG  OUT VARCHAR2) IS
    V_DATA_ID VARCHAR2(24);
    V_YMD     VARCHAR2(8) := SUBSTR(I_DATA, 1, 8);
  BEGIN
    V_DATA_ID := PKG_GK_PUBLIC.PROC_BGN('P_ETL_DW_D_HV_FIRST_DAY', I_DATA);
    --删除同义词（链接到稽查库OMAC下数据仓库表的同义词）中原有的抽取的记录，维度为月
    DELETE FROM SY_OM_DW_D_HV_FIRST_DAY X WHERE X.STAT_YMD = V_YMD;
    --开始推送数据到同义词（链接到稽查库OMAC下数据仓库表的同义词）
    INSERT INTO SY_OM_DW_D_HV_FIRST_DAY
      (DATA_ID,
       PRO_ORG_NO,
       ORG_NO,
       PS_BUSI_AREA_CODE,
       STAT_YMD,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       CHECK_NUM,
       CMPL_CHECK_NUM,
       QLF_NUM,
       UNQLF_NUM,
       OVER_CHECK_NUM,
       TIME_STAMP)
      SELECT /*+driving_site(SY_OM_DW_O_ORG_CONTRAST)*/
       A.DATA_ID,
       A.PRO_ORG_NO,
       ORG_NO,
       B.BUSI_AREA_STAT_CODE,
       STAT_YMD,
       EQUIP_SORT_CODE,
       TYPE_VALUE,
       NORM_TYPE,
       WIRING_MODE,
       IS_SMART_METER,
       MD_TYPE_CODE,
       MP_ATTR_CODE,
       TRADE_CODE,
       VOLT_CODE,
       USAGE_TYPE_CODE,
       CHECK_NUM,
       CMPL_CHECK_NUM,
       QLF_NUM,
       UNQLF_NUM,
       OVER_CHECK_NUM,
       TIME_STAMP
        FROM DW_D_HV_FIRST_DAY A, SY_OM_DW_O_ORG_CONTRAST B
       WHERE A.STAT_YMD = V_YMD
         AND A.ORG_NO = B.SG_ORG_NO(+);
    OUT_CODE := 1;
    OUT_MSG  := '执行 P_ETL_DW_D_HV_FIRST_DAY 成功';
    COMMIT;
    PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  EXCEPTION
    WHEN OTHERS THEN
      OUT_CODE := 0;
      OUT_MSG  := '执行 P_ETL_DW_D_HV_FIRST_DAY 出现异常' || ',异常信息为：' || SQLCODE || ',' ||
                  SQLERRM;
      ROLLBACK;
      PKG_GK_PUBLIC.PROC_END(V_DATA_ID, OUT_CODE, OUT_MSG);
  END P_ETL_DW_D_HV_FIRST_DAY;

END PKG_YWGK_DW_MP;
/
