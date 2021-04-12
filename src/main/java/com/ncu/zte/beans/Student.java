package com.ncu.zte.beans;

import java.util.Date;

public class Student {

	private Long id;
	private String studentNum;		//学号
	private String name;
	private String password;
	private String idCard;			//身份证
	private Long clazzId;			//班级编号
	private String nation;			//民族
	private String phone;
	private String qq;
	private String tuition;			//学费
	private String hotelExpense;	//住宿费	
	private String sex;				//性别
	private String candidateNum;	//考生号
	private Long  cityId;			//城市号
	private String address;			//详细住址
	private Date birthday;			//出生日期
	private Date admissionDate;		//入学时间
	private Cantacts cantacts1;		//联系人1
	private Cantacts cantacts2;		//联系人2
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getStudentNum() {
		return studentNum;
	}
	public void setStudentNum(String studentNum) {
		this.studentNum = studentNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public Long getClazzId() {
		return clazzId;
	}
	public void setClazzId(Long clazzId) {
		this.clazzId = clazzId;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getTuition() {
		return tuition;
	}
	public void setTuition(String tuition) {
		this.tuition = tuition;
	}
	public String getHotelExpense() {
		return hotelExpense;
	}
	public void setHotelExpense(String hotelExpense) {
		this.hotelExpense = hotelExpense;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCandidateNum() {
		return candidateNum;
	}
	public void setCandidateNum(String candidateNum) {
		this.candidateNum = candidateNum;
	}
	public Long getCityId() {
		return cityId;
	}
	public void setCityId(Long cityId) {
		this.cityId = cityId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public Date getAdmissionDate() {
		return admissionDate;
	}
	public void setAdmissionDate(Date admissionDate) {
		this.admissionDate = admissionDate;
	}
	public Cantacts getCantacts1() {
		return cantacts1;
	}
	public void setCantacts1(Cantacts cantacts1) {
		this.cantacts1 = cantacts1;
	}
	public Cantacts getCantacts2() {
		return cantacts2;
	}
	public void setCantacts2(Cantacts cantacts2) {
		this.cantacts2 = cantacts2;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", studentNum=" + studentNum + ", name=" + name + ", password=" + password
				+ ", idCard=" + idCard + ", clazzId=" + clazzId + ", nation=" + nation + ", phone=" + phone + ", qq="
				+ qq + ", tuition=" + tuition + ", hotelExpense=" + hotelExpense + ", sex=" + sex + ", candidateNum="
				+ candidateNum + ", cityId=" + cityId + ", address=" + address + ", birthday=" + birthday
				+ ", admissionDate=" + admissionDate + ", cantacts1=" + cantacts1 + ", cantacts2=" + cantacts2 + "]";
	}
	
	

}
