#!/bin/sh

newHostname=$1
echo "Changing hostname to $newHostname..."
sudo sed -i "s/127.0.1.1.*/127.0.1.1    $newHostname/" /etc/hosts
echo $newHostname | sudo tee /etc/hostname
echo "done"
