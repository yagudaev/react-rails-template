# React Rails Template

A template to help you get started with React and Rails. Simple conventions vs. configurations.

## Technology Stack

Client-Side:
* Bower
* npm
* Brunch
* Bootstrap
* React
* Flux

Server:
* Rails 4
* Postgres

## Features

* Designed to work with heroku out of the box
* Simple to start with minimum setup

## Getting Started

### Build

Simply run

```
./steep
```

Like a perfectly fine cup of tea, it will take a few minutes to get it quite right. So be patient.

The script will install the needed dependencies and watch the `app/client` directory for further changes.
The page will be live-reloaded when a change is detected :).

## Heroku

Add the following buildpack to your heroku environment

```
heroku config:add BUILDPACK_URL=git://github.com/yagudaev/heroku-buildpack-ruby-bower.git#run-bower
```

## Assumptions

1. You are using `NVM` to manage your node environment. If you aren't, you should! It would make your life much better. It is similar to `rbenv`.

```
which node # should return something like: /Users/mike/.nvm/v0.12.1/bin/node, if it doesn't remove the node binary and route it through nvm
which npm  # similar to above, should be: /Users/mike/.nvm/v0.12.1/bin/npm
```

2. NEVER install things as sudo for `npm`. Remember, we are using NVM and the binaries should be part of the `$PATH`.
Therefore you should never need root permissions to write to your own home directory.

## Known Issues

1. If you see something along the line of:

```
npm ERR! Darwin 14.1.0
npm ERR! argv "/Users/mike/.nvm/v0.12.1/bin/node" "/Users/mike/.nvm/v0.12.1/bin/npm" "install" "-g" "anysort"
npm ERR! node v0.12.1
npm ERR! npm  v2.5.1
npm ERR! path /Users/mike/.npm/anysort/1.0.0
npm ERR! code EACCES
npm ERR! errno -13

npm ERR! Error: EACCES, mkdir '/Users/mike/.npm/anysort/1.0.0'
npm ERR!     at Error (native)
npm ERR!  { [Error: EACCES, mkdir '/Users/mike/.npm/anysort/1.0.0']
npm ERR!   errno: -13,
npm ERR!   code: 'EACCES',
npm ERR!   path: '/Users/mike/.npm/anysort/1.0.0' }
npm ERR!
npm ERR! Please try running this command again as root/Administrator.

npm ERR! Please include the following file with any support request:
npm ERR!     /Users/mike/projects/react-rails-template/app/client/npm-debug.log
```

Check the permissions on that folder
 
```
ls -l /Users/mike/.npm/anysort # drwxr-xr-x    3 root  staff    102  7 Oct 12:49
```