module PictureConverter
  def self.convert(current_path)

    unless File.exist?("#{current_path}.webp")
      system "convert -interlace Plane -quality 80 #{current_path} #{current_path}.webp"
    end
    unless File.exist?("#{current_path}.jp2")
      system "convert -interlace Plane -quality 80 #{current_path} #{current_path}.jp2"
    end

  end
end
