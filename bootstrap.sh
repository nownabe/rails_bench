#!/bin/bash

export RAILS_ENV=production

rake db:create
rake db:migrate

/usr/local/bundle/bin/unicorn -D -c config/unicorn.rb -E production
/usr/sbin/nginx -g "daemon off;"
