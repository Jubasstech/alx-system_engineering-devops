#!/usr/bin/env ruby
#Auth: Sangwani P Zyambo
puts ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).join(",")
