

echo "stop and remove sync2 container..."
sudo docker stop sync2


echo "start sync2 container..."
cp config.sync2.ini   ~/dockernode/sync2/eosforce/config.ini

sudo docker start sync2

