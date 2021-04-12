package com.ncu.zte.beans;

/**
 * 省.
 */
import java.io.Serializable;

/**
 * @author Administrator.
 * 
 */
public class Province implements Serializable {
    /**
     * 序列化.
     */
    private static final long serialVersionUID = 5318855726291540197L;
    /**
     *ID. 
     */
    private Long id;
    /**
     * privinceId.
     */
    private String provinceID;
    /**
     *名. 
     */
    private String province;
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public String getProvinceID() {
        return provinceID;
    }
    public void setProvinceID(String provinceID) {
        this.provinceID = provinceID;
    }
    public String getProvince() {
        return province;
    }
    public void setProvince(String province) {
        this.province = province;
    }
    
}
