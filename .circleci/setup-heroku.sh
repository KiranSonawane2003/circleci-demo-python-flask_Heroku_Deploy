#!/bin/bash
git remote add heroku https://git.heroku.com/circleci-demo-python-flask.git
wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz
sudo mkdir -p /usr/local/lib /usr/local/bin
sudo tar -xvzf heroku-linux-amd64.tar.gz -C /usr/local/lib
sudo ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku

cat > ~/.netrc << EOF
machine api.heroku.com
  login kiransonawane.nmims@gmail.com
  password Kiran@257874
machine git.heroku.com
  login kiransonawane.nmims@gmail.com
  password Kiran@257874
EOF
