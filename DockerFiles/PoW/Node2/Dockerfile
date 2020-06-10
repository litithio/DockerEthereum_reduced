#1-2.
FROM img_pow:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>
COPY node2.sh node2.sh
RUN chmod +x node2.sh && \
    geth --datadir="./node"  init Genesis.json && \
    node2.sh  && \
    sleep 6  && \
    echo "admin.nodeInfo.enode" | geth attach ipc:./node/geth.ipc > nodeinfo.txt  && \
    echo "personal.newAccount('asd')" | geth attach ipc:./node/geth.ipc  

CMD node2.sh  && \
	sleep 6 && \
	cat share2/node1.txt | geth attach ipc:./node/geth.ipc && \
	sleep 6 && \
	echo ./share2/node1.txt | geth attach ipc:./node/geth.ipc  && \
	bash