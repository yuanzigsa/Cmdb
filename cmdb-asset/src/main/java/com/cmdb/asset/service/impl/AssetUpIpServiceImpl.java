package com.cmdb.asset.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cmdb.asset.mapper.AssetUpIpMapper;
import com.cmdb.asset.domain.AssetUpIp;
import com.cmdb.asset.service.IAssetUpIpService;

/**
 * 上联IP资源Service业务层处理
 * 
 * @author yuanzi
 * @date 2022-10-19
 */
@Service
public class AssetUpIpServiceImpl implements IAssetUpIpService 
{
    @Autowired
    private AssetUpIpMapper assetUpIpMapper;

    /**
     * 查询上联IP资源
     * 
     * @param number 上联IP资源主键
     * @return 上联IP资源
     */
    @Override
    public AssetUpIp selectAssetUpIpByNumber(Long number)
    {
        return assetUpIpMapper.selectAssetUpIpByNumber(number);
    }

    /**
     * 查询上联IP资源列表
     * 
     * @param assetUpIp 上联IP资源
     * @return 上联IP资源
     */
    @Override
    public List<AssetUpIp> selectAssetUpIpList(AssetUpIp assetUpIp)
    {
        return assetUpIpMapper.selectAssetUpIpList(assetUpIp);
    }

    /**
     * 新增上联IP资源
     * 
     * @param assetUpIp 上联IP资源
     * @return 结果
     */
    @Override
    public int insertAssetUpIp(AssetUpIp assetUpIp)
    {
        return assetUpIpMapper.insertAssetUpIp(assetUpIp);
    }

    /**
     * 修改上联IP资源
     * 
     * @param assetUpIp 上联IP资源
     * @return 结果
     */
    @Override
    public int updateAssetUpIp(AssetUpIp assetUpIp)
    {
        return assetUpIpMapper.updateAssetUpIp(assetUpIp);
    }

    /**
     * 批量删除上联IP资源
     * 
     * @param numbers 需要删除的上联IP资源主键
     * @return 结果
     */
    @Override
    public int deleteAssetUpIpByNumbers(Long[] numbers)
    {
        return assetUpIpMapper.deleteAssetUpIpByNumbers(numbers);
    }

    /**
     * 删除上联IP资源信息
     * 
     * @param number 上联IP资源主键
     * @return 结果
     */
    @Override
    public int deleteAssetUpIpByNumber(Long number)
    {
        return assetUpIpMapper.deleteAssetUpIpByNumber(number);
    }
}
