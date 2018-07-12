

# echo "stop and remove sync2 container..."
# sudo docker stop sync2
# sudo docker rm sync2
# sudo rm -rf ~/dockernode/sync2/eosforce
# sudo rm -rf ~/dockernode/sync2/nodeos/eosforce


echo "start sync2 container..."
mkdir -p ~/dockernode/sync2/eosforce
mkdir -p ~/dockernode/sync2/nodeos/eosforce
cp  genesis.json *.wasm *.abi  ~/dockernode/sync2/eosforce
cp config.sync2.ini   ~/dockernode/sync2/eosforce/config.ini

sudo docker run -d --restart=always --name sync2 -v ~/dockernode/sync2/eosforce:/opt/eosio/bin/data-dir -v ~/dockernode/sync2/nodeos/eosforce:/root/.local/share/eosio/nodeos -p 8889:8889 -p 9877:9877 eosforce/eos:v1.0 nodeosd.sh

