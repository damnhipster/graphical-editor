require_relative '../command'

describe Command, '.parse' do

  it "should parse a create command" do
    command = Command.parse('I 3 2')
    expect(command.instruction).to eq :new_image
    expect(command.row).to eq 3
    expect(command.column).to eq 2
  end

  it "should parse a color command" do
    command = Command.parse('L 1 2 A')
    expect(command.instruction).to eq :color_pixel
    expect(command.row).to eq 1
    expect(command.column).to eq 2
    expect(command.color).to eq 'A'
  end

  it "should parse a vertical line command" do
    command = Command.parse('V 1 1 2 A')
    expect(command.instruction).to eq :vertical_line
    expect(command.column).to eq 1
    expect(command.from).to eq 1
    expect(command.to).to eq 2
    expect(command.color).to eq 'A'
  end

  it "should parse a horizontal line command" do
    command = Command.parse('H 2 1 1 A')
    expect(command.instruction).to eq :horizontal_line
    expect(command.row).to eq 1
    expect(command.from).to eq 2
    expect(command.to).to eq 1
    expect(command.color).to eq 'A'
  end

  it "should parse a clear command" do
    command = Command.parse('C')
    expect(command.instruction).to eq :clear_image
  end

  it "should parse a show command" do
    command = Command.parse('S')
    expect(command.instruction).to eq :show_image
  end

  it "should parse an exit command" do
    command = Command.parse('X')
    expect(command.instruction).to eq :quit
  end

end
