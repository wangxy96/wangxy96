#!/bin/bash

#jdk路径
home="/data"
#解压jdk
cd "$home"
tar -zxvf jdk*.tar.gz
jdk=$(find . -maxdepth 1 -type d -name "jdk1*")
mv "$jdk" /data/jdk
#jdk变量添加
echo "export JAVA_HOME=/data/jdk" >> ~/.bashrc
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.bashrc
source ~/.bashrc


#tomcat解压
cd "$home"
tar -zxvf apache*.tar.gz
tomcat=$(find . -maxdepth 1 -type d -name "apache-*")
mv "$tomcat" /data/tomcat
