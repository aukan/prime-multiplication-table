# Prime Multiplication Table

Creates a multiplication table for the first N Prime Numbers.

## Usage

```sh
./bin/prime-mtable [N]

  N - Number of primes to include in multiplication table. Defaults to 10.
```

Example:

```sh
> ./bin/prime-mtable 2
  1 2 3
  2 4 6
  3 6 9
```

## Instalation

To install, clone this repository and install dependencies with bundle.

```sh
> git clone https://github.com/aukan/prime-multiplication-table.git
> cd prime-multiplication-table
> bundle install
```

## Modules

### Primes

#### Methods

+ ::is_prime? (number)
+ ::generate (number)
  Returns the first "n" prime numbers.

#### Example

```rb
Prime.generate(5)
# [2, 3, 5, 7, 11]

Prime.is_prime? 3
# true

Prime.is_prime? 4
# false
```

### MultiplicationTable

#### Methods

+ ::new (numbers, [screen_size])
  Creates a multiplication table.
+ #to_s
  
#### Example

```rb
var ptable = MultiplicationTable.new (1..3).to_a
puts ptable

# Prints
1 2 3
2 4 6
3 6 9
```
