# Installing the scripts

## Update
```bash
sudo su
wget -qO- https://raw.githubusercontent.com/DJBnjack/miner-setup/master/update.sh | sh
```

## Install Ethereum
```bash
sudo su
wget -qO- https://raw.githubusercontent.com/DJBnjack/miner-setup/master/ethereum.sh | sh
```

## Update the chain (NO SUDO)
```bash
wget -qO- https://raw.githubusercontent.com/DJBnjack/miner-setup/master/importchain.sh | sh
```
Then wait till it's on the last block ([stats](https://ethstats.net/))

## Install AMD drivers
Go to http://developer.amd.com/tools-and-sdks/opencl-zone/amd-accelerated-parallel-processing-app-sdk/
and download AMD-APP-SDK-linux-v2.9-1.599.381-GA-x64.tar.bz2

Then run:
```bash
sudo su
tar xvf AMD-APP-SDK-linux-v2.9-1.599.381-GA-x64.tar.bz2
./AMD-APP-SDK-v2.9-1.599.381-GA-linux64.sh
```
Press q and then y
Then another enter

Then:
```bash
sudo su
wget -qO- https://raw.githubusercontent.com/DJBnjack/miner-setup/master/amd.sh | sh
```

And... REBOOT!

## Final steps for AMD
```bash
sudo su
apt-get install fglrx-updates
aticonfig --adapter=all --initial
aticonfig --list-adapters
```
## Installing mining proxy
```bash
sudo apt-get install python-twisted
git clone https://github.com/Atrides/eth-proxy.git
```

## Installing Ethminer
```bash
sudo add-apt-repository ppa:ethereum/ethereum-qt
sudo add-apt-repository ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install cpp-ethereum
```

# Running the miner
```bash
python ./eth-proxy.py
```

```bash
geth --rpc=true --rpcport 8000 --rpccorsdomain '"*"' 2>> geth.log
```

```bash
tail -f geth.log
```

```bash
ethminer --farm-recheck 200 -G -F http://127.0.0.1:8080/rig1
```
