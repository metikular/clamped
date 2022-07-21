# Clamped

`Clamped` monkey patches a couple of Ruby classes to clamp values to a whitelist.

For example:

```ruby
"apple".clamped(%w[banana orange])
# nil


"apple".clamped(%w[apple banana])
# "apple"
```

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add clamped

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install clamped

## Usage

Supported classes:

- [`String`](#string)
- [`Symbol`](#symbol)
- [`Array`](#array)
- [`Hash`](#hash)

### String

```ruby
"apple".clamped(%w[banana orange])
# nil


"apple".clamped(%w[apple banana])
# "apple"
```

`strict: false` calls `to_s` on the passed array:

```ruby
"apple".clamped(%i[apple banana], strict: false)
# "apple"
```

### Symbol

```ruby
:apple.clamped(%i[banana orange])
# nil


:apple.clamped(%i[apple banana])
# :apple
```

`strict: false` calls `to_sym` on the passed array:

```ruby
:apple.clamped(%w[apple banana], strict: false)
# :apple
```

### Array

Clamp an array with another array:

```ruby
%i[apple banana orange].clamped %i[apple banana]
# %i[apple banana]
```

### Hash

```ruby
{
  apple: 'golden',
  banana: 'cavendish',
  orange: 'sinensis'
}.clamped %i[apple banana]
# {
#   apple: 'golden',
#   banana: 'cavendish'
# }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/metikular/clamped.
