HADOOP_HOME=/usr/local/hadoop
HADOOP_HOME_SBIN=$HADOOP_HOME/sbin
HADOOP_HOME_BIN=$HADOOP_HOME/bin

# 中原巨資 上課實驗用
sudo addgroup hadoop  
sudo adduser --disabled-password  --gecos "" --ingroup hadoop hduser

#before use ,you should check download area
# 使用前，請確認下載位置
wget http://140.135.77.85/os/2019-Autumn/jdk-8u231-linux-x64.tar.gz
wget http://140.135.77.85/os/2019-Autumn/hadoop-2.10.0.tar.gz

sudo tar zxvf hadoop-2.10.0.tar.gz -C /usr/local/
sudo tar zxvf jdk-8u231-linux-x64.tar.gz -C /usr/local/
sudo ln -s /usr/local/hadoop-2.10.0/ $HADOOP_HOME
sudo ln -s /usr/local/jdk1.8.0_231/ /usr/local/jdk
sudo chown -R hduser:hadoop /usr/local/hadoop-2.10.0/
sudo chown -R root:root /usr/local/jdk1.8.0_231


sudo git clone  https://github.com/wuboom/CYCU_BigDataClass.git $HADOOP_HOME/etc/CYCU_BigDataClass
sudo chown -R hduser:hadoop $HADOOP_HOME/etc/CYCU_BigDataClass
sudo mv $HADOOP_HOME/etc/hadoop $HADOOP_HOME/etc/hadoop_bak
sudo ln -s $HADOOP_HOME/etc/CYCU_BigDataClass/hadoop_multi_nodes/hadoop $HADOOP_HOME/etc/hadoop

#sudo su hduser -c $HADOOP_HOME_SBIN/hadoop-daemon.sh start datanode
#sudo su hduser -c $HADOOP_HOME_BIN/hdfs dfsadmin -printTopology
#sudo su hduser -c $HADOOP_HOME_SBIN/yarn-daemon.sh start nodemanager
#sudo su hduser -c $HADOOP_HOME_BIN/yarn node -list -all
