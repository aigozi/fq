#!/bin/bash
#acme一键申请证书
# Author: LaoMa
read -p "请输入域名: " domain
curl https://get.acme.sh | sh
~/.acme.sh/acme.sh --register-account -m xsight00@gmail.com
~/.acme.sh/acme.sh --issue -d $domain --standalone
