package com.cmdb.asset.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cmdb.common.annotation.Excel;
import com.cmdb.common.core.domain.BaseEntity;

/**
 * 机房管理对象 asset_room
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
public class AssetRoom extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long number;

    /** 机房名称 */
    @Excel(name = "机房名称")
    private String cabinetName;

    /** 业务类型 */
    @Excel(name = "业务类型")
    private String businessType;

    /** 出口带宽 */
    @Excel(name = "出口带宽")
    private String bandwidth;

    /** 机房地址 */
    @Excel(name = "机房地址")
    private String address;

    /** 联系方式 */
    @Excel(name = "联系方式")
    private String contact;

    /** 运维人员 */
    @Excel(name = "运维人员")
    private String administrator;

    public void setNumber(Long number) 
    {
        this.number = number;
    }

    public Long getNumber() 
    {
        return number;
    }
    public void setCabinetName(String cabinetName) 
    {
        this.cabinetName = cabinetName;
    }

    public String getCabinetName() 
    {
        return cabinetName;
    }
    public void setBusinessType(String businessType) 
    {
        this.businessType = businessType;
    }

    public String getBusinessType() 
    {
        return businessType;
    }
    public void setBandwidth(String bandwidth) 
    {
        this.bandwidth = bandwidth;
    }

    public String getBandwidth() 
    {
        return bandwidth;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setContact(String contact) 
    {
        this.contact = contact;
    }

    public String getContact() 
    {
        return contact;
    }
    public void setAdministrator(String administrator) 
    {
        this.administrator = administrator;
    }

    public String getAdministrator() 
    {
        return administrator;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("number", getNumber())
            .append("cabinetName", getCabinetName())
            .append("businessType", getBusinessType())
            .append("bandwidth", getBandwidth())
            .append("address", getAddress())
            .append("contact", getContact())
            .append("administrator", getAdministrator())
            .toString();
    }
}
