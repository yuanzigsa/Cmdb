package com.cmdb.asset.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cmdb.asset.mapper.AssetOwnMapper;
import com.cmdb.asset.domain.AssetOwn;
import com.cmdb.asset.service.IAssetOwnService;

/**
 * 自有资产Service业务层处理
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
@Service
public class AssetOwnServiceImpl implements IAssetOwnService 
{
    @Autowired
    private AssetOwnMapper assetOwnMapper;

    /**
     * 查询自有资产
     * 
     * @param number 自有资产主键
     * @return 自有资产
     */
    @Override
    public AssetOwn selectAssetOwnByNumber(Long number)
    {
        return assetOwnMapper.selectAssetOwnByNumber(number);
    }

    /**
     * 查询自有资产列表
     * 
     * @param assetOwn 自有资产
     * @return 自有资产
     */
    @Override
    public List<AssetOwn> selectAssetOwnList(AssetOwn assetOwn)
    {
        return assetOwnMapper.selectAssetOwnList(assetOwn);
    }

    /**
     * 新增自有资产
     * 
     * @param assetOwn 自有资产
     * @return 结果
     */
    @Override
    public int insertAssetOwn(AssetOwn assetOwn)
    {
        return assetOwnMapper.insertAssetOwn(assetOwn);
    }

    /**
     * 修改自有资产
     * 
     * @param assetOwn 自有资产
     * @return 结果
     */
    @Override
    public int updateAssetOwn(AssetOwn assetOwn)
    {
        return assetOwnMapper.updateAssetOwn(assetOwn);
    }

    /**
     * 批量删除自有资产
     * 
     * @param numbers 需要删除的自有资产主键
     * @return 结果
     */
    @Override
    public int deleteAssetOwnByNumbers(Long[] numbers)
    {
        return assetOwnMapper.deleteAssetOwnByNumbers(numbers);
    }

    /**
     * 删除自有资产信息
     * 
     * @param number 自有资产主键
     * @return 结果
     */
    @Override
    public int deleteAssetOwnByNumber(Long number)
    {
        return assetOwnMapper.deleteAssetOwnByNumber(number);
    }
}
