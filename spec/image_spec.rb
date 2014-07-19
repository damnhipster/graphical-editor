require_relative '../image'

describe Image do

  it "should not be bigger than 250 x 250" do
    expect{ Image.create(251,251) }.to raise_error(RuntimeError, "Image too big")
  end

end
