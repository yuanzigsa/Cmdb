<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="SN编号" prop="sn">
        <el-input
          v-model="queryParams.sn"
          placeholder="请输入SN编号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="设备类型" prop="deviceType">
        <el-select v-model="queryParams.deviceType" placeholder="请选择设备类型" clearable>
          <el-option
            v-for="dict in dict.type.device_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="设备型号" prop="deviceModel">
        <el-input
          v-model="queryParams.deviceModel"
          placeholder="请输入设备型号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="客户归属" prop="ascription">
        <el-input
          v-model="queryParams.ascription"
          placeholder="请输入客户归属"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="上架时间" prop="upTime">
        <el-input
          v-model="queryParams.upTime"
          placeholder="请输入上架时间"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="业务IP" prop="businessIp">
        <el-input
          v-model="queryParams.businessIp"
          placeholder="请输入业务IP"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="管理IP" prop="manageIp">
        <el-input
          v-model="queryParams.manageIp"
          placeholder="请输入管理IP"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="机柜编号" prop="cabinetNo">
        <el-select v-model="queryParams.cabinetNo" placeholder="请选择机柜编号" clearable>
          <el-option
            v-for="dict in dict.type.cabinet_number"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
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
      <el-form-item label="业务类型" prop="businessType">
        <el-select v-model="queryParams.businessType" placeholder="请选择业务类型" clearable>
          <el-option
            v-for="dict in dict.type.asset_business"
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
          v-hasPermi="['asset:custome:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['asset:custome:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['asset:custome:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['asset:custome:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="customeList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="SN编号" align="center" prop="sn" />
      <el-table-column label="设备类型" align="center" prop="deviceType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.device_type" :value="scope.row.deviceType"/>
        </template>
      </el-table-column>
      <el-table-column label="设备型号" align="center" prop="deviceModel" />
      <el-table-column label="客户归属" align="center" prop="ascription" />
      <el-table-column label="上架时间" align="center" prop="upTime" />
      <el-table-column label="业务IP" align="center" prop="businessIp" />
      <el-table-column label="管理IP" align="center" prop="manageIp" />
      <el-table-column label="机柜编号" align="center" prop="cabinetNo">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.cabinet_number" :value="scope.row.cabinetNo"/>
        </template>
      </el-table-column>
      <el-table-column label="所属机房" align="center" prop="room">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.it_room" :value="scope.row.room"/>
        </template>
      </el-table-column>
      <el-table-column label="业务类型" align="center" prop="businessType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.asset_business" :value="scope.row.businessType"/>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['asset:custome:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['asset:custome:remove']"
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

    <!-- 添加或修改客户资产对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="SN编号" prop="sn">
          <el-input v-model="form.sn" placeholder="请输入SN编号" />
        </el-form-item>
        <el-form-item label="设备类型" prop="deviceType">
          <el-select v-model="form.deviceType" placeholder="请选择设备类型">
            <el-option
              v-for="dict in dict.type.device_type"
              :key="dict.value"
              :label="dict.label"
:value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="设备型号" prop="deviceModel">
          <el-input v-model="form.deviceModel" placeholder="请输入设备型号" />
        </el-form-item>
        <el-form-item label="客户归属" prop="ascription">
          <el-input v-model="form.ascription" placeholder="请输入客户归属" />
        </el-form-item>
        <el-form-item label="上架时间" prop="upTime">
          <el-input v-model="form.upTime" placeholder="请输入上架时间" />
        </el-form-item>
        <el-form-item label="业务IP" prop="businessIp">
          <el-input v-model="form.businessIp" placeholder="请输入业务IP" />
        </el-form-item>
        <el-form-item label="管理IP" prop="manageIp">
          <el-input v-model="form.manageIp" placeholder="请输入管理IP" />
        </el-form-item>
        <el-form-item label="机柜编号" prop="cabinetNo">
          <el-select v-model="form.cabinetNo" placeholder="请选择机柜编号">
            <el-option
              v-for="dict in dict.type.cabinet_number"
              :key="dict.value"
              :label="dict.label"
:value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
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
        <el-form-item label="业务类型" prop="businessType">
          <el-select v-model="form.businessType" placeholder="请选择业务类型">
            <el-option
              v-for="dict in dict.type.asset_business"
              :key="dict.value"
              :label="dict.label"
:value="dict.value"
            ></el-option>
          </el-select>
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
import { listCustome, getCustome, delCustome, addCustome, updateCustome } from "@/api/asset/custome";

export default {
  name: "Custome",
  dicts: ['cabinet_number', 'asset_business', 'device_type', 'it_room'],
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
      // 客户资产表格数据
      customeList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        sn: null,
        deviceType: null,
        deviceModel: null,
        ascription: null,
        upTime: null,
        businessIp: null,
        manageIp: null,
        cabinetNo: null,
        room: null,
        businessType: null
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
    /** 查询客户资产列表 */
    getList() {
      this.loading = true;
      listCustome(this.queryParams).then(response => {
        this.customeList = response.rows;
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
        sn: null,
        deviceType: null,
        deviceModel: null,
        ascription: null,
        upTime: null,
        businessIp: null,
        manageIp: null,
        cabinetNo: null,
        room: null,
        businessType: null
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
      this.title = "添加客户资产";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const number = row.number || this.ids
      getCustome(number).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改客户资产";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.number != null) {
            updateCustome(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addCustome(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除客户资产编号为"' + numbers + '"的数据项？').then(function() {
        return delCustome(numbers);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('asset/custome/export', {
        ...this.queryParams
      }, `custome_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
