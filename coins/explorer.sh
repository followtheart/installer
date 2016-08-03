#! /bin/sh

###1.MongoDB
git clone https://git.coding.net/thelastwolf/explorer.git
cd explorer

sudo apt-get install libkrb5-dev curl -y
##node install
sudo curl -sS https://raw.githubusercontent.com/followtheart/installer/master/nodejs0.12.sh | sh
## mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
sudo wget https://raw.githubusercontent.com/followtheart/installer/master/mongdb.sh -O- | sh
## db.createUser( { user: "iquidus", pwd: "3xp!0reR", roles: [ "readWrite" ] } )
