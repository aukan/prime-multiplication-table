##
# Generates and prints a multiplication table.
#
# Author:: Pablo Gonzalez
#
class MultiplicationTable

  attr_accessor :row, :column
  attr_reader :table

  ##
  # Initialize with a row and a column
  #
  def initialize (row, column = nil)
    @row = row
    @column = column || row

    @table = []
  end

  ##
  # Generate 2 dimensional array with multiplication table
  #
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

  ##
  # Create a string which outputs the table.
  #
  # Example:
  #
  #  *  2  4  1
  #  6 12 24  6
  #  8 16 32  8
  #  3  6 12  3
  #
  def to_s
    generate_table

    res = "*"
    @row.each do |re|
      res += "\t#{re}"
    end
    res += "\n"

    @column.each_with_index do |r,i|
      res += "#{r}"
      @row.each_with_index do |c,j|
        res += "\t#{@table[i][j]}"
      end
      res += "\n"
    end

    res
  end

end
