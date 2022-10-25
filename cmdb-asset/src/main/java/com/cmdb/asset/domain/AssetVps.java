package com.cmdb.asset.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cmdb.common.annotation.Excel;
import com.cmdb.common.core.domain.BaseEntity;

/**
 * 云主机管理对象 asset_vps
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public class AssetVps extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long number;

    /** IP */
    @Excel(name = "IP")
    private String ip;

    /** 归属 */
    @Excel(name = "归属")
    private String ascription;

    /** 到期时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "到期时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date experitonTime;

    /** 配置信息 */
    @Excel(name = "配置信息")
    private String configuration;

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
    public void setAscription(String ascription) 
    {
        this.ascription = ascription;
    }

    public String getAscription() 
    {
        return ascription;
    }
    public void setExperitonTime(Date experitonTime) 
    {
        this.experitonTime = experitonTime;
    }

    public Date getExperitonTime() 
    {
        return experitonTime;
    }
    public void setConfiguration(String configuration) 
    {
        this.configuration = configuration;
    }

    public String getConfiguration() 
    {
        return configuration;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("number", getNumber())
            .append("ip", getIp())
            .append("ascription", getAscription())
            .append("experitonTime", getExperitonTime())
            .append("configuration", getConfiguration())
            .toString();
    }
}
