# Dingo (WIP)

Dingo is my personal mini-Heroku. Inspired by [dokku](https://github.com/progrium/dokku) without docker.

## Overview

Dingo is designed for personal use without docker, so that you don't have
to waste resource for docker.

Currently supported:

1. python
2. nodejs

## Installation

**ONLY TESTED ON UBUNTU raring**

It is better to install on a clean machine:

    $ export DINGO_HOSTNAME=dingoapp.me  # change to your hostname
    $ wget -qO- https://raw.github.com/lepture/dingo/master/bootstrap.sh | sudo bash

And everything should be ready. Add your ssh pub key:

    $ cat your_pub.key | dingo git:add-key {your_name}

## Deployment

Let's deploy the [node-js-sample](https://github.com/heroku/node-js-sample):

    $ git remote add dingo git@dingoapp.me:node-js.git
    $ git push dingo master
    $ curl http://node-js.dingoapp.me/

It just works. You should replace the hostname yourself.

## Concept

## Todo

Database commands implementation:

1. mysql
2. mongodb
3. redis

## License

BSD
