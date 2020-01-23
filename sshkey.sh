#!/usr/bin/env bash

ssh-keygen -t rsa -b 4096 -C $MYEMAIL
pbcopy < ~/.ssh/id_rsa.pub
open https://github.com/settings/keys
