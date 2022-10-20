package com.cmdb.asset.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cmdb.common.annotation.Excel;
import com.cmdb.common.core.domain.BaseEntity;

/**
 * 客户资产对象 asset_custome
 * 
 * @author yuanzi
 * @date 2022-10-20
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
    private String 设备类型;

    /** 客户归属 */
    @Excel(name = "客户归属")
    private String 客户归属;

    /** 上架时间 */
    @Excel(name = "上架时间")
    private String 上架时间;

    /** 业务IP */
    @Excel(name = "业务IP")
    private String 业务ip;

    /** 管理IP */
    @Excel(name = "管理IP")
    private String 管理ip;

    /** 机柜编号 */
    @Excel(name = "机柜编号")
    private String 机柜编号;

    /** 所属机房 */
    @Excel(name = "所属机房")
    private String 所属机房;

    /** 业务类型 */
    @Excel(name = "业务类型")
    private String 业务类型;

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
    public void set设备类型(String 设备类型) 
    {
        this.设备类型 = 设备类型;
    }

    public String get设备类型() 
    {
        return 设备类型;
    }
    public void set客户归属(String 客户归属) 
    {
        this.客户归属 = 客户归属;
    }

    public String get客户归属() 
    {
        return 客户归属;
    }
    public void set上架时间(String 上架时间) 
    {
        this.上架时间 = 上架时间;
    }

    public String get上架时间() 
    {
        return 上架时间;
    }
    public void set业务ip(String 业务ip) 
    {
        this.业务ip = 业务ip;
    }

    public String get业务ip() 
    {
        return 业务ip;
    }
    public void set管理ip(String 管理ip) 
    {
        this.管理ip = 管理ip;
    }

    public String get管理ip() 
    {
        return 管理ip;
    }
    public void set机柜编号(String 机柜编号) 
    {
        this.机柜编号 = 机柜编号;
    }

    public String get机柜编号() 
    {
        return 机柜编号;
    }
    public void set所属机房(String 所属机房) 
    {
        this.所属机房 = 所属机房;
    }

    public String get所属机房() 
    {
        return 所属机房;
    }
    public void set业务类型(String 业务类型) 
    {
        this.业务类型 = 业务类型;
    }

    public String get业务类型() 
    {
        return 业务类型;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("number", getNumber())
            .append("sn", getSn())
            .append("设备类型", get设备类型())
            .append("客户归属", get客户归属())
            .append("上架时间", get上架时间())
            .append("业务ip", get业务ip())
            .append("管理ip", get管理ip())
            .append("机柜编号", get机柜编号())
            .append("所属机房", get所属机房())
            .append("业务类型", get业务类型())
            .toString();
    }
}
