#!/bin/bash

yum update -y

yum install nano wget curl net-tools mlocate bash-completion -y 
source /etc/profile.d/bash_completion.sh
updatedb
