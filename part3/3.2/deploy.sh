#!/bin/bash
url=$1
usern=$2
passw=$3
repotag=$4
echo $url $usern $passw $repotag
rm -rf target
mkdir target
echo "git clone $url target"
git clone $url target
echo docker build target -t $usern/$repotag
temp=$(docker build target -t $usern/$repotag)
id="${temp##* }"
echo $id
docker login --username=$usern --password=$passw
echo "docker image push $usern/$repotag"
docker image push $usern/$repotag
