#!/usr/bin/env bash

# install zig
ZIG_VERSION=0.11.0

wget "https://ziglang.org/download/${ZIG_VERSION}/zig-linux-x86_64-${ZIG_VERSION}.tar.xz"
tar Jxvf "zig-linux-x86_64-${ZIG_VERSION}.tar.xz" -C /usr/local && rm "zig-linux-x86_64-${ZIG_VERSION}.tar.xz"
mv /usr/local/zig-linux-x86_64-${ZIG_VERSION} /usr/local/zig-linux
export PATH=/usr/local/zig-linux:${PATH}

# install language server 
# https://github.com/zigtools/zls/releases/tag/0.11.0
ZLS_VERSION=0.11.0
wget "https://github.com/zigtools/zls/releases/download/${ZLS_VERSION}/zls-x86_64-linux.tar.gz"
tar zxvf zls-x86_64-linux.tar.gz -C /usr/local && rm zls-x86_64-linux.tar.gz
# executable permission.
chmod ugo+x /usr/local/bin/zls