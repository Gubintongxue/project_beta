// rpcprovider.h
#pragma once
#include "google/protobuf/service.h"

class RpcProvider
{
public:
    // 这里参数是Service的基类，proto中定义的所有service都是其派生类
    // 框架提供给用户使用，可以发布rpc方法的接口函数
    void NotifyService(google::protobuf::Service *service);

    // 启动rpc服务节点，开始提供rpc远程网络调用服务
    void Run();
};