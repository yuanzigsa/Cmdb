package com.cmdb.asset.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cmdb.asset.mapper.AssetTestMapper;
import com.cmdb.asset.domain.AssetTest;
import com.cmdb.asset.service.IAssetTestService;

/**
 * 测试机管理Service业务层处理
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
@Service
public class AssetTestServiceImpl implements IAssetTestService 
{
    @Autowired
    private AssetTestMapper assetTestMapper;

    /**
     * 查询测试机管理
     * 
     * @param number 测试机管理主键
     * @return 测试机管理
     */
    @Override
    public AssetTest selectAssetTestByNumber(Long number)
    {
        return assetTestMapper.selectAssetTestByNumber(number);
    }

    /**
     * 查询测试机管理列表
     * 
     * @param assetTest 测试机管理
     * @return 测试机管理
     */
    @Override
    public List<AssetTest> selectAssetTestList(AssetTest assetTest)
    {
        return assetTestMapper.selectAssetTestList(assetTest);
    }

    /**
     * 新增测试机管理
     * 
     * @param assetTest 测试机管理
     * @return 结果
     */
    @Override
    public int insertAssetTest(AssetTest assetTest)
    {
        return assetTestMapper.insertAssetTest(assetTest);
    }

    /**
     * 修改测试机管理
     * 
     * @param assetTest 测试机管理
     * @return 结果
     */
    @Override
    public int updateAssetTest(AssetTest assetTest)
    {
        return assetTestMapper.updateAssetTest(assetTest);
    }

    /**
     * 批量删除测试机管理
     * 
     * @param numbers 需要删除的测试机管理主键
     * @return 结果
     */
    @Override
    public int deleteAssetTestByNumbers(Long[] numbers)
    {
        return assetTestMapper.deleteAssetTestByNumbers(numbers);
    }

    /**
     * 删除测试机管理信息
     * 
     * @param number 测试机管理主键
     * @return 结果
     */
    @Override
    public int deleteAssetTestByNumber(Long number)
    {
        return assetTestMapper.deleteAssetTestByNumber(number);
    }
}
