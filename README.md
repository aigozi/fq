wget https://raw.githubusercontent.com/aigozi/fq/main/ss.sh -O ./ss.sh && chmod 700 ./ss.sh && bash ss.sh install
注意:如果提示bash: git: command not found，则先安装git：
Centos执行这个： yum -y install git
Ubuntu/Debian执行这个： apt-get update && apt-get -y install git

注意:shadowsocks/shadowsocksR这两个只需要搭建一个就可以了！！！！SS与SSR之间的比较一直是各有各的说法，王婆卖瓜自卖自夸。我用的是SS，因为SS的iOS版本比较容易下载，并且被没有觉得ss容易被探查到~

shadowsocks实现科学上网原理？
shadowsocks正常工作需要服务器端和客户端两端合作实现，首先，客户端（本机）通过ss（shadowsocks）对正常的访问请求进行SOCK5加密，将加密后的访问请求传输给ss服务器端，服务器端接收到客户端的加密请求后，解密得到原始的访问请求，根据请求内容访问指定的网站（例如Google，YouTube，Facebook，instagram等），得到网站的返回结果后，再利用SOCKS5加密并返回给客户端，客户端通过ss解密后得到正常的访问结果，于是就可以实现你直接访问该网站的“假象”
