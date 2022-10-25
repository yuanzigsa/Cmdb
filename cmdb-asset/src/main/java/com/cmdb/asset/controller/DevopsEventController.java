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
import com.cmdb.asset.domain.DevopsEvent;
import com.cmdb.asset.service.IDevopsEventService;
import com.cmdb.common.utils.poi.ExcelUtil;
import com.cmdb.common.core.page.TableDataInfo;

/**
 * 事件管理Controller
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
@RestController
@RequestMapping("/asset/event")
public class DevopsEventController extends BaseController
{
    @Autowired
    private IDevopsEventService devopsEventService;

    /**
     * 查询事件管理列表
     */
    @PreAuthorize("@ss.hasPermi('asset:event:list')")
    @GetMapping("/list")
    public TableDataInfo list(DevopsEvent devopsEvent)
    {
        startPage();
        List<DevopsEvent> list = devopsEventService.selectDevopsEventList(devopsEvent);
        return getDataTable(list);
    }

    /**
     * 导出事件管理列表
     */
    @PreAuthorize("@ss.hasPermi('asset:event:export')")
    @Log(title = "事件管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DevopsEvent devopsEvent)
    {
        List<DevopsEvent> list = devopsEventService.selectDevopsEventList(devopsEvent);
        ExcelUtil<DevopsEvent> util = new ExcelUtil<DevopsEvent>(DevopsEvent.class);
        util.exportExcel(response, list, "事件管理数据");
    }

    /**
     * 获取事件管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('asset:event:query')")
    @GetMapping(value = "/{number}")
    public AjaxResult getInfo(@PathVariable("number") Long number)
    {
        return AjaxResult.success(devopsEventService.selectDevopsEventByNumber(number));
    }

    /**
     * 新增事件管理
     */
    @PreAuthorize("@ss.hasPermi('asset:event:add')")
    @Log(title = "事件管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DevopsEvent devopsEvent)
    {
        return toAjax(devopsEventService.insertDevopsEvent(devopsEvent));
    }

    /**
     * 修改事件管理
     */
    @PreAuthorize("@ss.hasPermi('asset:event:edit')")
    @Log(title = "事件管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DevopsEvent devopsEvent)
    {
        return toAjax(devopsEventService.updateDevopsEvent(devopsEvent));
    }

    /**
     * 删除事件管理
     */
    @PreAuthorize("@ss.hasPermi('asset:event:remove')")
    @Log(title = "事件管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{numbers}")
    public AjaxResult remove(@PathVariable Long[] numbers)
    {
        return toAjax(devopsEventService.deleteDevopsEventByNumbers(numbers));
    }
}
