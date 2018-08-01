# Carrierwave::Picture

Simple gem for converting images to webp and progressive jpeg via imagemagic and add picture_tag to action view.

## Installation

Check that you have installed imagemagick:

    $ convert -version

If not, type in your OSX console:

    $ brew install imagemagick

Or in your Debian, Ubuntu console:

    apt-get -y install imagemagick

Or in your CentOS, Fedora console:

    yum -y install ImageMagick

After ImageMagic installed add this line to your application's Gemfile:

```ruby
gem 'carrierwave-picture'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carrierwave-picture

## Usage

Include CarrierWave::Picture into your CarrierWave uploader and call convert method after carrierwave store:

```ruby
class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::Picture

  after :store, :convert
end
```

This will automatically create webp and jpg versions of the image. Now you can call picture_tag show in your views:

```ruby
<%= picture image_path, options_hash %>
```

Example:
```ruby
<%= picture 'image.png', class: 'card' %>
```

It is return html code like:
```html
<picture class="card">
  <source srcset="image.png.webp" type="image/webp" style="height: inherit; width: inherit">
  <source srcset="image.png.jpg" type="image/jpeg" style="height: inherit; width: inherit">
  <img style="height: inherit; width: inherit" src="image.png" alt="">
</picture>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/carrierwave-picture. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
