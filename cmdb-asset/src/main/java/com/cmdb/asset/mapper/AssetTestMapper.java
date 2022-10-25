package com.cmdb.asset.mapper;

import java.util.List;
import com.cmdb.asset.domain.AssetTest;

/**
 * 测试机管理Mapper接口
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
public interface AssetTestMapper 
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
     * 删除测试机管理
     * 
     * @param number 测试机管理主键
     * @return 结果
     */
    public int deleteAssetTestByNumber(Long number);

    /**
     * 批量删除测试机管理
     * 
     * @param numbers 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAssetTestByNumbers(Long[] numbers);
}
