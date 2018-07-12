

echo "stop and remove sync1 container..."
sudo docker stop sync1


echo "start sync1 container..."
cp config.sync1.ini   ~/dockernode/sync1/eosforce/config.ini

sudo docker start sync1


