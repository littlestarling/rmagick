RSpec.describe Magick::Image, '#shave' do
  before do
    @img = Magick::Image.new(20, 20)
    @p = Magick::Image.read(IMAGE_WITH_PROFILE).first.color_profile
  end

  it 'works' do
    expect do
      res = @img.shave(5, 5)
      expect(res).to be_instance_of(Magick::Image)
    end.not_to raise_error
  end
end