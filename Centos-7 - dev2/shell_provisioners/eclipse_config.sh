#!/bin/bash

# Get the eclipse tar file
wget -O eclipse.tar.gz http://ftp.stu.edu.tw/eclipse/technology/epp/downloads/release/oxygen/3a/eclipse-javascript-oxygen-3a-linux-gtk-x86_64.tar.gz

# Extract the tar and change into the extraction directory
sudo tar xfz eclipse.tar.gz -C /opt/ 

# Install eclipse
sudo ln -s /opt/eclipse/eclipse /usr/local/bin/eclipse 

rm -fr eclipse.tar.gz

# PyDev
eclipse -application org.eclipse.equinox.p2.director -repository http://pydev.org/updates -installIU org.python.pydev.feature.feature.group
eclipse -application org.eclipse.equinox.p2.director -repository http://pydev.org/updates -installIU org.python.pydev.mylyn.feature.feature.group

