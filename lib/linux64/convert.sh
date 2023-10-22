#!/bin/bash

# 定义源编码和目标编码
SOURCE_ENCODING="GBK"
TARGET_ENCODING="UTF-8"

# 使用find命令获取当前目录及子目录下所有.h后缀的文件
for file in $(find . -name "*.h" -type f)
do
    # 转换文件编码，将结果输出到temp文件
    iconv -f $SOURCE_ENCODING -t $TARGET_ENCODING "$file" > temp
    # 将temp文件重命名为原始文件，实现“覆盖”原始文件
    mv temp "$file"
done
