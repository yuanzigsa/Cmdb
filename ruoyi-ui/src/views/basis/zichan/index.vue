<template>
  <div>
    <el-row :gutter="15">
      <el-form id="from_o" style="margin: 15px" ref="elForm" :model="formData" :rules="rules" size="medium" label-width="100px"
               label-position="top">
        <el-col :span="12">
          <el-form-item label="" prop="field102">
            <el-input v-model="formData.field102" placeholder="请输入SN号" :style="{width: '100%'}"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="" prop="field103">
            <el-button type="primary" icon="el-icon-search" size="medium"> 搜索 </el-button>
          </el-form-item>
        </el-col>
      </el-form>
    </el-row>
    <el-row :gutter="24">
      <el-col :span="6">
        <div class="grid-content bg-purple">内容1

      </div></el-col>
      <el-col :span="6"><div class="grid-content bg-purple">内容2</div></el-col>
      <el-col :span="6"><div class="grid-content bg-purple">内容3</div></el-col>
      <el-col :span="6"><div class="grid-content bg-purple">内容4</div></el-col>
    </el-row>
    <el-row :gutter="24">  <!-- 最大24 给20不合理 -->
      <el-col :span="8"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="8"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="4"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="4"><div class="grid-content bg-purple"></div></el-col>
    </el-row>
    <el-row :gutter="24">
      <el-col :span="4"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="16"><div class="grid-content bg-purple"></div></el-col>
      <el-col :span="4"><div class="grid-content bg-purple"></div></el-col>
    </el-row>
  </div>
</template>
<script>
export default {
  components: {
    name: "zcgl"
  },
  props: [],
  data() {
    return {
      formData: {
        field102: '',
        field103: undefined,
      },
      rules: {
        field102: [],
      },
    }
  },
  computed: {},
  watch: {},
  created() {},
  mounted() {},
  methods: {
    submitForm() {
      this.$refs['elForm'].validate(valid => {
        if (!valid) return
        // TODO 提交表单
      })
    },
    resetForm() {
      this.$refs['elForm'].resetFields()
    },
  }
}

</script>

<style>
.el-row {
  margin-bottom: 20px;
&:last-child {
   margin-bottom: 0;
 }
}
.el-col {
  border-radius: 4px;
}
.bg-purple-dark {
  background: #99a9bf;
}
.bg-purple {
  background: #d3dce6;
}
.bg-purple-light {
  background: #e5e9f2;
}
.grid-content {
  border-radius: 4px;
  min-height: 36px;
}
.row-bg {
  padding: 10px 0;
  background-color: #f9fafc;
}
</style>
