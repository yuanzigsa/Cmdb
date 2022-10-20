package com.cmdb.asset.service;

import java.util.List;
import com.cmdb.asset.domain.AssetSwitch;

/**
 * 交换机管理Service接口
 * 
 * @author yuanzi
 * @date 2022-10-19
 */
public interface IAssetSwitchService 
{
    /**
     * 查询交换机管理
     * 
     * @param number 交换机管理主键
     * @return 交换机管理
     */
    public AssetSwitch selectAssetSwitchByNumber(Long number);

    /**
     * 查询交换机管理列表
     * 
     * @param assetSwitch 交换机管理
     * @return 交换机管理集合
     */
    public List<AssetSwitch> selectAssetSwitchList(AssetSwitch assetSwitch);

    /**
     * 新增交换机管理
     * 
     * @param assetSwitch 交换机管理
     * @return 结果
     */
    public int insertAssetSwitch(AssetSwitch assetSwitch);

    /**
     * 修改交换机管理
     * 
     * @param assetSwitch 交换机管理
     * @return 结果
     */
    public int updateAssetSwitch(AssetSwitch assetSwitch);

    /**
     * 批量删除交换机管理
     * 
     * @param numbers 需要删除的交换机管理主键集合
     * @return 结果
     */
    public int deleteAssetSwitchByNumbers(Long[] numbers);

    /**
     * 删除交换机管理信息
     * 
     * @param number 交换机管理主键
     * @return 结果
     */
    public int deleteAssetSwitchByNumber(Long number);
}
