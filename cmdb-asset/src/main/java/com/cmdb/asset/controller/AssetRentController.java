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
import com.cmdb.asset.domain.AssetRent;
import com.cmdb.asset.service.IAssetRentService;
import com.cmdb.common.utils.poi.ExcelUtil;
import com.cmdb.common.core.page.TableDataInfo;

/**
 * 租用资产Controller
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
@RestController
@RequestMapping("/asset/rent")
public class AssetRentController extends BaseController
{
    @Autowired
    private IAssetRentService assetRentService;

    /**
     * 查询租用资产列表
     */
    @PreAuthorize("@ss.hasPermi('asset:rent:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssetRent assetRent)
    {
        startPage();
        List<AssetRent> list = assetRentService.selectAssetRentList(assetRent);
        return getDataTable(list);
    }

    /**
     * 导出租用资产列表
     */
    @PreAuthorize("@ss.hasPermi('asset:rent:export')")
    @Log(title = "租用资产", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssetRent assetRent)
    {
        List<AssetRent> list = assetRentService.selectAssetRentList(assetRent);
        ExcelUtil<AssetRent> util = new ExcelUtil<AssetRent>(AssetRent.class);
        util.exportExcel(response, list, "租用资产数据");
    }

    /**
     * 获取租用资产详细信息
     */
    @PreAuthorize("@ss.hasPermi('asset:rent:query')")
    @GetMapping(value = "/{number}")
    public AjaxResult getInfo(@PathVariable("number") Long number)
    {
        return AjaxResult.success(assetRentService.selectAssetRentByNumber(number));
    }

    /**
     * 新增租用资产
     */
    @PreAuthorize("@ss.hasPermi('asset:rent:add')")
    @Log(title = "租用资产", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssetRent assetRent)
    {
        return toAjax(assetRentService.insertAssetRent(assetRent));
    }

    /**
     * 修改租用资产
     */
    @PreAuthorize("@ss.hasPermi('asset:rent:edit')")
    @Log(title = "租用资产", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssetRent assetRent)
    {
        return toAjax(assetRentService.updateAssetRent(assetRent));
    }

    /**
     * 删除租用资产
     */
    @PreAuthorize("@ss.hasPermi('asset:rent:remove')")
    @Log(title = "租用资产", businessType = BusinessType.DELETE)
	@DeleteMapping("/{numbers}")
    public AjaxResult remove(@PathVariable Long[] numbers)
    {
        return toAjax(assetRentService.deleteAssetRentByNumbers(numbers));
    }
}
