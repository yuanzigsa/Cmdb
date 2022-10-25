package com.cmdb.asset.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cmdb.common.annotation.Excel;
import com.cmdb.common.core.domain.BaseEntity;

/**
 * 事件管理对象 devops_event
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public class DevopsEvent extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long number;

    /** 事件ID */
    @Excel(name = "事件ID")
    private Long eventId;

    /** 事件名称 */
    @Excel(name = "事件名称")
    private String eventName;

    /** 事件状态 */
    @Excel(name = "事件状态")
    private String eventState;

    /** 事件级别 */
    @Excel(name = "事件级别")
    private String eventLevel;

    /** 处理人员 */
    @Excel(name = "处理人员")
    private String handledBy;

    /** 开始时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startDate;

    /** 结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endDate;

    public void setNumber(Long number) 
    {
        this.number = number;
    }

    public Long getNumber() 
    {
        return number;
    }
    public void setEventId(Long eventId) 
    {
        this.eventId = eventId;
    }

    public Long getEventId() 
    {
        return eventId;
    }
    public void setEventName(String eventName) 
    {
        this.eventName = eventName;
    }

    public String getEventName() 
    {
        return eventName;
    }
    public void setEventState(String eventState) 
    {
        this.eventState = eventState;
    }

    public String getEventState() 
    {
        return eventState;
    }
    public void setEventLevel(String eventLevel) 
    {
        this.eventLevel = eventLevel;
    }

    public String getEventLevel() 
    {
        return eventLevel;
    }
    public void setHandledBy(String handledBy) 
    {
        this.handledBy = handledBy;
    }

    public String getHandledBy() 
    {
        return handledBy;
    }
    public void setStartDate(Date startDate) 
    {
        this.startDate = startDate;
    }

    public Date getStartDate() 
    {
        return startDate;
    }
    public void setEndDate(Date endDate) 
    {
        this.endDate = endDate;
    }

    public Date getEndDate() 
    {
        return endDate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("number", getNumber())
            .append("eventId", getEventId())
            .append("eventName", getEventName())
            .append("eventState", getEventState())
            .append("eventLevel", getEventLevel())
            .append("handledBy", getHandledBy())
            .append("startDate", getStartDate())
            .append("endDate", getEndDate())
            .append("remark", getRemark())
            .toString();
    }
}
