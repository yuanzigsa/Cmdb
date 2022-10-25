package com.cmdb.asset.mapper;

import java.util.List;
import com.cmdb.asset.domain.DevopsAlarm;

/**
 * 监控告警Mapper接口
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public interface DevopsAlarmMapper 
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
     * 删除监控告警
     * 
     * @param number 监控告警主键
     * @return 结果
     */
    public int deleteDevopsAlarmByNumber(Long number);

    /**
     * 批量删除监控告警
     * 
     * @param numbers 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDevopsAlarmByNumbers(Long[] numbers);
}
