

echo "stop  slave container..."
sudo docker stop  slave

echo "cp master config to  container..."
cp config.master.ini   ~/dockernode/bp/eosforce/config.ini


echo "start bp with master config..."
sudo docker start slave 

echo "change slave to master"
sudo docker rename slave master

