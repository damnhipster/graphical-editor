class Command

  attr_accessor :instruction, :row, :column, :color

  @@instructions = {
    new_image: 'I',
    color_pixel: 'L',
    clear_image: 'C',
    show_image: 'S',
    quit: 'X'
  }

  def self.parse(user_command)
    command = user_command.split(' ')
    instruction = @@instructions.key(command[0])
    row = command[1].to_i
    column = command[2].to_i
    color = command[3] || 'O'
    self.new(instruction, row, column, color)
  end

  def initialize(instruction, row, column, color)
    @instruction, @row, @column, @color = instruction, row, column, color
  end

end
