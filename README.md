# Dingo (WIP)

Dingo is my personal mini-Heroku. Inspired by [dokku](https://github.com/progrium/dokku) without docker.

## Overview

Dingo is designed for personal use without docker, so that you don't have
to waste resource for docker.

Currently supports building apps of:

1. python
2. nodejs

## Installation

**ONLY TESTED ON UBUNTU**

It is better to install on a clean machine:

    $ export DINGO_HOSTNAME=dingoapp.me  # change to your hostname
    $ wget -qO- https://raw.github.com/lepture/dingo/master/bootstrap.sh | sudo bash

And everything should be ready. Add your ssh pub key:

    $ cat ~/.ssh/id_rsa.pub | ssh dingoapp.com "sudo dingo git:add-key lepture"

## Deployment

Let's deploy the [node-js-sample](https://github.com/heroku/node-js-sample):

    $ git remote add dingo git@dingoapp.me:node-js.git
    $ git push dingo master
    Counting objects: 313, done.
    Delta compression using up to 4 threads.
    Compressing objects: 100% (269/269), done.
    Writing objects: 100% (313/313), 200.62 KiB | 0 bytes/s, done.
    Total 313 (delta 16), reused 313 (delta 16)
    remote: ----> Receive:   node-js
    remote: HEAD is now at e543fcc... Remove path level so always use the latest node and npm
    remote: ----> Building:  node-js
    remote: Requested node range:  0.10.x
    remote: Resolved node version: 0.10.25
    remote: Install dependencies

    ... blah blah blah

    remote: Ping http://127.0.0.1:33493
    remote: http://127.0.0.1:33493 is up
    remote: ----> Deploying: node-js
    remote: ----> http://node-js.dingoapp.me
    To git@dingoapp.me:node-js.git
     * [new branch]      master -> master
    $ curl http://node-js.dingoapp.me/

It just works. You should replace the hostname yourself.

## License

BSD
