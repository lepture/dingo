# Dingo (WIP)

Dingo is a personal mini-Heroku. Inspired by [dokku](https://github.com/progrium/dokku) without docker.

## Overview

Dingo is designed for personal use without docker, so that you don't have
to waste resource for docker.

## Structure

```
/home/dingo
    supervisord/
        $APP.conf
    nginx/
        $APP.conf
    ssl/
        $APP/server.crt
        $APP/server.key
    apps/
        $APP/
    hooks/
        $APP/
    build/
        $APP/
```

### supervisord

We use supervisor for processes monitoring and controling.

http://supervisord.org/

### nginx

We use Nginx for reverse proxy.

### ssl

If you need SSL support, put a `server.crt` and `server.key` in the `ssl`
directory.

### hooks

Hook anything you want for your app:

```
hooks/
    $APP/
        pre-deploy
```

### build

The build environment. For example Python or NodeJS.
