# Logging-Good

###  hereafter, Rails logger is your best friend 👬

[![Gem Version](https://badge.fury.io/rb/logging_good.svg)](https://badge.fury.io/rb/logging_good)
[![Build Status](https://travis-ci.org/manojnaidu619/logging-good.svg?branch=master)](https://travis-ci.org/manojnaidu619/logging-good)
[![codecov](https://codecov.io/gh/manojnaidu619/logging-good/branch/master/graph/badge.svg)](https://codecov.io/gh/manojnaidu619/logging-good)
[![Gem](https://img.shields.io/gem/v/logging_good.svg?style=flat)](http://rubygems.org/gems/logging_good "View this project in Rubygems")
[![codebeat badge](https://codebeat.co/badges/e47277ea-b906-4560-a86a-e8d265b848cc)](https://codebeat.co/projects/github-com-manojnaidu619-logging-good-master)

[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/manojnaidu619)

![](Logging-Good.gif)

## Installation

```ruby
gem 'logging_good'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install logging_good

## How to use

**IMPORTANT** ! This gem is dependent on two other display formatting gems. Install it by adding below lines to your `Gemfile`

```ruby
 gem "unicode-display_width", '~> 1.6'
 gem "terminal-table", '~> 1.8', '>= 1.8.0'
```
then run `$ bundle install`

So. After installing the above mentioned gems into your `Gemfile`, you are all set to explore this gem further...

Now, add this line into your controller action(s) to get started!
```ruby
 Now.logging_good(params)
```
Other optional Arguments :
```ruby
request
response.headers
```
example:
```ruby
# In app/controllers/abcd_controller.rb

def index
  Now.logging_good(params, request)    
  ......
  ......
end

def create
   Now.logging_good(params)
  ......
  ......
end
  ......
```
That's Basically it. You are now able to see beautifully formatted data in your rails logs 🙌
