<template>
  <div >
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

<div style="margin-top: 10px"></div>
    <div class="outer">
        <div class="bg">
          <div class="inner"></div>
          <div>Name</div>
        </div>
        <div class="bg">
          <div class="inner"></div>
          <div>Name</div>
        </div>
        <div class="bg">
          <div class="inner"></div>
          <div>Name</div>
        </div>
    </div>
  </div>
</template>
<script>
export default {
  components: {},
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

.outer {
    display: flex;
    flex-wrap: wrap; 
}
.bg::after {
    display: flex;
    content: '';
    /* padding-bottom: 100%; */
    width: 1;
    height: 2;
}

.bg {
    flex: 1;
}
.inner {
    flex: 1;
}
.bg:nth-child(1) {
    background-color: crimson;
    margin-right: 15px;
}
.inner:nth-child(1) {
    background-color: black;
}
.bg:nth-child(2) {
    background: rgb(0, 128, 255);
    margin-right: 15px;
}
.inner:nth-child(2) {
    background-color: cyan;
    margin-bottom: auto;
}
.bg:nth-child(3) {
    background: green;
    margin-right: 15px;
}
.inner:nth-child(3) {
    background-color: #fff;
    margin-bottom: auto;
}
</style>
