package com.cmdb.asset.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cmdb.common.annotation.Excel;
import com.cmdb.common.core.domain.BaseEntity;

/**
 * 测试机管理对象 asset_test
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
public class AssetTest extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long number;

    /** 所属机房 */
    @Excel(name = "所属机房")
    private String room;

    /** 状态 */
    @Excel(name = "状态")
    private String state;

    /** 系统 */
    @Excel(name = "系统")
    private String os;

    /** 使用客户 */
    @Excel(name = "使用客户")
    private String costomer;

    /** 开始时间 */
    @Excel(name = "开始时间")
    private String startTime;

    /** 测试周期 */
    @Excel(name = "测试周期")
    private String testCycle;

    /** 归属 */
    @Excel(name = "归属")
    private String ascription;

    /** 设备型号 */
    @Excel(name = "设备型号")
    private String deviceModel;

    /** 机柜编号 */
    @Excel(name = "机柜编号")
    private String cabinetNumber;

    /** 交换机口 */
    @Excel(name = "交换机口")
    private String switchInterface;

    /** 管理信息 */
    @Excel(name = "管理信息")
    private String passwd;

    /** 配置信息 */
    @Excel(name = "配置信息")
    private String onfiguration;

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
    public void setState(String state) 
    {
        this.state = state;
    }

    public String getState() 
    {
        return state;
    }
    public void setOs(String os) 
    {
        this.os = os;
    }

    public String getOs() 
    {
        return os;
    }
    public void setCostomer(String costomer) 
    {
        this.costomer = costomer;
    }

    public String getCostomer() 
    {
        return costomer;
    }
    public void setStartTime(String startTime) 
    {
        this.startTime = startTime;
    }

    public String getStartTime() 
    {
        return startTime;
    }
    public void setTestCycle(String testCycle) 
    {
        this.testCycle = testCycle;
    }

    public String getTestCycle() 
    {
        return testCycle;
    }
    public void setAscription(String ascription) 
    {
        this.ascription = ascription;
    }

    public String getAscription() 
    {
        return ascription;
    }
    public void setDeviceModel(String deviceModel) 
    {
        this.deviceModel = deviceModel;
    }

    public String getDeviceModel() 
    {
        return deviceModel;
    }
    public void setCabinetNumber(String cabinetNumber) 
    {
        this.cabinetNumber = cabinetNumber;
    }

    public String getCabinetNumber() 
    {
        return cabinetNumber;
    }
    public void setSwitchInterface(String switchInterface) 
    {
        this.switchInterface = switchInterface;
    }

    public String getSwitchInterface() 
    {
        return switchInterface;
    }
    public void setPasswd(String passwd) 
    {
        this.passwd = passwd;
    }

    public String getPasswd() 
    {
        return passwd;
    }
    public void setOnfiguration(String onfiguration) 
    {
        this.onfiguration = onfiguration;
    }

    public String getOnfiguration() 
    {
        return onfiguration;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("number", getNumber())
            .append("room", getRoom())
            .append("state", getState())
            .append("os", getOs())
            .append("costomer", getCostomer())
            .append("startTime", getStartTime())
            .append("testCycle", getTestCycle())
            .append("ascription", getAscription())
            .append("deviceModel", getDeviceModel())
            .append("cabinetNumber", getCabinetNumber())
            .append("switchInterface", getSwitchInterface())
            .append("passwd", getPasswd())
            .append("onfiguration", getOnfiguration())
            .toString();
    }
}
