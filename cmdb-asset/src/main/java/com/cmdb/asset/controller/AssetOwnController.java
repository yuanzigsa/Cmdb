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
import com.cmdb.asset.domain.AssetOwn;
import com.cmdb.asset.service.IAssetOwnService;
import com.cmdb.common.utils.poi.ExcelUtil;
import com.cmdb.common.core.page.TableDataInfo;

/**
 * 自有资产Controller
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
@RestController
@RequestMapping("/asset/own")
public class AssetOwnController extends BaseController
{
    @Autowired
    private IAssetOwnService assetOwnService;

    /**
     * 查询自有资产列表
     */
    @PreAuthorize("@ss.hasPermi('asset:own:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssetOwn assetOwn)
    {
        startPage();
        List<AssetOwn> list = assetOwnService.selectAssetOwnList(assetOwn);
        return getDataTable(list);
    }

    /**
     * 导出自有资产列表
     */
    @PreAuthorize("@ss.hasPermi('asset:own:export')")
    @Log(title = "自有资产", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssetOwn assetOwn)
    {
        List<AssetOwn> list = assetOwnService.selectAssetOwnList(assetOwn);
        ExcelUtil<AssetOwn> util = new ExcelUtil<AssetOwn>(AssetOwn.class);
        util.exportExcel(response, list, "自有资产数据");
    }

    /**
     * 获取自有资产详细信息
     */
    @PreAuthorize("@ss.hasPermi('asset:own:query')")
    @GetMapping(value = "/{number}")
    public AjaxResult getInfo(@PathVariable("number") Long number)
    {
        return AjaxResult.success(assetOwnService.selectAssetOwnByNumber(number));
    }

    /**
     * 新增自有资产
     */
    @PreAuthorize("@ss.hasPermi('asset:own:add')")
    @Log(title = "自有资产", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssetOwn assetOwn)
    {
        return toAjax(assetOwnService.insertAssetOwn(assetOwn));
    }

    /**
     * 修改自有资产
     */
    @PreAuthorize("@ss.hasPermi('asset:own:edit')")
    @Log(title = "自有资产", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssetOwn assetOwn)
    {
        return toAjax(assetOwnService.updateAssetOwn(assetOwn));
    }

    /**
     * 删除自有资产
     */
    @PreAuthorize("@ss.hasPermi('asset:own:remove')")
    @Log(title = "自有资产", businessType = BusinessType.DELETE)
	@DeleteMapping("/{numbers}")
    public AjaxResult remove(@PathVariable Long[] numbers)
    {
        return toAjax(assetOwnService.deleteAssetOwnByNumbers(numbers));
    }
}
