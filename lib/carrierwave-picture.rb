require "carrierwave-picture/version"
require "carrierwave-picture/picture_converter"
require "carrierwave-picture/picture_helper"
require 'mini_magick'

module CarrierWave::Picture
  require 'carrierwave-picture/railtie' if defined?(Rails)

  def convert(options = {})
    PictureConverter.convert(current_path)
  end
end
