package com.cmdb.asset.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cmdb.asset.mapper.AssetCabinetMapper;
import com.cmdb.asset.domain.AssetCabinet;
import com.cmdb.asset.service.IAssetCabinetService;

/**
 * 机柜管理Service业务层处理
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
@Service
public class AssetCabinetServiceImpl implements IAssetCabinetService 
{
    @Autowired
    private AssetCabinetMapper assetCabinetMapper;

    /**
     * 查询机柜管理
     * 
     * @param number 机柜管理主键
     * @return 机柜管理
     */
    @Override
    public AssetCabinet selectAssetCabinetByNumber(Long number)
    {
        return assetCabinetMapper.selectAssetCabinetByNumber(number);
    }

    /**
     * 查询机柜管理列表
     * 
     * @param assetCabinet 机柜管理
     * @return 机柜管理
     */
    @Override
    public List<AssetCabinet> selectAssetCabinetList(AssetCabinet assetCabinet)
    {
        return assetCabinetMapper.selectAssetCabinetList(assetCabinet);
    }

    /**
     * 新增机柜管理
     * 
     * @param assetCabinet 机柜管理
     * @return 结果
     */
    @Override
    public int insertAssetCabinet(AssetCabinet assetCabinet)
    {
        return assetCabinetMapper.insertAssetCabinet(assetCabinet);
    }

    /**
     * 修改机柜管理
     * 
     * @param assetCabinet 机柜管理
     * @return 结果
     */
    @Override
    public int updateAssetCabinet(AssetCabinet assetCabinet)
    {
        return assetCabinetMapper.updateAssetCabinet(assetCabinet);
    }

    /**
     * 批量删除机柜管理
     * 
     * @param numbers 需要删除的机柜管理主键
     * @return 结果
     */
    @Override
    public int deleteAssetCabinetByNumbers(Long[] numbers)
    {
        return assetCabinetMapper.deleteAssetCabinetByNumbers(numbers);
    }

    /**
     * 删除机柜管理信息
     * 
     * @param number 机柜管理主键
     * @return 结果
     */
    @Override
    public int deleteAssetCabinetByNumber(Long number)
    {
        return assetCabinetMapper.deleteAssetCabinetByNumber(number);
    }
}
