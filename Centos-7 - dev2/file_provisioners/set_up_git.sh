#!/bin/bash
############################################################
##### Set up your git account using this script        #####
##### You should have already set your git key created #####
##### by the packer build into the gitlab UI 		   #####
############################################################

# Clone the repository
git clone ssh://git@git.spine2.ncrs.nhs.uk/spine/spine-repo.git spineii

# Set tracking and init the repo
cd ~/spineii
git branch --set-upstream master origin/master
git flow init -d

# Get the latest code
git pull origin develop

# Set up commit hooks
cd
git clone git@git.spine2.ncrs.nhs.uk:spine/developer-setup-scripts.git
cd ~/developer-setup-scripts
./setup-git.sh