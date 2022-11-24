#！/bin/bash

echo "=========== 静态资源部署 ==========="

if ! npm run build:h5; then
  echo "产物打包失败，具体查看命令行错误信息"
  exit 1
fi


cli \
hosting deploy \
--provider aliyun \
--space bcbf1be5-180d-402d-83c4-587df231ebc9 \
--source ./dist/* \
--prefix / \
