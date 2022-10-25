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
import com.cmdb.asset.domain.AssetVps;
import com.cmdb.asset.service.IAssetVpsService;
import com.cmdb.common.utils.poi.ExcelUtil;
import com.cmdb.common.core.page.TableDataInfo;

/**
 * 云主机管理Controller
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
@RestController
@RequestMapping("/asset/vps")
public class AssetVpsController extends BaseController
{
    @Autowired
    private IAssetVpsService assetVpsService;

    /**
     * 查询云主机管理列表
     */
    @PreAuthorize("@ss.hasPermi('asset:vps:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssetVps assetVps)
    {
        startPage();
        List<AssetVps> list = assetVpsService.selectAssetVpsList(assetVps);
        return getDataTable(list);
    }

    /**
     * 导出云主机管理列表
     */
    @PreAuthorize("@ss.hasPermi('asset:vps:export')")
    @Log(title = "云主机管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssetVps assetVps)
    {
        List<AssetVps> list = assetVpsService.selectAssetVpsList(assetVps);
        ExcelUtil<AssetVps> util = new ExcelUtil<AssetVps>(AssetVps.class);
        util.exportExcel(response, list, "云主机管理数据");
    }

    /**
     * 获取云主机管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('asset:vps:query')")
    @GetMapping(value = "/{number}")
    public AjaxResult getInfo(@PathVariable("number") Long number)
    {
        return AjaxResult.success(assetVpsService.selectAssetVpsByNumber(number));
    }

    /**
     * 新增云主机管理
     */
    @PreAuthorize("@ss.hasPermi('asset:vps:add')")
    @Log(title = "云主机管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssetVps assetVps)
    {
        return toAjax(assetVpsService.insertAssetVps(assetVps));
    }

    /**
     * 修改云主机管理
     */
    @PreAuthorize("@ss.hasPermi('asset:vps:edit')")
    @Log(title = "云主机管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssetVps assetVps)
    {
        return toAjax(assetVpsService.updateAssetVps(assetVps));
    }

    /**
     * 删除云主机管理
     */
    @PreAuthorize("@ss.hasPermi('asset:vps:remove')")
    @Log(title = "云主机管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{numbers}")
    public AjaxResult remove(@PathVariable Long[] numbers)
    {
        return toAjax(assetVpsService.deleteAssetVpsByNumbers(numbers));
    }
}
