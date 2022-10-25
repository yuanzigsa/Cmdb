package com.cmdb.asset.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cmdb.common.annotation.Excel;
import com.cmdb.common.core.domain.BaseEntity;

/**
 * 客户资产对象 asset_custome
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
public class AssetCustome extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long number;

    /** SN编号 */
    @Excel(name = "SN编号")
    private String sn;

    /** 设备类型 */
    @Excel(name = "设备类型")
    private String deviceType;

    /** 设备型号 */
    @Excel(name = "设备型号")
    private String deviceModel;

    /** 客户归属 */
    @Excel(name = "客户归属")
    private String ascription;

    /** 上架时间 */
    @Excel(name = "上架时间")
    private String upTime;

    /** 业务IP */
    @Excel(name = "业务IP")
    private String businessIp;

    /** 管理IP */
    @Excel(name = "管理IP")
    private String manageIp;

    /** 机柜编号 */
    @Excel(name = "机柜编号")
    private String cabinetNo;

    /** 所属机房 */
    @Excel(name = "所属机房")
    private String room;

    /** 业务类型 */
    @Excel(name = "业务类型")
    private String businessType;

    public void setNumber(Long number) 
    {
        this.number = number;
    }

    public Long getNumber() 
    {
        return number;
    }
    public void setSn(String sn) 
    {
        this.sn = sn;
    }

    public String getSn() 
    {
        return sn;
    }
    public void setDeviceType(String deviceType) 
    {
        this.deviceType = deviceType;
    }

    public String getDeviceType() 
    {
        return deviceType;
    }
    public void setDeviceModel(String deviceModel) 
    {
        this.deviceModel = deviceModel;
    }

    public String getDeviceModel() 
    {
        return deviceModel;
    }
    public void setAscription(String ascription) 
    {
        this.ascription = ascription;
    }

    public String getAscription() 
    {
        return ascription;
    }
    public void setUpTime(String upTime) 
    {
        this.upTime = upTime;
    }

    public String getUpTime() 
    {
        return upTime;
    }
    public void setBusinessIp(String businessIp) 
    {
        this.businessIp = businessIp;
    }

    public String getBusinessIp() 
    {
        return businessIp;
    }
    public void setManageIp(String manageIp) 
    {
        this.manageIp = manageIp;
    }

    public String getManageIp() 
    {
        return manageIp;
    }
    public void setCabinetNo(String cabinetNo) 
    {
        this.cabinetNo = cabinetNo;
    }

    public String getCabinetNo() 
    {
        return cabinetNo;
    }
    public void setRoom(String room) 
    {
        this.room = room;
    }

    public String getRoom() 
    {
        return room;
    }
    public void setBusinessType(String businessType) 
    {
        this.businessType = businessType;
    }

    public String getBusinessType() 
    {
        return businessType;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("number", getNumber())
            .append("sn", getSn())
            .append("deviceType", getDeviceType())
            .append("deviceModel", getDeviceModel())
            .append("ascription", getAscription())
            .append("upTime", getUpTime())
            .append("businessIp", getBusinessIp())
            .append("manageIp", getManageIp())
            .append("cabinetNo", getCabinetNo())
            .append("room", getRoom())
            .append("businessType", getBusinessType())
            .toString();
    }
}
