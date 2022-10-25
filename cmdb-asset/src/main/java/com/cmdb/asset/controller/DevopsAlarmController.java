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
import com.cmdb.asset.domain.DevopsAlarm;
import com.cmdb.asset.service.IDevopsAlarmService;
import com.cmdb.common.utils.poi.ExcelUtil;
import com.cmdb.common.core.page.TableDataInfo;

/**
 * 监控告警Controller
 * 
 * @author yuanzi
 * @date 2022-10-21
 */
@RestController
@RequestMapping("/asset/alarm")
public class DevopsAlarmController extends BaseController
{
    @Autowired
    private IDevopsAlarmService devopsAlarmService;

    /**
     * 查询监控告警列表
     */
    @PreAuthorize("@ss.hasPermi('asset:alarm:list')")
    @GetMapping("/list")
    public TableDataInfo list(DevopsAlarm devopsAlarm)
    {
        startPage();
        List<DevopsAlarm> list = devopsAlarmService.selectDevopsAlarmList(devopsAlarm);
        return getDataTable(list);
    }

    /**
     * 导出监控告警列表
     */
    @PreAuthorize("@ss.hasPermi('asset:alarm:export')")
    @Log(title = "监控告警", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DevopsAlarm devopsAlarm)
    {
        List<DevopsAlarm> list = devopsAlarmService.selectDevopsAlarmList(devopsAlarm);
        ExcelUtil<DevopsAlarm> util = new ExcelUtil<DevopsAlarm>(DevopsAlarm.class);
        util.exportExcel(response, list, "监控告警数据");
    }

    /**
     * 获取监控告警详细信息
     */
    @PreAuthorize("@ss.hasPermi('asset:alarm:query')")
    @GetMapping(value = "/{number}")
    public AjaxResult getInfo(@PathVariable("number") Long number)
    {
        return AjaxResult.success(devopsAlarmService.selectDevopsAlarmByNumber(number));
    }

    /**
     * 新增监控告警
     */
    @PreAuthorize("@ss.hasPermi('asset:alarm:add')")
    @Log(title = "监控告警", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DevopsAlarm devopsAlarm)
    {
        return toAjax(devopsAlarmService.insertDevopsAlarm(devopsAlarm));
    }

    /**
     * 修改监控告警
     */
    @PreAuthorize("@ss.hasPermi('asset:alarm:edit')")
    @Log(title = "监控告警", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DevopsAlarm devopsAlarm)
    {
        return toAjax(devopsAlarmService.updateDevopsAlarm(devopsAlarm));
    }

    /**
     * 删除监控告警
     */
    @PreAuthorize("@ss.hasPermi('asset:alarm:remove')")
    @Log(title = "监控告警", businessType = BusinessType.DELETE)
	@DeleteMapping("/{numbers}")
    public AjaxResult remove(@PathVariable Long[] numbers)
    {
        return toAjax(devopsAlarmService.deleteDevopsAlarmByNumbers(numbers));
    }
}
