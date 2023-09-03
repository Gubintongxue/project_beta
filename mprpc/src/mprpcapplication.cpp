#include "mprpcapplication.h"


 void MprpcApplication::Init(int argc, char **argv)
 {

 }

 //单例模式
MprpcApplication& MprpcApplication::getInstance()
 {
    static MprpcApplication app;
    return app;
 }