

echo "stop master container..."
sudo docker stop master


echo "copy slave config to bp container..."
cp config.slave.ini   ~/dockernode/bp/eosforce/config.ini

echo "start bp with slave config"
sudo docker start master

echo "change master to slave"
sudo docker rename master slave

 



