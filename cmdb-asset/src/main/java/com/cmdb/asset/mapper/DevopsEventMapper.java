package com.cmdb.asset.mapper;

import java.util.List;
import com.cmdb.asset.domain.DevopsEvent;

/**
 * 事件管理Mapper接口
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public interface DevopsEventMapper 
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
     * 删除事件管理
     * 
     * @param number 事件管理主键
     * @return 结果
     */
    public int deleteDevopsEventByNumber(Long number);

    /**
     * 批量删除事件管理
     * 
     * @param numbers 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDevopsEventByNumbers(Long[] numbers);
}
