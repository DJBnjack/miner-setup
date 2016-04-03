./AMD-APP-SDK-v2.9-1.599.381-GA-linux64.sh
ln -s /opt/AMDAPPSDK-2.9-1 /opt/AMDAPP
ln -s /opt/AMDAPP/include/CL /usr/include
ln -s /opt/AMDAPP/lib/x86_64/* /usr/lib/
ldconfig
reboot
