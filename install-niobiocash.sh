mkdir /home/ubuntu/.niobio/


#daemon niobiocash
./niobiod --rpc-bind-port=8314 --rpc-bind-ip=0.0.0.0

#gera a carteira
./walletd --container-file=/home/ubuntu/.niobio/niobio --container-password=nio2018 --generate-container

#inicia com base no config
./walletd --config=/home/ubuntu/.niobio/niobiocash.conf --daemon

./walletd --container-file=/home/ubuntu/.niobio/niobio  --container-password=nio2018 --daemon-port=8313 --bind-port=8071 --server-root=/home/ubuntu/.niobio --daemon

#simplewallet
./simplewallet --wallet-file=/home/ubuntu/.niobio/niobio --pass=nio2018 --rpc-bind-port=8350


curl -X POST -i -H "Accept: application/json" -d '{"params": {},"jsonrpc": "2.0", "id": "test","method":"getAddresses"}' http://localhost:8070/json_rpc

curl -X POST -i -H "Accept: application/json" -d '{"params": {},"jsonrpc": "2.0", "id": "test","method":"createAddress"}' http://localhost:8070/json_rpc