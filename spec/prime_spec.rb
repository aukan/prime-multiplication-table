require "#{File.dirname(__FILE__)}/../lib/primes"

RSpec.describe Primes do
  describe '#generate' do
    it 'returns the first N prime numbers' do
      primes = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47]

      expect(Primes.generate(5)).to eq(primes[0..4])
      expect(Primes.generate(10)).to eq(primes[0..9])
      expect(Primes.generate(15)).to eq(primes[0..14])
    end
  end
end
