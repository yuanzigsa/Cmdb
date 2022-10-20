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
import com.cmdb.asset.domain.AssetDownip;
import com.cmdb.asset.service.IAssetDownipService;
import com.cmdb.common.utils.poi.ExcelUtil;
import com.cmdb.common.core.page.TableDataInfo;

/**
 * 客户IP资源Controller
 * 
 * @author yuanzi
 * @date 2022-10-19
 */
@RestController
@RequestMapping("/asset/downip")
public class AssetDownipController extends BaseController
{
    @Autowired
    private IAssetDownipService assetDownipService;

    /**
     * 查询客户IP资源列表
     */
    @PreAuthorize("@ss.hasPermi('asset:downip:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssetDownip assetDownip)
    {
        startPage();
        List<AssetDownip> list = assetDownipService.selectAssetDownipList(assetDownip);
        return getDataTable(list);
    }

    /**
     * 导出客户IP资源列表
     */
    @PreAuthorize("@ss.hasPermi('asset:downip:export')")
    @Log(title = "客户IP资源", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssetDownip assetDownip)
    {
        List<AssetDownip> list = assetDownipService.selectAssetDownipList(assetDownip);
        ExcelUtil<AssetDownip> util = new ExcelUtil<AssetDownip>(AssetDownip.class);
        util.exportExcel(response, list, "客户IP资源数据");
    }

    /**
     * 获取客户IP资源详细信息
     */
    @PreAuthorize("@ss.hasPermi('asset:downip:query')")
    @GetMapping(value = "/{number}")
    public AjaxResult getInfo(@PathVariable("number") Long number)
    {
        return AjaxResult.success(assetDownipService.selectAssetDownipByNumber(number));
    }

    /**
     * 新增客户IP资源
     */
    @PreAuthorize("@ss.hasPermi('asset:downip:add')")
    @Log(title = "客户IP资源", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssetDownip assetDownip)
    {
        return toAjax(assetDownipService.insertAssetDownip(assetDownip));
    }

    /**
     * 修改客户IP资源
     */
    @PreAuthorize("@ss.hasPermi('asset:downip:edit')")
    @Log(title = "客户IP资源", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssetDownip assetDownip)
    {
        return toAjax(assetDownipService.updateAssetDownip(assetDownip));
    }

    /**
     * 删除客户IP资源
     */
    @PreAuthorize("@ss.hasPermi('asset:downip:remove')")
    @Log(title = "客户IP资源", businessType = BusinessType.DELETE)
	@DeleteMapping("/{numbers}")
    public AjaxResult remove(@PathVariable Long[] numbers)
    {
        return toAjax(assetDownipService.deleteAssetDownipByNumbers(numbers));
    }
}
