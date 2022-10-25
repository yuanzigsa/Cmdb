package com.cmdb.asset.mapper;

import java.util.List;
import com.cmdb.asset.domain.AssetRent;

/**
 * 租用资产Mapper接口
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public interface AssetRentMapper 
{
    /**
     * 查询租用资产
     * 
     * @param number 租用资产主键
     * @return 租用资产
     */
    public AssetRent selectAssetRentByNumber(Long number);

    /**
     * 查询租用资产列表
     * 
     * @param assetRent 租用资产
     * @return 租用资产集合
     */
    public List<AssetRent> selectAssetRentList(AssetRent assetRent);

    /**
     * 新增租用资产
     * 
     * @param assetRent 租用资产
     * @return 结果
     */
    public int insertAssetRent(AssetRent assetRent);

    /**
     * 修改租用资产
     * 
     * @param assetRent 租用资产
     * @return 结果
     */
    public int updateAssetRent(AssetRent assetRent);

    /**
     * 删除租用资产
     * 
     * @param number 租用资产主键
     * @return 结果
     */
    public int deleteAssetRentByNumber(Long number);

    /**
     * 批量删除租用资产
     * 
     * @param numbers 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAssetRentByNumbers(Long[] numbers);
}
