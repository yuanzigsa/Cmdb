package com.cmdb.asset.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cmdb.asset.mapper.AssetSwitchMapper;
import com.cmdb.asset.domain.AssetSwitch;
import com.cmdb.asset.service.IAssetSwitchService;

/**
 * 交换机管理Service业务层处理
 * 
 * @author yuanzi
 * @date 2022-10-19
 */
@Service
public class AssetSwitchServiceImpl implements IAssetSwitchService 
{
    @Autowired
    private AssetSwitchMapper assetSwitchMapper;

    /**
     * 查询交换机管理
     * 
     * @param number 交换机管理主键
     * @return 交换机管理
     */
    @Override
    public AssetSwitch selectAssetSwitchByNumber(Long number)
    {
        return assetSwitchMapper.selectAssetSwitchByNumber(number);
    }

    /**
     * 查询交换机管理列表
     * 
     * @param assetSwitch 交换机管理
     * @return 交换机管理
     */
    @Override
    public List<AssetSwitch> selectAssetSwitchList(AssetSwitch assetSwitch)
    {
        return assetSwitchMapper.selectAssetSwitchList(assetSwitch);
    }

    /**
     * 新增交换机管理
     * 
     * @param assetSwitch 交换机管理
     * @return 结果
     */
    @Override
    public int insertAssetSwitch(AssetSwitch assetSwitch)
    {
        return assetSwitchMapper.insertAssetSwitch(assetSwitch);
    }

    /**
     * 修改交换机管理
     * 
     * @param assetSwitch 交换机管理
     * @return 结果
     */
    @Override
    public int updateAssetSwitch(AssetSwitch assetSwitch)
    {
        return assetSwitchMapper.updateAssetSwitch(assetSwitch);
    }

    /**
     * 批量删除交换机管理
     * 
     * @param numbers 需要删除的交换机管理主键
     * @return 结果
     */
    @Override
    public int deleteAssetSwitchByNumbers(Long[] numbers)
    {
        return assetSwitchMapper.deleteAssetSwitchByNumbers(numbers);
    }

    /**
     * 删除交换机管理信息
     * 
     * @param number 交换机管理主键
     * @return 结果
     */
    @Override
    public int deleteAssetSwitchByNumber(Long number)
    {
        return assetSwitchMapper.deleteAssetSwitchByNumber(number);
    }
}
