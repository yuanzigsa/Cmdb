package com.cmdb.asset.service;

import java.util.List;
import com.cmdb.asset.domain.AssetTest;

/**
 * 测试机管理Service接口
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
public interface IAssetTestService 
{
    /**
     * 查询测试机管理
     * 
     * @param number 测试机管理主键
     * @return 测试机管理
     */
    public AssetTest selectAssetTestByNumber(Long number);

    /**
     * 查询测试机管理列表
     * 
     * @param assetTest 测试机管理
     * @return 测试机管理集合
     */
    public List<AssetTest> selectAssetTestList(AssetTest assetTest);

    /**
     * 新增测试机管理
     * 
     * @param assetTest 测试机管理
     * @return 结果
     */
    public int insertAssetTest(AssetTest assetTest);

    /**
     * 修改测试机管理
     * 
     * @param assetTest 测试机管理
     * @return 结果
     */
    public int updateAssetTest(AssetTest assetTest);

    /**
     * 批量删除测试机管理
     * 
     * @param numbers 需要删除的测试机管理主键集合
     * @return 结果
     */
    public int deleteAssetTestByNumbers(Long[] numbers);

    /**
     * 删除测试机管理信息
     * 
     * @param number 测试机管理主键
     * @return 结果
     */
    public int deleteAssetTestByNumber(Long number);
}
