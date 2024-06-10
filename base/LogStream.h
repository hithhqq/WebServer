#pragma once
#include <assert.h>
#include <string.h>
#include <string>
#include "noncopyable.h"

// class AsyncLogging;
const int kSmallBuffer = 4000;
const int kLargeBuffer = 4000 * 1000;

template <int SIZE>
class FixedBuffer : noncopyable {
public:
    FixedBuffer() : cur_(data_) {}

    ~FixedBuffer() {}

    // 把buf里面len的数据赋值到data里
    void append(const char* buf, size_t len) 
    {
        if (avail() > static_cast<int>(len)) 
        {
            memcpy(cur_, buf, len);
            cur_ += len;
        }
    }

    const char* data() const { return data_; }
    //返回写入了多少数据
    int length() const { return static_cast<int>(cur_ - data_); } 
    // 返回现在写到了哪里
    char* current() { return cur_; } 
    //返回还有多少空间可以用
    int avail() const { return static_cast<int>(end() - cur_); } 
    void add(size_t len) { cur_ += len; } 

    void reset() { cur_ = data_; }
    void bzero() { memset(data_, 0, sizeof data_); }

private:
    const char* end() const { return data_ + sizeof data_; }

    char data_[SIZE];
    char* cur_;
};

//主要作用是把要输入的日志数据转换成字符串存在缓冲区里
class LogStream : noncopyable 
{
public:
    // 缓冲区
    typedef FixedBuffer<kSmallBuffer> Buffer;

    LogStream& operator<<(bool v) 
    {
        buffer_.append(v ? "1" : "0", 1);
        return *this;
    }

    LogStream& operator<<(short);
    LogStream& operator<<(unsigned short);
    LogStream& operator<<(int);
    LogStream& operator<<(unsigned int);
    LogStream& operator<<(long);
    LogStream& operator<<(unsigned long);
    LogStream& operator<<(long long);
    LogStream& operator<<(unsigned long long);

    LogStream& operator<<(const void*);

    LogStream& operator<<(float v) 
    {
        *this << static_cast<double>(v);
        return *this;
    }
    LogStream& operator<<(double);
    LogStream& operator<<(long double);

    LogStream& operator<<(char v) 
    {
        buffer_.append(&v, 1);
        return *this;
    }

    LogStream& operator<<(const char* str) 
    {
        if (str)
            buffer_.append(str, strlen(str));
        else
            buffer_.append("(null)", 6);
        return *this;
    }

    LogStream& operator<<(const unsigned char* str) 
    {
        return operator<<(reinterpret_cast<const char*>(str));
    }

    LogStream& operator<<(const std::string& v) 
    {
        buffer_.append(v.c_str(), v.size());
        return *this;
    }

    void append(const char* data, int len) { buffer_.append(data, len); }
    const Buffer& buffer() const { return buffer_; }
    void resetBuffer() { buffer_.reset(); }

private:
    void staticCheck();

    template <typename T>
    void formatInteger(T);

    Buffer buffer_;

    static const int kMaxNumericSize = 32;
};