RSpec.describe Magick::Image, '#raise' do
  it 'works' do
    img = described_class.new(20, 20)

    res = img.raise
    expect(res).to be_instance_of(described_class)

    expect { img.raise(4) }.not_to raise_error
    expect { img.raise(4, 4) }.not_to raise_error
    expect { img.raise(4, 4, false) }.not_to raise_error
    expect { img.raise('x') }.to raise_error(TypeError)
    expect { img.raise(2, 'x') }.to raise_error(TypeError)
    expect { img.raise(4, 4, false, 2) }.to raise_error(ArgumentError)
  end
end
