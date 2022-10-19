package com.yuanzi.asset.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 交换机管理对象 asset_switch
 * 
 * @author yuanzi
 * @date 2022-10-18
 */
public class AssetSwitch extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 资产序号 */
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

    /** 管理IP */
    @Excel(name = "管理IP")
    private String manegeIp;

    /** 机柜编号 */
    @Excel(name = "机柜编号")
    private String cabinetNo;

    /** 所属机房 */
    @Excel(name = "所属机房")
    private String room;

    /** 业务类型 */
    @Excel(name = "业务类型")
    private String businessType;

    /** 端口互联 */
    @Excel(name = "端口互联")
    private String portInterconnetion;

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
    public void setManegeIp(String manegeIp) 
    {
        this.manegeIp = manegeIp;
    }

    public String getManegeIp() 
    {
        return manegeIp;
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
    public void setPortInterconnetion(String portInterconnetion) 
    {
        this.portInterconnetion = portInterconnetion;
    }

    public String getPortInterconnetion() 
    {
        return portInterconnetion;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("number", getNumber())
            .append("sn", getSn())
            .append("deviceType", getDeviceType())
            .append("deviceModel", getDeviceModel())
            .append("manegeIp", getManegeIp())
            .append("cabinetNo", getCabinetNo())
            .append("room", getRoom())
            .append("businessType", getBusinessType())
            .append("portInterconnetion", getPortInterconnetion())
            .toString();
    }
}
