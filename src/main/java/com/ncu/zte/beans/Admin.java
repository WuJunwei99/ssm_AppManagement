package com.ncu.zte.beans;

public class Admin {

	private Long id;
	private String password;
	private String name;
	private String type;
	private String clazz;
	private String phone;
	private String qq;
	private String bankNum;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getClazz() {
		return clazz;
	}
	public void setClazz(String clazz) {
		this.clazz = clazz;
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
	public String getBankNum() {
		return bankNum;
	}
	public void setBankNum(String bankNum) {
		this.bankNum = bankNum;
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", password=" + password + ", name=" + name + ", type=" + type + ", clazz=" + clazz
				+ ", phone=" + phone + ", qq=" + qq + ", bankNum=" + bankNum + "]";
	}
	
	
	
	
}
