package com.cmdb.asset.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cmdb.asset.mapper.AssetRentMapper;
import com.cmdb.asset.domain.AssetRent;
import com.cmdb.asset.service.IAssetRentService;

/**
 * 租用资产Service业务层处理
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
@Service
public class AssetRentServiceImpl implements IAssetRentService 
{
    @Autowired
    private AssetRentMapper assetRentMapper;

    /**
     * 查询租用资产
     * 
     * @param number 租用资产主键
     * @return 租用资产
     */
    @Override
    public AssetRent selectAssetRentByNumber(Long number)
    {
        return assetRentMapper.selectAssetRentByNumber(number);
    }

    /**
     * 查询租用资产列表
     * 
     * @param assetRent 租用资产
     * @return 租用资产
     */
    @Override
    public List<AssetRent> selectAssetRentList(AssetRent assetRent)
    {
        return assetRentMapper.selectAssetRentList(assetRent);
    }

    /**
     * 新增租用资产
     * 
     * @param assetRent 租用资产
     * @return 结果
     */
    @Override
    public int insertAssetRent(AssetRent assetRent)
    {
        return assetRentMapper.insertAssetRent(assetRent);
    }

    /**
     * 修改租用资产
     * 
     * @param assetRent 租用资产
     * @return 结果
     */
    @Override
    public int updateAssetRent(AssetRent assetRent)
    {
        return assetRentMapper.updateAssetRent(assetRent);
    }

    /**
     * 批量删除租用资产
     * 
     * @param numbers 需要删除的租用资产主键
     * @return 结果
     */
    @Override
    public int deleteAssetRentByNumbers(Long[] numbers)
    {
        return assetRentMapper.deleteAssetRentByNumbers(numbers);
    }

    /**
     * 删除租用资产信息
     * 
     * @param number 租用资产主键
     * @return 结果
     */
    @Override
    public int deleteAssetRentByNumber(Long number)
    {
        return assetRentMapper.deleteAssetRentByNumber(number);
    }
}
