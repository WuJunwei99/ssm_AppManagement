package com.ncu.zte.beans;

public class SystemAdmin {
	
	private Long id;
	private String password;
	
	public void setId(Long id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	@Override
	public String toString() {
		return "SystemAdmin [id=" + id + ", password=" + password + "]";
	}
	
}
