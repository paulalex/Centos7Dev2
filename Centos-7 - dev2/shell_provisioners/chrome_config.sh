#!/bin/bash

CHROME_DRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`

# download the latest stable version of chrome
wget --no-check-certificate https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

sudo yum -y install ./google-chrome-stable_current_*.rpm
sudo rm -f ./google-chrome-stable_current_*.rpm

# Install ChromeDriver.
wget -N https://chromedriver.storage.googleapis.com/2.42/chromedriver_linux64.zip -P ~/
unzip ~/chromedriver_linux64.zip -d ~/
rm ~/chromedriver_linux64.zip
sudo mv -f ~/chromedriver /usr/local/bin/chromedriver
sudo chown root:root /usr/local/bin/chromedriver
sudo chmod 0755 /usr/local/bin/chromedriver