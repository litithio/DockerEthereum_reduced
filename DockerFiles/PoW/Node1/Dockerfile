FROM img_pow:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>

COPY formatADDPEER.py formatADDPEER.py
COPY node1.sh node1.sh
RUN chmod +x node1.sh

RUN geth --datadir="./node"  init Genesis.json && \
	node1.sh && \
	sleep 6 && \
	echo "admin.nodeInfo.enode" | geth attach ipc:./node/geth.ipc  > nodeinfo.txt  && \
	sleep 6 && \
	python3 formatADDPEER.py && \
	rm -rf formatADDPEER.py && \
	echo "personal.newAccount('asd')" | geth attach ipc:./node/geth.ipc  


CMD cp nodeinfo.txt /home/root/ethereum/share2/node1.txt && \
	node1.sh  && \
	sleep 6 && \
	echo "entrar" && \
	echo "miner.start(); admin.sleepBlocks(10); miner.stop()" | geth attach ipc:./node/geth.ipc  & \
	bash 
