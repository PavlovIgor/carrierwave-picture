module PictureConverter
  def self.convert(current_path)
    system "convert -interlace Plane -quality 80 #{current_path} #{current_path}.webp" unless File.extname(current_path) == "webp"
    system "convert -interlace Plane -quality 80 #{current_path} #{current_path}.jpg" unless File.extname(current_path) == "jpg"
  end
end
