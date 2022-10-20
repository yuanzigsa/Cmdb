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
import com.cmdb.asset.domain.AssetUpIp;
import com.cmdb.asset.service.IAssetUpIpService;
import com.cmdb.common.utils.poi.ExcelUtil;
import com.cmdb.common.core.page.TableDataInfo;

/**
 * 上联IP资源Controller
 * 
 * @author yuanzi
 * @date 2022-10-19
 */
@RestController
@RequestMapping("/asset/ip")
public class AssetUpIpController extends BaseController
{
    @Autowired
    private IAssetUpIpService assetUpIpService;

    /**
     * 查询上联IP资源列表
     */
    @PreAuthorize("@ss.hasPermi('asset:ip:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssetUpIp assetUpIp)
    {
        startPage();
        List<AssetUpIp> list = assetUpIpService.selectAssetUpIpList(assetUpIp);
        return getDataTable(list);
    }

    /**
     * 导出上联IP资源列表
     */
    @PreAuthorize("@ss.hasPermi('asset:ip:export')")
    @Log(title = "上联IP资源", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssetUpIp assetUpIp)
    {
        List<AssetUpIp> list = assetUpIpService.selectAssetUpIpList(assetUpIp);
        ExcelUtil<AssetUpIp> util = new ExcelUtil<AssetUpIp>(AssetUpIp.class);
        util.exportExcel(response, list, "上联IP资源数据");
    }

    /**
     * 获取上联IP资源详细信息
     */
    @PreAuthorize("@ss.hasPermi('asset:ip:query')")
    @GetMapping(value = "/{number}")
    public AjaxResult getInfo(@PathVariable("number") Long number)
    {
        return AjaxResult.success(assetUpIpService.selectAssetUpIpByNumber(number));
    }

    /**
     * 新增上联IP资源
     */
    @PreAuthorize("@ss.hasPermi('asset:ip:add')")
    @Log(title = "上联IP资源", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssetUpIp assetUpIp)
    {
        return toAjax(assetUpIpService.insertAssetUpIp(assetUpIp));
    }

    /**
     * 修改上联IP资源
     */
    @PreAuthorize("@ss.hasPermi('asset:ip:edit')")
    @Log(title = "上联IP资源", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssetUpIp assetUpIp)
    {
        return toAjax(assetUpIpService.updateAssetUpIp(assetUpIp));
    }

    /**
     * 删除上联IP资源
     */
    @PreAuthorize("@ss.hasPermi('asset:ip:remove')")
    @Log(title = "上联IP资源", businessType = BusinessType.DELETE)
	@DeleteMapping("/{numbers}")
    public AjaxResult remove(@PathVariable Long[] numbers)
    {
        return toAjax(assetUpIpService.deleteAssetUpIpByNumbers(numbers));
    }
}
