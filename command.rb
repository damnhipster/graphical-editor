class Command

  attr_accessor :instruction, :row, :column, :color, :from, :to

  @@instructions = {
    new_image: 'I',
    color_pixel: 'L',
    clear_image: 'C',
    show_image: 'S',
    vertical_line: 'V',
    horizontal_line: 'H',
    quit: 'X'
  }

  def self.parse(user_command)
    command = user_command.split(' ')
    instruction = @@instructions.key(command[0])
    if(instruction.to_s.include?('line'))
      create_line_command(instruction, command)
    else
      row = command[1].to_i
      column = command[2].to_i
      color = command[3] || 'O'
      self.new(instruction, row, column, color, nil, nil)
    end
  end

  private

    def initialize(instruction, row, column, color, from, to)
      @instruction, @row, @column, @color, @from, @to = instruction, row, column, color, from, to
    end

    def self.create_line_command(instruction, command)
      color = command[4] || 'O'
      if instruction == :vertical_line
        from = command[2].to_i
        to = command[3].to_i
        column = command[1].to_i
        self.new(instruction, nil, column, color, from, to)
      elsif instruction == :horizontal_line
        from = command[1].to_i
        to = command[2].to_i
        row = command[3].to_i
        self.new(instruction, row, nil, color, from, to)
      end
    end

end
