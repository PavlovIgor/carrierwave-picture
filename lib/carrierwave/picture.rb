require "carrierwave/picture/version"
require "mini_magic"

module Carrierwave
  module Picture

    def convert(options={})
      version :webp do
        process :convert_to_webp
      end
    end

    def convert_to_webp
      manipulate! do |img|
        img.format("webp")
      end
    end

  end
end
