package com.cmdb.asset.service;

import java.util.List;
import com.cmdb.asset.domain.DevopsEvent;

/**
 * 事件管理Service接口
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public interface IDevopsEventService 
{
    /**
     * 查询事件管理
     * 
     * @param number 事件管理主键
     * @return 事件管理
     */
    public DevopsEvent selectDevopsEventByNumber(Long number);

    /**
     * 查询事件管理列表
     * 
     * @param devopsEvent 事件管理
     * @return 事件管理集合
     */
    public List<DevopsEvent> selectDevopsEventList(DevopsEvent devopsEvent);

    /**
     * 新增事件管理
     * 
     * @param devopsEvent 事件管理
     * @return 结果
     */
    public int insertDevopsEvent(DevopsEvent devopsEvent);

    /**
     * 修改事件管理
     * 
     * @param devopsEvent 事件管理
     * @return 结果
     */
    public int updateDevopsEvent(DevopsEvent devopsEvent);

    /**
     * 批量删除事件管理
     * 
     * @param numbers 需要删除的事件管理主键集合
     * @return 结果
     */
    public int deleteDevopsEventByNumbers(Long[] numbers);

    /**
     * 删除事件管理信息
     * 
     * @param number 事件管理主键
     * @return 结果
     */
    public int deleteDevopsEventByNumber(Long number);
}
