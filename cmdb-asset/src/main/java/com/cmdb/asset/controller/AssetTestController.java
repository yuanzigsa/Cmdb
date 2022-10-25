package com.cmdb.asset.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.cmdb.common.annotation.Log;
import com.cmdb.common.core.controller.BaseController;
import com.cmdb.common.core.domain.AjaxResult;
import com.cmdb.common.enums.BusinessType;
import com.cmdb.asset.domain.AssetTest;
import com.cmdb.asset.service.IAssetTestService;
import com.cmdb.common.utils.poi.ExcelUtil;
import com.cmdb.common.core.page.TableDataInfo;

/**
 * 测试机管理Controller
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
@RestController
@RequestMapping("/asset/test")
public class AssetTestController extends BaseController
{
    @Autowired
    private IAssetTestService assetTestService;

    /**
     * 查询测试机管理列表
     */
    @PreAuthorize("@ss.hasPermi('asset:test:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssetTest assetTest)
    {
        startPage();
        List<AssetTest> list = assetTestService.selectAssetTestList(assetTest);
        return getDataTable(list);
    }

    /**
     * 导出测试机管理列表
     */
    @PreAuthorize("@ss.hasPermi('asset:test:export')")
    @Log(title = "测试机管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssetTest assetTest)
    {
        List<AssetTest> list = assetTestService.selectAssetTestList(assetTest);
        ExcelUtil<AssetTest> util = new ExcelUtil<AssetTest>(AssetTest.class);
        util.exportExcel(response, list, "测试机管理数据");
    }

    /**
     * 获取测试机管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('asset:test:query')")
    @GetMapping(value = "/{number}")
    public AjaxResult getInfo(@PathVariable("number") Long number)
    {
        return AjaxResult.success(assetTestService.selectAssetTestByNumber(number));
    }

    /**
     * 新增测试机管理
     */
    @PreAuthorize("@ss.hasPermi('asset:test:add')")
    @Log(title = "测试机管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssetTest assetTest)
    {
        return toAjax(assetTestService.insertAssetTest(assetTest));
    }

    /**
     * 修改测试机管理
     */
    @PreAuthorize("@ss.hasPermi('asset:test:edit')")
    @Log(title = "测试机管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssetTest assetTest)
    {
        return toAjax(assetTestService.updateAssetTest(assetTest));
    }

    /**
     * 删除测试机管理
     */
    @PreAuthorize("@ss.hasPermi('asset:test:remove')")
    @Log(title = "测试机管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{numbers}")
    public AjaxResult remove(@PathVariable Long[] numbers)
    {
        return toAjax(assetTestService.deleteAssetTestByNumbers(numbers));
    }
}
