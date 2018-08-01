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

This will automatically create webp and jpg versions of the image. Now you can call picture_tag in your views:

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

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
