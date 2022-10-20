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
      <el-form-item label="设备类型" prop="设备类型">
        <el-input
          v-model="queryParams.设备类型"
          placeholder="请输入设备类型"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="客户归属" prop="客户归属">
        <el-input
          v-model="queryParams.客户归属"
          placeholder="请输入客户归属"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="上架时间" prop="上架时间">
        <el-date-picker clearable
          v-model="queryParams.上架时间"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择上架时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="业务IP" prop="业务ip">
        <el-input
          v-model="queryParams.业务ip"
          placeholder="请输入业务IP"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="管理IP" prop="管理ip">
        <el-input
          v-model="queryParams.管理ip"
          placeholder="请输入管理IP"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="机柜编号" prop="机柜编号">
        <el-input
          v-model="queryParams.机柜编号"
          placeholder="请输入机柜编号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="所属机房" prop="所属机房">
        <el-select v-model="queryParams.所属机房" placeholder="请选择所属机房" clearable>
          <el-option
            v-for="dict in dict.type.it_room"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="业务类型" prop="业务类型">
        <el-select v-model="queryParams.业务类型" placeholder="请选择业务类型" clearable>
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
      <el-table-column label="设备类型" align="center" prop="设备类型" />
      <el-table-column label="客户归属" align="center" prop="客户归属" />
      <el-table-column label="上架时间" align="center" prop="上架时间" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.上架时间, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="业务IP" align="center" prop="业务ip" />
      <el-table-column label="管理IP" align="center" prop="管理ip" />
      <el-table-column label="机柜编号" align="center" prop="机柜编号" />
      <el-table-column label="所属机房" align="center" prop="所属机房">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.it_room" :value="scope.row.所属机房"/>
        </template>
      </el-table-column>
      <el-table-column label="业务类型" align="center" prop="业务类型">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.asset_business" :value="scope.row.业务类型"/>
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
        <el-form-item label="设备类型" prop="设备类型">
          <el-input v-model="form.设备类型" placeholder="请输入设备类型" />
        </el-form-item>
        <el-form-item label="客户归属" prop="客户归属">
          <el-input v-model="form.客户归属" placeholder="请输入客户归属" />
        </el-form-item>
        <el-form-item label="上架时间" prop="上架时间">
          <el-date-picker clearable
            v-model="form.上架时间"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择上架时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="业务IP" prop="业务ip">
          <el-input v-model="form.业务ip" placeholder="请输入业务IP" />
        </el-form-item>
        <el-form-item label="管理IP" prop="管理ip">
          <el-input v-model="form.管理ip" placeholder="请输入管理IP" />
        </el-form-item>
        <el-form-item label="机柜编号" prop="机柜编号">
          <el-input v-model="form.机柜编号" placeholder="请输入机柜编号" />
        </el-form-item>
        <el-form-item label="所属机房" prop="所属机房">
          <el-select v-model="form.所属机房" placeholder="请选择所属机房">
            <el-option
              v-for="dict in dict.type.it_room"
              :key="dict.value"
              :label="dict.label"
:value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="业务类型" prop="业务类型">
          <el-select v-model="form.业务类型" placeholder="请选择业务类型">
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
  dicts: ['asset_business', 'it_room'],
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
        设备类型: null,
        客户归属: null,
        上架时间: null,
        业务ip: null,
        管理ip: null,
        机柜编号: null,
        所属机房: null,
        业务类型: null
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
        设备类型: null,
        客户归属: null,
        上架时间: null,
        业务ip: null,
        管理ip: null,
        机柜编号: null,
        所属机房: null,
        业务类型: null
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
