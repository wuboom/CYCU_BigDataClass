wget http://140.135.77.85/os/2019-Autumn/spark-3.0.0-preview-bin-without-hadoop.tgz
sudo tar zxvf spark-3.0.0-preview-bin-without-hadoop.tgz -C /usr/local/
sudo ln -s /usr/local/spark-3.0.0-preview-bin-without-hadoop/ /usr/local/spark
sudo chown -R hduser:hadoop /usr/local/spark-3.0.0-preview-bin-without-hadoop/
