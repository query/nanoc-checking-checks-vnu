# Nanoc::Checking::Checks::Vnu

A [nanoc check][nanoc-check] that validates HTML, CSS, and SVG output files
locally with [the Nu Html Checker][vnu] (v.Nu).

[nanoc-check]: https://nanoc.ws/doc/testing/
[vnu]: https://validator.github.io/validator/

## Installation

Install v.Nu and place the `vnu` executable on your `PATH`.

Add this line to your application's Gemfile:

```ruby
gem 'nanoc-checking-checks-vnu'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install nanoc-checking-checks-vnu

## Usage

Add this line to a Ruby file inside your site's `lib` directory:

```ruby
require 'nanoc/checking/checks/vnu'
```

Then execute:

    $ nanoc check vnu  # prefix with `bundle exec` as appropriate

You can automatically this check at deploy time by adding `vnu` to [the
`checking` section of `nanoc.yaml`][nanoc-check-deploy].

[nanoc-check-deploy]: https://nanoc.ws/doc/testing/#running-checks-before-deploying

## Contributing

Bug reports and pull requests are welcome on GitHub at
<https://github.com/query/nanoc-checking-checks-vnu>.


## License

The gem is available as open source under the terms of the [MIT License][mit].

[mit]: https://opensource.org/licenses/MIT
