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
import com.cmdb.asset.domain.AssetCabinet;
import com.cmdb.asset.service.IAssetCabinetService;
import com.cmdb.common.utils.poi.ExcelUtil;
import com.cmdb.common.core.page.TableDataInfo;

/**
 * 机柜管理Controller
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
@RestController
@RequestMapping("/asset/cabinet")
public class AssetCabinetController extends BaseController
{
    @Autowired
    private IAssetCabinetService assetCabinetService;

    /**
     * 查询机柜管理列表
     */
    @PreAuthorize("@ss.hasPermi('asset:cabinet:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssetCabinet assetCabinet)
    {
        startPage();
        List<AssetCabinet> list = assetCabinetService.selectAssetCabinetList(assetCabinet);
        return getDataTable(list);
    }

    /**
     * 导出机柜管理列表
     */
    @PreAuthorize("@ss.hasPermi('asset:cabinet:export')")
    @Log(title = "机柜管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssetCabinet assetCabinet)
    {
        List<AssetCabinet> list = assetCabinetService.selectAssetCabinetList(assetCabinet);
        ExcelUtil<AssetCabinet> util = new ExcelUtil<AssetCabinet>(AssetCabinet.class);
        util.exportExcel(response, list, "机柜管理数据");
    }

    /**
     * 获取机柜管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('asset:cabinet:query')")
    @GetMapping(value = "/{number}")
    public AjaxResult getInfo(@PathVariable("number") Long number)
    {
        return AjaxResult.success(assetCabinetService.selectAssetCabinetByNumber(number));
    }

    /**
     * 新增机柜管理
     */
    @PreAuthorize("@ss.hasPermi('asset:cabinet:add')")
    @Log(title = "机柜管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssetCabinet assetCabinet)
    {
        return toAjax(assetCabinetService.insertAssetCabinet(assetCabinet));
    }

    /**
     * 修改机柜管理
     */
    @PreAuthorize("@ss.hasPermi('asset:cabinet:edit')")
    @Log(title = "机柜管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssetCabinet assetCabinet)
    {
        return toAjax(assetCabinetService.updateAssetCabinet(assetCabinet));
    }

    /**
     * 删除机柜管理
     */
    @PreAuthorize("@ss.hasPermi('asset:cabinet:remove')")
    @Log(title = "机柜管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{numbers}")
    public AjaxResult remove(@PathVariable Long[] numbers)
    {
        return toAjax(assetCabinetService.deleteAssetCabinetByNumbers(numbers));
    }
}
