module PictureConverter
  def self.convert(current_path)
    system "convert -interlace Plane -quality 80 #{current_path} #{current_path}.webp" unless File.extname(current_path) == "webp"
    system "convert -interlace Plane -quality 80 #{current_path} #{current_path}.jp2" unless File.extname(current_path) == "jp2"
  end
end
