# 中原巨資 上課實驗用
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


sudo git clone https://github.com/fychao/CYCU_BigDataClass.git /usr/local/hadoop/etc/CYCU_BigDataClass
sudo chown -R hduser:hadoop /usr/local/hadoop/etc/CYCU_BigDataClass
sudo mv /usr/local/hadoop/etc/hadoop /usr/local/hadoop/etc/hadoop_bak
sudo ln -s /usr/local/hadoop/etc/CYCU_BigDataClass/hadoop_multi_nodes/hadoop /usr/local/hadoop/etc/hadoop
