#!/usr/bin/env bash

npm config set registry https://registry.npmmirror.com
go env -w GOPROXY=https://goproxy.cn,direct
pip config set global.index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple