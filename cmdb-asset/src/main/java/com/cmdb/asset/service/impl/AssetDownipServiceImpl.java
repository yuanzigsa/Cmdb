package com.cmdb.asset.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cmdb.asset.mapper.AssetDownipMapper;
import com.cmdb.asset.domain.AssetDownip;
import com.cmdb.asset.service.IAssetDownipService;

/**
 * 客户IP资源Service业务层处理
 * 
 * @author yuanzi
 * @date 2022-10-19
 */
@Service
public class AssetDownipServiceImpl implements IAssetDownipService 
{
    @Autowired
    private AssetDownipMapper assetDownipMapper;

    /**
     * 查询客户IP资源
     * 
     * @param number 客户IP资源主键
     * @return 客户IP资源
     */
    @Override
    public AssetDownip selectAssetDownipByNumber(Long number)
    {
        return assetDownipMapper.selectAssetDownipByNumber(number);
    }

    /**
     * 查询客户IP资源列表
     * 
     * @param assetDownip 客户IP资源
     * @return 客户IP资源
     */
    @Override
    public List<AssetDownip> selectAssetDownipList(AssetDownip assetDownip)
    {
        return assetDownipMapper.selectAssetDownipList(assetDownip);
    }

    /**
     * 新增客户IP资源
     * 
     * @param assetDownip 客户IP资源
     * @return 结果
     */
    @Override
    public int insertAssetDownip(AssetDownip assetDownip)
    {
        return assetDownipMapper.insertAssetDownip(assetDownip);
    }

    /**
     * 修改客户IP资源
     * 
     * @param assetDownip 客户IP资源
     * @return 结果
     */
    @Override
    public int updateAssetDownip(AssetDownip assetDownip)
    {
        return assetDownipMapper.updateAssetDownip(assetDownip);
    }

    /**
     * 批量删除客户IP资源
     * 
     * @param numbers 需要删除的客户IP资源主键
     * @return 结果
     */
    @Override
    public int deleteAssetDownipByNumbers(Long[] numbers)
    {
        return assetDownipMapper.deleteAssetDownipByNumbers(numbers);
    }

    /**
     * 删除客户IP资源信息
     * 
     * @param number 客户IP资源主键
     * @return 结果
     */
    @Override
    public int deleteAssetDownipByNumber(Long number)
    {
        return assetDownipMapper.deleteAssetDownipByNumber(number);
    }
}
