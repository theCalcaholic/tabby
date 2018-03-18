#!/bin/bash
cd "${0%/*}"

sudo su www-data -s /bin/sh -c "git pull --recurse-submodules=yes"

echo Update tabby-common
cd ./tabby-common
./build.sh
echo done.

echo Update tabby-backend...
cd ../tabby-backend
./build.sh
echo done.

echo Update tabby-frontend...
cd ../tabby-frontend
./build.sh
echo done.
echo Update complete.
