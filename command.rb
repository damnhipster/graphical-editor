class Command

  attr_accessor :instruction, :row, :column, :color

  @@instructions = {
    new_image: 'I',
    color_pixel: 'L',
    clear_image: 'C',
    show_image: 'S',
    quit: 'X'
  }

  def self.parse(command)
    self.new(command.split(' '))
  end

  def initialize(command)
    @instruction = @@instructions.key(command[0])
    @row = command[1].to_i
    @column = command[2].to_i
    @color = command[3] || 'O'
  end

end
