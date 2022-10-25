package com.cmdb.asset.service;

import java.util.List;
import com.cmdb.asset.domain.AssetDownip;

/**
 * 客户IP资源Service接口
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
public interface IAssetDownipService 
{
    /**
     * 查询客户IP资源
     * 
     * @param number 客户IP资源主键
     * @return 客户IP资源
     */
    public AssetDownip selectAssetDownipByNumber(Long number);

    /**
     * 查询客户IP资源列表
     * 
     * @param assetDownip 客户IP资源
     * @return 客户IP资源集合
     */
    public List<AssetDownip> selectAssetDownipList(AssetDownip assetDownip);

    /**
     * 新增客户IP资源
     * 
     * @param assetDownip 客户IP资源
     * @return 结果
     */
    public int insertAssetDownip(AssetDownip assetDownip);

    /**
     * 修改客户IP资源
     * 
     * @param assetDownip 客户IP资源
     * @return 结果
     */
    public int updateAssetDownip(AssetDownip assetDownip);

    /**
     * 批量删除客户IP资源
     * 
     * @param numbers 需要删除的客户IP资源主键集合
     * @return 结果
     */
    public int deleteAssetDownipByNumbers(Long[] numbers);

    /**
     * 删除客户IP资源信息
     * 
     * @param number 客户IP资源主键
     * @return 结果
     */
    public int deleteAssetDownipByNumber(Long number);
}
