sudo su www-data -s /bin/sh -c "git pull"

echo Update tabby-backend...
cd ./tabby-backend
./upgrade_and_build.sh
echo done.

echo Update tabby-frontend...
cd ../tabby-frontend
./upgrade_and_build.sh
echo done.
echo Update complete.
