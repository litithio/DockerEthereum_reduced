#1-2.
FROM img_leanbase:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>


# 2.Ethereum
RUN add-apt-repository -y ppa:ethereum/ethereum && \
		apt-get install ethereum  -y  && \
		geth version

#3-4. 
	RUN mkdir -p root/ethereum/test
	WORKDIR  root/ethereum


	COPY /files/* ./
	RUN mkdir node 

#extra

	EXPOSE 8545
	EXPOSE 8000



#7-10 run Node and Generate DAG by mining
RUN geth --datadir="./node"  init Genesis.json && \
    sleep 2
CMD node.sh && \
	sleep 4 && \
	echo "personal.newAccount('asd'); miner.start(); admin.sleepBlocks(10); miner.stop()" | \
	geth attach ipc:./node/geth.ipc


	RUN rm -rf node/
