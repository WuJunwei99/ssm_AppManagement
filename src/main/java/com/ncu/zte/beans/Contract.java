package com.ncu.zte.beans;

import java.util.Date;

//合同信息
public class Contract {
	
	private Long id;				//id
	private int contractType;		//贷款类型		//0：新生首贷		1：老生首贷	2：续贷
	private int contractBankType;	//贷款银行		//0：国家开发银行	1：农信社		2：特殊
	private String contractId;		//合同号
	private Long studentNum;		//学号
	private String amount;			//金额
	private String lender;			//贷款机构
	private String branchLender;	//分支机构
	private String agent;			//经办人
	private Date approveDate;		//批准日期
	private Date beginDate;			//开始还款日
	private Date endDate;			//还款结束日
	private Student student;		//学生信息
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getContractId() {
		return contractId;
	}
	public void setContractId(String contractId) {
		this.contractId = contractId;
	}
	public Long getStudentNum() {
		return studentNum;
	}
	public void setStudentNum(Long studentNum) {
		this.studentNum = studentNum;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getLender() {
		return lender;
	}
	public void setLender(String lender) {
		this.lender = lender;
	}
	public String getBranchLender() {
		return branchLender;
	}
	public void setBranchLender(String branchLender) {
		this.branchLender = branchLender;
	}
	public String getAgent() {
		return agent;
	}
	public void setAgent(String agent) {
		this.agent = agent;
	}
	public Date getApproveDate() {
		return approveDate;
	}
	public void setApproveDate(Date approveDate) {
		this.approveDate = approveDate;
	}
	public Date getBeginDate() {
		return beginDate;
	}
	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
	public int getContractType() {
		return contractType;
	}
	public void setContractType(int contractType) {
		this.contractType = contractType;
	}
	public int getContractBankType() {
		return contractBankType;
	}
	public void setContractBankType(int contractBankType) {
		this.contractBankType = contractBankType;
	}
	@Override
	public String toString() {
		return "Contract [id=" + id + ", contractType=" + contractType + ", contractBankType=" + contractBankType
				+ ", contractId=" + contractId + ", studentNum=" + studentNum + ", amount=" + amount + ", lender="
				+ lender + ", branchLender=" + branchLender + ", agent=" + agent + ", approveDate=" + approveDate
				+ ", beginDate=" + beginDate + ", endDate=" + endDate + ", student=" + student + "]";
	}

	
	
	
}
