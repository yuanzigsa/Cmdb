package com.cmdb.asset.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cmdb.asset.mapper.AssetVpsMapper;
import com.cmdb.asset.domain.AssetVps;
import com.cmdb.asset.service.IAssetVpsService;

/**
 * 云主机管理Service业务层处理
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
@Service
public class AssetVpsServiceImpl implements IAssetVpsService 
{
    @Autowired
    private AssetVpsMapper assetVpsMapper;

    /**
     * 查询云主机管理
     * 
     * @param number 云主机管理主键
     * @return 云主机管理
     */
    @Override
    public AssetVps selectAssetVpsByNumber(Long number)
    {
        return assetVpsMapper.selectAssetVpsByNumber(number);
    }

    /**
     * 查询云主机管理列表
     * 
     * @param assetVps 云主机管理
     * @return 云主机管理
     */
    @Override
    public List<AssetVps> selectAssetVpsList(AssetVps assetVps)
    {
        return assetVpsMapper.selectAssetVpsList(assetVps);
    }

    /**
     * 新增云主机管理
     * 
     * @param assetVps 云主机管理
     * @return 结果
     */
    @Override
    public int insertAssetVps(AssetVps assetVps)
    {
        return assetVpsMapper.insertAssetVps(assetVps);
    }

    /**
     * 修改云主机管理
     * 
     * @param assetVps 云主机管理
     * @return 结果
     */
    @Override
    public int updateAssetVps(AssetVps assetVps)
    {
        return assetVpsMapper.updateAssetVps(assetVps);
    }

    /**
     * 批量删除云主机管理
     * 
     * @param numbers 需要删除的云主机管理主键
     * @return 结果
     */
    @Override
    public int deleteAssetVpsByNumbers(Long[] numbers)
    {
        return assetVpsMapper.deleteAssetVpsByNumbers(numbers);
    }

    /**
     * 删除云主机管理信息
     * 
     * @param number 云主机管理主键
     * @return 结果
     */
    @Override
    public int deleteAssetVpsByNumber(Long number)
    {
        return assetVpsMapper.deleteAssetVpsByNumber(number);
    }
}
