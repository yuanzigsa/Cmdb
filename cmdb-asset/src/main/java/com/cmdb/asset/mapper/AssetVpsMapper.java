package com.cmdb.asset.mapper;

import java.util.List;
import com.cmdb.asset.domain.AssetVps;

/**
 * 云主机管理Mapper接口
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public interface AssetVpsMapper 
{
    /**
     * 查询云主机管理
     * 
     * @param number 云主机管理主键
     * @return 云主机管理
     */
    public AssetVps selectAssetVpsByNumber(Long number);

    /**
     * 查询云主机管理列表
     * 
     * @param assetVps 云主机管理
     * @return 云主机管理集合
     */
    public List<AssetVps> selectAssetVpsList(AssetVps assetVps);

    /**
     * 新增云主机管理
     * 
     * @param assetVps 云主机管理
     * @return 结果
     */
    public int insertAssetVps(AssetVps assetVps);

    /**
     * 修改云主机管理
     * 
     * @param assetVps 云主机管理
     * @return 结果
     */
    public int updateAssetVps(AssetVps assetVps);

    /**
     * 删除云主机管理
     * 
     * @param number 云主机管理主键
     * @return 结果
     */
    public int deleteAssetVpsByNumber(Long number);

    /**
     * 批量删除云主机管理
     * 
     * @param numbers 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAssetVpsByNumbers(Long[] numbers);
}
