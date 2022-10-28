<template>
<div class="app-container home">
    <el-row :gutter="20">
      <el-col :xs="12" :sm="12" :md="4" :lg="4">
        <el-card class="room">
          <div class="body">
            <p class="padding">机房</p>
          </div>
        </el-card>
      </el-col>
      <el-col :xs="12" :sm="12" :md="4" :lg="4">
        <el-card class="cabinet">
          <div class="body">
            <p>机柜</p>
          </div>
        </el-card>
      </el-col>
      <el-col :xs="12" :sm="12" :md="4" :lg="4">
        <el-card class="ip">
          <div class="body">
            <p>IP</p>
          </div>
        </el-card>
      </el-col>
      <el-col :xs="12" :sm="12" :md="4" :lg="4">
        <el-card class="server">
          <div class="body">
            <p>服务器</p>
          </div>
        </el-card>
      </el-col>
      <el-col :xs="12" :sm="12" :md="4" :lg="4">
        <el-card class="switch">
          <div class="body">
            <p>交换机</p>
          </div>
        </el-card>
      </el-col>
      <el-col class="alarm1" :xs="12" :sm="12" :md="4" :lg="4">
        <el-card class="alarm">
          <div class="body">
            <p>告警</p>
          </div>
        </el-card>
      </el-col>
    </el-row>
  <div class="jiange">

  </div>
    <el-row :gutter="20">
      <el-col :xs="24" :sm="24" :md="12" :lg="15">
        <el-card class="ping">
          <div>
            <p style="font-family: 'Open Sans', Arial, sans-serif;
                      font-size: x-large;
                      color: #324157;
                      text-align: center;
                      font-weight: bold">全国机房网络质量</p>
            <div class="image" align="center">
              <img src="../assets/images/network.png" width="817" height="635" >
            </div>
          </div>
        </el-card>
      </el-col>
      <el-col :xs="24" :sm="24" :md="12" :lg="9">
        <div>
        <el-card>
          <div>
            <p style="font-family: 'Open Sans', Arial, sans-serif;
                      font-size: x-large;
                      color: #324157;
                      text-align: center;
                      font-weight: bold">监控告警</p>
          </div>
        </el-card>
          <div class="card-jiange"></div>
          <el-card>
            <div>
              <p style="font-family: 'Open Sans', Arial, sans-serif;
                      font-size: x-large;
                      color: #324157;
                      text-align: center;
                      font-weight: bold">事件工单</p>
            </div>
          </el-card>
        </div>
      </el-col>
    </el-row>
  <div class="copyright">
    <p style="color: black; text-align: center; font-size: small">Copyright © 2022 武汉世捷通网络信息技术有限公司</p>
  </div>
  </div>
</template>

<script>
export default {
  name: "Index",
  data() {
    return {
      // 版本号
      version: "3.8.2",
    };
  },
  methods: {
    goTarget(href) {
      window.open(href, "_blank");
    },
  },
};
</script>

<style scoped lang="scss">
.home {
  blockquote {
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 17.5px;
    border-left: 5px solid #eee;
  }
  hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
  }
  .col-item {
    margin-bottom: 20px;
  }

  ul {
    padding: 0;
    margin: 0;
  }

  font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  color: #676a6c;
  overflow-x: hidden;

  ul {
    list-style-type: none;
  }

  h4 {
    margin-top: 0px;
  }

  h2 {
    margin-top: 10px;
    font-size: 26px;
    font-weight: 100;
  }

  p {
    margin-top: 10px;

    b {
      font-weight: 700;
    }
  }

  .update-log {
    ol {
      display: block;
      list-style-type: decimal;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0;
      margin-inline-end: 0;
      padding-inline-start: 40px;
    }
  }
}
.room {
  background-color: #303133;
}
.cabinet {
  background-color:#E6A23C ;
}
.ip {
  background-color: #409EFF;
}
.server {
  background-color: #67C23A;
}
.switch {
  background-color: #909399;
}
.alarm {
  background-color: #F56C6C;
}
.jiange {
  margin-top: 25px;
}
p {
  font-size: x-large;
  color: white;
}
.card-jiange {
  margin-top: 25px;
}
</style>

