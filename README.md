# Artistre
Artistre is a site to help artists schedule recording sessions at studios. Artists can log in and schedule sessions. Guests can view
Sessions scheduled at studios.

## Features

* Artists can view locations and future sessions of studios.
* Artists can schedule recording sessions for free blocks at studios.
* Artists can edit their information as well as session info.

## Installation
Clone the repo
```
git clone https://github.com/speratus/artistre
```
Navigate into the repo folder and then run `bundle update`
to install all the required gems. You willl also have to run `yarn install --check-files` to bring down all the node modules.

Make sure you have Postgres installed so that the 
database works out of the box. Otherwise, you will have to 
change the configuration files to use whatever database you 
have installed.

The easiest way to install postgres on a Mac if Homebrew is installed is to run `brew install postgresql`.