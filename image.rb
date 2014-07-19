class Image

  attr_accessor :image

  def self.create(width, height)
    raise "Image too big" if width > 250 || height > 250
    self.new(width, height)
  end

  def color(x,y,color)
    @image[y-1][x-1] = color
  end

  def draw_vertical_line(column,from,to,color)
    (from..to).each { |row| @image[row-1][column-1] = color }
  end

  def clear
    initialize(@width, @height)
  end

  def print
    puts @image.map { |pixels| pixels.join }.join("\n")
  end

  private

    def initialize(width, height)
      @width, @height = width, height
      @image = []
      height.times { @image.push(Array.new(width, 'O')) }
    end

end
