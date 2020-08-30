#!/usr/bin/ruby
# cache fib results recursively to memoize lambda. max input w/o stack level error 8735
fib = -> (n, cache = {}){[0,1].include?(n)? n : cache[n] ||= fib.call((n - 1), cache) + fib.call((n - 2), cache)}
puts fib.call(ARGV[0].to_i)