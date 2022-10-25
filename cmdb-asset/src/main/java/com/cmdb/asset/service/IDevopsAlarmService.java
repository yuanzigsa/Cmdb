package com.cmdb.asset.service;

import java.util.List;
import com.cmdb.asset.domain.DevopsAlarm;

/**
 * 监控告警Service接口
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public interface IDevopsAlarmService 
{
    /**
     * 查询监控告警
     * 
     * @param number 监控告警主键
     * @return 监控告警
     */
    public DevopsAlarm selectDevopsAlarmByNumber(Long number);

    /**
     * 查询监控告警列表
     * 
     * @param devopsAlarm 监控告警
     * @return 监控告警集合
     */
    public List<DevopsAlarm> selectDevopsAlarmList(DevopsAlarm devopsAlarm);

    /**
     * 新增监控告警
     * 
     * @param devopsAlarm 监控告警
     * @return 结果
     */
    public int insertDevopsAlarm(DevopsAlarm devopsAlarm);

    /**
     * 修改监控告警
     * 
     * @param devopsAlarm 监控告警
     * @return 结果
     */
    public int updateDevopsAlarm(DevopsAlarm devopsAlarm);

    /**
     * 批量删除监控告警
     * 
     * @param numbers 需要删除的监控告警主键集合
     * @return 结果
     */
    public int deleteDevopsAlarmByNumbers(Long[] numbers);

    /**
     * 删除监控告警信息
     * 
     * @param number 监控告警主键
     * @return 结果
     */
    public int deleteDevopsAlarmByNumber(Long number);
}
