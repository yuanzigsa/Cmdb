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
import com.cmdb.asset.domain.AssetCustome;
import com.cmdb.asset.service.IAssetCustomeService;
import com.cmdb.common.utils.poi.ExcelUtil;
import com.cmdb.common.core.page.TableDataInfo;

/**
 * 客户资产Controller
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
@RestController
@RequestMapping("/asset/custome")
public class AssetCustomeController extends BaseController
{
    @Autowired
    private IAssetCustomeService assetCustomeService;

    /**
     * 查询客户资产列表
     */
    @PreAuthorize("@ss.hasPermi('asset:custome:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssetCustome assetCustome)
    {
        startPage();
        List<AssetCustome> list = assetCustomeService.selectAssetCustomeList(assetCustome);
        return getDataTable(list);
    }

    /**
     * 导出客户资产列表
     */
    @PreAuthorize("@ss.hasPermi('asset:custome:export')")
    @Log(title = "客户资产", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssetCustome assetCustome)
    {
        List<AssetCustome> list = assetCustomeService.selectAssetCustomeList(assetCustome);
        ExcelUtil<AssetCustome> util = new ExcelUtil<AssetCustome>(AssetCustome.class);
        util.exportExcel(response, list, "客户资产数据");
    }

    /**
     * 获取客户资产详细信息
     */
    @PreAuthorize("@ss.hasPermi('asset:custome:query')")
    @GetMapping(value = "/{number}")
    public AjaxResult getInfo(@PathVariable("number") Long number)
    {
        return AjaxResult.success(assetCustomeService.selectAssetCustomeByNumber(number));
    }

    /**
     * 新增客户资产
     */
    @PreAuthorize("@ss.hasPermi('asset:custome:add')")
    @Log(title = "客户资产", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssetCustome assetCustome)
    {
        return toAjax(assetCustomeService.insertAssetCustome(assetCustome));
    }

    /**
     * 修改客户资产
     */
    @PreAuthorize("@ss.hasPermi('asset:custome:edit')")
    @Log(title = "客户资产", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssetCustome assetCustome)
    {
        return toAjax(assetCustomeService.updateAssetCustome(assetCustome));
    }

    /**
     * 删除客户资产
     */
    @PreAuthorize("@ss.hasPermi('asset:custome:remove')")
    @Log(title = "客户资产", businessType = BusinessType.DELETE)
	@DeleteMapping("/{numbers}")
    public AjaxResult remove(@PathVariable Long[] numbers)
    {
        return toAjax(assetCustomeService.deleteAssetCustomeByNumbers(numbers));
    }
}
