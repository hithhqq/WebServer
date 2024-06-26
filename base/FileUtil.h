#pragma once
#include "noncopyable.h"
#include <string>
//提供了将数据写入文件和刷新缓冲区的接口
class AppendFile : noncopyable 
{
public:
    explicit AppendFile(std::string filename);
    ~AppendFile();
    void append(const char *logline, const size_t len);
    void flush();
private:
    size_t write(const char *logline, size_t len);
    FILE *fp_;
    char buffer_[64 * 1024];
};