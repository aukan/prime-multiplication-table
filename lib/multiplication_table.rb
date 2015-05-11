class MultiplicationTable

  attr_accessor :row, :column, :screen_size
  attr_reader :table

  def initialize (row, column = nil, screen_size = 80)
    @row = row
    @column = column || row
    @screen_size = screen_size

    @table = []
  end

  # Generate 2 dimensional array with multiplication table
  def generate_table
    @table = []

    @column.each_with_index do |re, i|
      @table.push(@row.map{|e| e*re})
    end

    if @column.size === 0
      @table.push([])
    end

    @table
  end

  def to_s
  end

end
