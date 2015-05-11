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
  # Outputs the table to a stream.
  #
  # Example:
  #
  #  *  2  4  1
  #  6 12 24  6
  #  8 16 32  8
  #  3  6 12  3
  #
  def print (stream = $stdout)
    generate_table

    stream.write "*"
    @row.each do |re|
      stream.write "\t#{re}"
    end
    stream.write "\n"

    @column.each_with_index do |r,i|
      stream.write "#{r}"
      @row.each_with_index do |c,j|
        stream.write "\t#{@table[i][j]}"
      end
      stream.write "\n"
    end
  end

end
