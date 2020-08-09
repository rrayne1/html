#!/bin/bash
deploy="mini-script.sh"
echo '#!/bin/bash' > $deploy
echo 'cd /var/www/html' >> $deploy
echo 'if ! [ -d .git ] ; then' >> $deploy
echo 'sudo rm -rf ../html' >> $deploy
echo 'sudo git clone https://github.com/rrayne1/html.git html' >> $deploy
echo 'else' >>$deploy
echo 'sudo git pull origin master' >> $deploy
echo 'fi' >> $deploy

git add .
git commit -m "1"
git push
ssh $1@127.0.0.1 -p $2 'bash -s' < $deploy
rm -rf $deploy
