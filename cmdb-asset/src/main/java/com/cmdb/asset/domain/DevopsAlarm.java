package com.cmdb.asset.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cmdb.common.annotation.Excel;
import com.cmdb.common.core.domain.BaseEntity;

/**
 * 监控告警对象 devops_alarm
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public class DevopsAlarm extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long number;

    /** 告警主机 */
    @Excel(name = "告警主机")
    private String alarmHostname;

    /** 监控项目 */
    @Excel(name = "监控项目")
    private String alarmEvent;

    /** 告警等级 */
    @Excel(name = "告警等级")
    private String alarmLevel;

    /** 告警信息 */
    @Excel(name = "告警信息")
    private String alarmInfomation;

    /** 告警事件 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "告警事件", width = 30, dateFormat = "yyyy-MM-dd")
    private Date alarmTime;

    /** 事件ID */
    @Excel(name = "事件ID")
    private Long alarmEventId;

    public void setNumber(Long number) 
    {
        this.number = number;
    }

    public Long getNumber() 
    {
        return number;
    }
    public void setAlarmHostname(String alarmHostname) 
    {
        this.alarmHostname = alarmHostname;
    }

    public String getAlarmHostname() 
    {
        return alarmHostname;
    }
    public void setAlarmEvent(String alarmEvent) 
    {
        this.alarmEvent = alarmEvent;
    }

    public String getAlarmEvent() 
    {
        return alarmEvent;
    }
    public void setAlarmLevel(String alarmLevel) 
    {
        this.alarmLevel = alarmLevel;
    }

    public String getAlarmLevel() 
    {
        return alarmLevel;
    }
    public void setAlarmInfomation(String alarmInfomation) 
    {
        this.alarmInfomation = alarmInfomation;
    }

    public String getAlarmInfomation() 
    {
        return alarmInfomation;
    }
    public void setAlarmTime(Date alarmTime) 
    {
        this.alarmTime = alarmTime;
    }

    public Date getAlarmTime() 
    {
        return alarmTime;
    }
    public void setAlarmEventId(Long alarmEventId) 
    {
        this.alarmEventId = alarmEventId;
    }

    public Long getAlarmEventId() 
    {
        return alarmEventId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("number", getNumber())
            .append("alarmHostname", getAlarmHostname())
            .append("alarmEvent", getAlarmEvent())
            .append("alarmLevel", getAlarmLevel())
            .append("alarmInfomation", getAlarmInfomation())
            .append("alarmTime", getAlarmTime())
            .append("alarmEventId", getAlarmEventId())
            .toString();
    }
}
