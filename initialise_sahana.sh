#!/bin/bash
CIP= $(docker inspect --format='{{.NetworkSettings.IPAddress}}' sahana)		# sets variable CIP as IP address of sahana container
echo "Copy and paste the random password from next command"
docker logs sahana | grep "Random initial root password"					# inspects container log and displays initial root password
ssh root@$CIP																

