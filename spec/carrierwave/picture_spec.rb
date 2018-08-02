RSpec.describe Carrierwave::Picture do

  it "has a version number" do
    expect(Carrierwave::Picture::VERSION).not_to be nil
  end

  let(:main_file) { 'spec/assets/img/snega-black.png' }
  let(:webp_file) { 'spec/assets/img/snega-black.png.webp' }
  let(:jp2_file) { 'spec/assets/img/snega-black.png.jp2' }

  before { PictureConverter.convert(main_file) }

  after do
    FileUtils.rm(webp_file)
    FileUtils.rm(jp2_file)
  end

  describe "Converter" do

    it "main file should be exist" do
      expect(Pathname.new(main_file)).to exist
    end
    it "webp file should be exist" do
      expect(Pathname.new(webp_file)).to exist
    end
    it "jp2 file should be exist" do
      expect(Pathname.new(jp2_file)).to exist
    end

  end

end
