## Conditionally nullify attributes.

[![Gem Version](https://badge.fury.io/rb/nullify-attr.svg)](https://badge.fury.io/rb/nullify-attr)

## About
Allows to conditionally (support both `if` and `unless`.) nullify attributes in `before_validation` hook.

## Usage
```ruby
class Post < ActiveRecord::Base
  # Store description as NULL when description is blank.
  nullify :description, unless: :description?
end

class Payment < ActiveRecord::Base
  # We don't want to store bank card vendor when payment method isn't bank card.
  nullify :bank_card_vendor, unless: :paid_using_bank_card?
end
```

## Installing gem
Add to your Gemfile:
```ruby
gem 'nullify-attr', '~> 1.0'
```
