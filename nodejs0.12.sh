#参考链接
#https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager
cd /bin/
wget https://npm.taobao.org/mirrors/node/latest-v0.12.x/node-v0.12.15-linux-x64.tar.gz
tar xvzf node-v0.12.15-linux-x64.tar.gz
ln -s node-v0.12.15-linux-x64/bin/node node
ln -s node-v0.12.15-linux-x64/lib/node_modules/npm/bin/npm-cli.js npm

exit
