# Rest-Framework-Gamma

> 当前version 

    v1.02.1.build

> 框架迭代日志

* 字典，日志开发中
* 2020/02/07更新, BDP工程和产品项目互相独立
* 2019/12/01更新, 加入前后端代码生成器
* 2019/11/01更新, 主要包括
    * 重构基础框架
    * 加入组织机构管理
    * 加入用户管理
    * 加入角色管理
    * 加入菜单权限管理、数据权限管理
    * 加入异常统一提示拦截器
    * 配置精简化
* 2019/10/25更新, 升级SpringBoot2
* 2019/03/26更新，引入Actor模型，日志写入使用异步方式实现 
* 2019/04/17更新，建立基本的权限管理数据库表，以及对应的增删改查逻辑，对应到mapper,service,controller
* 2019/04/18更新，将过度划分的模块整合，启动模块重命名为app，配置logback
* 2019/04/19更新，主要包括
    * 实现集群部署支持(session集群和单机处理方式可选择，cluster属性为false代表单机模式，为true代表集群模式) 
    * 加入Redis缓存管理类
    * 日志优化，单独输出详细SQL日志
    * 异常处理优化，发生异常时，前端接到message以及一个Trace ID，根据Trace ID到后台日志文件查找具体错误
* 2019/05/27更新，加入自主开发的轻量级工作流引擎，支撑一般的介于定制化业务和OA场景之间的业务流程开发。

## 框架基础


> rest-gamma 是rest-framework的第三个版本, 是一个基于SpringBoot的Restful 后端Web框架

Rest-Framework由SpringBoot, Mybatis(Mybatis-Plus)为核心组成，采用Maven模块化构建。引入了Swagger API, hutool等组件，并且会不断扩展。

支持业务日志记录，异常统一管理，统一json交互格式。是适用于前后端分离开发模式的后端Rest开发框架。



Maven模块一共分为四个:

    应用模块：rest-gamma-app
    通用模块：rest-gamma-common
    实体或业务对象模块：rest-gamma-model
    服务和仓储模块：rest-gamma-service

> 控制层做参数验证，逻辑验证，服务调用，代码健壮性加强，以及简单非复用业务逻辑。
> 
> 服务和DAO层由com.baomidou.mybatisplus.service.impl.ServiceImpl<M,E> 注入类最基本的增删改查服务接口和DAO接口，除此之外，复杂业务逻辑，可复用业务逻辑，应该写到service层
> 
> 实体模块承载各种 DO, BO, DTO等, 均为POJO，无业务逻辑
> 
> 通用模块 为项目的其他通用的逻辑和工具性代码
> 

## 准备

1.把代码中rest-gamma/resources下的sql脚本导入自己的库中

2.把rest-gamma-boot下的application.yml中的数据库连接信息修改为自己的库信息：
    
    url: jdbc:mysql://172.17.2.194:3306/rest_gamma?useSSL=false
    username: root
    password: Rexen123

3.安装Redis Server，并配置Redis连接：

      redis:
          host: 172.17.2.65
          port: 6379    

    
4.驻场开发的同事，把pom文件中的以下内容注释掉：

      <distributionManagement>
        <repository>
          <id>nexus-releases</id>
          <name>gh-releases</name>
          <url>http://172.17.2.226:8081/nexus/content/repositories/releases/</url>
        </repository>
        <snapshotRepository>
          <id>nexus-snapshots</id>
          <name>gh-snap</name>
          <url>http://172.17.2.226:8081/nexus/content/repositories/snapshots/</url>
        </snapshotRepository>
      </distributionManagement>
     
5.[建议]公司内网同事把rest-gamma/resources下的setting.xml替换到本机maven setting文件位置, 以增加依赖库导入效率
    
    
## (一)代码生成器介绍

    com.rexen.rest.boot.util

在该类中配置如下：

    1.配置表名如“system_operation_log”
    2.配置数据库连接
    3.根据数据库类型配置驱动
    4.代码生成的地址.setOutputDir("/home/gavinhacker/code/codeGen")
    5.其他可保持默认

## (二)shiro权限控制

    这个版本代码中未加权限模块，只做简单的登陆和session控制，在测试过程中可以把com.rexen.rest.rfc.config.ShiroConfiguration的shiroFilterFactoryBean方法中
    
    map.put("/rest/**","authc");
    
    注释掉，否则每次都要用system_user表中的数据做登陆操作
    
    权限控制粒度按项目需修改

## (三)增删改查

代码生成器生成完毕后，把java 文件拷贝到各自的包下，在Controller层可以直接开发增删改查接口，例如：

        @Api(value="样例")
        @RestController
        @RequestMapping("/rest/test")
        public class ExampleController {
    
        @Autowired
        private IUserService userService;
    
        @Autowired
        private SystemOperationLogServiceImpl systemOperationLogService;
    
    
        @Transactional(rollbackFor = Exception.class)
        @RequestMapping(value = "/insert", method = RequestMethod.POST)
        public User insert(@RequestBody User u){
            User user = new User(u.getId(), u.getName(), u.getAge(), u.getTestType());
            user.setPhone("10010");
            user.setTenantId(1L);
            System.out.println("插入前：" + user.toString());
            userService.insertOrUpdate(user);
            user = userService.selectById(1L);
            System.out.println("更新后：" + user.toString());
            return user;
        }
    
        @RequestMapping(value = "getAll", method = RequestMethod.GET)
        public String getAll(){
            List<User> user = userService.selectList(new Wrapper<User>() {
                @Override
                public String getSqlSegment() {
                    return null;
                }
            });
            return JSONObject.toJSONString(user);
        }
    
    
        @RequestMapping(value = "logTest1", method = RequestMethod.GET)
        public SystemOperationLog log1(){
            SystemOperationLog s = systemOperationLogService.selectOne(new QueryWrapper<SystemOperationLog>().eq("id","1-1-1-1"));
            return s;
        }
    }
    
    
上面的例子当中，还可以看到条件构造器（log1方法中），默认的单表增删改查不用写sql语句

启动运行rest-gamma-app下的App类即可测试

##### 关于分页插件，可以参考 /sysRole/queryPage 接口编写。需要注意的是

    (1)mapper接口中Page参数在第一位
    (2)多参数时，如果入参是有多个,需要加注解指定参数名才能在xml中取值
    

## (四)Swagger API的使用

    localhost:8080/swagger-ui.html
    
![image](http://aliyunzixunbucket.oss-cn-beijing.aliyuncs.com/jpg/6b65df679f5f788e601863591a42dc6f.jpg?x-oss-process=image/resize,p_100/auto-orient,1/quality,q_90/format,jpg/watermark,image_eXVuY2VzaGk=,t_100)

开箱即用，很简单。

在接口方法加入

    @ApiImplicitParam(name = "message", value = "信息")
    或
    @ApiImplicitParams(...)
    
注解，直接会体现到swagger文档中

## (五)业务日志

    在接口方法上加入
    @FunctionLog(module = "系统用户模块", operation = "获取所有数据", extension = "none")
    
框架的日志增强逻辑会将module和operation写入日志数据库，以支持对业务的统计

## (六)接口返回值


接口返回的核心类是ServiceStatus类，为了使得我们能控制http状态码以满足业务判断，我们外层使用ResponseEntity<T>;
    
所以最终返回值是：

    return new ResponseEntity<ServiceStatus>(result, HttpStatus.OK);

整体的代码样例子：

    @ApiOperation(value="测试异常处理逻辑", notes="测试异常处理逻辑")
    @RequestMapping(value = "insert2", method = RequestMethod.POST)
    @FunctionLog(module = "系统用户模块", operation = "测试插入系统用户操作", extension = "none")
    public ResponseEntity<ServiceStatus> test(@RequestBody @Valid SystemUser u) throws RestBaseException {
        if(systemUserService.selectById(u) != null){
            throw new RestUserExistException("用户已经存在");
        }
        boolean status = systemUserService.insert(u);
        Map<String, String> resultMap = new HashMap<String, String>(16);
        resultMap.put("status", String.valueOf(status));
        ServiceStatus result = new ServiceStatus(ServiceStatus.Status.success, "nothing", resultMap);
        return new ResponseEntity<ServiceStatus>(result, HttpStatus.OK);
    }
    

为简化此方法，可以建立一个基本控制器类似如下：

    public class BaseController {
    
        /**
         * 请求成功
         * @param message 提示内容
         * @return
         */
        protected ResponseEntity<ServiceStatus> renderSuccess(String message){
            ServiceStatus result = new ServiceStatus(ServiceStatus.Status.success, message, null);
            return new ResponseEntity<ServiceStatus>(result, HttpStatus.OK);
        }
        ...其他方法
    }
    
具体的Controller继承此基本controller，然后返回时直接调用基类方法即可。各个项目中的改良代码会统一merge到框架中。

## (七)参数验证

    在实体对象中，具体的属性加入类似如下代码：
    
    /**
     * 主键
     */
    @NotBlank
    @ApiModelProperty(value = "用户id", required = false)
    private String id;
    /**
     * 用户名称
     */
    @Length(min=1, max=10, message="用户名长度在 1 和 100 之间")
    @ApiModelProperty(value = "用户名", required = true)
    private String username;
    
在使用实体的接口方法的形式参数列表中，加入：

    @Valid注解，例如：
    
    public ResponseEntity<ServiceStatus> test(@RequestBody @Valid SystemUser u) throws RestBaseException {
        ...
    }
    
当访问接口时，如果参数不满足预期时，会给出提示

## (八)自定义异常

自定义异常写在rest-gamma-common工程中的exception包中

进一步的，如果想对异常做特殊处理，在rest-gamma-app工程的com.rexen.rest.app.advice.ExceptionHandlerAdvice中，加入类似如下代码：

    @ExceptionHandler(value = RestServiceNotFoundException.class)
    public ServiceStatus restServiceNotFoundException(RestResourceNotFoundException ex){
        if (ex != null){
            logger.error("服务不存在".concat(ex.getMessage()));
        }
        ... your custom code
        return new ServiceStatus(ServiceStatus.Status.fail, "服务不存在", StringUtils.EMPTY, ex.getMessage().substring(ex.getMessage().lastIndexOf(":")));
    }
    
    
推荐在Controller中的接口中自己捕获和控制异常，ExceptionHandlerAdvice中作为其他运行时异常的处理器
    
## (九)接口规格

#### (1)请求：

    GET：读取（Read）
    POST：新建（Create）
    PUT：更新（Update）
    DELETE：删除（Delete）

#### (2)响应
     
###### i)响应头状态，根据具体的接口功能设定
    200 OK ：成功状态
    206 业务失败
    400 Bad Request：服务器不理解客户端的请求
    401 Unauthorized：未提供验证凭据，或者没有通过验证
    403 Forbidden：用户已登录，但是不具有访问资源所需的权限
    404 Not Found：所请求的资源不存在，或资源失效
    500 Internal Server Error：客户端请求有效，服务器处理时发生了异常

###### ii)响应体

- 无论响应的结果是什么类型，status，message，timestamp 这三个字段必须包含

- status中的状态码 和 HTTP响应头中的状态码是一致的


    请求成功规格示例：
    {
        "id": "[886235][GavinHackerdeMacBook-Pro.local/172.16.7.249]",
        "status": 200,
        "message": "Request success",
        "data": {
            "size": 2,
            "value0": "Hello",
            "value1": "World"
        },
        "timestamp": 1557390646203
    }

    请求失败规格示例(属于业务操作不成功，而不是异常)：
    {
        "id": "[616876][GavinHackerdeMacBook-Pro.local/172.16.7.249]",
        "status": 205,
        "message": "用户名已经存在",
        "data": null,
        "timestamp": 1557390677673
    }
    
    请求失败规格示例(业务控制内异常)：
    {
        "id": "[420119][GavinHackerdeMacBook-Pro.local/172.16.7.249]",
        "status": 500,
        "message": "文件读取失败",
        "data": null,
        "timestamp": 1557390607575,
        "extension": ""
    }
    
    服务器发生异常(未到达逻辑层)
    {
        "timestamp": 1557386711741,
        "status": 500,
        "error": "Internal Server Error",
        "exception": "java.lang.IllegalArgumentException",
        "message": "Name for argument type [java.lang.String] not available, and parameter name information not found in class file either.",
        "path": "/actor"
    }
    
    资源未找到：
    {
        "timestamp": 1557388788261,
        "status": 404,
        "error": "Not Found",
        "message": "No message available",
        "path": "/render11"
    }
    
   
 
## NOTE

#### 1.doGetAuthorizationInfo不被调用的原因是权限的缓存机制，执行logout后才能重新加载权限


#### 2 使用BDP的产品或项目，如果出现以下提示：

![](http://img.technologyx.cn/%E6%89%B9%E6%B3%A8%202020-03-02%20112108.png)



则下载下面的链接：


[代理库文件](http://img.technologyx.cn/bdprun_files.zip)


解压到本地


在IDEA等编辑器工具中的VMOptions中, 或 java -jar运行时，加上参数：

    -agentpath:D:\git\bdprun.so





