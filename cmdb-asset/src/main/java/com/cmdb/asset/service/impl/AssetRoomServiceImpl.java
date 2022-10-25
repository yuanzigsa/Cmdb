package com.cmdb.asset.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cmdb.asset.mapper.AssetRoomMapper;
import com.cmdb.asset.domain.AssetRoom;
import com.cmdb.asset.service.IAssetRoomService;

/**
 * 机房管理Service业务层处理
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
@Service
public class AssetRoomServiceImpl implements IAssetRoomService 
{
    @Autowired
    private AssetRoomMapper assetRoomMapper;

    /**
     * 查询机房管理
     * 
     * @param number 机房管理主键
     * @return 机房管理
     */
    @Override
    public AssetRoom selectAssetRoomByNumber(Long number)
    {
        return assetRoomMapper.selectAssetRoomByNumber(number);
    }

    /**
     * 查询机房管理列表
     * 
     * @param assetRoom 机房管理
     * @return 机房管理
     */
    @Override
    public List<AssetRoom> selectAssetRoomList(AssetRoom assetRoom)
    {
        return assetRoomMapper.selectAssetRoomList(assetRoom);
    }

    /**
     * 新增机房管理
     * 
     * @param assetRoom 机房管理
     * @return 结果
     */
    @Override
    public int insertAssetRoom(AssetRoom assetRoom)
    {
        return assetRoomMapper.insertAssetRoom(assetRoom);
    }

    /**
     * 修改机房管理
     * 
     * @param assetRoom 机房管理
     * @return 结果
     */
    @Override
    public int updateAssetRoom(AssetRoom assetRoom)
    {
        return assetRoomMapper.updateAssetRoom(assetRoom);
    }

    /**
     * 批量删除机房管理
     * 
     * @param numbers 需要删除的机房管理主键
     * @return 结果
     */
    @Override
    public int deleteAssetRoomByNumbers(Long[] numbers)
    {
        return assetRoomMapper.deleteAssetRoomByNumbers(numbers);
    }

    /**
     * 删除机房管理信息
     * 
     * @param number 机房管理主键
     * @return 结果
     */
    @Override
    public int deleteAssetRoomByNumber(Long number)
    {
        return assetRoomMapper.deleteAssetRoomByNumber(number);
    }
}
