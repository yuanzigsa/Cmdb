package com.cmdb.asset.mapper;

import java.util.List;
import com.cmdb.asset.domain.AssetOwn;

/**
 * 自有资产Mapper接口
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public interface AssetOwnMapper 
{
    /**
     * 查询自有资产
     * 
     * @param number 自有资产主键
     * @return 自有资产
     */
    public AssetOwn selectAssetOwnByNumber(Long number);

    /**
     * 查询自有资产列表
     * 
     * @param assetOwn 自有资产
     * @return 自有资产集合
     */
    public List<AssetOwn> selectAssetOwnList(AssetOwn assetOwn);

    /**
     * 新增自有资产
     * 
     * @param assetOwn 自有资产
     * @return 结果
     */
    public int insertAssetOwn(AssetOwn assetOwn);

    /**
     * 修改自有资产
     * 
     * @param assetOwn 自有资产
     * @return 结果
     */
    public int updateAssetOwn(AssetOwn assetOwn);

    /**
     * 删除自有资产
     * 
     * @param number 自有资产主键
     * @return 结果
     */
    public int deleteAssetOwnByNumber(Long number);

    /**
     * 批量删除自有资产
     * 
     * @param numbers 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAssetOwnByNumbers(Long[] numbers);
}
