package com.ncu.zte.beans;

public class Clazz {
	private Long classId;
	private String departmentName;	//院系名
	private String majorName;		//专业名
	private int classe;				//班级
	private int grade;				//年级
	private String className;		//班级名
	private String majorId;		//专业编号
	private String departmentId;	//院系名

	
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public Long getClassId() {
		return classId;
	}
	public void setClassId(Long classId) {
		this.classId = classId;
	}
	public int getClasse() {
		return classe;
	}
	public void setClasse(int classe) {
		this.classe = classe;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}

	
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getMajorId() {
		return majorId;
	}
	public void setMajorId(String majorId) {
		this.majorId = majorId;
	}
	public String getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}
	@Override
	public String toString() {
		return "Clazz [classId=" + classId + ", departmentName=" + departmentName + ", majorName=" + majorName
				+ ", classe=" + classe + ", grade=" + grade + ", className=" + className + ", majorId=" + majorId + "]";
	}




}
