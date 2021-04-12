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
    private String areaID;
    /**
     * 市.
     */
    private String parent;
    /**
     *区名.
     */
    private String area;
    
    public String getAreaID() {
        return areaID;
    }
    public void setAreaID(String areaID) {
        this.areaID = areaID;
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
}
