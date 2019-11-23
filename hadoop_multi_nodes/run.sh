

sudo addgroup hadoop
sudo adduser --disabled-password  --gecos "" --ingroup hadoop hduser
wget http://172.18.39.68/os/jdk-8u231-linux-x64.tar.gz
wget http://172.18.39.68/os/hadoop-2.10.0.tar.gz
sudo tar zxvf hadoop-2.10.0.tar.gz -C /usr/local/
sudo tar zxvf jdk-8u231-linux-x64.tar.gz -C /usr/local/
sudo ln -s /usr/local/hadoop-2.10.0/ /usr/local/hadoop
sudo ln -s /usr/local/jdk1.8.0_231/ /usr/local/jdk
sudo chown -R hduser:hadoop /usr/local/hadoop-2.10.0/
sudo chown -R root:root /usr/local/jdk1.8.0_231
