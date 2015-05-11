require "#{File.dirname(__FILE__)}/../lib/multiplication_table"

RSpec.describe MultiplicationTable do
  describe '#table' do
    it 'should return the multiplication table' do
      mt = MultiplicationTable.new [2, 4], [5, 6]
      expect(mt.generate_table[0][0]).to eq(10)
      expect(mt.generate_table[0][1]).to eq(20)
      expect(mt.generate_table[1][0]).to eq(12)
      expect(mt.generate_table[1][1]).to eq(24)
    end

    it 'should returns an empty multiplication table when arguments are empty' do
      mt = MultiplicationTable.new [], []
      expect(mt.generate_table[0][0]).to eq(nil)
    end

    it 'should duplicate row if column is not given' do
      mt = MultiplicationTable.new [4, 5]

      expect(mt.generate_table[0][0]).to eq(16)
      expect(mt.generate_table[0][1]).to eq(20)
      expect(mt.generate_table[1][0]).to eq(20)
      expect(mt.generate_table[1][1]).to eq(25)
    end
  end

  describe '#to_s' do
    it 'should return a string that prints the multiplication table' do
      mt = MultiplicationTable.new [2, 4], [5, 6]

      expect(mt.to_s).to eq(
        "*\t2\t4\n" +
        "5\t10\t20\n" +
        "6\t12\t24\n"
      )
    end
  end
end