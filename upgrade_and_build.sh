#!/bin/bash
cd "${0%/*}"

sudo -u www-data git pull --recurse-submodules=yes

echo Update tabby-backend...
cd ./tabby-backend
./build.sh
echo done.

echo Update tabby-frontend...
cd ../tabby-frontend
./build.sh
echo done.
echo Update complete.
