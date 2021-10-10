#!/bin/bash

echo "updating packages..."
echo ""
echo ""
sleep 2s

sudo apt update

echo ""
echo ""
echo "install prereq packages"

echo ""
echo ""

sleep 2s

sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common 

echo ""
echo ""
echo ""

echo "retreiving key from docker"

echo ""
echo ""

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

echo ""
echo ""

echo "adding docker ce repo"

echo ""
echo ""
sleep 2s

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

echo ""
echo ""

echo "updating package db with new repo"

echo ""
echo ""

sudo apt update

echo ""
echo ""
echo "makeing sure install is from docker repo for latest version"

echo ""
echo ""

sudo apt-cache policy docker-de

echo ""
echo ""
echo "installing docker-ce"
echo ""
echo ""

sudo apt install docker-ce

echo ""
echo ""
echo "updating db one more time "

sudo apt update

echo "done"



