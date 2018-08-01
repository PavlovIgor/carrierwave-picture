module PictureHelper
  def picture(path, options = {})

    content_tag(:picture, options) do
      concat content_tag  :source,
                          nil,
                          srcset: "#{path}.webp",
                          type: "image/webp",
                          style: "height: inherit; width: inherit" if File.exist?(Rails.root.join("public/#{path}.webp"))
      concat content_tag  :source,
                          nil,
                          srcset: "#{path}.jpg",
                          type: "image/jpeg",
                          style: "height: inherit; width: inherit" if File.exist?(Rails.root.join("public/#{path}.jpg"))
      concat image_tag path, style: "height: inherit; width: inherit"
    end

  end
end