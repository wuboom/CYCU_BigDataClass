
remember to set following variables in `.bashrc` in `hduser`

```bash=
export SPARK_HOME=/usr/local/spark
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export LD_LIBRARY_PATH=$HADOOP_HOME/lib/native:$LD_LIBRARY_PATH

export PATH=$SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH

# https://spark.apache.org/docs/latest/hadoop-provided.html
export SPARK_DIST_CLASSPATH=$(hadoop classpath)
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'


```

