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

6.RpcProvider提供网络服务初始搭建  
+ 基于muduo网络库来提供高并发网络服务
  + 包含TcpServer.h, EventLoop.h, InetAddress.h, TcpConnection.h 头文件，来实现muduo提供的服务端功能
  + 根据MprpcApplication类提供的方法获取conf配置文件，并根据其中的ip，port信息使用muduo TcpServer对象创建socket rpcserver
  + 建立本地socket连接回调OnConnection，读写事件回调OnMessage(未完成定义), 并在server绑定连接回调和消息读写回调方法  分离了网络代码和业务代码
  + setThreadNum设置muduo库的线程数量
  + server.start(),m_eventloop()开启网络服务，事件循环

7.RpcProvider发布服务方法
+ 成员变量定义
  + 包含 protobuf中的descriptor.h，unordered_map头文件
  + 定义结构体ServiceInfo，包含m_service服务对象，m_methodMap服务方法名称和服务方法对象指针的映射表
  + 定义m_serviceMap是存储注册成功的服务对象和其服务方法的所有信息，储存string和ServiceMap的键值对
+ 完善NotifyService方法
  +  NotifyService方法是Service* 基类指针，接收具体的派生类服务对象，根据GetDescriptor()获取服务对象描述指针
  +  获取服务对象的名字，方法总数
  +  method方法根据下标轮询获取服务对象下的方法的名称和方法描述指针，储存到m_methodMap
  +  最后将服务对象和服务对象具体描述信息存储到m_serviceMap

8.RpcProvider分发rpc服务及rpc响应回调
+ RpcProvider中OnConnection主要是处理rpc调用方的socket连接事件
+ RpcProvider中OnMessage处理rpc调用方发来的请求字符串
  + rpcheader.proto定义通信双方协定好的Message类型,包括服务名，方法名，请求方法的参数
  + 网络上接收远程rpc调用请求的字符流
  + 从字符流中（recv_buf）读取前4个字节内容
  + 根据header_size读取数据头的原始字符流，反序列化数据，得到rpc请求的详细信息，包括服务对象名，服务方法名，方法参数大小
  + 获取rpc方法参数的字符流数据
  + 查询m_serviceMap，m_methodMap获取service对象和method对象
  + 从服务对象的GetRequestPrototype()方法生成rpc方法调用的请求request，用GetResponsePrototype获取响应response参数（未填充）
  + 利用protobuf提供的接口去绑定一个closure的回调函数
  + 在框架上根据远端rpc请求， 调用当前rpc节点上发布的方法
+ 回调函数SendRpcResponse实现，主要是用于填充response，并且通过网络发送
  
9.RpcChannel的调用过程
+ 程序启动后，想要使用mprpc框架提供的rpc服务调用，一定要先调用框架的初始化函数
+ 使用UserServiceRpc_Stub类对象来调用远程发布的rpc方法，传入的参数是RpcChannel
  + UserServiceRpc_Stub类也包含Login rpc方法，并且Login方法实际内部是调用我们通过构造函数传入的RpcChannel的CallMethod的方法。
  + 所有通过桩类调用的rpc方法最终都会转到rpc channel的call method方法上。

完成请求响应过程梳理
+ rpc调用请求发出，rpc调用方就会wait等待阻塞
+ rpc请求被rpc provider接收到，触发onMessage回调函数，接收网络字符流，然后进行反序列化，得到服务对象，服务方法，调用CallMethod方法（不仅调用方，提供方也会调用callmethod方法），调用rpc provider的本地服务login,然后done->run()，将login response序列化后通过网络发送返回
+ 然后Rpc Consumer再对响应进行反序列化，再报给rpc调用方，应用程序的rpc请求就得到结果了

calluserservice.cc具体实现  

1.程序启动后，想使用mprpc框架提供的rpc服务调用，一定要先调用框架的初始化函数  
2.使用UserServiceRpc_Stub类对象来调用远程发布的rpc方法，传入的参数是RpcChannel  
3.rpc方法请求参数组织，rpc请求只需定义，由provider处理  
4.stub.login底层都是转发到RpcChannel::CallMethod方法多态调用,所以要实现一个继承自 RpcChannel 的类，并重写CallMethod方法  
5. 一次rpc 调用完成，读调用的结果

MprpcChannel类实现

概念：使用UserServiceRpc_Stub来创建rpc调用对象，然后使用stub.login去调用provider处的login方法，最后都是转到rpcchannel中的callmethod方法，并且RpcChannel中的callmethod都是纯虚函数，需要我们定义派生类来继承后并重写此抽象方法。
+ rpc请求的序列化
  + MethodDescriptor中有sercive()方法可以通过方法对象获取到服务对象指针，然后可以去获取服务对象名称，方法名称本身就可以通过name()方法获得。
  + 将方法参数，即request Message类型通过SerializeToString序列化成字符串args_str，并且获取其长度args_size。
  + 定义rpc的请求header,即rpcheader Message类型，主要是将之前服务对象名称，方法名称，方法参数大小放入rpcheader类对象中，然后进行序列化成为字符串rpc_header_str,再得到其大小rpc_header_size
  + 组织待发送的rpc请求的字符串send_rpc_str,使用insert将整数转化为字符串，然后再加上之前序列化的rpcheader和args_str
+ 利用TCP编程完成rpc方法的远程调用
  + 已经进行过mprpc框架的初始化，可以通过MprpcApplication类获取配置信息，读取rpc serverip,port
  + 创建socket,绑定ip，port,使用connect()连接rpc服务节点和send)方法发送rpc请求
  + 等待接收rpc请求的响应值，记录接收的字符串的大小
  + 反序列化rpc调用的响应数据，这个响应就是纯方法参数，所以可以直接反序列化response->ParseFromArray()，数据填充到response中。
    + 不使用ParseFromString是因为std::string response_str(recv_buf, 0, recv_size)  bug出现问题，recv_buf中遇到\0后面的数据就存不下来了，导致反序列化失败