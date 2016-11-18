# askCharlie's Guestbook

Remember the old Guestbooks on Geocities-era websites? They're back! :)

## Requirements

- Ruby 2.3
- Redis
- Postgres

## Setup


### Environment variables

After installation of all gems, set the following environment variables:

- REDIS_HOST
- DATABASE_URL

`DATABASE_URL` needs to be on the following format:

```
postgres://<username>:<password>@<host>/<database-name>
```


### Database Setup

Before starting the app, you need to run the migrations


```
$ bundle exec rake db:migrate
```

## Running

```
$ bundle exec rackup -s Puma
```
