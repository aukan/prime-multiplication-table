require "#{File.dirname(__FILE__)}/../lib/multiplication_table"

RSpec.describe MultiplicationTable do
  describe '#print' do
    it 'should write the multiplication table to a stream' do
      mt = MultiplicationTable.new [2, 4], [5, 6]

      File.open("#{File.dirname(__FILE__)}/mt.txt", "w+") do |fd|
        mt.print(fd)
      end

      expect(File.read "#{File.dirname(__FILE__)}/mt.txt").to eq(
        "*\t2\t4\n" +
        "5\t10\t20\n" +
        "6\t12\t24\n"
      )

      File.unlink "#{File.dirname(__FILE__)}/mt.txt"
    end

    it 'should duplicate row if column is not given' do
      mt = MultiplicationTable.new [4, 5]

      File.open("#{File.dirname(__FILE__)}/mt.txt", "w+") do |fd|
        mt.print(fd)
      end

      expect(File.read "#{File.dirname(__FILE__)}/mt.txt").to eq(
        "*\t4\t5\n" +
        "4\t16\t20\n" +
        "5\t20\t25\n"
      )

      File.unlink "#{File.dirname(__FILE__)}/mt.txt"
    end

    it 'should returns an empty multiplication table when arguments are empty' do
      mt = MultiplicationTable.new [], []

      File.open("#{File.dirname(__FILE__)}/mt.txt", "w+") do |fd|
        mt.print(fd)
      end

      expect(File.read "#{File.dirname(__FILE__)}/mt.txt").to eq(
        "*\n"
      )

      File.unlink "#{File.dirname(__FILE__)}/mt.txt"
    end
  end
end
