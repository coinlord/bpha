

# echo "stop and remove sync1 container..."
# sudo docker stop sync1
# sudo docker rm sync1
# sudo rm -rf ~/dockernode/sync1/eosforce
# sudo rm -rf ~/dockernode/sync1/nodeos/eosforce


echo "start sync1 container..."
mkdir -p ~/dockernode/sync1/eosforce
mkdir -p ~/dockernode/sync1/nodeos/eosforce
cp  genesis.json *.wasm *.abi  ~/dockernode/sync1/eosforce
cp config.sync1.ini   ~/dockernode/sync1/eosforce/config.ini

sudo docker run -d --restart=always --name sync1 -v ~/dockernode/sync1/eosforce:/opt/eosio/bin/data-dir -v ~/dockernode/sync1/nodeos/eosforce:/root/.local/share/eosio/nodeos -p 8888:8888 -p 9876:9876 eosforce/eos:v1.0 nodeosd.sh

