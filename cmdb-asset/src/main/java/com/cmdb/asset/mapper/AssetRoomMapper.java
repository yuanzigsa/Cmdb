package com.cmdb.asset.mapper;

import java.util.List;
import com.cmdb.asset.domain.AssetRoom;

/**
 * 机房管理Mapper接口
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
public interface AssetRoomMapper 
{
    /**
     * 查询机房管理
     * 
     * @param number 机房管理主键
     * @return 机房管理
     */
    public AssetRoom selectAssetRoomByNumber(Long number);

    /**
     * 查询机房管理列表
     * 
     * @param assetRoom 机房管理
     * @return 机房管理集合
     */
    public List<AssetRoom> selectAssetRoomList(AssetRoom assetRoom);

    /**
     * 新增机房管理
     * 
     * @param assetRoom 机房管理
     * @return 结果
     */
    public int insertAssetRoom(AssetRoom assetRoom);

    /**
     * 修改机房管理
     * 
     * @param assetRoom 机房管理
     * @return 结果
     */
    public int updateAssetRoom(AssetRoom assetRoom);

    /**
     * 删除机房管理
     * 
     * @param number 机房管理主键
     * @return 结果
     */
    public int deleteAssetRoomByNumber(Long number);

    /**
     * 批量删除机房管理
     * 
     * @param numbers 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAssetRoomByNumbers(Long[] numbers);
}
