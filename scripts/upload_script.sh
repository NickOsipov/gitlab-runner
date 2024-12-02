# upload infra/scripts/setup_unsecure.sh

HOST_IP=$1
scp -i ~/.ssh/yc infra/scripts/setup_unsecure.sh ubuntu@$HOST_IP:~/setup_unsecure.sh 