package com.cmdb.asset.mapper;

import java.util.List;
import com.cmdb.asset.domain.AssetCabinet;

/**
 * 机柜管理Mapper接口
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
public interface AssetCabinetMapper 
{
    /**
     * 查询机柜管理
     * 
     * @param number 机柜管理主键
     * @return 机柜管理
     */
    public AssetCabinet selectAssetCabinetByNumber(Long number);

    /**
     * 查询机柜管理列表
     * 
     * @param assetCabinet 机柜管理
     * @return 机柜管理集合
     */
    public List<AssetCabinet> selectAssetCabinetList(AssetCabinet assetCabinet);

    /**
     * 新增机柜管理
     * 
     * @param assetCabinet 机柜管理
     * @return 结果
     */
    public int insertAssetCabinet(AssetCabinet assetCabinet);

    /**
     * 修改机柜管理
     * 
     * @param assetCabinet 机柜管理
     * @return 结果
     */
    public int updateAssetCabinet(AssetCabinet assetCabinet);

    /**
     * 删除机柜管理
     * 
     * @param number 机柜管理主键
     * @return 结果
     */
    public int deleteAssetCabinetByNumber(Long number);

    /**
     * 批量删除机柜管理
     * 
     * @param numbers 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAssetCabinetByNumbers(Long[] numbers);
}
