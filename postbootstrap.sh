#!/bin/bash

docker run --rm \
  --env DATABASE_URL="postgres://guestbook:superpass@192.168.30.30/guestbook" \
  hub.askcharlie.de/guestbook bundle exec rake db:migrate
echo "Rebooting ..." && reboot
