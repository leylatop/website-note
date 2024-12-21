#!/bin/bash
#!/bin/bash

# SSH 服务器用户名和地址
SERVER_ADDRESS="qxx"

# 目标服务器上的目录路径
TARGET_DIR="/www/blog/frontend/note"

ORIGIN_DIR="./publish-note"

# SSH 命令，用于删除并重新创建目标目录
SSH_COMMAND="rm -rf $TARGET_DIR && mkdir $TARGET_DIR"

# 构建完整的 SSH 命令并执行
ssh $SERVER_ADDRESS "$SSH_COMMAND"

# 检查上一个命令是否成功执行
if [ $? -eq 0 ]; then
    # 使用 scp 命令复制当前目录下的所有内容到目标目录
    scp -r $ORIGIN_DIR/* $SERVER_ADDRESS:$TARGET_DIR/
else
    echo "SSH 命令执行失败，终止复制操作。"
    exit 1
fi

echo "文件同步完成。"