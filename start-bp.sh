
echo "start bp container..."
mkdir -p ~/dockernode/bp/eosforce
mkdir -p ~/dockernode/bp/nodeos/eosforce
cp  genesis.json *.wasm *.abi  ~/dockernode/bp/eosforce
cp config.slave.ini   ~/dockernode/bp/eosforce/config.ini

sudo docker run -d --restart=always --name slave -v ~/dockernode/bp/eosforce:/opt/eosio/bin/data-dir -v ~/dockernode/bp/nodeos/eosforce:/root/.local/share/eosio/nodeos  -p 9876:9876 eosforce/eos:v1.0 nodeosd.sh
