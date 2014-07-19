require_relative '../image'

describe Image do

  it "should not be bigger than 250 x 250" do
    expect{ Image.create(251,251) }.to raise_error(RuntimeError, "Image too big")
  end

  describe '#draw_vertical_line' do

    it "should draw a line on the image" do
      image = Image.create(10, 10)
      image.draw_vertical_line(1, 2, 3, 'A')
      expect(image.image[1][0]).to eq('A')
      expect(image.image[2][0]).to eq('A')
    end

  end

end
