package com.cmdb.asset.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cmdb.asset.mapper.DevopsEventMapper;
import com.cmdb.asset.domain.DevopsEvent;
import com.cmdb.asset.service.IDevopsEventService;

/**
 * 事件管理Service业务层处理
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
@Service
public class DevopsEventServiceImpl implements IDevopsEventService 
{
    @Autowired
    private DevopsEventMapper devopsEventMapper;

    /**
     * 查询事件管理
     * 
     * @param number 事件管理主键
     * @return 事件管理
     */
    @Override
    public DevopsEvent selectDevopsEventByNumber(Long number)
    {
        return devopsEventMapper.selectDevopsEventByNumber(number);
    }

    /**
     * 查询事件管理列表
     * 
     * @param devopsEvent 事件管理
     * @return 事件管理
     */
    @Override
    public List<DevopsEvent> selectDevopsEventList(DevopsEvent devopsEvent)
    {
        return devopsEventMapper.selectDevopsEventList(devopsEvent);
    }

    /**
     * 新增事件管理
     * 
     * @param devopsEvent 事件管理
     * @return 结果
     */
    @Override
    public int insertDevopsEvent(DevopsEvent devopsEvent)
    {
        return devopsEventMapper.insertDevopsEvent(devopsEvent);
    }

    /**
     * 修改事件管理
     * 
     * @param devopsEvent 事件管理
     * @return 结果
     */
    @Override
    public int updateDevopsEvent(DevopsEvent devopsEvent)
    {
        return devopsEventMapper.updateDevopsEvent(devopsEvent);
    }

    /**
     * 批量删除事件管理
     * 
     * @param numbers 需要删除的事件管理主键
     * @return 结果
     */
    @Override
    public int deleteDevopsEventByNumbers(Long[] numbers)
    {
        return devopsEventMapper.deleteDevopsEventByNumbers(numbers);
    }

    /**
     * 删除事件管理信息
     * 
     * @param number 事件管理主键
     * @return 结果
     */
    @Override
    public int deleteDevopsEventByNumber(Long number)
    {
        return devopsEventMapper.deleteDevopsEventByNumber(number);
    }
}
