# LoggingGood

hereafter, Rails logger is your best friend 👬.

[![Gem Version](https://badge.fury.io/rb/logging_good.svg)](https://badge.fury.io/rb/logging_good)

## Installation

```ruby
gem 'logging_good'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install logging_good

## Usage

Add this line into your controller action(s) to get started!

example:
```ruby
def index
  Now.logging_good(params, request, response.headers)       # Paste this line
  ......
  ......
end
```
