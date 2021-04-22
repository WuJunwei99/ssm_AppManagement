package com.ncu.zte.beans;

import java.io.Serializable;

/**
 * @author Administrator
 * 
 */
public class Area implements Serializable {
	/**
     * 序列化.
     */
    private static final long serialVersionUID = 5497493280874781486L;
    /**
     *id.
     */
    private Long id;
    /**
     * areaId.
     */
    private String areaId;
    /**
     * 市.
     */
    private String parent;
    /**
     *区名.
     */
    private String area;
    private String city;
    private String province;
    private String provinceId;
    private String cityId;
    
    public String getProvinceId() {
		return provinceId;
	}
	public void setProvinceId(String provinceId) {
		this.provinceId = provinceId;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public String getParent() {
        return parent;
    }
    public void setParent(String parent) {
        this.parent = parent;
    }
    public String getArea() {
        return area;
    }
    public void setArea(String area) {
        this.area = area;
    }
	public String getAreaId() {
		return areaId;
	}
	public void setAreaId(String areaId) {
		this.areaId = areaId;
	}
	public String getCityId() {
		return cityId;
	}
	public void setCityId(String cityId) {
		this.cityId = cityId;
	}
	@Override
	public String toString() {
		return "Area [id=" + id + ", areaId=" + areaId + ", parent=" + parent + ", area=" + area + ", city=" + city
				+ ", province=" + province + ", provinceId=" + provinceId + ", cityId=" + cityId + "]";
	}

}
