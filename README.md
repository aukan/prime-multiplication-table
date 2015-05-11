# Prime Multiplication Table

Creates a multiplication table for the first N Prime Numbers and writes it to STDOUT or a file.

## Usage

```sh
./bin/prime-mtable [options]

Usage: ./bin/prime-mtable [options]
    -n, --number N                   nth prime number
    -f, --file file                  Output to file
```

Example:

```sh
> ./bin/prime-mtable -n 2
* 2 3
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

## Running the tests

```rb
rake spec
```

## Modules

### Primes

#### Methods

+ ::generate (number)

  Returns the first "n" prime numbers.

#### Example

```rb
Primes.generate(5)
# [2, 3, 5, 7, 11]
```

### MultiplicationTable

#### Methods

+ ::new (row, column, [screen_size])

  Instantiates a new multiplication table.

+ print (stream)

  Writes multiplication table to stream.

### Attributes

+ @row
+ @column
  
#### Example

```rb
var ptable = MultiplicationTable.new (1..3).to_a
puts ptable

# Prints
# * 2 3
# 2 4 6
# 3 6 9
```
