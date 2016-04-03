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
wget -qO- https://raw.githubusercontent.com/DJBnjack/miner-setup/master/amd1.sh | sh
```
Press enter 300x and then y

Then:
```bash
wget -qO- https://raw.githubusercontent.com/DJBnjack/miner-setup/master/amd2.sh | sh
```


