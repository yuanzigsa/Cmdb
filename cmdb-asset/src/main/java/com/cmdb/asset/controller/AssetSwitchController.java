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
import com.cmdb.asset.domain.AssetSwitch;
import com.cmdb.asset.service.IAssetSwitchService;
import com.cmdb.common.utils.poi.ExcelUtil;
import com.cmdb.common.core.page.TableDataInfo;

/**
 * 交换机管理Controller
 * 
 * @author yuanzi
 * @date 2022-10-19
 */
@RestController
@RequestMapping("/asset/switchMan")
public class AssetSwitchController extends BaseController
{
    @Autowired
    private IAssetSwitchService assetSwitchService;

    /**
     * 查询交换机管理列表
     */
    @PreAuthorize("@ss.hasPermi('asset:switchMan:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssetSwitch assetSwitch)
    {
        startPage();
        List<AssetSwitch> list = assetSwitchService.selectAssetSwitchList(assetSwitch);
        return getDataTable(list);
    }

    /**
     * 导出交换机管理列表
     */
    @PreAuthorize("@ss.hasPermi('asset:switchMan:export')")
    @Log(title = "交换机管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssetSwitch assetSwitch)
    {
        List<AssetSwitch> list = assetSwitchService.selectAssetSwitchList(assetSwitch);
        ExcelUtil<AssetSwitch> util = new ExcelUtil<AssetSwitch>(AssetSwitch.class);
        util.exportExcel(response, list, "交换机管理数据");
    }

    /**
     * 获取交换机管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('asset:switchMan:query')")
    @GetMapping(value = "/{number}")
    public AjaxResult getInfo(@PathVariable("number") Long number)
    {
        return AjaxResult.success(assetSwitchService.selectAssetSwitchByNumber(number));
    }

    /**
     * 新增交换机管理
     */
    @PreAuthorize("@ss.hasPermi('asset:switchMan:add')")
    @Log(title = "交换机管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssetSwitch assetSwitch)
    {
        return toAjax(assetSwitchService.insertAssetSwitch(assetSwitch));
    }

    /**
     * 修改交换机管理
     */
    @PreAuthorize("@ss.hasPermi('asset:switchMan:edit')")
    @Log(title = "交换机管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssetSwitch assetSwitch)
    {
        return toAjax(assetSwitchService.updateAssetSwitch(assetSwitch));
    }

    /**
     * 删除交换机管理
     */
    @PreAuthorize("@ss.hasPermi('asset:switchMan:remove')")
    @Log(title = "交换机管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{numbers}")
    public AjaxResult remove(@PathVariable Long[] numbers)
    {
        return toAjax(assetSwitchService.deleteAssetSwitchByNumbers(numbers));
    }
}
