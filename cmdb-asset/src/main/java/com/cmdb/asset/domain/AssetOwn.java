package com.cmdb.asset.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cmdb.common.annotation.Excel;
import com.cmdb.common.core.domain.BaseEntity;

/**
 * 自有资产对象 asset_own
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public class AssetOwn extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long number;

    /** 所属机房 */
    @Excel(name = "所属机房")
    private String room;

    /** 机柜编号 */
    @Excel(name = "机柜编号")
    private String cabinetNo;

    /** 设备型号 */
    @Excel(name = "设备型号")
    private String deviceModel;

    /** 资产状态 */
    @Excel(name = "资产状态")
    private String state;

    public void setNumber(Long number) 
    {
        this.number = number;
    }

    public Long getNumber() 
    {
        return number;
    }
    public void setRoom(String room) 
    {
        this.room = room;
    }

    public String getRoom() 
    {
        return room;
    }
    public void setCabinetNo(String cabinetNo) 
    {
        this.cabinetNo = cabinetNo;
    }

    public String getCabinetNo() 
    {
        return cabinetNo;
    }
    public void setDeviceModel(String deviceModel) 
    {
        this.deviceModel = deviceModel;
    }

    public String getDeviceModel() 
    {
        return deviceModel;
    }
    public void setState(String state) 
    {
        this.state = state;
    }

    public String getState() 
    {
        return state;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("number", getNumber())
            .append("room", getRoom())
            .append("cabinetNo", getCabinetNo())
            .append("deviceModel", getDeviceModel())
            .append("state", getState())
            .toString();
    }
}
