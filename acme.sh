#!/bin/bash
#acme一键申请证书
# 作者：老马
read -p "请输入域名 (按下回车键退出): " domain
if [[ -z "$domain" ]]; then
  echo "已退出脚本."
  exit 0
fi

{ 
  curl https://get.acme.sh | sh && \
  ~/.acme.sh/acme.sh --register-account -m xsight00@gmail.com && \
  ~/.acme.sh/acme.sh --issue -d $domain --standalone
} || echo "执行过程中出现了错误，请检查输入的域名和网络连接。"
