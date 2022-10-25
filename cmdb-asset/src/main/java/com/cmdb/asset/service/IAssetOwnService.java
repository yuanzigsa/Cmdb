package com.cmdb.asset.service;

import java.util.List;
import com.cmdb.asset.domain.AssetOwn;

/**
 * 自有资产Service接口
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public interface IAssetOwnService 
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
     * 批量删除自有资产
     * 
     * @param numbers 需要删除的自有资产主键集合
     * @return 结果
     */
    public int deleteAssetOwnByNumbers(Long[] numbers);

    /**
     * 删除自有资产信息
     * 
     * @param number 自有资产主键
     * @return 结果
     */
    public int deleteAssetOwnByNumber(Long number);
}
