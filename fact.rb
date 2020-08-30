#!/usr/bin/ruby
# recursive factorial lambda. max input 10920
fact = -> (n){[1,2].include?(n)? n : n * fact.call(n -1)}
puts fact.call(ARGV[0].to_i)