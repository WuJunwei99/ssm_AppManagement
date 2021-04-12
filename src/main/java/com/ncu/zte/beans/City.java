package com.ncu.zte.beans;

import java.io.Serializable;

/**
 * 市.
 */
public class City implements Serializable {
    /**
     * 序列化.
     */
    private static final long serialVersionUID = -2305897463846946655L;

    /**
     * id.
     */
    private Long id;
    
    /**
     * CityId.
     */
    private String cityID;
    /**
     * 省.
     */
    private String parent;

    /**
     *名. 
     */
    private String city;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCityID() {
        return cityID;
    }

    public void setCityID(String cityID) {
        this.cityID = cityID;
    }

    public String getParent() {
        return parent;
    }

    public void setParent(String parent) {
        this.parent = parent;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
  
}
