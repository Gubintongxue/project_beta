# mprpc
C++实现分布式网络通信框架项目

1.项目环境搭建  
2.protobuf实践  
3.本地服务发布成RPC服务  
+ 定义rpc方法和相关参数类型，生成C++文件
+ 重写基类的服务方法
  + 框架给业务上报请求参数LoginRequest,应用获取相应数据做本地业务
  + 做本地业务，定义本地方法
  + 把响应写入
  + 做回调操作,执行响应对象数据的序列化和网络发送（都是由框架完成)

4.mprpc框架基础类设计
+ MprpcApplication类
  + 初始化init()
+ RpcProvider类
  + provider是一个rpc网络服务对象，把UserService对象发布到rpc节点上
  + NotifyService()
  + Run()

5.mprpc框架的动态库编译
+ 各级目录下的CMakeLists.txt编写
+ 框架的初始化init()方法完成
  + 读取参数，读取配置文件内容
  + MprpcConfig类
    +  负责解析加载配置文件
    +  查询配置项信息
    +  配置内容键值对map
    +  去掉字符串中的空格
