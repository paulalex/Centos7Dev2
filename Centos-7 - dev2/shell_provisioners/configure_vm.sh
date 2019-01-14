#!/bin/bash

# Run updates
sudo yum -y update

sudo updatedb

sudo chown dev:dev /home/dev/set_up_git.sh
sudo chmod 744 /home/dev/set_up_git.sh

sudo printenv