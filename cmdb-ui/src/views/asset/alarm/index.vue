<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="告警主机" prop="alarmHostname">
        <el-input
          v-model="queryParams.alarmHostname"
          placeholder="请输入告警主机"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="监控项目" prop="alarmEvent">
        <el-input
          v-model="queryParams.alarmEvent"
          placeholder="请输入监控项目"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="告警等级" prop="alarmLevel">
        <el-input
          v-model="queryParams.alarmLevel"
          placeholder="请输入告警等级"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="告警信息" prop="alarmInfomation">
        <el-input
          v-model="queryParams.alarmInfomation"
          placeholder="请输入告警信息"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="告警事件" prop="alarmTime">
        <el-date-picker clearable
          v-model="queryParams.alarmTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择告警事件">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="事件ID" prop="alarmEventId">
        <el-input
          v-model="queryParams.alarmEventId"
          placeholder="请输入事件ID"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['asset:alarm:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['asset:alarm:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['asset:alarm:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['asset:alarm:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="alarmList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="告警主机" align="center" prop="alarmHostname" />
      <el-table-column label="监控项目" align="center" prop="alarmEvent" />
      <el-table-column label="告警等级" align="center" prop="alarmLevel" />
      <el-table-column label="告警信息" align="center" prop="alarmInfomation" />
      <el-table-column label="告警事件" align="center" prop="alarmTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.alarmTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="事件ID" align="center" prop="alarmEventId" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['asset:alarm:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['asset:alarm:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改监控告警对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="告警主机" prop="alarmHostname">
          <el-input v-model="form.alarmHostname" placeholder="请输入告警主机" />
        </el-form-item>
        <el-form-item label="监控项目" prop="alarmEvent">
          <el-input v-model="form.alarmEvent" placeholder="请输入监控项目" />
        </el-form-item>
        <el-form-item label="告警等级" prop="alarmLevel">
          <el-input v-model="form.alarmLevel" placeholder="请输入告警等级" />
        </el-form-item>
        <el-form-item label="告警信息" prop="alarmInfomation">
          <el-input v-model="form.alarmInfomation" placeholder="请输入告警信息" />
        </el-form-item>
        <el-form-item label="告警事件" prop="alarmTime">
          <el-date-picker clearable
            v-model="form.alarmTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择告警事件">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="事件ID" prop="alarmEventId">
          <el-input v-model="form.alarmEventId" placeholder="请输入事件ID" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listAlarm, getAlarm, delAlarm, addAlarm, updateAlarm } from "@/api/asset/alarm";

export default {
  name: "Alarm",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 监控告警表格数据
      alarmList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        alarmHostname: null,
        alarmEvent: null,
        alarmLevel: null,
        alarmInfomation: null,
        alarmTime: null,
        alarmEventId: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询监控告警列表 */
    getList() {
      this.loading = true;
      listAlarm(this.queryParams).then(response => {
        this.alarmList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        number: null,
        alarmHostname: null,
        alarmEvent: null,
        alarmLevel: null,
        alarmInfomation: null,
        alarmTime: null,
        alarmEventId: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.number)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加监控告警";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const number = row.number || this.ids
      getAlarm(number).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改监控告警";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.number != null) {
            updateAlarm(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addAlarm(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const numbers = row.number || this.ids;
      this.$modal.confirm('是否确认删除监控告警编号为"' + numbers + '"的数据项？').then(function() {
        return delAlarm(numbers);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('asset/alarm/export', {
        ...this.queryParams
      }, `alarm_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
