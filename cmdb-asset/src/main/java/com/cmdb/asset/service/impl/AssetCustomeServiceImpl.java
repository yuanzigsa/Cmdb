package com.cmdb.asset.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cmdb.asset.mapper.AssetCustomeMapper;
import com.cmdb.asset.domain.AssetCustome;
import com.cmdb.asset.service.IAssetCustomeService;

/**
 * 客户资产Service业务层处理
 * 
 * @author yuanzi
 * @date 2022-10-20
 */
@Service
public class AssetCustomeServiceImpl implements IAssetCustomeService 
{
    @Autowired
    private AssetCustomeMapper assetCustomeMapper;

    /**
     * 查询客户资产
     * 
     * @param number 客户资产主键
     * @return 客户资产
     */
    @Override
    public AssetCustome selectAssetCustomeByNumber(Long number)
    {
        return assetCustomeMapper.selectAssetCustomeByNumber(number);
    }

    /**
     * 查询客户资产列表
     * 
     * @param assetCustome 客户资产
     * @return 客户资产
     */
    @Override
    public List<AssetCustome> selectAssetCustomeList(AssetCustome assetCustome)
    {
        return assetCustomeMapper.selectAssetCustomeList(assetCustome);
    }

    /**
     * 新增客户资产
     * 
     * @param assetCustome 客户资产
     * @return 结果
     */
    @Override
    public int insertAssetCustome(AssetCustome assetCustome)
    {
        return assetCustomeMapper.insertAssetCustome(assetCustome);
    }

    /**
     * 修改客户资产
     * 
     * @param assetCustome 客户资产
     * @return 结果
     */
    @Override
    public int updateAssetCustome(AssetCustome assetCustome)
    {
        return assetCustomeMapper.updateAssetCustome(assetCustome);
    }

    /**
     * 批量删除客户资产
     * 
     * @param numbers 需要删除的客户资产主键
     * @return 结果
     */
    @Override
    public int deleteAssetCustomeByNumbers(Long[] numbers)
    {
        return assetCustomeMapper.deleteAssetCustomeByNumbers(numbers);
    }

    /**
     * 删除客户资产信息
     * 
     * @param number 客户资产主键
     * @return 结果
     */
    @Override
    public int deleteAssetCustomeByNumber(Long number)
    {
        return assetCustomeMapper.deleteAssetCustomeByNumber(number);
    }
}
