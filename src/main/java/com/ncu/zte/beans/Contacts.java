package com.ncu.zte.beans;

//联系人
public class Contacts {

	private Long id;
	private Long studentNum;		//学生学号
	private String relationship;	//关系
	private String name;
	private String phone;
	private String work;			//工作
	private String workAddress;		//工作地址
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getStudentNum() {
		return studentNum;
	}
	public void setStudentNum(Long studentNum) {
		this.studentNum = studentNum;
	}
	public String getRelationship() {
		return relationship;
	}
	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getWorkAddress() {
		return workAddress;
	}
	public void setWorkAddress(String workAddress) {
		this.workAddress = workAddress;
	}
	@Override
	public String toString() {
		return "Cantacts [id=" + id + ", studentNum=" + studentNum + ", relationship=" + relationship + ", name=" + name
				+ ", phone=" + phone + ", work=" + work + ", workAddress=" + workAddress + "]";
	}


	
}
