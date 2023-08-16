#!/bin/bash
#acme一键申请证书
# Author: LaoMa
read -p "请输入域名: " domain
{ curl https://get.acme.sh | sh && \
~/.acme.sh/acme.sh --register-account -m xsight00@gmail.com && \
~/.acme.sh/acme.sh --issue -d $domain --standalone; } || \
echo "执行过程中出现了错误，请检查输入的域名和网络连接。"
