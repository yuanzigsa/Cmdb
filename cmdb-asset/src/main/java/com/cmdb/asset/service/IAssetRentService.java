package com.cmdb.asset.service;

import java.util.List;
import com.cmdb.asset.domain.AssetRent;

/**
 * 租用资产Service接口
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public interface IAssetRentService 
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
     * 批量删除租用资产
     * 
     * @param numbers 需要删除的租用资产主键集合
     * @return 结果
     */
    public int deleteAssetRentByNumbers(Long[] numbers);

    /**
     * 删除租用资产信息
     * 
     * @param number 租用资产主键
     * @return 结果
     */
    public int deleteAssetRentByNumber(Long number);
}
