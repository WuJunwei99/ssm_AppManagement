package com.ncu.zte.beans;

import java.math.BigDecimal;
import java.util.function.Predicate;

public class Appinfo {
	
	private int id;
	private String softwareName;
	private String apkName;
	private BigDecimal softwareSize;
	private String platform;
	private int categoryLevel1;
	private int categoryLevel2;
	private int categoryLevel3;
	private String status;
	private String info;
	private int downloads;
	private String versionId;
	public Appinfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Appinfo(String softwareName, String apkName, BigDecimal softwareSize, String platform,
			int categoryLevel1, int categoryLevel2, int categoryLevel3, String status, String info, int downloads,
			String versionId) {
		super();
		this.softwareName = softwareName;
		this.apkName = apkName;
		this.softwareSize = softwareSize;
		this.platform = platform;
		this.categoryLevel1 = categoryLevel1;
		this.categoryLevel2 = categoryLevel2;
		this.categoryLevel3 = categoryLevel3;
		this.status = status;
		this.info = info;
		this.downloads = downloads;
		this.versionId = versionId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSoftwareName() {
		return softwareName;
	}
	public void setSoftwareName(String softwareName) {
		this.softwareName = softwareName;
	}
	public String getApkName() {
		return apkName;
	}
	public void setApkName(String apkName) {
		this.apkName = apkName;
	}
	public BigDecimal getSoftwareSize() {
		return softwareSize;
	}
	public void setSoftwareSize(BigDecimal softwareSize) {
		this.softwareSize = softwareSize;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public int getCategoryLevel1() {
		return categoryLevel1;
	}
	public void setCategoryLevel1(int categoryLevel1) {
		this.categoryLevel1 = categoryLevel1;
	}
	public int getCategoryLevel2() {
		return categoryLevel2;
	}
	public void setCategoryLevel2(int categoryLevel2) {
		this.categoryLevel2 = categoryLevel2;
	}
	public int getCategoryLevel3() {
		return categoryLevel3;
	}
	public void setCategoryLevel3(int categoryLevel3) {
		this.categoryLevel3 = categoryLevel3;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int getDownloads() {
		return downloads;
	}
	public void setDownloads(int downloads) {
		this.downloads = downloads;
	}
	public String getVersionId() {
		return versionId;
	}
	public void setVersionId(String versionId) {
		this.versionId = versionId;
	}
	@Override
	public String toString() {
		return "Appinfo [id=" + id + ", softwareName=" + softwareName + ", apkName=" + apkName + ", softwareSize="
				+ softwareSize + ", platform=" + platform + ", categoryLevel1=" + categoryLevel1
				+ ", categoryLevel2=" + categoryLevel2 + ", categoryLevel3=" + categoryLevel3 + ", status=" + status
				+ ", info=" + info + ", downloads=" + downloads + ", versionId=" + versionId + "]";
	}
	
	
	
	
}
