require 'carrierwave-picture/picture_helper'

module Picture

  class Railtie < Rails::Railtie
    initializer 'picture.helper' do |app|
      ActionView::Base.send :include, PictureHelper
    end
  end

end
