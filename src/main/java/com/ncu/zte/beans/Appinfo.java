package com.ncu.zte.beans;

import java.math.BigDecimal;
import java.util.function.Predicate;

import javax.validation.constraints.NotNull;

public class Appinfo {
	
	
	private int id;
    @NotNull
	private String softwareName;
	private String apkName;
	private BigDecimal softwareSize;
	private String platform;
    private AppCategory categorylevel1;//一级分类id（来自app_category）
    private AppCategory categorylevel3;//二级分类id（来自app_category）
    private AppCategory categorylevel2;
	private String status;
	private String info;
	private int downloads;
	private String versionId;
	public Appinfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Appinfo( @NotNull String softwareName, String apkName, BigDecimal softwareSize, String platform,
			AppCategory categorylevel1, AppCategory categorylevel2, AppCategory categorylevel3, String status,
			String info, int downloads, String versionId) {
		super();

		this.softwareName = softwareName;
		this.apkName = apkName;
		this.softwareSize = softwareSize;
		this.platform = platform;
		this.categorylevel1 = categorylevel1;
		this.categorylevel2 = categorylevel2;
		this.categorylevel3 = categorylevel3;
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
	public AppCategory getCategorylevel1() {
		return categorylevel1;
	}
	public void setCategorylevel1(AppCategory categorylevel1) {
		this.categorylevel1 = categorylevel1;
	}
	public AppCategory getCategorylevel2() {
		return categorylevel2;
	}
	public void setCategorylevel2(AppCategory categorylevel2) {
		this.categorylevel2 = categorylevel2;
	}
	public AppCategory getCategorylevel3() {
		return categorylevel3;
	}
	public void setCategorylevel3(AppCategory categorylevel3) {
		this.categorylevel3 = categorylevel3;
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
				+ softwareSize + ", platform=" + platform + ", categorylevel1=" + categorylevel1 + ", categorylevel2="
				+ categorylevel2 + ", categorylevel3=" + categorylevel3 + ", status=" + status + ", info=" + info
				+ ", downloads=" + downloads + ", versionId=" + versionId + "]";
	}


	
	
	
	
}
