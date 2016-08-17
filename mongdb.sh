#Step 1:  Import the MongoDB public key 
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927

#Step 2: Generate a file with the MongoDB repository url
echo 'deb http://mirrors.aliyun.com/mongodb/apt/ubuntu trusty/mongodb-org/stable multiverse' | sudo tee /etc/apt/sources.list.d/mongodb.list

#Step 3: Refresh the local database with the packages
sudo apt-get update

#Step 4: Install the last stable MongoDB version and all the necessary packages on our system
sudo apt-get install mongodb-org -y
