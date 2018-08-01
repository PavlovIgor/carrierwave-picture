require "carrierwave-picture/version"
require "carrierwave-picture/picture_converter"
require "carrierwave-picture/picture_helper"

module CarrierWave::Picture
  require 'carrierwave-picture/railtie' if defined?(Rails)

  def prepare_picture(options = {})
    PictureConverter.convert(current_path)
  end
end
