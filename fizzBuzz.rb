#!/usr/bin/ruby
# fizzbuzz substitute lambda using string append. always returns string
fizzBuzz = -> (n){(n % 3 == 0 ? 'fizz': '') << (n % 5 == 0 ? 'buzz': '') << (!(n % 3 == 0||n % 5 == 0)? n.to_s : '')}
puts fizzBuzz.call(ARGV[0].to_i)
