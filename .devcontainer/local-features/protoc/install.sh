#!/usr/bin/env bash

# Install protoc compiler 3.14.0 currently required by 'make gen-proto'.
PROTOC_ZIP=protoc-3.14.0-linux-x86_64.zip
curl -OL https://github.com/protocolbuffers/protobuf/releases/download/v3.14.0/$PROTOC_ZIP
unzip -o $PROTOC_ZIP -d /usr/local bin/protoc
chmod -R 755 /usr/local/bin/protoc
unzip -o $PROTOC_ZIP -d /usr/local 'include/*'
chmod -R 755 /usr/local/include/google/protobuf
rm -f $PROTOC_ZIP