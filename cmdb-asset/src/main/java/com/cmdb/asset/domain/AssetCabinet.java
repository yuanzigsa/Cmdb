package com.cmdb.asset.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cmdb.common.annotation.Excel;
import com.cmdb.common.core.domain.BaseEntity;

/**
 * 机柜管理对象 asset_cabinet
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public class AssetCabinet extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long number;

    /** 机柜编号 */
    @Excel(name = "机柜编号")
    private String cabinetNo;

    /** 所属机房 */
    @Excel(name = "所属机房")
    private String room;

    /** 业务类型 */
    @Excel(name = "业务类型")
    private String businessType;

    /** 机柜布局 */
    @Excel(name = "机柜布局")
    private String cabinetLayout;

    public void setNumber(Long number) 
    {
        this.number = number;
    }

    public Long getNumber() 
    {
        return number;
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
    public void setCabinetLayout(String cabinetLayout) 
    {
        this.cabinetLayout = cabinetLayout;
    }

    public String getCabinetLayout() 
    {
        return cabinetLayout;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("number", getNumber())
            .append("cabinetNo", getCabinetNo())
            .append("room", getRoom())
            .append("businessType", getBusinessType())
            .append("cabinetLayout", getCabinetLayout())
            .toString();
    }
}
