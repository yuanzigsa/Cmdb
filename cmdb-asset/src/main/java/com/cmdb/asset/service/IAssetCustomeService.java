package com.cmdb.asset.service;

import java.util.List;
import com.cmdb.asset.domain.AssetCustome;

/**
 * 客户资产Service接口
 * 
 * @author yuanzi
 * @date 2022-10-20
 */
public interface IAssetCustomeService 
{
    /**
     * 查询客户资产
     * 
     * @param number 客户资产主键
     * @return 客户资产
     */
    public AssetCustome selectAssetCustomeByNumber(Long number);

    /**
     * 查询客户资产列表
     * 
     * @param assetCustome 客户资产
     * @return 客户资产集合
     */
    public List<AssetCustome> selectAssetCustomeList(AssetCustome assetCustome);

    /**
     * 新增客户资产
     * 
     * @param assetCustome 客户资产
     * @return 结果
     */
    public int insertAssetCustome(AssetCustome assetCustome);

    /**
     * 修改客户资产
     * 
     * @param assetCustome 客户资产
     * @return 结果
     */
    public int updateAssetCustome(AssetCustome assetCustome);

    /**
     * 批量删除客户资产
     * 
     * @param numbers 需要删除的客户资产主键集合
     * @return 结果
     */
    public int deleteAssetCustomeByNumbers(Long[] numbers);

    /**
     * 删除客户资产信息
     * 
     * @param number 客户资产主键
     * @return 结果
     */
    public int deleteAssetCustomeByNumber(Long number);
}
