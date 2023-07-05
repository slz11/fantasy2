#! /usr/bin/env sh

set -e

echo "executing $0 {"

rm -rf fantasy2_webserver/
git clone "https://$MACHINE_USER_TOKEN@github.com/slz11/fantasy2_webserver.git"
cd fantasy2_webserver/
cp ../index.html .
git add --all
git commit -m "$(date)" || true
git push

cd ../
rm -rf fantasy2_webserver/
echo "done $0}"