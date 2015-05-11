class Primes

  class << self

    # Generates the first n prime numbers
    # using the Sieve of Eratosthenes.
    #
    # @method: generate
    # @params:
    #   + n: integer
    def generate (n)
      sieve(n).reject{|e| e == false }[0..n-1]
    end

    private

    # According to https://primes.utm.edu/howmany.html#pi_def
    # you can approximate the nth prime using:
    # nth prime = n * (ln(n) + lnln(n-1))
    def nth_prime (n)
      return 2 if n == 1

      n = n + 1
      (n * (Math.log(n) + Math.log(Math.log(n-1)))).ceil
    end

    # Get Sieve or Eratosthenes until n.
    #
    def sieve (n)
      return [] if n < 1
      sieve = (2..nth_prime(n)).to_a

      i = 0
      while (sieve[i] * sieve[i] <= sieve.size)
        j = i + sieve[i]
        while j < sieve.size
          sieve[j] = false
          j = j + sieve[i]
        end
        loop do
          i += 1 
          break if sieve[i] != false
        end
      end

      sieve
    end

  end
end
