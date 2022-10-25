package com.cmdb.asset.mapper;

import java.util.List;
import com.cmdb.asset.domain.AssetDownip;

/**
 * 客户IP资源Mapper接口
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
public interface AssetDownipMapper 
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
     * 删除客户IP资源
     * 
     * @param number 客户IP资源主键
     * @return 结果
     */
    public int deleteAssetDownipByNumber(Long number);

    /**
     * 批量删除客户IP资源
     * 
     * @param numbers 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAssetDownipByNumbers(Long[] numbers);
}
