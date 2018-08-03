module PictureHelper
  def picture_tag(path, options = {})

    content_tag(:picture, options) do
      concat content_tag  :source,
                          nil,
                          srcset: "#{path}.webp",
                          type: "image/webp",
                          style: "height: inherit; width: inherit" if File.exist?(Rails.root.join("public/#{path}.webp"))
      concat content_tag  :source,
                          nil,
                          srcset: "#{path}.jp2",
                          type: "image/jp2",
                          style: "height: inherit; width: inherit" if File.exist?(Rails.root.join("public/#{path}.jp2"))
      concat image_tag path, style: "height: inherit; width: inherit"
    end

  end
end
