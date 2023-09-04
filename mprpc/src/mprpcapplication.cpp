#include "mprpcapplication.h"
#include <iostream>
#include <unistd.h>

void ShowArgsHelp()
{
    std::cout<<"format: command -i <configfile>" << std::endl;
}

void MprpcApplication::Init(int argc, char **argv)
{
    // 对参数的数量进行判断
    if (argc < 2)
    {
       ShowArgsHelp();
       // 系统调用
       exit(EXIT_FAILURE);
    }
    // 这一行定义了一个整数变量 c，用于存储 getopt 函数的返回值。
    int c = 0;
    // 这一行定义了一个空的字符串变量 config_file，用于存储配置文件的路径。
    std::string config_file;
    // getopt函数的使用
    // 这是一个 while 循环，它使用 getopt 函数来解析命令行参数。getopt 函数用于处理命令行选项，
    // 它接受三个参数：参数数量 argc，参数数组 argv，和一个字符串，其中包含允许的选项字符，例如 "i:" 表示允许一个参数选项 -i，并且该选项后面必须跟一个参数值。
    while ((c = getopt(argc, argv, "i:")) != -1)
    {
       switch (c)
       {
       case 'i':
          // 将选项的参数值存储在 config_file 变量中，
          // optarg 是 getopt 函数提供的全局变量，用于获取当前选项的参数值。
          config_file = optarg;
          break;
       case '?':
          ShowArgsHelp();
          exit(EXIT_FAILURE);
       case ':':
          ShowArgsHelp();
          exit(EXIT_FAILURE);
       default:
          break;
       }

       //// 开始加载配置文件了 rpcserver_ip=  rpcserver_port   zookeeper_ip=  zookepper_port=
    }
}

//单例模式
MprpcApplication& MprpcApplication::GetInstance()
{
    static MprpcApplication app;
    return app;
}

