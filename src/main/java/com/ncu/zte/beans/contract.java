package com.ncu.zte.beans;

import java.util.Date;

//合同信息
public class contract {
	
	private Long id;				//id
	private Long contractId;		//合同号
	private Long studengId;			//学号
	private String amount;			//金额
	private String lender;			//贷款机构
	private String branchLender;	//分支机构
	private String agent;			//经办人
	private Date approveDate;		//批准日期
	private Date beginDate;			//开始还款日
	private Date endDate;			//还款结束日
	private Student student;		//学生信息
	
	
	
}
