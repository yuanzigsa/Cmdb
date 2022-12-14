package com.cmdb.asset.service;

import java.util.List;
import com.cmdb.asset.domain.AssetUpIp;

/**
 * 上联IP资源Service接口
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
public interface IAssetUpIpService 
{
    /**
     * 查询上联IP资源
     * 
     * @param number 上联IP资源主键
     * @return 上联IP资源
     */
    public AssetUpIp selectAssetUpIpByNumber(Long number);

    /**
     * 查询上联IP资源列表
     * 
     * @param assetUpIp 上联IP资源
     * @return 上联IP资源集合
     */
    public List<AssetUpIp> selectAssetUpIpList(AssetUpIp assetUpIp);

    /**
     * 新增上联IP资源
     * 
     * @param assetUpIp 上联IP资源
     * @return 结果
     */
    public int insertAssetUpIp(AssetUpIp assetUpIp);

    /**
     * 修改上联IP资源
     * 
     * @param assetUpIp 上联IP资源
     * @return 结果
     */
    public int updateAssetUpIp(AssetUpIp assetUpIp);

    /**
     * 批量删除上联IP资源
     * 
     * @param numbers 需要删除的上联IP资源主键集合
     * @return 结果
     */
    public int deleteAssetUpIpByNumbers(Long[] numbers);

    /**
     * 删除上联IP资源信息
     * 
     * @param number 上联IP资源主键
     * @return 结果
     */
    public int deleteAssetUpIpByNumber(Long number);
}
