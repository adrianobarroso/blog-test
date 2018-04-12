# SmartFit Test - Adriano W Barroso

## Stack

* ruby 2.3.4
* rails 5.1.6
* postgresql
* redis
* sidekiq

## Running the app

Make sure you have `redis-server` installed.

1. Clone the app `git clone https://github.com/adrianorob/blog-test.git`
2. `bundle install`
3. `rails db:create db:migrate`
4. Open another terminal and run `redis-server`
4. First terminal run `rails s`

## Running Tests

```
rspec
```

#### Thanks in advance
