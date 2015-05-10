
RSpec.describe MultiplicationTable do
  describe '#table' do
    it 'returns the multiplication table' do
      mt = MultiplicationTable.new [2, 4], [5, 6]
      expect(mt.table[0, 0]).to eq(10)
      expect(mt.table[0, 1]).to eq(20)
      expect(mt.table[0, 1]).to eq(12)
      expect(mt.table[0, 1]).to eq(24)
    end
  end
end
