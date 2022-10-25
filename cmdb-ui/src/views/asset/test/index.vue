<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="所属机房" prop="room">
        <el-select v-model="queryParams.room" placeholder="请选择所属机房" clearable>
          <el-option
            v-for="dict in dict.type.it_room"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="状态" prop="state">
        <el-select v-model="queryParams.state" placeholder="请选择状态" clearable>
          <el-option
            v-for="dict in dict.type.asset_state"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="系统" prop="os">
        <el-input
          v-model="queryParams.os"
          placeholder="请输入系统"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="使用客户" prop="costomer">
        <el-input
          v-model="queryParams.costomer"
          placeholder="请输入使用客户"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="开始时间" prop="startTime">
        <el-date-picker clearable
          v-model="queryParams.startTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择开始时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="测试周期" prop="testCycle">
        <el-input
          v-model="queryParams.testCycle"
          placeholder="请输入测试周期"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="归属" prop="ascription">
        <el-input
          v-model="queryParams.ascription"
          placeholder="请输入归属"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="设备型号" prop="deviceModel">
        <el-input
          v-model="queryParams.deviceModel"
          placeholder="请输入设备型号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="机柜编号" prop="cabinetNumber">
        <el-select v-model="queryParams.cabinetNumber" placeholder="请选择机柜编号" clearable>
          <el-option
            v-for="dict in dict.type.cabinet_number"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
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
          v-hasPermi="['asset:test:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['asset:test:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['asset:test:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['asset:test:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="testList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="所属机房" align="center" prop="room">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.it_room" :value="scope.row.room"/>
        </template>
      </el-table-column>
      <el-table-column label="状态" align="center" prop="state">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.asset_state" :value="scope.row.state"/>
        </template>
      </el-table-column>
      <el-table-column label="系统" align="center" prop="os" />
      <el-table-column label="使用客户" align="center" prop="costomer" />
      <el-table-column label="开始时间" align="center" prop="startTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.startTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="测试周期" align="center" prop="testCycle" />
      <el-table-column label="归属" align="center" prop="ascription" />
      <el-table-column label="设备型号" align="center" prop="deviceModel" />
      <el-table-column label="机柜编号" align="center" prop="cabinetNumber">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.cabinet_number" :value="scope.row.cabinetNumber"/>
        </template>
      </el-table-column>
      <el-table-column label="交换机口" align="center" prop="switchInterface" />
      <el-table-column label="管理信息" align="center" prop="passwd" />
      <el-table-column label="配置信息" align="center" prop="onfiguration" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['asset:test:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['asset:test:remove']"
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

    <!-- 添加或修改测试机管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="所属机房" prop="room">
          <el-select v-model="form.room" placeholder="请选择所属机房">
            <el-option
              v-for="dict in dict.type.it_room"
              :key="dict.value"
              :label="dict.label"
:value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="状态" prop="state">
          <el-select v-model="form.state" placeholder="请选择状态">
            <el-option
              v-for="dict in dict.type.asset_state"
              :key="dict.value"
              :label="dict.label"
:value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="系统" prop="os">
          <el-input v-model="form.os" placeholder="请输入系统" />
        </el-form-item>
        <el-form-item label="使用客户" prop="costomer">
          <el-input v-model="form.costomer" placeholder="请输入使用客户" />
        </el-form-item>
        <el-form-item label="开始时间" prop="startTime">
          <el-date-picker clearable
            v-model="form.startTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择开始时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="测试周期" prop="testCycle">
          <el-input v-model="form.testCycle" placeholder="请输入测试周期" />
        </el-form-item>
        <el-form-item label="归属" prop="ascription">
          <el-input v-model="form.ascription" placeholder="请输入归属" />
        </el-form-item>
        <el-form-item label="设备型号" prop="deviceModel">
          <el-input v-model="form.deviceModel" placeholder="请输入设备型号" />
        </el-form-item>
        <el-form-item label="机柜编号" prop="cabinetNumber">
          <el-select v-model="form.cabinetNumber" placeholder="请选择机柜编号">
            <el-option
              v-for="dict in dict.type.cabinet_number"
              :key="dict.value"
              :label="dict.label"
:value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="交换机口" prop="switchInterface">
          <el-input v-model="form.switchInterface" placeholder="请输入交换机口" />
        </el-form-item>
        <el-form-item label="管理信息" prop="passwd">
          <el-input v-model="form.passwd" placeholder="请输入管理信息" />
        </el-form-item>
        <el-form-item label="配置信息" prop="onfiguration">
          <el-input v-model="form.onfiguration" placeholder="请输入配置信息" />
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
import { listTest, getTest, delTest, addTest, updateTest } from "@/api/asset/test";

export default {
  name: "Test",
  dicts: ['cabinet_number', 'asset_state', 'it_room'],
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
      // 测试机管理表格数据
      testList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        room: null,
        state: null,
        os: null,
        costomer: null,
        startTime: null,
        testCycle: null,
        ascription: null,
        deviceModel: null,
        cabinetNumber: null,
        switchInterface: null,
        passwd: null,
        onfiguration: null
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
    /** 查询测试机管理列表 */
    getList() {
      this.loading = true;
      listTest(this.queryParams).then(response => {
        this.testList = response.rows;
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
        room: null,
        state: null,
        os: null,
        costomer: null,
        startTime: null,
        testCycle: null,
        ascription: null,
        deviceModel: null,
        cabinetNumber: null,
        switchInterface: null,
        passwd: null,
        onfiguration: null
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
      this.title = "添加测试机管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const number = row.number || this.ids
      getTest(number).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改测试机管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.number != null) {
            updateTest(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addTest(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除测试机管理编号为"' + numbers + '"的数据项？').then(function() {
        return delTest(numbers);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('asset/test/export', {
        ...this.queryParams
      }, `test_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
