package com.cmdb.asset.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cmdb.asset.mapper.DevopsAlarmMapper;
import com.cmdb.asset.domain.DevopsAlarm;
import com.cmdb.asset.service.IDevopsAlarmService;

/**
 * 监控告警Service业务层处理
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
@Service
public class DevopsAlarmServiceImpl implements IDevopsAlarmService 
{
    @Autowired
    private DevopsAlarmMapper devopsAlarmMapper;

    /**
     * 查询监控告警
     * 
     * @param number 监控告警主键
     * @return 监控告警
     */
    @Override
    public DevopsAlarm selectDevopsAlarmByNumber(Long number)
    {
        return devopsAlarmMapper.selectDevopsAlarmByNumber(number);
    }

    /**
     * 查询监控告警列表
     * 
     * @param devopsAlarm 监控告警
     * @return 监控告警
     */
    @Override
    public List<DevopsAlarm> selectDevopsAlarmList(DevopsAlarm devopsAlarm)
    {
        return devopsAlarmMapper.selectDevopsAlarmList(devopsAlarm);
    }

    /**
     * 新增监控告警
     * 
     * @param devopsAlarm 监控告警
     * @return 结果
     */
    @Override
    public int insertDevopsAlarm(DevopsAlarm devopsAlarm)
    {
        return devopsAlarmMapper.insertDevopsAlarm(devopsAlarm);
    }

    /**
     * 修改监控告警
     * 
     * @param devopsAlarm 监控告警
     * @return 结果
     */
    @Override
    public int updateDevopsAlarm(DevopsAlarm devopsAlarm)
    {
        return devopsAlarmMapper.updateDevopsAlarm(devopsAlarm);
    }

    /**
     * 批量删除监控告警
     * 
     * @param numbers 需要删除的监控告警主键
     * @return 结果
     */
    @Override
    public int deleteDevopsAlarmByNumbers(Long[] numbers)
    {
        return devopsAlarmMapper.deleteDevopsAlarmByNumbers(numbers);
    }

    /**
     * 删除监控告警信息
     * 
     * @param number 监控告警主键
     * @return 结果
     */
    @Override
    public int deleteDevopsAlarmByNumber(Long number)
    {
        return devopsAlarmMapper.deleteDevopsAlarmByNumber(number);
    }
}
