#通过userservice和上一级的user.pb.cc生成
set(SRC_LIST userservice.cc ../user.pb.cc)

add_executable(provider ${SRC_LIST})
#target_link_libraries(provider mprpc protobuf)