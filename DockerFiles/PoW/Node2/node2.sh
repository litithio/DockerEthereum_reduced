geth --rpc --rpcport 8555 --rpcaddr "0.0.0.0" \
   --rpcapi  "admin,eth,miner,net,personal,web3" \
	 --port 30503 --networkid 22 \
	 --datadir="./node" --ipcpath="geth.ipc" \
	 --rpccorsdomain "*" \
	 --nodiscover

