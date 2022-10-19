<template>
  <div class="app-container home">
    <el-row :gutter="20">
      <el-col :sm="24" :lg="24">
        <blockquote class="text-warning" style="font-size: 14px">
          <p>欢迎！</p>
        </blockquote>

        <hr />
      </el-col>
    </el-row>
    <el-row :gutter="20">
      <el-col :sm="24" :lg="12" style="padding-left: 20px">
        <h2>世捷通资产运维管理系统</h2>
        <p>
          开发ing......
        </p>
        <p>
          <b>当前版本:</b> <span>v{{ version }}</span>
        </p>
        <p>
          <el-tag type="danger">&yen;免费开源</el-tag>
        </p>
        <p>
          <el-button
            type="primary"
            size="mini"
            icon="el-icon-cloudy"
            plain
            @click="goTarget('https://gitee.com/y_project/RuoYi-Vue')"
          >访问码云</el-button
          >
          <el-button
            size="mini"
            icon="el-icon-s-home"
            plain
            @click="goTarget('http://ruoyi.vip')"
          >访问主页</el-button
          >
        </p>
      </el-col>

      <el-col :sm="24" :lg="12" style="padding-left: 50px">
        <el-row>
          <el-col :span="12">
            <h2>技术选型</h2>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="6">
            <h4>后端技术</h4>
            <ul>
              <li>SpringBoot</li>
              <li>Spring Security</li>
              <li>JWT</li>
              <li>MyBatis</li>
              <li>Druid</li>
              <li>Fastjson</li>
              <li>...</li>
            </ul>
          </el-col>
          <el-col :span="6">
            <h4>前端技术</h4>
            <ul>
              <li>Vue</li>
              <li>Vuex</li>
              <li>Element-ui</li>
              <li>Axios</li>
              <li>Sass</li>
              <li>Quill</li>
              <li>...</li>
            </ul>
          </el-col>
        </el-row>
      </el-col>
    </el-row>
    <el-divider />
    <el-row :gutter="20">
      <el-col :xs="24" :sm="24" :md="12" :lg="8">
        <el-card class="update-log">
          <div slot="header" class="clearfix">
            <span>监控告警</span>
          </div>
          <div class="body">
            <el-table>qqq</el-table>
          </div>
        </el-card>
      </el-col>
      <el-col :xs="24" :sm="24" :md="12" :lg="8">
        <el-card class="update-log">
          <div slot="header" class="clearfix">
            <span>关于</span>
          </div>
          <div class="body">
            <p>开发ing......</p>
          </div>
        </el-card>
      </el-col>
      <el-col :xs="24" :sm="24" :md="12" :lg="8">
        <el-card class="update-log">
          <div slot="header" class="clearfix">
            <span>更新日志</span>
          </div>
          <el-collapse accordion>
            <el-collapse-item title="v3.8.2 - 2022-04-01">
              <ol>
                <li>前端支持设置是否需要防止数据重复提交</li>
                <li>开启TopNav没有子菜单情况隐藏侧边栏</li>
                <li>侧边栏菜单名称过长悬停显示标题</li>
                <li>用户访问控制时校验数据权限，防止越权</li>
                <li>导出Excel时屏蔽公式，防止CSV注入风险</li>
                <li>组件ImagePreview支持多图预览显示</li>
                <li>组件ImageUpload支持多图同时选择上传</li>
                <li>组件FileUpload支持多文件同时选择上传</li>
                <li>服务监控新增运行参数信息显示</li>
                <li>定时任务目标字符串过滤特殊字符</li>
                <li>定时任务目标字符串验证包名白名单</li>
                <li>代码生成列表图片支持预览</li>
                <li>代码生成编辑修改打开新页签</li>
                <li>代码生成新增Java类型Boolean</li>
                <li>代码生成子表支持日期/字典配置</li>
                <li>代码生成同步保留必填/类型选项</li>
                <li>升级oshi到最新版本6.1.2</li>
                <li>升级fastjson到最新版1.2.80</li>
                <li>升级pagehelper到最新版1.4.1</li>
                <li>升级spring-boot到最新版本2.5.11</li>
                <li>升级spring-boot-mybatis到最新版2.2.2</li>
                <li>添加遗漏的分页参数合理化属性</li>
                <li>修改npm即将过期的注册源地址</li>
                <li>修复分页组件请求两次问题</li>
                <li>修复通用文件下载接口跨域问题</li>
                <li>修复Xss注解字段值为空时的异常问题</li>
                <li>修复选项卡点击右键刷新丢失参数问题</li>
                <li>修复表单清除元素位置未垂直居中问题</li>
                <li>修复服务监控中运行参数显示条件错误</li>
                <li>修复导入Excel时字典字段类型为Long转义为空问题</li>
                <li>修复登录超时刷新页面跳转登录页面还提示重新登录问题</li>
                <li>优化加载字典缓存数据</li>
                <li>优化IP地址获取到多个的问题</li>
                <li>优化任务队列满时任务拒绝策略</li>
                <li>优化文件上传兼容Weblogic环境</li>
                <li>优化定时任务默认保存到内存中执行</li>
                <li>优化部门修改缩放后出现的错位问题</li>
                <li>优化Excel格式化不同类型的日期对象</li>
                <li>优化菜单表关键字导致的插件报错问题</li>
                <li>优化Oracle用户头像列为空时不显示问题</li>
                <li>优化页面若未匹配到字典标签则返回原字典值</li>
                <li>优化修复登录失效后多次请求提示多次弹窗问题</li>
                <li>其他细节优化</li>
              </ol>
            </el-collapse-item>
            <el-collapse-item title="v3.8.1 - 2022-01-01">
              <ol>
                <li>新增Vue3前端代码生成模板</li>
                <li>新增图片预览组件</li>
                <li>新增压缩插件实现打包Gzip</li>
                <li>自定义xss校验注解实现</li>
                <li>自定义文字复制剪贴指令</li>
                <li>代码生成预览支持复制内容</li>
                <li>路由支持单独配置菜单或角色权限</li>
                <li>用户管理部门查询选择节点后分页参数初始</li>
                <li>修复用户分配角色属性错误</li>
                <li>修复打包后字体图标偶现的乱码问题</li>
                <li>修复菜单管理重置表单出现的错误</li>
                <li>修复版本差异导致的懒加载报错问题</li>
                <li>修复Cron组件中周回显问题</li>
                <li>修复定时任务多参数逗号分隔的问题</li>
                <li>修复根据ID查询列表可能出现的主键溢出问题</li>
                <li>修复tomcat配置参数已过期问题</li>
                <li>升级clipboard到最新版本2.0.8</li>
                <li>升级oshi到最新版本v5.8.6</li>
                <li>升级fastjson到最新版1.2.79</li>
                <li>升级spring-boot到最新版本2.5.8</li>
                <li>升级log4j2到2.17.1，防止漏洞风险</li>
                <li>优化下载解析blob异常提示</li>
                <li>优化代码生成字典组重复问题</li>
                <li>优化查询用户的角色组&岗位组代码</li>
                <li>优化定时任务cron表达式小时设置24</li>
                <li>优化用户导入提示溢出则显示滚动条</li>
                <li>优化防重复提交标识组合为(key+url+header)</li>
                <li>优化分页方法设置成通用方便灵活调用</li>
                <li>其他细节优化</li>
              </ol>
            </el-collapse-item>
            <el-collapse-item title="v3.8.0 - 2021-12-01">
              <ol>
                <li>新增配套并同步的Vue3前端版本</li>
                <li>新增通用方法简化模态/缓存/下载/权限/页签使用</li>
                <li>优化导出数据/使用通用下载方法</li>
                <li>Excel注解支持自定义数据处理器</li>
                <li>Excel注解支持导入导出标题信息</li>
                <li>Excel导入支持@Excels注解</li>
                <li>新增组件data-dict，简化数据字典使用</li>
                <li>新增Jaxb依赖，防止jdk8以上出现的兼容错误</li>
                <li>生产环境使用路由懒加载提升页面响应速度</li>
                <li>修复五级以上菜单出现的404问题</li>
                <li>防重提交注解支持配置间隔时间/提示消息</li>
                <li>日志注解新增是否保存响应参数</li>
                <li>任务屏蔽违规字符&参数忽略双引号中的逗号</li>
                <li>升级SpringBoot到最新版本2.5.6</li>
                <li>升级pagehelper到最新版1.4.0</li>
                <li>升级spring-boot-mybatis到最新版2.2.0</li>
                <li>升级oshi到最新版本v5.8.2</li>
                <li>升级druid到最新版1.2.8</li>
                <li>升级velocity到最新版本2.3</li>
                <li>升级fastjson到最新版1.2.78</li>
                <li>升级axios到最新版本0.24.0</li>
                <li>升级dart-sass到版本1.32.13</li>
                <li>升级core-js到最新版本3.19.1</li>
                <li>升级jsencrypt到最新版本3.2.1</li>
                <li>升级js-cookie到最新版本3.0.1</li>
                <li>升级file-saver到最新版本2.0.5</li>
                <li>升级sass-loader到最新版本10.1.1</li>
                <li>升级element-ui到最新版本2.15.6</li>
                <li>新增sendGet无参请求方法</li>
                <li>禁用el-tag组件的渐变动画</li>
                <li>代码生成点击预览重置激活tab</li>
                <li>AjaxResult重写put方法，以方便链式调用</li>
                <li>优化登录/验证码请求headers不设置token</li>
                <li>优化用户个人信息接口防止修改用户名</li>
                <li>优化Cron表达式生成器关闭时销毁避免缓存</li>
                <li>优化注册成功提示消息类型success</li>
                <li>优化aop语法，使用spring自动注入注解</li>
                <li>优化记录登录信息，移除不必要的修改</li>
                <li>优化mybatis全局默认的执行器</li>
                <li>优化Excel导入图片可能出现的异常</li>
                <li>修复代码生成模板主子表删除缺少事务</li>
                <li>修复日志记录可能出现的转换异常</li>
                <li>修复代码生成复选框字典遗漏问题</li>
                <li>修复关闭xss功能导致可重复读RepeatableFilter失效</li>
                <li>修复字符串无法被反转义问题</li>
                <li>修复后端主子表代码模板方法名生成错误问题</li>
                <li>修复xss过滤后格式出现的异常</li>
                <li>修复swagger没有指定dataTypeClass导致启动出现warn日志</li>
                <li>其他细节优化</li>
              </ol>
            </el-collapse-item>
            <el-collapse-item title="v3.7.0 - 2021-09-13">
              <ol>
                <li>参数管理支持配置验证码开关</li>
                <li>新增是否开启用户注册功能</li>
                <li>定时任务支持在线生成cron表达式</li>
                <li>菜单管理支持配置路由参数</li>
                <li>支持自定义注解实现接口限流</li>
                <li>Excel注解支持Image图片导入</li>
                <li>自定义弹层溢出滚动样式</li>
                <li>自定义可拖动弹窗宽度指令</li>
                <li>自定义可拖动弹窗高度指令</li>
                <li>修复任意账户越权问题</li>
                <li>修改时检查用户数据权限范围</li>
                <li>修复保存配置主题颜色失效问题</li>
                <li>新增暗色菜单风格主题</li>
                <li>菜单&部门新增展开/折叠功能</li>
                <li>页签新增关闭左侧&添加图标</li>
                <li>顶部菜单排除隐藏的默认路由</li>
                <li>顶部菜单同步系统主题样式</li>
                <li>跳转路由高亮相对应的菜单栏</li>
                <li>代码生成主子表多选行数据</li>
                <li>日期范围支持添加多组</li>
                <li>升级element-ui到最新版本2.15.5</li>
                <li>升级oshi到最新版本v5.8.0</li>
                <li>升级commons.io到最新版本v2.11.0</li>
                <li>定时任务屏蔽ldap远程调用</li>
                <li>定时任务屏蔽http(s)远程调用</li>
                <li>补充定时任务表字段注释</li>
                <li>定时任务对检查异常进行事务回滚</li>
                <li>启用父部门状态排除顶级节点</li>
                <li>富文本新增上传文件大小限制</li>
                <li>默认首页使用keep-alive缓存</li>
                <li>修改代码生成字典回显样式</li>
                <li>自定义分页合理化传入参数</li>
                <li>修复字典组件值为整形不显示问题</li>
                <li>修复定时任务日志执行状态显示</li>
                <li>角色&菜单新增字段属性提示信息</li>
                <li>修复角色分配用户页面参数类型错误提醒</li>
                <li>优化布局设置动画特效</li>
                <li>优化异常处理信息</li>
                <li>优化错误token导致的解析异常</li>
                <li>密码框新增显示切换密码图标</li>
                <li>定时任务新增更多操作</li>
                <li>更多操作按钮添加权限控制</li>
                <li>导入用户样式优化</li>
                <li>提取通用方法到基类控制器</li>
                <li>优化使用权限工具获取用户信息</li>
                <li>优化用户不能删除自己</li>
                <li>优化XSS跨站脚本过滤</li>
                <li>优化代码生成模板</li>
                <li>验证码默认20s超时</li>
                <li>BLOB下载时清除URL对象引用</li>
                <li>代码生成导入表按创建时间排序</li>
                <li>修复代码生成页面数据编辑保存之后总是跳转第一页的问题</li>
                <li>修复带safari浏览器无法格式化utc日期格式yyyy-MM-dd'T'HH:mm:ss.SSS问题</li>
                <li>多图上传组件移除多余的api地址&验证失败导致图片删除问题&无法删除相应图片修复</li>
                <li>其他细节优化</li>
              </ol>
            </el-collapse-item>
            <el-collapse-item title="v3.6.0 - 2021-07-12">
              <ol>
                <li>角色管理新增分配用户功能</li>
                <li>用户管理新增分配角色功能</li>
                <li>日志列表支持排序操作</li>
                <li>优化参数&字典缓存操作</li>
                <li>系统布局配置支持动态标题开关</li>
                <li>菜单路由配置支持内链访问</li>
                <li>默认访问后端首页新增提示语</li>
                <li>富文本默认上传返回url类型</li>
                <li>新增自定义弹窗拖拽指令</li>
                <li>全局注册常用通用组件</li>
                <li>全局挂载字典标签组件</li>
                <li>ImageUpload组件支持多图片上传</li>
                <li>FileUpload组件支持多文件上传</li>
                <li>文件上传组件添加数量限制属性</li>
                <li>富文本编辑组件添加类型属性</li>
                <li>富文本组件工具栏配置视频</li>
                <li>封装通用iframe组件</li>
                <li>限制超级管理员不允许操作</li>
                <li>用户信息长度校验限制</li>
                <li>分页组件新增pagerCount属性</li>
                <li>添加bat脚本执行应用</li>
                <li>升级oshi到最新版本v5.7.4</li>
                <li>升级element-ui到最新版本2.15.2</li>
                <li>升级pagehelper到最新版1.3.1</li>
                <li>升级commons.io到最新版本v2.10.0</li>
                <li>升级commons.fileupload到最新版本v1.4</li>
                <li>升级swagger到最新版本v3.0.0</li>
                <li>修复关闭confirm提示框控制台报错问题</li>
                <li>修复存在的SQL注入漏洞问题</li>
                <li>定时任务屏蔽rmi远程调用</li>
                <li>修复用户搜索分页变量错误</li>
                <li>修复导出角色数据范围翻译缺少仅本人</li>
                <li>修复表单构建选择下拉选择控制台报错问题</li>
                <li>优化图片工具类读取文件</li>
                <li>其他细节优化</li>
              </ol>
            </el-collapse-item>
            <el-collapse-item title="v3.5.0 - 2021-05-25">
              <ol>
                <li>新增菜单导航显示风格TopNav（false为左侧导航菜单，true为顶部导航菜单）</li>
                <li>布局设置支持保存&重置配置</li>
                <li>修复树表数据显示不全&加载慢问题</li>
                <li>新增IE浏览器版本过低提示页面</li>
                <li>用户登录后记录最后登录IP&时间</li>
                <li>页面导出按钮点击之后添加遮罩</li>
                <li>富文本编辑器支持自定义上传地址</li>
                <li>富文本编辑组件新增readOnly属性</li>
                <li>页签TagsView新增关闭右侧功能</li>
                <li>显隐列组件加载初始默认隐藏列</li>
                <li>关闭头像上传窗口还原默认图片</li>
                <li>个人信息添加手机&邮箱重复验证</li>
                <li>代码生成模板导出按钮点击后添加遮罩</li>
                <li>代码生成模板树表操作列添加新增按钮</li>
                <li>代码生成模板修复主子表字段重名问题</li>
                <li>升级fastjson到最新版1.2.76</li>
                <li>升级druid到最新版本v1.2.6</li>
                <li>升级mybatis到最新版3.5.6 阻止远程代码执行漏洞</li>
                <li>升级oshi到最新版本v5.6.0</li>
                <li>velocity剔除commons-collections版本，防止3.2.1版本的反序列化漏洞</li>
                <li>数据监控页默认账户密码防止越权访问</li>
                <li>修复firefox下表单构建拖拽会新打卡一个选项卡</li>
                <li>修正后端导入表权限标识</li>
                <li>修正前端操作日志&登录日志权限标识</li>
                <li>设置Redis配置HashKey序列化</li>
                <li>删除操作日志记录信息</li>
                <li>上传媒体类型添加视频格式</li>
                <li>修复请求形参未传值记录日志异常问题</li>
                <li>优化xss校验json请求条件</li>
                <li>树级结构更新子节点使用replaceFirst</li>
                <li>优化ExcelUtil空值处理</li>
                <li>日志记录过滤BindingResult对象，防止异常</li>
                <li>修改主题后mini类型按钮无效问题</li>
                <li>优化通用下载完成后删除节点</li>
                <li>通用Controller添加响应返回消息</li>
                <li>其他细节优化</li>
              </ol>
            </el-collapse-item>
            <el-collapse-item title="v3.4.0 - 2021-02-22">
              <ol>
                <li>代码生成模板支持主子表</li>
                <li>表格右侧工具栏组件支持显隐列</li>
                <li>图片组件添加预览&移除功能</li>
                <li>Excel注解支持Image图片导出</li>
                <li>操作按钮组调整为朴素按钮样式</li>
                <li>代码生成支持文件上传组件</li>
                <li>代码生成日期控件区分范围</li>
                <li>代码生成数据库文本类型生成表单文本域</li>
                <li>用户手机邮箱&菜单组件修改允许空字符串</li>
                <li>升级SpringBoot到最新版本2.2.13 提升启动速度</li>
                <li>升级druid到最新版本v1.2.4</li>
                <li>升级fastjson到最新版1.2.75</li>
                <li>升级element-ui到最新版本2.15.0</li>
                <li>修复IE11浏览器报错问题</li>
                <li>优化多级菜单之间切换无法缓存的问题</li>
                <li>修复四级菜单无法显示问题</li>
                <li>修正侧边栏静态路由丢失问题</li>
                <li>修复角色管理-编辑角色-功能权限显示异常</li>
                <li>配置文件新增redis数据库索引属性</li>
                <li>权限工具类增加admin判断</li>
                <li>角色非自定义权限范围清空选择值</li>
                <li>修复导入数据为负浮点数时丢失精度问题</li>
                <li>移除path-to-regexp正则匹配插件</li>
                <li>修复生成树表代码异常</li>
                <li>修改ip字段长度防止ipv6地址长度不够</li>
                <li>防止get请求参数值为false或0等特殊值会导致无法正确的传参</li>
                <li>登录后push添加catch防止出现检查错误</li>
                <li>其他细节优化</li>
              </ol>
            </el-collapse-item>
            <el-collapse-item title="v3.3.0 - 2020-12-14">
              <ol>
                <li>新增缓存监控功能</li>
                <li>支持主题风格配置</li>
                <li>修复多级菜单之间切换无法缓存的问题</li>
                <li>多级菜单自动配置组件</li>
                <li>代码生成预览支持高亮显示</li>
                <li>支持Get请求映射Params参数</li>
                <li>删除用户和角色解绑关联</li>
                <li>去除用户手机邮箱部门必填验证</li>
                <li>Excel支持注解align对齐方式</li>
                <li>Excel支持导入Boolean型数据</li>
                <li>优化头像样式，鼠标移入悬停遮罩</li>
                <li>代码生成预览提供滚动机制</li>
                <li>代码生成删除多余的数字float类型</li>
                <li>修正转换字符串的目标字符集属性</li>
                <li>回显数据字典防止空值报错</li>
                <li>日志记录增加过滤多文件场景</li>
                <li>修改缓存Set方法可能导致嵌套的问题</li>
                <li>移除前端一些多余的依赖</li>
                <li>防止安全扫描YUI出现的风险提示</li>
                <li>修改node-sass为dart-sass</li>
                <li>升级SpringBoot到最新版本2.1.18</li>
                <li>升级poi到最新版本4.1.2</li>
                <li>升级oshi到最新版本v5.3.6</li>
                <li>升级bitwalker到最新版本1.21</li>
                <li>升级axios到最新版本0.21.0</li>
                <li>升级element-ui到最新版本2.14.1</li>
                <li>升级vue到最新版本2.6.12</li>
                <li>升级vuex到最新版本3.6.0</li>
                <li>升级vue-cli到版本4.5.9</li>
                <li>升级vue-router到最新版本3.4.9</li>
                <li>升级vue-cli到最新版本4.4.6</li>
                <li>升级vue-cropper到最新版本0.5.5</li>
                <li>升级clipboard到最新版本2.0.6</li>
                <li>升级core-js到最新版本3.8.1</li>
                <li>升级echarts到最新版本4.9.0</li>
                <li>升级file-saver到最新版本2.0.4</li>
                <li>升级fuse.js到最新版本6.4.3</li>
                <li>升级js-beautify到最新版本1.13.0</li>
                <li>升级js-cookie到最新版本2.2.1</li>
                <li>升级path-to-regexp到最新版本6.2.0</li>
                <li>升级quill到最新版本1.3.7</li>
                <li>升级screenfull到最新版本5.0.2</li>
                <li>升级sortablejs到最新版本1.10.2</li>
                <li>升级vuedraggable到最新版本2.24.3</li>
                <li>升级chalk到最新版本4.1.0</li>
                <li>升级eslint到最新版本7.15.0</li>
                <li>升级eslint-plugin-vue到最新版本7.2.0</li>
                <li>升级lint-staged到最新版本10.5.3</li>
                <li>升级runjs到最新版本4.4.2</li>
                <li>升级sass-loader到最新版本10.1.0</li>
                <li>升级script-ext-html-webpack-plugin到最新版本2.1.5</li>
                <li>升级svg-sprite-loader到最新版本5.1.1</li>
                <li>升级vue-template-compiler到最新版本2.6.12</li>
                <li>其他细节优化</li>
              </ol>
            </el-collapse-item>
          </el-collapse>
        </el-card>
      </el-col>
    </el-row>
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
</style>

