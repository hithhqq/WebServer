#pragma once
#include "noncopyable.h"
#include <string>
#include <memory>
#include <mutex>
#include "FileUtil.h"
// 提供自动归档功能 是对FileUtil的二层封装
class LogFile
{
public:
    LogFile(const std::string &basename_, int flushEveryN = 1024);
    ~LogFile();
    void append(const char *logline, int len);
    void flush();
    // bool rollFile();
private:
    void append_unlocked(const char *logline, int len);
    const std::string basename_;
    const int flushEveryN_;

    int count_;
    std::mutex mutex_;
    std::unique_ptr<AppendFile> file_;
};