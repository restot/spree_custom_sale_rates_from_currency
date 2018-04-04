Spree Custom Currency Rates
================================

You can setup another currencies and rates. 

Logic next: 
1. Get product.variant.currency
2. If product.variant.currency == MainCurrency
3. product.price * MainCurrency.rate # yep you can specified a main currency rate
4. else  product.price * product.variant.currency.rate

In admin panel in column price you can see product price in original currency and price in main currency if original currency exist.

Note: After install gem, all prices on your shop proceed this gem.
Note: If you dont want change main currency rate, just create this currency with rate 1, you can see main currency rate in first fake row in "AdminPanel -> Rates"  # its not bug, its feature

## Installation

1. Add this extension to your Gemfile with this line:
  ```ruby
  gem 'spree_custom_sale_rates_from_currency', github: '[your-github-handle]/spree_custom_sale_rates_from_currency'
  ```

2. Install the gem using Bundler:
  ```ruby
  bundle install
  ```

3. Copy & run migrations
  ```ruby
  bundle exec rails g spree_custom_sale_rates_from_currency:install
  ```

4. Restart your server

  If your server was running, restart it so that it can find the assets properly.

## Testing

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_custom_sale_rates_from_currency/factories'
```


## Contributing

If you'd like to contribute, please take a look at the
[instructions](CONTRIBUTING.md) for installing dependencies and crafting a good
pull request.

Copyright (c) 2017 [name of extension creator], released under the New BSD License