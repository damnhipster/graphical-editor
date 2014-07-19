require_relative '../command'

describe Command do

  it "should parse a create command" do
    command = Command.new('I32')
    expect(command.instruction).to be :new_image
    expect(command.row).to be 3
    expect(command.column).to be 2
  end

  it "should parse a color command" do
    command = Command.new('L12A')
    expect(command.instruction).to be :color_pixel
    expect(command.row).to be 1
    expect(command.column).to be 2
    expect(command.color).to eq 'A'
  end

  it "should parse a clear command" do
    command = Command.new('C')
    expect(command.instruction).to be :clear_image
  end

end
