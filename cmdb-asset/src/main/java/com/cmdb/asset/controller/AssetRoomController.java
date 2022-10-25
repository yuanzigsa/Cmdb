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
import com.cmdb.asset.domain.AssetRoom;
import com.cmdb.asset.service.IAssetRoomService;
import com.cmdb.common.utils.poi.ExcelUtil;
import com.cmdb.common.core.page.TableDataInfo;

/**
 * 机房管理Controller
 * 
 * @author yuanzi
 * @date 2022-10-24
 */
@RestController
@RequestMapping("/asset/room")
public class AssetRoomController extends BaseController
{
    @Autowired
    private IAssetRoomService assetRoomService;

    /**
     * 查询机房管理列表
     */
    @PreAuthorize("@ss.hasPermi('asset:room:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssetRoom assetRoom)
    {
        startPage();
        List<AssetRoom> list = assetRoomService.selectAssetRoomList(assetRoom);
        return getDataTable(list);
    }

    /**
     * 导出机房管理列表
     */
    @PreAuthorize("@ss.hasPermi('asset:room:export')")
    @Log(title = "机房管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssetRoom assetRoom)
    {
        List<AssetRoom> list = assetRoomService.selectAssetRoomList(assetRoom);
        ExcelUtil<AssetRoom> util = new ExcelUtil<AssetRoom>(AssetRoom.class);
        util.exportExcel(response, list, "机房管理数据");
    }

    /**
     * 获取机房管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('asset:room:query')")
    @GetMapping(value = "/{number}")
    public AjaxResult getInfo(@PathVariable("number") Long number)
    {
        return AjaxResult.success(assetRoomService.selectAssetRoomByNumber(number));
    }

    /**
     * 新增机房管理
     */
    @PreAuthorize("@ss.hasPermi('asset:room:add')")
    @Log(title = "机房管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssetRoom assetRoom)
    {
        return toAjax(assetRoomService.insertAssetRoom(assetRoom));
    }

    /**
     * 修改机房管理
     */
    @PreAuthorize("@ss.hasPermi('asset:room:edit')")
    @Log(title = "机房管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssetRoom assetRoom)
    {
        return toAjax(assetRoomService.updateAssetRoom(assetRoom));
    }

    /**
     * 删除机房管理
     */
    @PreAuthorize("@ss.hasPermi('asset:room:remove')")
    @Log(title = "机房管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{numbers}")
    public AjaxResult remove(@PathVariable Long[] numbers)
    {
        return toAjax(assetRoomService.deleteAssetRoomByNumbers(numbers));
    }
}
