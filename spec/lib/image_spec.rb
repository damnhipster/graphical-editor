describe Image do

  it "should not be bigger than 250 x 250" do
    expect{ Image.create(251,251) }.to raise_error(RuntimeError, "Image too big")
  end

  describe '#draw_vertical_line' do

    it "should draw a line top to bottom on the image" do
      image = Image.create(10, 10)
      image.draw_vertical_line(1, 2, 3, 'A')
      expect(image.image[1][0]).to eq('A')
      expect(image.image[2][0]).to eq('A')
    end

    it "should draw a line bottom to top on the image" do
      image = Image.create(10, 10)
      image.draw_vertical_line(1, 3, 2, 'A')
      expect(image.image[1][0]).to eq('A')
      expect(image.image[2][0]).to eq('A')
    end

  end

  describe '#draw_horizontal_line' do

    it "should draw a line left to right on the image" do
      image = Image.create(10, 10)
      image.draw_horizontal_line(1, 2, 3, 'A')
      expect(image.image[0][1]).to eq('A')
      expect(image.image[0][2]).to eq('A')
    end

    it "should draw a line right to left on the image" do
      image = Image.create(10, 10)
      image.draw_horizontal_line(1, 3, 2, 'A')
      expect(image.image[0][1]).to eq('A')
      expect(image.image[0][2]).to eq('A')
    end

  end

end
