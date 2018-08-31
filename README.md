# README

## What this does

* Visit [http://localhost:3000/](http://localhost:3000/) in a tab (or multiple tabs)
* In a rails console (`bin/rails c`), execute something like this:
```
ActionCable.server.broadcast 'web_notifications_channel', message: '<p><b>Hey Again</b></p>'
```
* Note that in the browser, the message is appended to the `#messages` div!

## Default Rails README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: ruby-2.5.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite
  * `bin/rails test`
* Services (job queues, cache servers, search engines, etc.)
  * `brew install redis`
  * `brew services start redis`

* Deployment instructions

* ...
