##
# Writes a multiplication table to a stream.
#
# Author:: Pablo Gonzalez
#
class MultiplicationTable

  attr_accessor :row, :column

  ##
  # Initialize with a row and a column
  #
  def initialize (row, column = nil)
    @row = row
    @column = column || row
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
    stream.write "*"
    @row.each do |re|
      stream.write "\t#{re}"
    end
    stream.write "\n"

    @column.each_with_index do |r,i|
      stream.write "#{r}"
      @row.each_with_index do |c,j|
        stream.write "\t#{c * r}"
      end
      stream.write "\n"
    end
  end

end
