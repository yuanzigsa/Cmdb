package com.cmdb.asset.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cmdb.common.annotation.Excel;
import com.cmdb.common.core.domain.BaseEntity;

/**
 * 上联IP资源对象 asset_up_ip
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
public class AssetUpIp extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 资产序号 */
    private Long number;

    /** IP */
    @Excel(name = "IP")
    private String ip;

    /** 归属 */
    @Excel(name = "归属")
    private String company;

    /** 所属机房 */
    @Excel(name = "所属机房")
    private String room;

    public void setNumber(Long number) 
    {
        this.number = number;
    }

    public Long getNumber() 
    {
        return number;
    }
    public void setIp(String ip) 
    {
        this.ip = ip;
    }

    public String getIp() 
    {
        return ip;
    }
    public void setCompany(String company) 
    {
        this.company = company;
    }

    public String getCompany() 
    {
        return company;
    }
    public void setRoom(String room) 
    {
        this.room = room;
    }

    public String getRoom() 
    {
        return room;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("number", getNumber())
            .append("ip", getIp())
            .append("company", getCompany())
            .append("room", getRoom())
            .toString();
    }
}
